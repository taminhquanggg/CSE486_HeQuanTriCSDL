-- sử dụng con trỏ để in ra những sv có dtb max
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
--
declare c_sv cursor
dynamic scroll
for 
	select IDSV, AVG(Diem) from KetQua group by IDSV

open c_sv
declare @id int, @diemtb float, @ten nvarchar(50), @maxdtb float

select @maxdtb = AVG(diem) from KetQua group by IDSV
having AVG(diem) >= all(select AVG(diem) from KetQua group by IDSV)
fetch first from c_sv into @id, @diemtb;
while (@@FETCH_STATUS=0) begin
	if (@diemtb=@maxdtb) begin
		print @id
		--select @ten=HoTen from SinhVien where ID = @id;
		--print N'Sinh viên: '+ @ten + ', id: ' + @id + N' có điểm tb: ' + cast(@diemtb as varchar(3)) + N' là sv có dtb lớn nhất';
		--fetch next from c_sv into @id, @diemtb
	end
end
close c_sv
deallocate c_sv

-- viết con trỏ in ra dssv đạt học bổng  (mã + tên)
-- nếu dtb > 8.5 và k có môn nào thi lại

declare c_hb cursor
dynamic scroll
for 
	select IDSV, (Select Hoten from SinhVien where ID = KetQua.IDSV) as Hoten, AVG(diem) from KetQua group by IDSV
open c_hb
declare @id int, @ten nvarchar(50), @diem float, @sl int  
fetch first from c_hb into @id, @ten, @diem
while (@@FETCH_STATUS = 0) begin
	if (@diem > 8.5) begin
		select @sl = (select TOP(1) COUNT(Diem) sl from KetQua where IDSV = @id group by IDMon order by sl DESC)
		if (@sl=1) begin
			print N'Sinh vien ' + @ten + ' id: ' + cast(@id as varchar(3)) + ' diem: ' + cast(@diem as varchar(3))
		end
	end
	fetch next from c_hb into @id, @ten, @diem
end
close c_hb
deallocate c_hb

select * from KetQua

insert into KetQua(IDSV, IDMon, Diem) values (1, 1, 6)