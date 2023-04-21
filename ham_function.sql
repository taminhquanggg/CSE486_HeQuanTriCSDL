-- hàm vô hướng là hàm trả về một giá trị: hàm tính diện tích, hàm tính chu vi, hàm tính điểm tb của một sinh viên, hàm tính số sv 1 lớp

-- vd1: viết 1 hàm trả về dtb của 1 sv nếu biết msv

create function getDTB
(@msv int)
returns float
as 
begin
	declare @dtb float
	select @dtb=AVG(diem) from Diem where MaSV = @msv
	return @dtb
end

-- gọi hàm
select dbo.getDTB(1)

select Masv, dbo.getDTB(MaSV) from SinhVien 

-- vd2: viết 1 hàm trả về số sv thi qua 1 môn học theo giới tính nào đó

create function getSVQuaMon (@gioitinh nvarchar(3), @mon nvarchar(20))
returns int
as begin
	return (select COUNT(masv) from Diem 
			where MaSV in (select MaSV from SinhVien where GioiTinh = @gioitinh)
			and Diem.MaMH in (select MaMH from MonHoc where TenMon = @mon) and Diem>4)
end
select * from Diem

select dbo.getSVQuaMon(N'Nam', N'Cơ sở dữ liệu')

-- vd3: cho biết số lượng môn học không có sv thi trượt
create function getSLMon
returns int
as begin
	select count(mamh) from MonHoc where MaMH not in (select MaMH from Diem where diem < 4) 
	select * from Diem
end

-- hàm trả về bảng (nghĩa là hàm trả về nhiều giá trị, các giá trị đó được chứa trong bảng trả về)

-- vd4: viết 1 hàm trả về danh sách sv của 1 lớp học
create function getTableDSSV(@lop varchar(10))
returns table
as
return (select * from SinhVien where Lop = @lop)

select * from dbo.getTableDSSV('62PM1')

-- vd: viết hàm trả về danh sách điểm thi trung bình của các môn học
create function getTableDTB()
returns table
as 
return (select (select TenMon from MonHoc where MonHoc.ID=KetQua.IDMon) as TenMon, AVG(Diem) as DTB from KetQua group by IDMon)
-- sử dụng hàm cho biết những môn học có đtb cao nhất
select * from getTableDTB() where DTB=(select Max(DTB) from getTableDTB())

-- viết đoạn code cho biets những lớp nào có nhiều sv đạt học bổng nhất (dtb>8.5 và ko thi lại môn nào)

create function getTableDTBSV()
returns table
return (select SinhVien.* ,(select AVG(diem) from KetQua where IDSV = SinhVien.ID) as DTB from SinhVien 
		where ID not in (select IDSV from KetQua where Diem<4))

select Lop, COUNT(MaSV) from getTableDTBSV() group by Lop having COUNT(MaSV) >= all (select COUNT(MaSV) from getTableDTBSV() group by Lop )

-- vd: viết một hàm trả về số môn học không có sv thi lại

create function getSLMonKThiLai()
returns int
as begin
	return (select COUNT(MaMH) from MonHoc where MaMH not in (select MaMH from Diem where Diem<4))
end

select dbo.getSLMonKThiLai()
-- vd: viết một hàm trả về danh sách các môn học có sinh viên thi lại. Cho biết những môn học nào có nhiều sv thi lại nhất

create function getDSSVThiLai()
returns table
as
return (select MonHoc.* from MonHoc where MaMH in (select MaMH from Diem where Diem<4))

select TenMon, COUNT(Diem.MaSV) 
from getDSSVThiLai() as A
inner join Diem on Diem.MaMH = A.MaMH   
where Diem.Diem<4
group by TenMon having COUNT(Diem.MaSV) >= all (select COUNT(Diem.MaSV) from getDSSVThiLai() A 
												inner join Diem on Diem.MaMH = A.MaMH  
												where Diem<4 group by Diem.MaMH)

												  