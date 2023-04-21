-- Câu 1:

-- a/

CREATE DATABASE QuanLySinhVien
On Primary -- File dữ liệu chính
(
	Name=QuanLySinhVien_Data, -- Tên file logic
	FileName='E:\study\HQTCSDL\TaMinhQuang\QuanLySinhVien_data.mdf', -- Tên file vật lý
	Size= 10MB, -- kích thước tập tin ban đầu
	MaxSize= 50MB, -- Kích thước tối đa
	FileGrowth = 2MB -- Kích thước tăng trưởng
)
Log On	-- FIle nhật ký
(
	Name=QuanLySinhVien_Log, -- Tên file logic
	FileName='E:\study\HQTCSDL\TaMinhQuang\QuanLySinhVien_log.ldf', -- Tên file vật lý
	Size= 5MB, -- kích thước tập tin ban đầu
	MaxSize= 20MB, -- Kích thước tối đa
	FileGrowth = 1MB -- Kích thước tăng trưởng
)

-- b/
ALTER DATABASE QuanLySinhVien
MODIFY FILE (
	Name=QuanLySinhVien_Data,
	Size= 15MB
)

-- c/
ALTER DATABASE QuanLySinhVien
MODIFY FILE (
	Name=QuanLySinhVien_Log,
	FileGrowth = 0
)

-- d/
USE QuanLySinhVien
DBCC SHRINKFILE (Name=QuanLySinhVien_Log, 5)

-- e/
ALTER DATABASE QuanLySinhVien
ADD FILE (
	Name=QuanLySinhVien_Data2,
	FileName='E:\study\HQTCSDL\TaMinhQuang\QuanLySinhVien_data2.ndf', 
	Size= 10MB,
	FileGrowth = 5MB 
)

-- f/

-- CLEAR DỮ LIỆU CỦA FILE TRƯỚC KHI XÓA
USE QuanLySinhVien
DBCC SHRINKFILE (Name=QuanLySinhVien_Data2, EMPTYFILE)

ALTER DATABASE QuanLySinhVien
REMOVE FILE QuanLySinhVien_Data2

-- g/

CREATE TABLE SinhVien (
	ID int PRIMARY KEY IDENTITY(1, 1),
	MaSV char(10) UNIQUE,
	HoTen nvarchar(50),
	NgaySinh date,
	GioiTinh nvarchar(3) CHECK (GioiTinh = N'Nam' or GioiTinh = N'Nữ'),
	DiaChi nvarchar(100),
	Email nvarchar(50) UNIQUE
)

INSERT INTO SinhVien(MaSV, HoTen, NgaySinh, GioiTinh, DiaChi, Email)
VALUES ('SV002', N'Nguyễn Trọng Ninh', '2002-8-4', N'Nam', N'Thôn Trì lành', 'ninh@gmail.com'),
('SV003', N'Trà Phương', '2002-8-8', N'Nữ', N'Thôn lành', 'traphuong@gmail.com'),
('SV004', N'Đặng Minh Hải', '2000-1-2', N'Nam', N'Vĩnh phuk', 'hai@gmail.com'),
('SV005', N'Bùi Hải Đăng', '2005-6-4', N'Nam', N'La Mai', 'dang@gmail.com')

-- h/
CREATE TABLE MonHoc (
	ID int PRIMARY KEY IDENTITY(1, 1),
	MaMon nvarchar(20) UNIQUE,
	TenMon nvarchar(30) UNIQUE,
	Mota nvarchar(50)
)

INSERT INTO MonHoc(MaMon, TenMon, Mota) 
VALUES ('HQTCSDL', N'Hệ quản trị cơ sở dự liệu', N'Mô tả môn Hệ quản trị cơ sở dự liệu'),
('NLHDH', N'Nguyên lý hệ điều hành', N'Mô tả môn Nguyên lý hệ điều hành'),
('GT', N'Giải tích', N'Mô tả môn Giải tích'),
('TATC', N'Tiếng anh tăng cường', N'Mô tả môn Tiếng anh tăng cường'),
('XSTK', N'Xác suất thống kê', N'Mô tả môn Xác suất thống kê')

-- i/

CREATE TABLE KetQua (
	IDSV int,
	IDMon int,
	Diem float,
	PRIMARY KEY (IDSV, IDMon),
	CONSTRAINT fk_SV FOREIGN KEY (IDSV)
	REFERENCES SinhVien(ID),
	CONSTRAINT FK_mon FOREIGN KEY (IDMon)
	REFERENCES MonHoc(ID)
)

INSERT INTO KetQua(IDSV, IDMon, Diem)
VALUES (1, 1, 10), 
(2, 1, 9), 
(3, 1, 5), 
(4, 1, 3), 
(5, 1, 7), 
(1, 2, 4), 
(2, 4, 6), 
(3, 2, 9), 
(4, 4, 9), 
(5, 5, 3)






