create view vw_GetListDocGia
as 
select * from DOC_GIA

create function fn_GetDocGiaByName(@TenDocGia nvarchar(50))
returns table
as return
 (select * from vw_GetListDocGia where TenDocGia like '%' + @TenDocGia + '%')

 alter table DOC_GIA
add CHECK(GioiTinh='Nam' OR GioiTinh=N'Nữ')

alter view vw_GetListTheTV
as
select T.MaThe, 
T.MaDocGia, 
D.TenDocGia, 
FORMAT(D.NgaySinh, 'dd-MM-yyyy') as NgaySinh, 
D.GioiTinh, 
D.SDT, 
D.DiaChi, 
L.MaLoaiThe, 
L.TenLoaiThe, 
L.MucGiamGia, 
FORMAT(T.NgayCap, 'dd-MM-yyyy') as NgayCap, 
FORMAT(T.NgayHetHan, 'dd-MM-yyyy') as NgayHetHan, 
T.SoDu
from THE_TV T
inner join DOC_GIA D on T.MaDocGia = D.MaDocGia
inner join LOAI_THE L on L.MaLoaiThe = T.MaLoaiThe



select * from vw_GetListTheTV

create view vw_GetListLoaiThe
as 
select MaLoaiThe, TenLoaiThe, MucGiamGia from LOAI_THE

select * from vw_GetListLoaiThe

create function fn_GetTheTVByID(@MaThe int)
returns table
as return
 (select * from vw_GetListTheTV where MaThe = @MaThe)

 select * from fn_GetTheTVByID(0)

 SELECT * FROM fn_GetTheTVByID(0)

 create function fn_InsertPhieuGetID()

create view vw_GetListSach
as 
select S.*, TL.TenTheLoai, TG.TenTacGia, N.TenNXB from SACH S
inner join THE_LOAI_SACH TL on S.MaTheLoai = TL.MaTheLoai
inner join TAC_GIA	TG on S.MaTacGia = TG.MaTacGia
inner join NHA_XUAT_BAN N on S.MaNXB = N.MaNXB

select * from vw_GetListTheLoai

create view vw_GetListTheLoai
as 
select * from THE_LOAI_SACH

SELECT * FROM vw_GetListSach where MaTheLoai = 1

-- hàm tính giá phải trả cho một cuốn sách khi biết giá mượn, số lượng và mức giảm giá

create function fn_GiaSachMuonPhaiTra
(@GiaMuon money, @SL int, @MucGiam int)
returns money
as begin
	return (select @GiaMuon* @SL*@MucGiam/100)
end

-- hàm tính tổng số sách mượn khi biết mã phiếu

create function fn_TongSachMuon
(@MaPhieu int)
returns int
as
begin
	return (select SUM(SoLuong) from PHIEU_MUON_CHI_TIET where MaPhieu = @MaPhieu)
end

select dbo.fn_TongSachMuon(2)
-- hàm tính tổng thanh toán khi biết mã phiếu

create function fn_TongThanhToan
(@MaPhieu int)
returns money
as
begin
	return (select SUM(PHIEU_MUON_CHI_TIET.SoLuong * SACH.GiaMuon) from PHIEU_MUON_CHI_TIET
	inner join SACH on PHIEU_MUON_CHI_TIET.MaSach = SACH.MaSach 
	where PHIEU_MUON_CHI_TIET.MaPhieu = @MaPhieu)
end

select dbo.fn_TongThanhToan(2)

-- hàm tính số tiền phải trả khi biết mã phiếu, mức giảm giá

create function fn_TienPhaiTra
(@MaPhieu int, @MucGiam int)
returns money
as
begin
	return (select dbo.fn_TongThanhToan(@MaPhieu)*@MucGiam/100)
	
end

select dbo.fn_TienPhaiTra(2, 60)

-- view Chi tiết sách mượn

create view vw_ChiTietMuon
as
select PHIEU_MUON.MaPhieu,
PHIEU_MUON_CHI_TIET.MaSach, 
SACH.TenSach,
PHIEU_MUON_CHI_TIET.SoLuong, 
SACH.GiaMuon,
(CASE PHIEU_MUON_CHI_TIET.ThanhToan
WHEN 1 THEN N'Đã thanh toán'
ELSE N'Chưa thanh toán'
END) as ThanhToan
from PHIEU_MUON_CHI_TIET
inner join SACH on PHIEU_MUON_CHI_TIET.MaSach = SACH.MaSach
inner join PHIEU_MUON on PHIEU_MUON.MaPhieu = PHIEU_MUON_CHI_TIET.MaPhieu

select * from vw_ChiTietMuon

select * from PHIEU_MUON_CHI_TIET

-- view chi tiết hóa đơn thanh toán
alter view vw_HoaDonMuon
as
select 
PHIEU_MUON.MaPhieu, PHIEU_MUON.MaThe, LOAI_THE.MucGiamGia as TongGiamGia, 
(select Top 1 ThanhToan 
from PHIEU_MUON_CHI_TIET
where PHIEU_MUON_CHI_TIET.MaPhieu = PHIEU_MUON.MaPhieu) as ThanhToan,
(select dbo.fn_TongSachMuon(PHIEU_MUON.MaPhieu)) as TongSachMuon,
(select dbo.fn_TongThanhToan(PHIEU_MUON.MaPhieu)) as TongThanhToan,
(select dbo.fn_TienPhaiTra(PHIEU_MUON.MaPhieu, LOAI_THE.MucGiamGia)) as TongPhaiTra,
CONVERT(BIT, (CASE WHEN (select Top 1 NgayTra 
from PHIEU_MUON_CHI_TIET
where PHIEU_MUON_CHI_TIET.MaPhieu = PHIEU_MUON.MaPhieu) IS NULL THEN 0 ELSE 1 END))
 as DaTra,
(select dbo.fn_TienPhat(PHIEU_MUON.MaPhieu)) as TienPhat 
from PHIEU_MUON
inner join THE_TV on THE_TV.MaThe = PHIEU_MUON.MaThe
inner join LOAI_THE on THE_TV.MaLoaiThe = LOAI_THE.MaLoaiThe
inner join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia

select * from vw_HoaDonMuon

select * from PHIEU_MUON_CHI_TIET

-- hàm tính tiền phạt cho khách hàng trả sách muộn 1000đ/1 quyển/ 1 ngày với tham số truyền vào là mã phiếu mượn

alter function fn_TienPhat (@MaPhieu int)
returns money
as 
begin
	return (select DATEDIFF(DAY, GETDATE(), NgayMuon) * (select SUM(SoLuong) from PHIEU_MUON_CHI_TIET where MaPhieu = @MaPhieu) * 1000 from PHIEU_MUON where MaPhieu = @MaPhieu)
end

select dbo.fn_TienPhat(2)



select * from vw_GetListPhieuMuon

alter view vw_GetListPhieuMuon
as 
select MaPhieu, MaThe, MaNV, convert(varchar, NgayMuon, 103) as NgayMuon,convert(varchar, NgayHenTra, 103) as NgayHenTra from PHIEU_MUON

select * from vw_GetListPhieuMuon

SELECT MaPhieu, MaSach, TenSach, SoLuong, ThanhToan, GiaMuon, GiamGia, PhaiTra FROM vw_ChiTietMuon where MaPhieu = 1
select * from vw_ChiTietMuon

SELECT * FROM vw_GetListPhieuMuon
inner join THE_TV on vw_GetListPhieuMuon.MaThe = THE_TV.MaThe
inner join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia
where MaPhieu = 2

SELECT * FROM vw_GetListTheTV where MaPhieu = 2

select * from vw_ChiTietMuon where MaPhieu = 2

select * from vw_HoaDonMuon where MaPhieu = 2


select vw_GetListPhieuMuon.*, 
vw_GetListTheTV.*, 
vw_ChiTietMuon.*,
vw_HoaDonMuon.*,  
NHAN_VIEN.TenNV
from vw_GetListPhieuMuon
inner join vw_GetListTheTV on vw_GetListPhieuMuon.MaThe = vw_GetListTheTV.MaThe
inner join vw_ChiTietMuon on vw_GetListPhieuMuon.MaPhieu = vw_ChiTietMuon.MaPhieu
inner join vw_HoaDonMuon on vw_GetListPhieuMuon.MaPhieu = vw_HoaDonMuon.MaPhieu
inner join NHAN_VIEN on vw_GetListPhieuMuon.MaNV = NHAN_VIEN.MaNV
where vw_GetListPhieuMuon.MaPhieu = 2

SELECT * FROM vw_GetListPhieuMuon
                             join THE_TV on vw_GetListPhieuMuon.MaThe = THE_TV.MaThe
							 inner join LOAI_THE on THE_TV.MaLoaiThe = LOAI_THE.MaLoaiThe
                             join DOC_GIA on THE_TV.MaDocGia = DOC_GIA.MaDocGia where MaPhieu = 1

select * from vw_GetListPhieuMuon

select * from vw_HoaDonMuon

select * from vw_ChiTietMuon

select * from vw_HoaDonMuon

select * from vw_GetListTheTV

-- tr_AddTheTV

create trigger tr_AddTheTV
on THE_TV
instead of Insert
as
begin
	if (select count(MaLoaiThe) from LOAI_THE where MaLoaiThe in (select MaLoaiThe from inserted)) = 1
	begin
		raiserror(N'Loại thẻ không tồn tại', 16, 1)
		rollback tran
	end
	if (select count(MaDocGia) from DOC_GIA where MaDocGia in (select MaDocGia from inserted)) = 1
	begin
		raiserror(N'Độc giả không tồn tại', 16, 1)
		rollback tran
	end
	declare @sodu money
	select @sodu = case MaLoaiThe
	when 0 then 50000
	when 1 then 100000
	when 2 then 150000
	when 3 then 200000
	end from inserted

	insert into THE_TV(MaThe,MaDocGia, MaLoaiThe, NgayCap, NgayHetHan, SoDu) 
	select MaThe, MaDocGia, MaLoaiThe, NgayCap, DATEADD(day, 30, NgayCap), @sodu from inserted
end

select * from vw_GetListPhieuMuon


create trigger tr_AddPhieuMuon
on PHIEU_MUON
for insert
as
begin
	if (select NgayHetHan from THE_TV where MaThe in (select MaThe from inserted)) < GETDATE()
	begin
		raiserror (N'Thẻ đã hết hạn, không thể tạo phiếu', 16, 1)
		rollback tran
	end
	else print N'Tạo phiếu thành công'
end

alter trigger tr_DelPhieuMuon
on PHIEU_MUON
for delete
as
begin
	if (select top 1 ThanhToan from PHIEU_MUON_CHI_TIET where MaPhieu in (select MaPhieu from deleted)) = 1
	begin
		raiserror (N'Phiếu đã thanh toán, không được xóa', 16, 1)
		rollback tran
	end
	else print N'Xóa phiếu thành công'
end

create trigger tr_AddPhieuChiTiet on PHIEU_MUON_CHI_TIET
instead of Insert
as
begin
	if (select count(MaPhieu) from PHIEU_MUON_CHI_TIET 
			where MaPhieu in (select MaPhieu from inserted) 
			and MaSach in (select MaSach from inserted)) = 1
	begin
		update PHIEU_MUON_CHI_TIET set 
			SoLuong = (select SoLuong from PHIEU_MUON_CHI_TIET where MaPhieu in (select MaPhieu from inserted) 
			and MaSach in (select MaSach from inserted)) + (select SoLuong from inserted) 
			where MaPhieu in (select MaPhieu from inserted) 
			and MaSach in (select MaSach from inserted)
		update SACH set SoLuongSach = (select SoLuongSach from SACH where MaSach in (select MaSach from inserted)) - (select SoLuong from inserted)
		where MaSach in (select MaSach from inserted)
	end

	else
	begin
		insert into PHIEU_MUON_CHI_TIET(MaPhieu, MaSach, SoLuong, ThanhToan, NgayTra, TienPhat) 
		select MaPhieu, MaSach, SoLuong, ThanhToan, NgayTra, TienPhat from inserted

		update SACH set SoLuongSach = (select SoLuongSach from SACH where MaSach in (select MaSach from inserted)) - (select SoLuong from inserted)
		where MaSach in (select MaSach from inserted)
	end
end

create trigger tr_DelPhieuChiTiet on PHIEU_MUON_CHI_TIET
for delete
as
begin
	if (select top 1 ThanhToan from PHIEU_MUON_CHI_TIET where MaPhieu in (select MaPhieu from inserted)) = 1
	begin
		raiserror (N'Phiếu đã thanh toán, không được xóa', 16, 1)
		rollback tran
	end
	else 
	begin
		update SACH set SoLuongSach = (select SoLuongSach from SACH where MaSach in (select MaSach from deleted)) + (select SoLuong from deleted)
		where MaSach in (select MaSach from deleted)
	end
end


create trigger tr_UpdPhieuChiTiet on PHIEU_MUON_CHI_TIET
for update
as
if UPDATE(ThanhToan)
begin
	if (select )
end



