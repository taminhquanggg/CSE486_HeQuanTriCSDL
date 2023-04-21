-- viết một thủ tục lấy ra ds sv thi môn HQTCSDL
create proc sv_thi_csdl
as 
begin
	select SinhVien.* from SinhVien where ID in (select IDSV from KetQua where IDMon = 1)
end

exec sv_thi_csdl

-- viết một thủ tục cho biết sinh viên tên Nam thi môn gì

create proc sv_thi
as
begin
	select M.TenMon from MonHoc M
	inner join KetQua K on K.IDMon = M.ID
	inner join SinhVien S on S.ID = K.IDSV
	where S.HoTen like '%Quang'
end

exec sv_thi

-- alter proc (sửa thủ tục đã có)

alter proc sv_thi
as 
begin
	select S.ID, S.HoTen ,M.TenMon from MonHoc M
	inner join KetQua K on K.IDMon = M.ID
	inner join SinhVien S on S.ID = K.IDSV
	where S.HoTen like '%Quang' group by S.ID, S.HoTen, M.TenMon
end
	
exec sv_thi

-- thủ tục có tham số
-- viết 1 proc lấy ra danh sách sv thi 1 môn nào đó
create proc getListSVByMon
@idmh int
as 
begin 

	select SinhVien.HoTen from SinhVien 
	inner join KetQua on KetQua.IDSV = SinhVien.ID
	where KetQua.IDMon = @idmh group by	SinhVien.HoTen
end

exec getListSVByMon 2

-- tính dtb khi biết họ tên

	--C1
alter proc getDTB
@hoten nvarchar(50)
as begin
	select AVG(Diem) from KetQua
	left join Sinhvien on SinhVien.ID = KetQua.IDSV  
	where Sinhvien.HoTen = @hoten group by KetQua.IDSV
end

exec getDTB N'Tạ Minh Quang'

	-- con trỏ (BTVN)
declare c_dssv cursor dynamic scroll
for 
	select Sinhvien.Hoten, KetQua.IDSV, AVG(diem) from KetQua 
	left join SinhVien on SinhVien.ID = KetQua.IDSV
	group by KetQua.IDSV

open c_dssv
declare @id int, @dtb float

create proc getDTBByCursor
@hoten nvarchar(50)
as begin
	declare @ten nvarchar(50)
	fetch first from c_dssv into @id, @dtb
	while (@@FETCH_STATUS=0) begin
		select @ten = Hoten from SinhVien where HoTen = @hoten


-- Thủ tục có tham số output: thủ tục này sẽ tính toán và trả về cho output

-- viết thủ tục trả về số sv thi qua của 1 môn học(biết mã môn học)


alter proc getSoSVQuaMon
@mamon varchar(50),
@sosv int OUTPUT
as begin
	declare @idmon int
	select @idmon = id from MonHoc where MaMon = @mamon
	select @sosv = COUNT(IDSV) from KetQua where Diem>4 and IDMon = @idmon 
end

declare @sv_thi_csdl int
exec getSoSVQuaMon 'HQTCSDL',
	@sv_thi_csdl OUTPUT
print @sv_thi_csdl

-- viết câu lệnh truy vấn cho biết những môn học có số sv thi qua lớn hơn số sv thi qua của môn CSDL
select IDMon, COUNT(IDSV) from KetQua
where Diem>4 group by IDMon having COUNT(IDSV) > @sv_thi_csdl

-- thủ tục trả về OUTPUT là một con trỏ: Khi thủ tục trả về nhiều hơn một giá trị
-- viết thủ tục trả về 1 con trỏ chứa tên sv nếu biết giới tính

create proc getSVByGioiTinh_Cursor
@GioiTinh nvarchar(3),
@dssv cursor varying output
as begin
	set @dssv = CURSOR
	for 
		select Hoten from SinhVien where GioiTinh = @GioiTinh
	open @dssv
end

declare @sv CURSOR
exec getSVByGioiTinh_Cursor N'Nam',
	@dssv = @sv OUTPUT


declare @hoten nvarchar(50)
fetch next from @sv into @hoten
while (@@FETCH_STATUS=0) begin
	print @hoten
	fetch next from @sv into @hoten
close @sv
deallocate @sv

-- viết 1 thủ tục trả về số sv thi qua 1 môn của 1 lớp nào đó, gọi thủ tục đó

alter proc getSLSVQuaMon
@mamon varchar(20),
@lop varchar(10),
@sl int OUTPUT
as begin
	select @sl = COUNT(IDSV) from KetQua
	left join MonHoc on MonHoc.ID = KetQua.IDMon
	left join SinhVien on SinhVien.ID = KetQua.IDSV
	where MonHoc.MaMon = @mamon and SinhVien.Lop = @lop and KetQua.Diem>4 group by IDMon
end


declare @slsv int
exec getSLSVQuaMon 'HQTCSDL', '62PM1', @slsv OUTPUT
print @slsv

-- viết 1 thủ tục trả con trỏ chứa họ tên sv dạt điểm cao nhất của 1 môn học
-- gọi thủ tục đó để in ra họ tên các sv đó
create proc getSVDiemCao_Cursor
@mamon varchar(20),
@dssv cursor varying output
as begin
	declare @maxdiem float;
	select  @maxdiem = MAX(KetQua.diem) from KetQua
	left join MonHoc on MonHoc.ID = KetQua.IDMon
	where MonHoc.MaMon = @mamon group by KetQua.IDMon

	set @dssv = cursor
	for
	select SinhVien.HoTen from KetQua
	left join SinhVien on SinhVien.ID = KetQua.IDSV
	left join MonHoc on MonHoc.ID = KetQua.IDMon
	where MonHoc.MaMon = @mamon and KetQua.Diem = @maxdiem
	open @dssv
end

declare @ds cursor
exec getSVDiemCao_Cursor 'HQTCSDL', @dssv = @ds OUTPUT
declare @hoten nvarchar(50)
fetch next from @ds into @hoten
while (@@FETCH_STATUS=0) begin
		print @hoten
		fetch next from @ds into @hoten
	end
close @ds
deallocate @ds
