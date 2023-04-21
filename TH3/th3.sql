-- cau 1:
create function f_ThanhTien(@iddh int, @idsp int)
returns float
as begin
	declare @thanhtien float;

	select @thanhtien = (SoLuong * DonGiaBan * (1-TyLeGiamGia)) from SP_DonHang where IDDonHang = @iddh and IDSanPham = @idsp
	return @thanhtien
end

select dbo.f_ThanhTien(2, 7)

-- cau 2:
alter function f_TongTien(@iddh int)
returns money
as begin
	declare @tongtien money;
	select @tongtien = SUM(dbo.f_ThanhTien(IDDonHang, IDSanPham)) from SP_DonHang where IDDonHang = @iddh
	return @tongtien
end

select dbo.f_TongTien(7)

-- cau 3:
create function f_SP_DonHang(@iddh int)
returns table
as
return (select SP_DonHang.IDSanPham, SanPham.TenSP, LoaiHang.TenLoaiHang, 
		NhaCungCap.TenCongTy as TenCongTyCungCap, SP_DonHang.SoLuong,  
		SP_DonHang.DonGiaBan, SP_DonHang.TyLeGiamGia, 
		(select dbo.f_ThanhTien(SP_DonHang.IDDonHang, SP_DonHang.IDSanPham)) as ThanhTien
		from SP_DonHang
		left join SanPham on SP_DonHang.IDSanPham = SanPham.IDSanPham
		left join DonHang on SP_DonHang.IDDonHang = DonHang.IDDonHang
		left join LoaiHang on SanPham.IDLoaiHang = LoaiHang.IDLoaiHang
		left join NhaCungCap on SanPham.IDNhaCungCap = NhaCungCap.IDNhaCungCap
		where SP_DonHang.IDDonHang = @iddh)

select * from f_SP_DonHang(10)

-- cau 4
create view v_ChiTietDonHang
as 
	select SP_DonHang.IDDonHang, SanPham.IDSanPham, SanPham.TenSP, LoaiHang.TenLoaiHang, 
	NhaCungCap.TenCongTy, SP_DonHang.SoLuong, SanPham.DonGiaNhap, SP_DonHang.DonGiaBan,
	SP_DonHang.TyLeGiamGia, (select dbo.f_ThanhTien(SP_DonHang.IDDonHang, SP_DonHang.IDSanPham)) as ThanhTienBan, 
	(dbo.f_ThanhTien(SP_DonHang.IDDonHang, SP_DonHang.IDSanPham) - (SP_DonHang.DonGiaBan*SP_DonHang.SoLuong)) as TienLai
	from SP_DonHang
	left join SanPham on SP_DonHang.IDSanPham = SanPham.IDSanPham
	left join LoaiHang on SanPham.IDLoaiHang = LoaiHang.IDLoaiHang
	left join NhaCungCap on SanPham.IDNhaCungCap = NhaCungCap.IDNhaCungCap

select * from v_ChiTietDonHang

-- cau 5:

alter function f_TienHoaDon(@iddh int)
returns float
as begin
	declare @tongtien float;

	select @tongtien = SUM(SoLuong * DonGiaBan) from SP_DonHang where IDDonHang = @iddh
	return @tongtien
end

create view v_TongKetDonHang
as
	select DonHang.IDDonHang, DonHang.IDKhachHang,  KhachHang.HoTen, KhachHang.GioiTinh, NhanVien.IDNhanVien,
	NhanVien.HoTen as HoTenNhanVien, DonHang.NgayDatHang, DonHang.NgayGiaoHang, DonHang.NgayYeuCauChuyen,
	CtyGiaoHang.IDCty, CtyGiaoHang.TenCongTy as TenCtyGiaoHang, 
	(select COUNT(IDSanPham) from SP_DonHang where SP_DonHang.IDDonHang = DonHang.IDDonHang) as SoMatHang,
	(select dbo.f_TongTien(DonHang.IDDonHang)) as TongTienHoaDon,
	(dbo.f_TongTien(DonHang.IDDonHang) - dbo.f_TienHoaDon(DonHang.IDDonHang)) as TongLai
	from DonHang
	left join KhachHang on KhachHang.IDKhachHang = DonHang.IDKhachHang
	left join NhanVien on DonHang.IDNhanVien = NhanVien.IDNhanVien
	left join CtyGiaoHang on CtyGiaoHang.IDCty = DonHang.IDCtyGiaoHang
	
select * from v_TongKetDonHang

-- cau 6

-- cau 7
alter trigger insert_LoaiHang
on LoaiHang
for insert
as 
begin
	if (select count(TenLoaiHang) from LoaiHang where TenLoaiHang = (select TenLoaiHang from inserted)) >1
	begin
		print N'Thêm Loại hàng không thành công'
		rollback tran
	end
	else 
	begin
		print N'Thêm Loại hàng thành công'
	end
end

insert into LoaiHang values (N'Đồ uống', N'Đồ sống abcd')

-- cau 8

alter trigger update_LoaiHang
on LoaiHang
for update
as
begin
	if (select TenLoaiHang from inserted) != (select TenLoaiHang from deleted)
	begin
		if EXISTS(select * from LoaiHang where TenLoaiHang = (select TenLoaiHang from inserted))
		begin
			print N'Update Loại hàng không thành công'
			rollback tran
		end
		else 
		begin
			update LoaiHang set TenLoaiHang = (select TenLoaiHang from inserted), 
			MoTa = (select Mota from inserted) where IDLoaiHang = (select IDLoaiHang from inserted)
			print N'Update thành công'

		end
	end
	else
	begin
		print N'Update Loại hàng không thành công'
		rollback tran
	end
end

select * from LoaiHang

insert into LoaiHang values (N'Đồ sống', 'abc')
update LoaiHang set TenLoaiHang = N'Đồ ăn vặtttt' where IDLoaiHang = 13
update LoaiHang set TenLoaiHang = N'Đồ uống' where IDLoaiHang = 1

create function getHD()
returns table
as 
return (select * from HoaDon where SoHD in 
(select SoHD from ChiTietHoaDon having COUNT(SoHD) >= all (select COUNT(MaHang) from ChiTietHoaDon group by SoHD ))