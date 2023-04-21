-- viết giao dịch chuyển 1000 từ tk A sang tk B
begin tran chuyenTien
update TAIKHOAN set SoDu = SoDu - 1000 where STK = A;
update TAIKHOAN set SoDu = SoDu + 1000 where STK = B;
if (select SoDu from TAIKHOAN where STK = A) < 0
	begin
		rollback tran chuyenTien
		print N'Số dư không đủ'
	end
else
	begin
		commit tran chuyenTien
		print N'Giao dịch thành công'
	end



create proc chuyenTien
@money float, @stkA varchar(20), @stkB varchar(20)
as 
begin tran chuyen_Tien
update TAIKHOAN set SoDu = SoDu - @money where STK = @stkA;
update TAIKHOAN set SoDu = SoDu + @money where STK = @stkB;
if (select SoDu from TAIKHOAN where STK = @stkA) < 0 
	begin
		rollback tran chuyen_Tien
		print N'Số dư không đủ'
	end
else
	begin
		commit tran chuyen_Tien
		print N'Giao dịch thành công'
	end

/* btvn: viết 1 trigger dưới dạng giao dịch chỉ cho phép thêm điểm của sv nếu thỏa mãn 
- SV ko được phép thi 1 môn học quá 2 lần
- điểm thi lại lần sau phải lớn hơn điểm thi lại lần trc
*/

create trigger trans_diem on QLSV for insert
as begin tran insertDiem
if (select count(diem) from diem where masv in (select masv from inserted) and mamon in (select mamon from inserted)) < 2
begin 
	if (select diem from diem where masv in (select masv from inserted) and mamon in (select mamon from inserted)) < (select diem from inserted)
		begin
			rollback tran insertDiem
			print N'Điểm nhập vào không đủ điều kiện'
		end
	else
		begin
			commit tran insertDiem
			print N'Điểm nhập vào thành công'
		end
end
else
begin
	rollback tran insertDiem
	print N'Sinh viên có nhiều hơn 2 lần điểm, không được nhập thêm'


