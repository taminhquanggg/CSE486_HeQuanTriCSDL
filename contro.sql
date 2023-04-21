-- tạo con trỏ chứa các bản ghi trên bảng sv sử dụng con trỏ để in ra số lượng sv

declare c_sv cursor
dynamic scroll
for
	select * from sinhvien

open c_sv
declare @sl int;
set @sl = 0;
Fetch first from c_sv
while (@@FETCH_STATUS = 0) begin 
	set @sl = @sl + 1
	fetch next from c_sv
end
close c_sv
deallocate c_sv
print N'Số sinh viên: ' + cast(@sl as varchar(5))
-- sử dụng con trỏ in ra họ tên các sinh viên thi môn hqtcsdl

declare ht_sv cursor
dynamic scroll
for 
	select sinhvien.masv, sinhvien.tensv from sinhvien 
	inner join diem on sinhvien.masv = diem.masv
	where diem.mamon = 'CSDL'

open ht_sv
declare @hoten nvarchar(50), @masv nvarchar(50)
Fetch first from ht_sv into @masv, @hoten
while (@@FETCH_STATUS = 0) begin 
	print N'Sinh viên mã: ' + @masv + N' Họ tên: ' + @hoten
	fetch next from ht_sv into @masv, @hoten
end
close ht_sv
deallocate ht_sv

-- tạo 1 con trỏ chứa danh sahcsh các sv thi lại môn hqtcsdl
declare sv_thilai cursor
dynamic scroll
for 
	select sinhvien.masv, sinhvien.tensv from sinhvien 
	inner join diem on sinhvien.masv = diem.masv
	where diem.mamon = 'CSDL' and diem.diem < 7

open sv_thilai
declare @hoten nvarchar(50), @masv nvarchar(50)
print N'Danh sách sinh viên thi lại'
Fetch first from sv_thilai into @masv, @hoten
while (@@FETCH_STATUS = 0) begin 
	print N'Sinh viên mã: ' + @masv + N' Họ tên: ' + @hoten
	fetch next from sv_thilai into @masv, @hoten
end
close sv_thilai 
deallocate sv_thilai

-- btvn: sử dụng con trỏ để in ra mức đạt học bỏng của mỗi sinh viên theo định dạng
-- SInh viên ... đạt học bổng ...
-- Nếu DTB >= 8.5 học bổng 100000
-- Nếu 8 < đtb < 8.5 học bổng 50000
-- nếu dtb<=8 học bổng 0


-- sử dụng con trỏ để in ra những sv có dtb max
declare c_dtb cursor
dynamic scroll
for 
	select sinhvien.tensv from sinhvien 

open sv_thilai
declare @hoten nvarchar(50), @masv nvarchar(50)
print N'Danh sách sinh viên thi lại'
Fetch first from sv_thilai into @masv, @hoten
while (@@FETCH_STATUS = 0) begin 
	print N'Sinh viên mã: ' + @masv + N' Họ tên: ' + @hoten
	fetch next from sv_thilai into @masv, @hoten
end
close sv_thilai 
deallocate sv_thilai