-- Cau 13
create proc p_GetDSSV
@lop varchar(50)
as begin
	select * from SinhVien where MaLop in (select MaLop from Lop where TenLop = @lop)
end

exec p_GetDSSV '57TH04'

-- cau 14
CREATE proc p_GetSLSV 
@khoa nvarchar(50),
@sl int OUTPUT 
AS BEGIN
	SELECT @sl=COUNT(MaSV)
	FROM SinhVien
	WHERE MaLop in
		(SELECT MaLop
		 FROM Lop
		 WHERE MaKhoa in
			 (SELECT MaKhoa
			  FROM Khoa
			  WHERE TenKhoa = @khoa)) 
END


declare @sluong int
exec p_GetSLSV N'Khoa Kinh Tế', @sluong OUTPUT
print N'Khoa Kinh Tế có ' + cast(@sluong as varchar(5)) + N' sinh viên'

-- cau 15
create function f_DTB
(@msv int)
returns float
as begin
	declare @dtb float

	select @dtb=SUM(K.DiemThi*M.SoTinChi)/SUM(M.SoTinChi)
	from KetQua K
	join MonHoc M on K.MaMH = M.MaMH
	where K.MaSV = @msv

	return @dtb
end

select Hoten, dbo.f_DTB(1) as 'DTB' from SinhVien where MaSV = 1

-- cau 16
create proc p_DSSV
@dssv cursor varying output
as begin
	set @dssv = cursor
	for select MaSV, Hoten, Tinh, dbo.f_DTB(MaSV) as DTB  from SinhVien
	open @dssv
end


declare @dssinhvien cursor
exec p_DSSV @dssv=@dssinhvien OUTPUT

declare @masv int, @hoten nvarchar(50), @tinh nvarchar(50), @dtb float

fetch next from @dssinhvien into @masv, @hoten, @tinh, @dtb
while (@@FETCH_STATUS=0)
begin
	print 'MSV: ' + cast(@masv as varchar(20)) + 
	N', họ tên: ' + @hoten + 
	N', Tỉnh: ' + @tinh + 
	N', đtb:' + ISNULL(cast(@dtb as varchar(20)), 'không có')
	fetch next from @dssinhvien into @masv, @hoten, @tinh, @dtb
end

-- cau 17
declare @dssinhvien cursor
exec p_DSSV @dssv=@dssinhvien OUTPUT

declare @masv int, @hoten nvarchar(50), @tinh nvarchar(50), @dtb float

fetch next from @dssinhvien into @masv, @hoten, @tinh, @dtb
while (@@FETCH_STATUS=0)
begin
	if @dtb >=8 and @tinh=N'Santa Cruz'
		begin 
			update SinhVien set HocBong=200000 where MaSV = @masv
		end
	else if @dtb>=8 and @tinh!=N'Santa Cruz'
		begin
			update SinhVien set HocBong=300000 where MaSV = @masv
		end
	else
		begin
			update SinhVien set HocBong=0 where MaSV = @masv
		end
	fetch next from @dssinhvien into @masv, @hoten, @tinh, @dtb
end

-- cau 18
create function getDSSV_table (@khoa nvarchar(50))
returns table
as return (SELECT *
			FROM SinhVien
			WHERE MaLop in
				(SELECT MaLop
				 FROM Lop
				 WHERE MaKhoa in
					 (SELECT MaKhoa
					  FROM Khoa
					  WHERE TenKhoa = @khoa)))

select * from getDSSV_table(N'Khoa Công nghệ thông tin')

-- cau 19
create view v_SinhVien
as 
select K.MaKhoa, K.TenKhoa, K.SoCanBo, L.MaLop, L.TenLop, S.MaSV, S.Hoten, dbo.f_DTB(S.MaSV) as DTB
from SinhVien S 
inner join Lop L on S.MaLop = L.MaLop
inner join Khoa K on K.MaKhoa = L.MaKhoa

select * from v_SinhVien order by MaKhoa







