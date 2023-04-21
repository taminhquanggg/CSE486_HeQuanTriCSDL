/*
Trigger được tự động kích hoạt khi có câu lệnh insert, update, deletedieenc ra
- INSERT TRIGGER: trigger được kích hoạt khi có lệnh insert diễn ra
- UPDATE TRIGGER: trigger được kích hoạt khi có lệnh update diễn ra
- DELETE TRIGGER: trigger được kích hoạt khi có lệnh delete diễn ra

- Cú pháp:
Create trigger [tên trigger]
on [tên bảng]
for/after [insert/update/delete]
as 
	nội dung trigger


*/

-- insert trigger: 
-- vd1: viết 1 trigger để kiểm soát dữ liệu nhập vào bảng SV
-- nếu nhập thành công thì hiển thị tbao
-- nếu ko thành công thì tbao k thành công
create trigger t_insert_SinhVien on SinhVien for Insert
as 
	print N'Insert thành công'

select * from SinhVien

insert into SinhVien values ('SV007', N'Nguyễn Vũ Đức Anh', '2002-05-06', 'Nam', 'HN', 'ducanh@gmail.com', '63KTPM1')

-- vd2: viết 1 insert trigger để khi thêm dữ liệu vào sinhvien thì tuổi sv đó không được lớn hơn 30
select * from SinhVien

alter trigger insert_SV on Sinhvien for insert
as 
	if 
		print N'Thêm SV thành công'
	else begin
		ROLLBACK TRAN;
		print N'Thêm SV không thành công'
		
	end

insert into SinhVien values ('SV008', N'Nguyễn Vũ Đức', '1932-05-06', 'Nam', 'HN', 'duc@gmail.com', '53KTPM1')

delete from SinhVien where MaSV = 'SV008'
