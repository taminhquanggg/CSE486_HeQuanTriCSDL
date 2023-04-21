-- bai bo sung

create database QuanLyDiem
create table Lop (
	MaLop int primary key identity(1,1),
	TenLop nvarchar(20)
)
create table MonHoc (
	MaMH int primary key identity(1,1),
	TenMon nvarchar(50)
)
create table SinhVien (
	MaSV int primary key identity(1,1),
	MaLop int,
	NgaySinh date,
	GioiTinh nvarchar(3) check (GioiTinh = N'Nam' or GioiTinh = N'Nữ'),
	SoDT varchar(20),
	constraint fk_sv_lop foreign key (MaLop) references Lop(MaLop)
)
create table Diem (
	MaSV int,
	MaMH int,
	Diem float,
	primary key(MaSV, MaMH),
	constraint fk_diem_sv foreign key (MaSV) references SinhVien(MaSV),
	constraint fk_diem_mon foreign key (MaMH) references MonHoc(MaMH)
)

insert into Lop(TenLop) values ('62PM1'),('62PM2'),('63PM1'),('63PM2')

INSERT INTO MonHoc(TenMon) VALUES (N'Cơ sở dữ liệu'),(N'Giải tích'),(N'Tiếng Anh'),(N'Học Máy')

INSERT INTO SinhVien(MaLop, HoTen, NgaySinh, GioiTinh, SoDT) values (1, N'Tạ Minh Quang', '2002-1-1', N'Nam', '113'), 
(1, N'Bùi Hải Đăng', '2002-2-1', N'Nam', '114'), 
(2, N'Nguyễn Trọng Ninh', '2002-9-9', N'Nam', '115'), 
(3, N'Trà Phương', '2001-9-10', N'Nữ', '119'), 
(4, N'Nguyễn Gia Kia', '2003-1-1', N'Nữ', '2020')

insert INTO Diem VALUES (1, 1, 10), (2, 1, 6), (3, 1, 8), (4, 1, 5), (5, 1, 3), (1, 2, 5), (1, 3, 6), (1, 4, 1)


-- Cau 1
-- a
declare c_sv cursor dynamic scroll
for
	select MaSV,MaLop,HoTen from SinhVien
open c_sv

declare @MaSV int, @MaLop int,@HoTen nvarchar(50)

fetch first from c_sv into @MaSV,@MaLop,@HoTen
while (@@FETCH_STATUS=0) begin
	print cast(@MaSV as varchar(20)) + ' ' + cast(@MaLop as varchar(20))+ ' ' + @HoTen
	fetch next from c_sv into @MaSV,@MaLop,@HoTen
end

close c_sv
deallocate c_sv

-- b
declare c_dtbsv cursor dynamic scroll
for
	--select SinhVien.Hoten, AVG(Diem.Diem) from Diem 
	--inner join SinhVien on SinhVien.MaSV = Diem.MaSV
	--group by Diem.MaSV, SinhVien.Hoten
	select (select HoTen from SinhVien where MaSV = DIem.MaSV) as HoTen, AVG(Diem) as DTB 
	from Diem group by MaSV
open c_dtbsv

declare @Hoten nvarchar(50), @DTB float

fetch first from c_dtbsv into @Hoten, @DTB
while (@@FETCH_STATUS=0) begin
	print N'Sinh viên ' + @Hoten + N' có điểm trung bình là: ' + cast(@DTB as varchar(5))
	fetch next from c_dtbsv into @Hoten, @DTB
end

close c_dtbsv
deallocate c_dtbsv

-- c
declare c_dtbsv cursor dynamic scroll
for
	select (select HoTen from SinhVien where MaSV = DIem.MaSV) as HoTen, 
	MaSV, AVG(Diem) as DTB 
	from Diem 
	group by MaSV
open c_dtbsv

declare @Hoten nvarchar(50), @MaSV int,  @DTB float

fetch first from c_dtbsv into @Hoten,@MaSV,@DTB
while (@@FETCH_STATUS=0) begin
	-- đếm số môn thi lại của sv có Mã sv là @MaSV
	declare @sl int
	select @sl=COUNT(diem) from Diem where Diem<4 and MaSV = @MaSV

	if (@DTB>8.5 and @sl=0)
		print N'Sinh viên ' + @Hoten + N' có điểm trung bình là: ' + cast(@DTB as varchar(5)) + N' Đạt học bổng'

	fetch next from c_dtbsv into @Hoten,@MaSV, @DTB
end

close c_dtbsv
deallocate c_dtbsv

-- Cau 2

-- a
declare c_dtbsv cursor dynamic scroll
for
	select (select HoTen from SinhVien where MaSV = DIem.MaSV) as HoTen, 
	AVG(Diem) as DTB 
	from Diem group by MaSV
open c_dtbsv

declare @Hoten nvarchar(50), @DTB float

fetch first from c_dtbsv into @Hoten, @DTB
while (@@FETCH_STATUS=0) begin
	print N'Sinh viên ' + @Hoten + N' có điểm trung bình là: ' + cast(@DTB as varchar(5))
	fetch next from c_dtbsv into @Hoten, @DTB
end

close c_dtbsv
deallocate c_dtbsv


-- b
alter table sinhvien
add DTB float

declare c_udpDTB cursor dynamic scroll
for
	select MaSV, AVG(Diem) as DTB 
	from Diem group by MaSV
open c_udpDTB

declare @MaSV int, @DTB float
fetch first from c_udpDTB into @MaSV, @DTB
while (@@FETCH_STATUS=0) begin
	update SinhVien set DTB = @DTB where MaSV = @MaSV
	fetch next from c_udpDTB into @MaSV, @DTB
end

close c_udpDTB
deallocate c_udpDTB



