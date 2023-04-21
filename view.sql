-- tạo 1 view chứa mã sv, họ tên của những sv nữ
create view ViewSinhVienNu (MaSV, Hoten)
as 
select MaSV, Hoten from SinhVien where GioiTinh = N'Nữ'

select * from ViewSinhVienNu

-- vd2: tạo view chứa mã sv, họ tên của những sv không phải thi lại
create view ViewSinhVienKoThiLai
as 
select MaSV, HoTen from SinhVien where MaSV not in (Select MaSV from Diem where Diem<4)

select * from ViewSinhVienKoThiLai

--vd3: tạo view chứa thông tin sản phẩm bán ra trong các ngày, cho biết ngày nào có nhiều sp bán ra nhất

create view ViewSPBanCacNgay
as
select DATEPART(dw, DonHang.NgayDatHang) as Thu, SanPham.TenSP from SanPham
inner join SP_DonHang on SP_DonHang.IDSanPham = SanPham.IDSanPham
inner join DonHang on DonHang.IDDonHang = SP_DonHang.IDDonHang
group by DATEPART(dw, DonHang.NgayDatHang), SanPham.TenSP

select Thu, COUNT(TenSP) as SLSP from ViewSPBanCacNgay group by Thu
having COUNT(TenSP) >= all(select count(TenSP) from ViewSPBanCacNgay group by Thu)

-- vd4: tạo view chứa số hóa đơn bán ra trong mỗi ngày
create view ViewSoHoaDonNgay
as
select DATEPART(dw, DonHang.NgayDatHang) as Thu, COUNT(DonHang.IDDonHang) as SLBan 
from DonHang group by DATEPART(dw, DonHang.NgayDatHang)

select * from ViewSoHoaDonNgay
-- vd5: tạo view chứa thông tin khách hàng chưa từng mua hàng

create view ViewKhachChuaMuaHang
as 
select * from KhachHang where IDKhachHang not in (select IDKhachHang from DonHang)

select * from ViewKhachChuaMuaHang

-- update table view
select * from ViewSinhVienNu
delete from ViewSinhVienNu where Hoten = N'Nguyễn Thị A'
select * from SinhVien

--btvn
/*
- Bài 1: tạo view_MatHang(MaHang, TenHang,MaCongTy, TenCongTyCungCap, MaLoaiHang,TenLoaiHang, SoLuong, DonViTinh, GiaHang)
- Bài 2: Tạo view View_DonDatHang(SoHoaDon,MaKhachHang, TenCongTyKhachHang,HoVaTenNhanVien, NgayDatHang, NgayGiaoHang,
NgayChuyenHang, NoiGiaoHang, MaHang, TenHang,SoLuong, GiaBan, MucGiamGia)
- Thử xem có thể cập nhật, thêm, sửa, xóa dữ liệu qua các view đã tạo không
*/

