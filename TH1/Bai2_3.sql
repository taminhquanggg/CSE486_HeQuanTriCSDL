
-- Câu 2:
-- a/
CREATE DATABASE QLKhachHang
On Primary (
	Name=QLKhachHang_data, 
	FileName='E:\study\HQTCSDL\TaMinhQuang\QLKhachHang_data.mdf', 
	Size= 10MB, 
	MaxSize= 50MB, 
	FileGrowth = 2MB 
)
Log On (
	Name=QLKhachHang_log, 
	FileName='E:\study\HQTCSDL\TaMinhQuang\QLKhachHang_log.ldf', 
	Size= 5MB, 
	MaxSize= 20MB, 
	FileGrowth = 1MB 
)

-- b/
ALTER DATABASE QLKhachHang
MODIFY FILE (
	Name=QLKhachHang_data,
	Size= 15MB
)

-- c/
ALTER DATABASE QLKhachHang
MODIFY FILE (
	Name=QLKhachHang_log,
	FileGrowth = 0
)

-- d/
USE QLKhachHang
DBCC SHRINKFILE (Name=QLKhachHang_data, 5)

-- e/
ALTER DATABASE QLKhachHang
ADD FILE (
	Name=QLKhachHang_data2,
	FileName='E:\study\HQTCSDL\TaMinhQuang\QLKhachHang_data2.ndf', 
	Size= 10MB,
	FileGrowth = 5MB 
)

-- f/

-- CLEAR DỮ LIỆU CỦA FILE TRƯỚC KHI XÓA
USE QLKhachHang
DBCC SHRINKFILE (Name=QLKhachHang_data2, EMPTYFILE)

ALTER DATABASE QLKhachHang
REMOVE FILE QLKhachHang_data2

-- g/
CREATE DATABASE QLKhachHangSnapshot
ON
(
	Name = QLKhachHang_data,
	Filename = 'E:\study\HQTCSDL\TaMinhQuang\QLKhachHang_snapshot.snap'
) AS SNAPSHOT OF QLKhachHang

-- h/

CREATE TABLE KhachHang (
	IDKhachHang int primary key identity (1,1),
	HoTen nvarchar(50),
	GioiTinh nvarchar(3) CHECK (GioiTinh = N'Nam' or GioiTinh = N'Nữ'),
	DiaChi nvarchar(50),
	Email nvarchar(50) UNIQUE CHECK (Email like '%@%'),
	SoDienThoai nvarchar(20)
)

INSERT INTO KhachHang(HoTen, GioiTinh, DiaChi, Email, SoDienThoai)
VALUES (N'Nguyễn Văn A', 'Nam', N'Thạch Thất, Hà Nội', 'nva@gmail.com', '19001008'),
(N'Bùi Hải Đăng', 'Nam', N'Xóm 2 La Mai', 'bhd@gmail.com', '1111111'),
(N'Nguyễn Trà Phương', N'Nữ', N'Hà Nội', 'ntp@gmail.com', '0908060501'),
(N'Nguyễn Trọng Ninh', 'Nam', N'Thôn Trì Lành, Thanh Trì, Hà Nội', 'ntn@gmail.com', '19004953'),
(N'Đặng Minh Hải', 'Nam', N'Tường Vĩnh, Phúc Vĩnh, Hà Nội', 'dmh@gmail.com', '1448866223')

-- i/
CREATE TABLE SanPham (
	IDSanPham int identity(1,1),
	TenSP nvarchar(50),
	MoTa nvarchar(100),
	DonGia float
)

ALTER TABLE SanPham ADD PRIMARY KEY (IDSanPham)
ALTER TABLE SanPham ADD UNIQUE (TenSP)

INSERT INTO SanPham(TenSP, MoTa, DonGia)
VALUES (N'Dầu gội đầu', N'Mô tả sản phẩm dầu gội đầu', 185000),
(N'Sữa tắm', N'Mô tả sản phẩm sữa tắm', 205000),
(N'Nước rửa bát', N'Mô tả sản phẩm nước rửa bát', 68200),
(N'Nước lau sàn', N'Mô tả sản phẩm nước lau sàn', 185000),
(N'Nước rửa kính', N'Mô tả sản phẩm nước rửa kính', 35000)

-- j/
CREATE TABLE DonHang(
	IDDonHang int primary key identity(1,1) NOT NULL,
	IDKhachHang int NOT NULL,
	NgayDatHang date,
	TongTien float
)

ALTER TABLE DonHang ADD FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang)

INSERT INTO DonHang(IDKhachHang, NgayDatHang, TongTien)
VALUES (2, '2022-11-23', 390000),
(1, '2022-11-1', 288200),
(3, '2022-11-20', 205000),
(5, '2022-11-19', 205000),
(4, '2022-11-22', 1211000)
-- k/
CREATE TABLE SP_DonHang (
	IDDonHang int,
	IDSanPham int,
	SoLuong int DEFAULT 1,
	ThanhTien float,
	PRIMARY KEY (IDDonHang, IDSanPham),
	CONSTRAINT fk_donhang FOREIGN KEY (IDDonHang) REFERENCES DonHang(IDDonHang),
	CONSTRAINT fk_sanpham FOREIGN KEY (IDSanPham) REFERENCES SanPham(IDSanPham),
)

INSERT INTO SP_DonHang(IDDonHang, IDSanPham, SoLuong, ThanhTien)
VALUES (1, 1, 1, 185000),
(1, 2, 1, 205000),
(2, 3, 1, 68200),
(2, 4, 1, 185000),
(2, 5, 1, 35000),
(3, 2, 1, 205000),
(4, 2, 3, 615000),
(4, 4, 1, 185000),
(4, 5, 2, 70000),
(4, 3, 5, 341000),
(5, 3, 10, 682000),
(5, 5, 10, 350000)

-- Câu 3:

-- a/
UPDATE A
 SET A.ThanhTien = A.SoLuong * B.DonGia
 From SP_DonHang A
JOIN SanPham B ON A.IDSanPham = B.IDSanPham
select * from SanPham;
select * from SP_donhang;

-- b/
UPDATE A
	SET A.TongTien = (Select SUM(ThanhTien) from SP_DonHang B where A.IDDonHang = B.IDDonHang)
From DonHang A

-- c/
SELECT HoTen, LTRIM(RIGHT(HoTen, CHARINDEX(CHAR(32), REVERSE(HoTen)))) as Ten FROM KhachHang

-- d/
SELECT P.TenSP
FROM KhachHang K
inner join DonHang D on D.IDKhachHang = K.IDKhachHang
inner join SP_DonHang S on S.IDDonHang = D.IDDonHang
inner join SanPham P on P.IDSanPham = S.IDSanPham
where K.HoTen = N'Nguyễn Văn A'

-- e/
SELECT SUM(D.TongTien) as TongTien
FROM KhachHang K
inner join DonHang D on D.IDKhachHang = K.IDKhachHang
where K.HoTen = N'Nguyễn Văn A'

-- sử dụng con trỏ để in ra: số lượng mặt hàng trong mỗi hóa đơn đồng thời in ra được những hóa đơn có nhiều mặt hàng nhất
DECLARE @max int;
select @max=MAX(M.dem) 
from (select COUNT(IDDonHang) as dem
	from SP_DonHang 
	group by IDDonHang) M

DECLARE c_sl cursor
dynamic scroll
for
	select IDDonHang, COUNT(IDDonHang)
	from SP_DonHang
	group by IDDonHang
open c_sl
declare @id int, @sl int;
fetch first from c_sl into @id, @sl
while (@@FETCH_STATUS = 0) begin
	print N'- Hóa đơn ' + cast(@id as varchar(20)) + N' có số mặt hàng: ' + cast(@sl as varchar(20))
	if (@max = @sl) print N'và là hóa đơn có số lượng mặt hàng cao nhất'
	fetch next from c_sl into @id, @sl
end
close c_sl 
deallocate c_sl
