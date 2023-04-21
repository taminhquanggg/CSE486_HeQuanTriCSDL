insert into NHA_XUAT_BAN(TenNXB)
values(N'Kim Đồng');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Chính trị Quốc gia');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Tư pháp');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Hồng Đức');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Quân đội');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Công an nhân dân');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Thanh niên');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Lao động');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Phụ nữ');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Mỹ thuật');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Sân khấu');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Hội nhà văn');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Lao động xã hội');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Khoa học xã hội');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Tôn giáo');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Thông tấn');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Khoa học và kỹ thuật');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Khoa học tự nhiên và Công nghệ');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Giao thông');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Nông nghiệp');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Tri thức');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Văn hoá dân tộc');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Đại học Quốc Gia Hà Nội');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Đại học Bách Khoa Hà Nội');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Đại học Sư Phạm');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Trẻ');
insert into NHA_XUAT_BAN(TenNXB)
values(N'Hà Nội');

select * from Nha_xuat_ban
---------------------------------
insert into TAC_GIA(TenTacGia)
values(N'Hồ Anh Thái');
insert into TAC_GIA(TenTacGia)
values(N'Nguyễn Vĩnh Nguyên');
insert into TAC_GIA(TenTacGia)
values(N'Nguyễn Trương Quý');
insert into TAC_GIA(TenTacGia)
values(N'Đỗ Bích Thúy');
insert into TAC_GIA(TenTacGia)
values(N'Nguyễn Mai Chi');
insert into TAC_GIA(TenTacGia)
values(N'Xuân Diệu');
insert into TAC_GIA(TenTacGia)
values(N'Vũ Trọng Phụng');
insert into TAC_GIA(TenTacGia)
values(N'Tô Hoài');
insert into TAC_GIA(TenTacGia)
values(N'Nguyên Hồng');
insert into TAC_GIA(TenTacGia)
values(N'Nguyễn Tuân');
insert into TAC_GIA(TenTacGia)
values(N'Thạch Lam');
insert into TAC_GIA(TenTacGia)
values(N'Kim Lân');
insert into TAC_GIA(TenTacGia)
values(N'Ngô Tất Tố');
insert into TAC_GIA(TenTacGia)
values(N'Nguyễn Du');
insert into TAC_GIA(TenTacGia)
values(N'Nam Cao');
insert into TAC_GIA(TenTacGia)
values(N'Dương Thụy');
insert into TAC_GIA(TenTacGia)
values(N'Mario Puzo');
insert into TAC_GIA(TenTacGia)
values(N'J.R.R Tolkein');
insert into TAC_GIA(TenTacGia)
values(N'F.Scott Fitzgerald');
insert into TAC_GIA(TenTacGia)
values(N'Hecto Malot');
insert into TAC_GIA(TenTacGia)
values(N'Shin Kyung sook');
insert into TAC_GIA(TenTacGia)
values(N'Yann Martel');
insert into TAC_GIA(TenTacGia)
values(N'Ernest Hemingway');
insert into TAC_GIA(TenTacGia)
values(N'J.K Rowling');

select * from Tac_gia
----------------------
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Khoa học công nghệ – Kinh tế');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Văn học nghệ thuật');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Chính trị – pháp luật');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Văn hóa xã hội – Lịch sử');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Giáo trình');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Truyện, tiểu thuyết');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Tâm lý, tâm linh, tôn giáo');
insert into THE_LOAI_SACH(TenTheLoai)
values(N'Sách thiếu nhi');
select * from THE_LOAI_SACH
------------------------
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Dế Mèn phiêu lưu ký', 8, 1, 8,'2020', 10000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Cá Hồi di cư', 6, 1, 24,'2015', 10000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Chim Cánh Cụt tìm mẹ', 6, 1, 24,'2015', 10000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Cuộc đua Rùa con', 6, 1, 8,'2010', 10000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Lão Hạc', 2, 1, 15,'1943', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Chí Phèo', 2, 1, 15,'1941', 15000, 200);
​
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Làm đĩ', 6, 11, 7,'1937', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Số đỏ', 6, 11, 7,'1936', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Sống mòn', 6, 11, 7,'1956', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Tắt đèn', 6, 12, 13,'1937', 20000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Vợ nhặt', 6, 12, 12,'1962', 20000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Bỉ vỏ', 2, 12, 9,'1938', 20000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Những ngày thơ ấu', 2, 27, 9,'1938', 20000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Lều chõng', 2, 27, 13,'1940', 20000, 200);
​
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Bố già', 6, 26, 17,'2009', 50000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Chúa tể những chiếc nhẫn 1', 6, 26, 18,'1996', 50000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Chúa tể những chiếc nhẫn 2', 6, 1, 18,'2000', 50000, 100);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Harry Potter và hòn đá phù thủy', 6, 26, 24,'1997', 70000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Harry Potter và phòng chứa bí mật', 6, 26, 24,'1997', 70000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Harry Potter và tên nhân ngục Azakanban', 6, 26, 24,'1998', 70000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Harry Potter và hòn chiếc cốc lửa', 6, 26, 24,'1999', 70000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Harry Potter và hòn chiếc cốc lửa', 6, 1, 24,'2001', 70000, 100);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Hãy chăm sóc mẹ', 7, 9, 21,'2002', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Cuộc đời của Pi', 7, 21, 22,'2002', 15000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Những vụ kỳ án của	Sherlock Holmes', 7, 6, 24,'1887', 70000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Những người khốn khổ', 2, 21, 21,'1887', 50000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Truyện Kiều', 2, 12, 14,'1820', 40000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Nhà giả kim', 6, 24, 22,'1988', 300000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Đọc vị bất kỳ ai', 7, 21, 22,'2006', 20000, 200);
insert into SACH(TenSach, MaTheLoai, MaNXB, MaTacGia, NamXB, GiaMuon, SoLuongSach)
values(N'Đắc nhân tâm', 7, 21, 24,'1936', 20000, 200);

select * from Sach
------------------------
insert into NHAN_VIEN (TenNV, NgaySinh, DiaChi, SDT, GioiTinh) values
(N'Tạ Minh Quang', '2002-11-02', N'Hà Nội', '029392332', 'Nam'),
(N'Đặng Minh Hải', '2002-02-11', N'Vĩnh Phúc', '0432423434', 'Nam'),
(N'Hoàng Đức Thắng', '2002-12-27', N'Hòa Bình', '044321332', 'Nam')

select * from NHAN_VIEN





