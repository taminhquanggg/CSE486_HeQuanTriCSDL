-- cau 1

create proc sp_ThanhTien
as
begin
	update SP_DonHang set ThanhTien = SoLuong * (select DonGia from SanPham where IDSanPham = SP_DonHang.IDSanPham)
end

exec sp_ThanhTien

-- cau 2
create proc sp_TongTien
as
begin
	update DonHang set TongTien = (select SUM(ThanhTien) from SP_DonHang where IDDonHang = DonHang.IDDonHang)
end

exec sp_TongTien

-- cau 3
create proc sp_ThuNhap
@datefrom date,
@dateto date,
@thunhap int OUTPUT
as begin
	select @thunhap = SUM(TongTien) from DonHang where NgayDatHang between @datefrom and @dateto
end

declare @thunhap_1 int, @thunhap_2 int

exec sp_ThuNhap '2022-11-01', '2022-11-15', @thunhap_1 OUTPUT
exec sp_ThuNhap '2022-11-16', '2022-11-30', @thunhap_2 OUTPUT

if (@thunhap_1 > @thunhap_2) print N'Khoảng thời gian 1 có thu nhập lớn hơn'
else if (@thunhap_1 < @thunhap_2) print N'Khoảng thời gian 2 có thu nhập lớn hơn'
else print N'2 Khoảng thời gian có thu nhập bằng nhau'

-- cau 4
create proc sp_NgayTrongTuan
@day date,
@thu nvarchar(20) OUTPUT
as begin
	if (DATEPART(dw, @day)=1) set @thu = N'Chủ nhật'
	else set @thu = N'Thứ ' + cast(DATEPART(dw, @day) as char(1))
end

declare @thu nvarchar(20)
exec sp_NgayTrongTuan '2022-11-27', @thu output
print @thu

-- cau 5
create proc sp_ThongKe
@thongke cursor varying output
as begin
	set @thongke= cursor
	for 
		select DATEPART(dw, NgayDatHang), COUNT(IDDonHang) from DonHang group by DATEPART(dw, NgayDatHang)
	open @thongke
end


declare @sp_tk cursor
exec sp_ThongKe @thongke = @sp_tk OUTPUT
declare @ngay int, @sl int

declare @max_dh int
select @max_dh = COUNT(IDDonHang) from DonHang group by DATEPART(dw, NgayDatHang) 
having COUNT(IDDonHang) >= all (select COUNT(IDDonHang) from DonHang group by DATEPART(dw, NgayDatHang))


fetch next from @sp_tk into @ngay, @sl
while (@@FETCH_STATUS=0) begin
	if (@ngay=1) begin
		print N'Chủ nhật: ' + cast(@sl as varchar(5)) + N' hóa đơn'
		if (@sl = @max_dh) print N'Và chủ nhật là ngày thường có nhiều người mua hàng nhất'
	end
	else begin 
		print N'Thứ ' + cast(@ngay as varchar(2)) + ': ' + cast(@sl as varchar(5)) + N' hóa đơn'
		if (@sl = @max_dh) print N'Và' + N' thứ ' + cast(@ngay as varchar(2)) + N' là ngày thường có nhiều người mua hàng nhất'
	end
	
	fetch next from @sp_tk into @ngay, @sl
end
close @sp_tk
deallocate @sp_tk

-- cau 6
create proc sp_SLSP
@tensp nvarchar(50)
as begin
	select COUNT(IDSanPham) from SP_DonHang 
	where IDSanPham in (select IDSanPham from SanPham where TenSP = @tensp)
end

exec sp_SLSP N'Sữa tắm'

-- cau 7
create proc sp_SPCao
@x int,
@sp cursor varying output
as begin
	set @sp = cursor 
	for
		select SanPham.TenSP, Sum(SP_DonHang.SoLuong) from SP_DonHang 
		inner join SanPham on SanPham.IDSanPham = SP_DonHang.IDSanPham 
		group by  SanPham.TenSP
		having COUNT(SP_DonHang.IDDonHang)>@x
	open @sp
end

declare @spcao cursor
exec sp_SPCao 1, @sp = @spcao OUTPUT

declare @tensp nvarchar(30), @sl int

fetch next from @spcao into @tensp, @sl
while (@@FETCH_STATUS=0) begin
	print N'Sản phẩm: ' + @tensp + N', số lượng bán: ' + cast(@sl as varchar(5))
	fetch next from @spcao into @tensp, @sl
end
close @spcao
deallocate @spcao

-- cau 8
create proc sp_KH_DonHang
@kh cursor varying output
as begin
	set @kh = cursor
	for
		select IDKhachHang, Hoten, 
		(select count(iddonhang) from DonHang where IDKhachHang = KhachHang.IDKhachHang) as SoDonHang,
		(select sum(tongtien) from DonHang where IDKhachHang = KhachHang.IDKhachHang) as SoTien,
		(select sum(soluong) from SP_DonHang where IDDonHang in (select IDDonHang from DonHang where IDKhachHang = KhachHang.IDKhachHang)) as SoSanPham
		from KhachHang
	open @kh
end

declare @dskh cursor
exec sp_KH_DonHang @kh = @dskh OUTPUT

declare @IDKhachHang int, 
@Hoten nvarchar(50),
@SoDonHang int,
@SoTien int,
@SoSanPham int

fetch next from @dskh into @IDKhachHang, @Hoten, @SoDonHang, @SoTien, @SoSanPham
while (@@FETCH_STATUS=0) begin
	print N'ID Khách hàng: ' + cast(@IDKhachHang as char(3)) + 
	N' | Họ tên: ' + cast(@Hoten as nchar(20)) + 
	N' | Tổng số đơn hàng: ' + cast(@SoDonHang as char(2)) + 
	N' | Tổng số tiền: ' + cast(@SoTien as char(8)) +
	N' | Tổng số sản phẩm: ' + cast(@SoSanPham as char(2))
	fetch next from @dskh into @IDKhachHang, @Hoten, @SoDonHang, @SoTien, @SoSanPham 
end
close @dskh
deallocate @dskh







