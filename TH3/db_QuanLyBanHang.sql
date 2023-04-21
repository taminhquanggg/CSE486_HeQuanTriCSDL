use master
create database QuanLyBanHang
go
use QuanLyBanHang
create table NhaCungCap(
	IDNhaCungCap int primary key identity(1,1),
	TenCongTy nvarchar(100),
	DiaChi nvarchar(100),
	SoDienThoai varchar(20),
	Website varchar(30),
	ConGiaoDich bit
)

insert into NhaCungCap values (N'Công ty P&N Việt Nam', N'Thôn Hảo, Xã Liêu Xá, Huyện Yên Mỹ, Tỉnh Hưng Yên, Việt Nam', '0901062202', 'www.yellowpages.vn', 1),
(N'Công ty FOCI', N'Xóm 2 La Mai, Xã Ninh Giang, Huyện Hoa Lư, Tỉnh Ninh Bình', '024 3573 6650', 'www.foci.com.vn', 1),
(N'Công ty FIRST SIGHT', N'33 Hoa Sứ, Phường 7, Phú Nhuận, Thành phố Hồ Chí Minh', '0708938782', 'www.number5.vn', 1),
(N'Công ty Hải Đăng', N'Số 33, Ngõ 9, Phố An Hòa, Phường Mỗ Lao, Quận Hà Đông, TP.Hà Nội', '0912123123', 'www.thoitranghaidang.vn', 1),
(N'Khô gà Trần Văn Đạt', N'2 Tràng Thi, Hàng Trống, Hoàn Kiếm, Hà Nội', '024 3825 6227', 'www.dattv.vn', 1)

create table CtyGiaoHang (
	IDCty int primary key identity(1,1),
	TenCongTy nvarchar(50),
	SoDienThoai varchar(20),
	DiaChi nvarchar(100)
)

insert into CtyGiaoHang values (N'Ahamove', '1900 545411', N'229 P. Tây Sơn, Ngã Tư Sở, Đống Đa, Hà Nội'),
(N'Tổng công ty bưu điện việt nam - VIETNAM POST', '024 3225 2527', N'Số 05 đường Phạm Hùng - Mỹ Đình 2 - Nam Từ Liêm - Hà Nội'),
(N'Giao hàng tiết kiệm', '1900 6092', N'Tòa Nhà VT, 8 Phạm Hùng Phường Mễ Trì, Từ Liêm, Hà Nội'),
(N'Ninja Van', '0312087302', N'117/2D1 Hồ Văn Long, Phường Tân Tạo, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam'),
(N'Lalamove', '028 7304 6686', N'Số 7 Trần Phú, Q. Ba Đình, Hà Nội.')

create table KhachHang (
	IDKhachHang int primary key identity(1,1),
	HoTen nvarchar(50),
	GioiTinh nvarchar(3),
	DiaChi nvarchar(100),
	Email varchar(50),
	SoDienThoai varchar(20)
)

insert into KhachHang values (N'Nguyễn Ngọc Trang', N'Nữ', N'B5/6 Nguyễn Hữu Trí, TT Tân Túc, H.Bình Chánh, TP Hồ Chí Minh', 'nnt@gmail.com', '0966886838'),
(N'Ưng Hoàng Cóc', N'Nam', N'6268 Đường 50, Phường Tân Tạo, Quận Bình Tân, TP Hồ Chí Minh', 'uhc@gmail.com', '0966141287'),
(N'Rô Nan Đô', N'Nam', N'Đường Lê Thương, X.Cẩm Thạnh, H.Cần Giờ', 'baychuon@gmail.com', '0777777777'),
(N'Giang Văn Cốt', N'Nam', N'Quốc lộ 22, X.Tân Thắng, H.Củ Chi', 'giangvancot@gmail.com', '0966699994'),
(N'Nguyễn Thị Bích Xui', N'Nữ', N'12 Thi Sách, Quận 1, TP Hồ Chí Minh', 'bichxui@gmail.com', '0952163449'),
(N'Trần Thảo Vân', N'Nữ', N'175 Tây Sơn, Đống Đa, Hà Nội', 'thaovan@gmail.com', '0962367832')

create table NhanVien (
	IDNhanVien int primary key identity(1,1),
	HoTen nvarchar(50),
	NgaySinh date,
	GioiTinh nvarchar(3),
	NgayBatDauLam date,
	DiaChi nvarchar(100),
	Email varchar(50),
	SoDienThoai varchar(20)
)

insert into NhanVien values (N'Võ Thị Thanh Thảo', '1992-05-03', N'Nữ', '2019-03-01', N'Xã Thanh Thủy, Huyện Thanh Hà, Hải Dương', 'vttt@gmail.com', '0367541302'),
(N'Trần Kim Ngọc', '1995-06-13', N'Nữ', '2020-07-15', N'Phường Quang Trung, Quận Hà Đông, Hà Nội', 'tkn@gmail.com', '0934105732'),
(N'Phạm Đoàn Minh Hiếu', '2000-12-06', N'Nam', '2021-10-1', N'Xã Đông Xá, Huyện Vân Đồn, Quảng Ninh', 'pdmh@gmail.com', '0851036792'),
(N'Lâm Chấn Tăm', '2001-01-16', N'Nam', '2022-12-01', N'Xã Liễn Sơn, Huyện Lập Thạch, Vĩnh Phúc', 'lct@gmail.com', '0798527431')

create table LoaiHang (
	IDLoaiHang int primary key identity(1,1),
	TenLoaiHang nvarchar(30),
	MoTa ntext,
)

insert into LoaiHang values (N'Đồ uống', N'Thức uống hay đồ uống là một loại chất lỏng được đặc biệt chế biến để con người có thể tiêu thụ, có tác dụng giải nhiệt và giải khát. Thức uống đóng vai trò quan trọng trong văn hóa của con người. Các loại thức uống phổ biến gồm nước uống, sữa, cà phê, trà, sô-cô-la nóng, nước sinh tố và nước ngọt.'), 
(N'Đồ ăn nhanh', N'Bất kỳ món ăn hay bữa ăn nào được phục vụ nhanh chóng đều có thể được xem là Fastfood. Thông thường, thuật ngữ này được dùng để chỉ các thực phẩm được bán hoặc chế biến tại một cửa hàng với các thành phần được làm nóng hoặc đã được nấu trước và phục vụ khách hàng theo hình thức đóng gói mang đi.'),
(N'Đồ ăn lạnh', N'là thực phẩm được chế biến sẵn sau đó bảo quản ở nhiệt độ lạnh sâu -18ºC trong thời gian dài và không dùng bất cứ một chất hóa học nào trong quá trình bảo quản, vì vậy thực phẩm lạnh rất an toàn khi sử dụng'),
(N'Thực phẩm khô', N'Là một trong những thành phẩm các loại trái cây, thịt được sấy hoặc phơi để làm giảm lượng nước bên trong. Các thực phẩm khô sẽ gồm nhiều loại đó có loại truyền thống hoặc sản phẩm qua chế biến như: tôm khô, các hạt khô, củ quả khô, mực tẩm,… Vì đã loại bỏ phần lớn lượng nước bên trong chúng sẽ có trong lượng nhẹ')
create table SanPham (
	IDSanPham int primary key identity(1,1),
	TenSP nvarchar(50),
	IDNhaCungCap int,
	IDLoaiHang int,
	DonGiaNhap money,
	SoLuongCon int,
	SoLuongChoCungCap int,
	MoTa ntext,
	NgungBan bit,
	constraint fkNhaCungCap_IDNhaCungCap foreign key (IDNhaCungCap) references NhaCungCap(IDNhaCungCap),
	constraint fkLoaiHang_IDLoaiHang foreign key (IDLoaiHang) references LoaiHang(IDLoaiHang)
)

insert into SanPham values (N'Nước giải khát Pepsi', 1, 1, 10000, 1000, 2000, N'Đây là thương hiệu nước ngọt quen thuộc với mọi gia đình Việt Nam; sở hữu nhiều dòng sản phẩm phục vụ đa dạng phân khúc. Sản phẩm đồ uống có ga với vị ngọt vừa phải, có gas; hương vị hấp dẫn khi uống lạnh mang đến cảm giác sảng khoái. Sản phẩm đa dạng hình thức đóng gói lon; chai thuỷ tinh chai nhựa với đủ các thể tích khác nhau.', 0),
(N'Trà xanh không độ', 1, 1, 10000, 2000, 500, N'Nhiều người trong chúng ta đã quá quen thuộc với nhãn hiệu này. Trà xanh không độ được chiết xuất từ 100% lá trà xanh thiên nhiên mang lại cảm giác giải khát thoải mái cho người uống. Thành phẩm vẫn giữ được những dưỡng chất và hương thơm từ lá trà; khi uống lạnh cho cảm giác đặc biệt ngon miệng.', 0),
(N'Nước giải khát Coca Cola', 2, 1, 10000, 500, 3000, N'Là đối thủ cạnh tranh với nước uống của Pepsi. Mùi vị của loại đồ uống này tương đối giống với Pepsi. Nếu không nhìn nhãn mác thì chưa chắc có thể phân biệt. Coca Cola vẫn giữ vững biểu tượng của sự tin cậy; sự độc đáo vốn có và sự sảng khoái tuyệt vời trong mắt người tiêu dùng Việt Nam.', 0),
(N'Nước ngọt Twister', 2, 1, 10000, 200, 2000, N'Là một trong những các loại nước trái cây được yêu thích nhất của thương hiệu Twister; nước cam có thành phần chủ yếu từ những quả cam thiên nhiên chín mọng. Nước cam Twister đặc biệt có thể dùng cho hầu hết các thành viên trong gia đình.', 0),
(N'Nước giải khát Rồng đỏ', 2, 1, 12000, 50, 0, N'Nước tăng lực Rồng Đỏ chứa taurine, inositol và vitamin B tiếp năng lượng không dừng cho cuộc sống không ngừng', 1),
(N'Bánh mì kẹp thịt', 3, 2, 15000, 100, 100, N'Bánh kẹp thịt là đồ ăn nhanh ngon tiết kiệm thời gian chuẩn bị và tiết kiệm chi phí cá nhân mỗi ngày. Bạn có thể dùng bánh mì kẹp thịt, chả hay bánh mì Hy Lạp cuộn thịt gà để thưởng thức. Lớp bánh mì nóng giòn kết hợp với thịt dai mềm vừa ăn cùng nước sốt đậm đà dùng làm món điểm tâm sáng rất tuyệt vời.', 0),
(N'Sữa chua', 1, 2, 7000, 200, 300, N'Sữa chua là một trong những loại đồ ăn nhanh có nhiều công dụng cho sức khỏe, từ việc có lợi cho tiêu hóa đến làm đẹp cho da. Sữa chua nhìn mềm mịn cùng vị chua đặc trưng, có thể dùng trực tiếp hoặc kết hợp với nhiều loại trái cây, rau củ để tăng thêm chất dinh dưỡng.', 0),
(N'Gà rán', 3, 2, 20000, 300, 500, N'Gà rán là một trong các loại đồ ăn nhanh ngon được ưa chuộng trên toàn thế giới. Những miếng đùi gà, ức gà hay cánh gà được tẩm ướp gia vị và áo qua một lớp bột chiên xù rồi chiên ngập trong dầu. Bạn có thể lựa chọn món gà rán truyền thống hoặc chọn hà lắc phô mai, gà sốt cay,...', 0),
(N'Hamburger', 2, 2, 30000, 300, 600, N'Hamburger là một thức ăn nhanh phổ biến ở Mỹ và một số quốc gia phương Tây. Món ăn này gồm có bánh mì tròn kẹp một lát thịt bò xay ở giữa, kèm cà chua, rau xà lách, phô mai và một ít nước sốt.', 0),
(N'Donut', 3, 2, 25000, 7, 0, N'Donut là loại bánh ngọt nướng hoặc rán dùng làm đồ ăn nhanh hoặc tráng miệng. Loại bánh này rất nổi tiếng ở nhiều nước phương Tây, bạn có thể mua trong cửa hàng hoặc tự làm tại nhà. Donut thường có dạng hình vòng nhưng cũng có hình tròn nhỏ nhồi nhân bên trong.', 1),
(N'Thịt heo đông lạnh', 3, 3, 60000, 50, 200, N'Thịt heo nhập khẩu đang ngày càng được ưa chuộng tại Việt Nam bởi giá thành vô cùng hợp lý mà chất lượng không thua kém thịt “nóng”.', 0),
(N'Cá đông lạnh', 3, 3, 53000, 60, 100, N'Cá đông lạnh không chỉ được bếp ăn công nghiệp, nhà máy, công ty, căn tin xí nghiệp lựa chọn, mà nó đang trở thành thực phẩm được nhiều nhà hàng, quán ăn và gia đình lựa chọn. Vì giá cả của Cá đông lạnh rất phải chăng, chất lượng thì rất tốt. Ngoài ra, Cá đông lạnh còn tiện lợi trong việc lưu trữ và sử dụng khi chế biến.', 0),
(N'Bắp bò đông lạnh', 4, 3, 110000, 30, 100, N'Bắp bò là một trong những bộ phận thịt bò được người tiêu dùng yêu thích. Bắp bò nhập khẩu tại Bách hoá XANH được cấp đông và bảo quản ở điều kiện tốt nhất, mang đến cho khách hàng những bữa ăn thơm ngon, giàu dinh dưỡng.', 0),
(N'Chả cá', 4, 3, 43000, 20, 150, N'Với phần chả cá dai dai giòn giòn, được chế biến từ những nguyên liệu tươi ngon đển từ chả cá Hải Đăng. Chả cá thái Hải Đăng 400g là sự lựa chọn không thể bỏ qua của các bà nội trợ trong những ngày bận rộn, mang lại bữa ăn ngon miệng và giàu dinh dưỡng.', 0),
(N'Há Cảo', 4, 3, 32000, 10, 0, N'Là sản phẩm cao cấp đến từ thương hiệu há cảo Dongwon của Hàn Quốc, đem đến hương vị tinh tuý cho người dùng. Há cảo King-Sized Dumpling Dong Won 350g được kết hợp giữa nhân thịt tươi và lớp bột há cảo mềm mịn, mang đến những viên há cảo với lớp vỏ dai dẻo cùng với hương vị đặc trưng từ thịt.', 1),
(N'Khô gà lá chanh', 5, 4, 52000, 1000, 1000, N'KHÔ GÀ LÁ CHANH XÉ CAY MUA Ở ĐÂU CHẢ GIỐNG NHAU? TẠI SAO PHẢI CHỌN KHÔ GÀ TRẦN VĂN ĐẠT?', 0),
(N'Khô heo cháy bơ tỏi', 5, 4, 84000, 3936, 200, N'KHÔ HEO (LỢN) CHÁY BƠ TỎI MUA Ở ĐÂU CHẢ GIỐNG NHAU? TẠI SAO PHẢI CHỌN TRẦN VĂN ĐẠT?', 0),
(N'Bim Bim que Thái lan', 5, 4, 45000, 4970, 500, N'BIM BIM QUE MUA Ở ĐÂU CHẢ GIỐNG NHAU? TẠI SAO PHẢI CHỌN TRẦN VĂN ĐẠT?', 0),
(N'Chân vịt cay', 5, 4, 12000, 16, 0, N'CHÂN VỊT CAY MUA Ở ĐÂU CHẢ GIỐNG NHAU? TẠI SAO PHẢI CHỌN TRẦN VĂN ĐẠT?', 1)

create table DonHang(
	IDDonHang int primary key identity(1,1),
	IDKhachHang int,
	IDNhanVien int,
	NgayDatHang date,
	NgayGiaoHang date,
	NgayYeuCauChuyen date,
	IDCtyGiaoHang int,
	DiaChiGiaoHang nvarchar(100),
	constraint fkKhachHang_IDKhachHang foreign key (IDKhachHang) references KhachHang(IDKhachHang),
	constraint fkNhanVien_IDNhanVien foreign key (IDNhanVien) references NhanVien(IDNhanVien),
	constraint fkCtyGiaoHang_IDCtyGiaoHang foreign key (IDCtyGiaoHang) references CtyGiaoHang(IDCty)
)

insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (5, 1, '2022-08-11', '2021-01-12', '2021-11-07', 2, '30 Service Junction');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 1, '2022-08-30', '2021-05-12', '2021-06-10', 2, '817 Loomis Court');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 4, '2021-02-19', '2022-04-16', '2022-04-03', 1, '8226 Mallard Alley');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 2, '2021-05-05', '2021-02-09', '2022-10-11', 1, '53 Susan Avenue');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2021-11-06', '2021-02-25', '2021-03-12', 3, '1 Boyd Hill');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2021-12-22', '2022-03-11', '2022-07-28', 2, '2 Tennyson Point');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 3, '2022-02-28', '2022-07-07', '2021-10-23', 3, '82044 Randy Drive');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 4, '2021-12-18', '2021-05-12', '2021-10-03', 4, '182 Buhler Point');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 3, '2022-08-07', '2022-03-08', '2021-09-16', 3, '65 Summer Ridge Terrace');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 1, '2022-10-28', '2021-12-24', '2021-02-25', 4, '5 Algoma Pass');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2021-06-02', '2021-01-30', '2022-04-19', 1, '39 Blue Bill Park Parkway');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 3, '2021-08-18', '2021-01-26', '2022-07-04', 2, '2218 Rutledge Circle');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 3, '2022-03-23', '2022-09-21', '2022-10-12', 3, '03 Randy Place');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 3, '2021-07-05', '2022-11-05', '2021-03-29', 1, '69 Daystar Alley');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2022-11-02', '2021-04-18', '2022-03-04', 4, '5 Pennsylvania Alley');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 2, '2022-03-23', '2021-05-26', '2021-04-01', 4, '24 Derek Court');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 1, '2021-05-23', '2021-08-23', '2022-03-11', 3, '6 Jana Way');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 3, '2021-03-02', '2021-03-20', '2021-07-03', 4, '25 Corry Lane');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 4, '2022-04-22', '2021-09-08', '2021-05-26', 3, '8 Service Circle');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 2, '2022-03-02', '2021-10-31', '2021-06-04', 5, '0 Sunnyside Park');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 3, '2021-10-27', '2022-04-18', '2022-07-29', 4, '72 Clove Center');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 1, '2021-01-26', '2021-02-20', '2022-02-20', 2, '70 Towne Trail');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 3, '2021-08-04', '2022-05-21', '2021-07-29', 1, '4 Porter Center');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (5, 3, '2022-02-24', '2022-09-23', '2021-09-01', 2, '8 Kipling Junction');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 2, '2021-04-19', '2022-10-05', '2022-01-23', 3, '7142 Bayside Junction');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 3, '2022-07-05', '2021-01-16', '2022-08-26', 3, '0205 Thompson Parkway');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 2, '2021-01-17', '2021-05-20', '2022-09-11', 1, '9922 Tennessee Road');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 1, '2022-03-13', '2021-03-23', '2022-09-26', 1, '5 Grayhawk Avenue');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 1, '2022-07-19', '2022-09-01', '2022-09-30', 5, '433 Sugar Road');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2021-12-25', '2021-06-08', '2021-10-20', 4, '71 Maple Avenue');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2021-04-10', '2021-03-30', '2021-04-19', 3, '42341 Fisk Way');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 4, '2021-09-13', '2021-08-08', '2022-09-04', 5, '525 Tennessee Street');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 1, '2021-08-11', '2022-07-01', '2022-09-22', 1, '18 Tomscot Terrace');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 4, '2021-11-01', '2021-05-14', '2021-01-20', 5, '0585 Mccormick Place');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (5, 3, '2021-06-22', '2022-07-10', '2022-08-19', 2, '42 Tony Trail');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 4, '2022-11-20', '2022-04-11', '2021-03-30', 5, '64525 Quincy Terrace');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 1, '2022-05-18', '2022-03-30', '2022-11-04', 3, '931 Bluestem Way');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 3, '2021-05-26', '2022-08-28', '2021-07-31', 5, '29 Arapahoe Avenue');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 2, '2022-07-23', '2021-06-16', '2022-10-08', 4, '49896 Fordem Lane');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (4, 4, '2021-07-01', '2022-09-30', '2021-06-18', 3, '2271 Northridge Crossing');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 3, '2021-11-02', '2021-05-02', '2022-01-10', 5, '58 Dexter Street');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 1, '2021-10-01', '2021-11-18', '2021-03-04', 5, '53 Veith Pass');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 1, '2022-11-03', '2021-06-18', '2022-01-27', 1, '42 Clyde Gallagher Place');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (2, 4, '2021-07-06', '2021-03-30', '2021-07-18', 2, '36 Orin Crossing');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (6, 3, '2022-11-02', '2021-09-01', '2021-06-28', 5, '24134 Montana Park');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (3, 2, '2022-10-02', '2022-10-06', '2021-06-10', 5, '47419 Commercial Street');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 4, '2022-03-29', '2021-04-05', '2022-05-18', 4, '92 Basil Junction');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (5, 2, '2021-05-03', '2022-10-08', '2021-03-27', 2, '70 Cottonwood Trail');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (5, 2, '2022-09-11', '2022-11-19', '2021-08-29', 4, '507 Spenser Court');
insert into DonHang (IDKhachHang, IDNhanVien, NgayDatHang, NgayGiaoHang, NgayYeuCauChuyen, IDCtyGiaoHang, DiaChiGiaoHang) values (1, 2, '2022-10-03', '2022-02-18', '2021-11-10', 3, '21 Brown Avenue');

create table SP_DonHang(
	IDDonHang int,
	IDSanPham int,
	SoLuong int,
	DonGiaBan money,
	TyLeGiamGia float,
	primary key (IDDonHang, IDSanPham),
	constraint fkDonHang_IDDonHang foreign key (IDDonHang) references DonHang(IDDonHang),
	constraint fkSanPham_IDSanPham foreign key (IDSanPham) references SanPham(IDSanPham)
)
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 1, 1, 0.2361497524);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 15, 2, 0.1939226063);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 18, 4, 0.2303911441);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 8, 3, 0.1448890988);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 19, 2, 0.2518614385);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 8, 3, 0.1685612445);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 11, 3, 0.19785252);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 3, 2, 0.238212562);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 18, 1, 0.2461943904);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 17, 1, 0.1076089603);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 12, 5, 0.2966464447);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 16, 3, 0.0667360878);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 17, 2, 0.2732494115);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 18, 5, 0.249251473);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 13, 2, 0.2007661369);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 10, 2, 0.1280488944);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 19, 4, 0.1223878279);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 7, 3, 0.0772303495);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 12, 4, 0.1820886697);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 14, 5, 0.2551920207);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 6, 2, 0.1095475375);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 2, 4, 0.2907036362);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 5, 3, 0.2535155671);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 1, 5, 0.2721315623);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 10, 4, 0.060412072);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 12, 5, 0.1092006147);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 11, 3, 0.2981917152);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 11, 5, 0.1888313701);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 12, 2, 0.1359935289);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 13, 4, 0.2914896593);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 17, 1, 0.1127302127);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 5, 2, 0.1195004998);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 2, 5, 0.2803056245);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 18, 3, 0.1551325917);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 3, 5, 0.0384277681);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 15, 4, 0.0654154944);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 4, 3, 0.0420015332);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 16, 3, 0.2133242806);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 11, 4, 0.2007788039);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 19, 2, 0.2774974993);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 14, 4, 0.1639250849);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 16, 2, 0.181198481);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 6, 4, 0.0742362123);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 7, 4, 0.065937935);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 14, 4, 0.0794243827);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 12, 1, 0.2254617768);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 6, 2, 0.2358729374);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 8, 2, 0.0961947496);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 19, 1, 0.1158506455);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 1, 2, 0.2920065613);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 17, 4, 0.0718577869);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 2, 1, 0.2856362903);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 5, 2, 0.0336611683);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 6, 1, 0.2654674369);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 4, 2, 0.0645489636);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 5, 2, 0.0910149929);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 5, 1, 0.0294868942);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 10, 1, 0.2125659796);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 15, 2, 0.0059824245);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 11, 5, 0.1894581702);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 13, 1, 0.0772812932);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 12, 4, 0.0894176035);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 4, 1, 0.1492638249);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 0, 4, 0.0761702704);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 17, 3, 0.0253449983);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 0, 5, 0.1819569876);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 6, 5, 0.1006857106);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 9, 2, 0.039106143);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 0, 3, 0.2315621803);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 18, 1, 0.0774098997);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 4, 1, 0.0731189753);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 8, 1, 0.2992514511);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 18, 2, 0.2420513403);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 6, 5, 0.0679978596);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 16, 2, 0.0512649377);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 11, 4, 0.025552738);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 16, 2, 0.2620428373);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 19, 4, 0.0080104589);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 3, 3, 0.1369671326);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 8, 1, 0.1394030436);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 11, 3, 0.0281708638);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 15, 3, 0.2538099952);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 6, 3, 0.1991378841);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 9, 3, 0.1842587668);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 18, 4, 0.0617658339);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 14, 4, 0.0920973758);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 9, 5, 0.0506276093);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 13, 4, 0.0118286982);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 7, 4, 0.2502264656);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 4, 2, 0.2059409205);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 3, 1, 0.0676426806);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 0, 1, 0.0889952974);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 10, 2, 0.2132277884);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 1, 3, 0.1609541003);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 10, 5, 0.2625236564);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 17, 3, 0.1076418785);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 8, 2, 0.1007444749);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 0, 1, 0.0977813615);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 3, 1, 0.2723107884);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 3, 4, 0.2544544261);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 5, 1, 0.29670916);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 4, 3, 0.0473361865);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 19, 4, 0.1955709142);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 14, 1, 0.1044045419);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 0, 2, 0.1467595687);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 7, 1, 0.2756558374);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 7, 4, 0.2797711885);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 6, 4, 0.2577874095);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 12, 2, 0.1198751273);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 14, 5, 0.0639779732);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 15, 5, 0.2096636144);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 11, 4, 0.2660494224);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 13, 5, 0.0767604455);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 12, 3, 0.1917057667);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 11, 5, 0.0751865574);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 6, 2, 0.011560118);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 15, 4, 0.1308044413);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 13, 2, 0.1309916521);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 18, 5, 0.2542795913);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 15, 1, 0.0311753517);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 11, 4, 0.0763568098);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 11, 5, 0.2035373767);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 11, 2, 0.1932885509);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 17, 4, 0.055584048);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 17, 5, 0.2508666383);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 18, 2, 0.2276714953);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 4, 1, 0.2217287059);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 6, 1, 0.1629904808);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 16, 4, 0.2183293639);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 5, 3, 0.1545825006);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 17, 1, 0.2426357732);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 17, 2, 0.2055555276);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 0, 2, 0.0346904511);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 12, 4, 0.0122409026);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 4, 2, 0.081136258);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 0, 1, 0.0861321917);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 7, 3, 0.0749272768);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 8, 5, 0.1188256067);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 17, 1, 0.15055105);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 5, 5, 0.2457171246);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 18, 1, 0.1310118969);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 0, 2, 0.0790364868);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 17, 3, 0.0728480318);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 15, 2, 0.1177390716);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 8, 4, 0.1780771289);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 10, 2, 0.1151353294);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 14, 5, 0.0342306028);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 4, 3, 0.1689338635);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 3, 1, 0.2913256549);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 6, 4, 0.1569290046);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 5, 5, 0.0668892563);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 7, 1, 0.2585025795);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 15, 5, 0.0139236199);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 1, 4, 0.0058099004);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 16, 3, 0.2083638743);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 10, 4, 0.16701289);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 19, 2, 0.0357852447);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 5, 3, 0.067546404);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 8, 1, 0.1472100712);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 17, 3, 0.2942798119);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 12, 5, 0.1846212239);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 19, 5, 0.1717983897);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 0, 4, 0.1679534226);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 19, 4, 0.2755457671);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 2, 1, 0.0521492538);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 15, 4, 0.1437332638);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 18, 5, 0.0280363421);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 17, 5, 0.0211015512);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 5, 2, 0.021222212);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 5, 1, 0.1549141153);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 6, 4, 0.1161957519);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 16, 2, 0.0617104003);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 12, 5, 0.0468748181);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 3, 5, 0.2701272081);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 18, 2, 0.0566093623);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 13, 5, 0.1365037711);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 18, 2, 0.2754719323);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 15, 2, 0.2525728808);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 6, 5, 0.2733298669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 8, 1, 0.1193747144);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 10, 1, 0.1391192135);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 0, 1, 0.1053334254);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 2, 1, 0.2739919627);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 19, 4, 0.1651798816);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 12, 5, 0.294149281);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 17, 1, 0.0422984278);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 16, 4, 0.0780065063);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 1, 4, 0.198915507);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 9, 2, 0.1189271097);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 3, 1, 0.0738187809);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 3, 4, 0.1022334854);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 17, 5, 0.2360296377);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 1, 1, 0.290296233);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 15, 1, 0.2737956241);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 15, 3, 0.1107300277);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 2, 3, 0.2286976606);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 4, 3, 0.0881953349);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 12, 3, 0.1369655425);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 0, 5, 0.146736456);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 1, 3, 0.1023814357);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 7, 3, 0.1088048889);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 1, 1, 0.1245605889);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 7, 5, 0.0316509264);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 0, 1, 0.2892565017);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 9, 5, 0.2132108704);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 2, 2, 0.0686165043);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 7, 1, 0.0170623512);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 15, 5, 0.2454503993);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 5, 5, 0.0673898813);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 8, 3, 0.0082163874);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 19, 3, 0.1042245153);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 8, 5, 0.2933843179);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 8, 3, 0.1965396943);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 11, 2, 0.1309084166);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 4, 3, 0.181193824);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 17, 3, 0.0956241556);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 13, 4, 0.037677553);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 8, 2, 0.0036446733);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 6, 3, 0.197415804);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 7, 5, 0.2035868082);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 12, 1, 0.0891727619);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 8, 2, 0.1018291669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 9, 3, 0.1219207619);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 14, 1, 0.0607178043);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 12, 3, 0.2947808093);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 16, 5, 0.2436001154);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 6, 1, 0.1742450351);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 8, 2, 0.1163895899);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 0, 1, 0.2018968453);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 18, 5, 0.266811159);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 17, 4, 0.2114594027);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 0, 1, 0.2244620367);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 6, 2, 0.184712049);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 15, 2, 0.2194537455);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 10, 4, 0.1930642669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 14, 3, 0.1076038585);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 1, 4, 0.1973898515);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 13, 3, 0.0116317535);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 11, 5, 0.297722498);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 5, 3, 0.0757300771);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 3, 2, 0.1948019532);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 12, 2, 0.2953813697);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 11, 3, 0.149906344);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 2, 5, 0.0902654428);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 13, 1, 0.0252021483);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 3, 5, 0.0991995413);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 7, 1, 0.1127074926);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 7, 2, 0.2982032333);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 3, 5, 0.0321354691);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 18, 2, 0.0909906796);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 7, 1, 0.090148911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 17, 1, 0.0509664753);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 6, 4, 0.0653664498);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 5, 5, 0.2123205885);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 16, 2, 0.210086634);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 10, 3, 0.2801022505);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 13, 2, 0.0659482844);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 17, 4, 0.1618426972);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 18, 5, 0.1186159626);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 6, 5, 0.2562727486);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 19, 2, 0.1185495561);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 19, 4, 0.034353777);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 19, 4, 0.0622843187);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 4, 5, 0.0375944617);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 18, 2, 0.2527810989);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 9, 1, 0.0005346102);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 18, 2, 0.0897549376);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 9, 5, 0.1448902738);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 0, 5, 0.2264634007);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 19, 3, 0.2460291964);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 16, 3, 0.2149606474);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 13, 1, 0.1811109056);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 11, 4, 0.2112033555);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 19, 4, 0.1981026227);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 19, 2, 0.2028095338);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 2, 4, 0.2711366288);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 13, 5, 0.2644503979);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 13, 5, 0.0195868598);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 18, 3, 0.1701962108);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 16, 2, 0.2651090193);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 16, 3, 0.21435863);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 17, 4, 0.0758480574);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 12, 5, 0.2990545446);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 8, 5, 0.0723484905);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 12, 2, 0.2940329736);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 12, 5, 0.1341379907);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 3, 1, 0.274452557);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 5, 4, 0.0671997537);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 3, 5, 0.2228021115);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 19, 3, 0.2678864306);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 10, 1, 0.1350102597);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 18, 1, 0.2311338126);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 18, 2, 0.1308892994);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 3, 2, 0.1284473155);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 2, 1, 0.1423162752);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 13, 4, 0.0439125943);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 16, 3, 0.1916447742);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 10, 4, 0.229016095);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 9, 1, 0.196630048);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 9, 1, 0.2722381131);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 10, 5, 0.1655765421);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 10, 3, 0.1972080724);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 14, 2, 0.1440021425);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 6, 3, 0.159553789);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 0, 2, 0.0415614094);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 17, 4, 0.0050516798);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 13, 5, 0.1252249446);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 12, 1, 0.2992560229);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 3, 3, 0.2146135477);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 11, 1, 0.1494727952);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 15, 2, 0.2927275683);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 14, 1, 0.1700460943);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 7, 5, 0.0473478376);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 12, 4, 0.0650332905);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 5, 3, 0.0193802886);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 16, 5, 0.2950109806);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 18, 4, 0.2632835033);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 5, 3, 0.2070796106);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 4, 5, 0.2180423563);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 5, 2, 0.2742127143);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 4, 5, 0.0627816342);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 11, 4, 0.1792134422);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 8, 5, 0.2077376754);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 4, 2, 0.2561098869);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 11, 3, 0.0870926909);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 19, 4, 0.1773494665);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 14, 1, 0.133062258);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 13, 4, 0.1212397621);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 17, 4, 0.1998254881);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 5, 1, 0.0338045387);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 4, 1, 0.0631817118);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 8, 1, 0.2359677506);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 14, 4, 0.2843457097);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 14, 4, 0.2806594121);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 10, 5, 0.0051945859);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 6, 4, 0.0755581009);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 1, 3, 0.1609250891);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 16, 1, 0.1531383596);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 1, 5, 0.0624641298);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 16, 5, 0.095766933);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 16, 4, 0.1381762206);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 2, 4, 0.0546470046);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 18, 5, 0.1388752806);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 7, 3, 0.1525380256);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 8, 5, 0.1248565425);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 3, 5, 0.262553383);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 11, 2, 0.0719583819);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 12, 1, 0.2466962891);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 7, 5, 0.0903013429);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 5, 2, 0.0976361063);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 17, 4, 0.0536698298);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 19, 5, 0.212109448);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 4, 1, 0.2905325383);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 18, 4, 0.1226973238);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 17, 4, 0.2665341447);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 16, 3, 0.1565378109);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 8, 4, 0.1043838043);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 7, 1, 0.1692021266);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 4, 2, 0.2301595187);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 6, 4, 0.0869801271);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 2, 4, 0.2924609829);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 4, 2, 0.045482463);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 6, 2, 0.194314126);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 10, 5, 0.2267338909);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 9, 5, 0.0959650393);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 18, 3, 0.2771168778);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 15, 2, 0.196472599);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 2, 5, 0.0401480111);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 6, 3, 0.2409635675);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 19, 5, 0.2362217229);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 15, 2, 0.0199256601);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 11, 1, 0.1818672105);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 19, 2, 0.1764042034);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 18, 1, 0.1015394417);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 10, 4, 0.1362117241);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 0, 4, 0.1358666463);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 14, 4, 0.139853276);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 15, 2, 0.0092483152);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 3, 4, 0.088237232);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 10, 5, 0.2946144557);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 19, 2, 0.0022431481);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 19, 2, 0.1851407384);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 19, 1, 0.1921256234);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 7, 1, 0.092715722);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 10, 5, 0.1885190119);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 12, 1, 0.2531755432);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 19, 1, 0.2938005387);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 6, 5, 0.2217946294);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 15, 1, 0.0107690105);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 1, 2, 0.0968177372);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 8, 3, 0.2796424625);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 9, 5, 0.2333206725);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 11, 3, 0.0419213493);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 0, 1, 0.2586570338);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 5, 1, 0.0776822717);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 12, 3, 0.235275208);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 0, 3, 0.0291780648);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 8, 2, 0.1881302511);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 17, 2, 0.0208741207);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 19, 1, 0.0472559554);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 16, 5, 0.2654379328);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 18, 1, 0.0290148063);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 13, 4, 0.2968402223);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 1, 4, 0.0161684533);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 10, 3, 0.1956440731);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 5, 5, 0.2418356825);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 16, 1, 0.1279584975);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 19, 3, 0.124950305);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 10, 3, 0.1135685702);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 15, 4, 0.0628970481);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 4, 3, 0.0827395141);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 1, 4, 0.1143601906);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 19, 2, 0.1667402253);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 11, 5, 0.2032355727);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 5, 4, 0.0668089859);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 0, 5, 0.0834389331);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 3, 2, 0.2365910084);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 13, 2, 0.0159777719);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 16, 4, 0.2601235233);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 9, 2, 0.2525973427);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 11, 1, 0.2417774794);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 17, 2, 0.1316925505);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 13, 4, 0.0316970055);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 5, 2, 0.2251631514);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 4, 1, 0.2520196707);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 5, 4, 0.2268763866);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 9, 3, 0.114804605);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 4, 2, 0.1609312036);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 11, 1, 0.0054253029);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 15, 5, 0.0090980044);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 1, 3, 0.0397230377);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 8, 1, 0.0266996859);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 17, 2, 0.2269521598);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 17, 3, 0.1204291517);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 10, 5, 0.1381054683);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 4, 3, 0.1365629911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 17, 5, 0.1745896047);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 9, 4, 0.2199517434);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 0, 1, 0.1464400854);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 6, 4, 0.09591513);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 17, 5, 0.2918874703);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 3, 3, 0.0520508329);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 19, 3, 0.1745930766);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 12, 5, 0.1104609027);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 12, 3, 0.1082036415);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 13, 1, 0.1244439284);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 16, 1, 0.0200109627);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 12, 3, 0.0025003468);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 4, 4, 0.1718770084);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 4, 1, 0.1531400527);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 5, 5, 0.2191345448);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 15, 1, 0.0107641869);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 4, 1, 0.2599594765);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 5, 1, 0.2677771943);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 14, 5, 0.0503127577);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 19, 2, 0.100410101);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 4, 3, 0.1432648979);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 16, 3, 0.0641402633);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 19, 3, 0.0593802779);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 18, 4, 0.1673995048);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 5, 5, 0.2134129367);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 7, 5, 0.2743237406);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 8, 4, 0.2875691407);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 5, 3, 0.0887035573);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 9, 4, 0.2304011492);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 13, 1, 0.1834973688);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 14, 2, 0.1606063971);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 8, 5, 0.1211034163);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 0, 4, 0.1865524903);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 19, 4, 0.0005355839);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 0, 5, 0.1322595977);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 5, 4, 0.2045378811);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 15, 3, 0.0302988321);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 14, 3, 0.1348867618);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 1, 4, 0.050850568);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 1, 1, 0.1817233195);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 11, 3, 0.0559487568);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 7, 5, 0.0141561203);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 13, 2, 0.1148377729);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 17, 1, 0.0146991238);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 14, 3, 0.1649432278);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 18, 4, 0.2467868562);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 18, 5, 0.0400645678);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 11, 5, 0.1719483148);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 12, 4, 0.1767150548);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 2, 2, 0.0115403744);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 5, 1, 0.1072897455);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 1, 3, 0.0211515018);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 11, 4, 0.256151669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 9, 1, 0.0904940063);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 13, 5, 0.2456273061);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 17, 2, 0.2042899614);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 12, 2, 0.2969763343);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 6, 4, 0.2681789971);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 1, 2, 0.2613278776);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 1, 2, 0.137029903);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 13, 5, 0.2941615523);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 13, 4, 0.1991181028);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 11, 5, 0.2851737856);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 11, 4, 0.015898503);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 6, 2, 0.1854021066);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 6, 5, 0.2555116179);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 15, 3, 0.125336719);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 12, 3, 0.1180295973);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 14, 2, 0.2897125762);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 2, 4, 0.2472490209);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 15, 5, 0.0618511243);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 11, 3, 0.048627226);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 4, 2, 0.2094183555);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 5, 1, 0.2625988341);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 11, 1, 0.2160756241);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 8, 3, 0.2325420963);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 16, 3, 0.2600832876);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 2, 5, 0.1834516289);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 9, 3, 0.2839194261);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 19, 1, 0.0832419256);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 11, 3, 0.2131226623);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 16, 3, 0.0426371218);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 0, 3, 0.2080380126);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 16, 1, 0.1119221781);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 3, 4, 0.265752833);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 5, 4, 0.2166768058);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 14, 1, 0.0778818579);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 2, 3, 0.0192190074);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 4, 4, 0.1865517843);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 0, 3, 0.0116133594);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 15, 1, 0.0964305264);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 0, 5, 0.0216688954);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 1, 3, 0.1953233502);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 13, 2, 0.117084161);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 6, 4, 0.091202954);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 1, 2, 0.1613693472);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 13, 1, 0.0491899079);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 16, 4, 0.1719552228);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 12, 3, 0.2803972779);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 6, 1, 0.2183532398);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 10, 5, 0.0065332388);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 2, 1, 0.1931710936);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 19, 5, 0.182264493);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 4, 4, 0.0491258077);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 0, 3, 0.1895693652);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 18, 1, 0.1125529125);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 8, 3, 0.0905373148);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 19, 5, 0.0719966849);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 2, 3, 0.1888101096);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 10, 5, 0.2784491034);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 8, 1, 0.20337685);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 14, 1, 0.0487112678);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 18, 3, 0.2645963125);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 5, 5, 0.1687741464);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 19, 2, 0.1763976127);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 4, 1, 0.2987874976);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 12, 4, 0.2555308283);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 19, 5, 0.0316434573);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 0, 4, 0.0289875318);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 15, 5, 0.2632508561);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 8, 2, 0.0846562414);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 10, 1, 0.0459106798);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 9, 2, 0.0716625567);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 0, 2, 0.0110489643);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 13, 3, 0.2145444708);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 11, 1, 0.1562806884);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 10, 3, 0.2096477928);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 7, 2, 0.2887926357);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 0, 5, 0.173983822);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 6, 5, 0.0343898055);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 18, 4, 0.1703670383);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 3, 3, 0.0370139092);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 8, 3, 0.2832383872);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 13, 1, 0.112686749);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 2, 3, 0.245171921);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 2, 1, 0.1107584227);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 7, 5, 0.2875007762);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 12, 5, 0.272660562);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 13, 2, 0.030666188);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 13, 1, 0.1833721251);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 7, 3, 0.1354298291);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 18, 3, 0.192632549);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 6, 4, 0.2008485486);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 12, 4, 0.148535989);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 15, 3, 0.2454091945);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 19, 3, 0.0280439685);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 10, 1, 0.1158153484);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 0, 4, 0.1793665911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 5, 3, 0.18929924);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 13, 5, 0.1486072578);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 11, 5, 0.0986553215);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 14, 2, 0.2263168666);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 6, 5, 0.0257626321);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 9, 1, 0.1148551663);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 14, 4, 0.1643338925);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 8, 3, 0.2562556766);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 10, 2, 0.2908084355);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 5, 5, 0.0967480303);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 2, 3, 0.2867048302);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 18, 2, 0.0037488751);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 1, 4, 0.2903977776);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 5, 5, 0.043462442);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 12, 5, 0.2839386706);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 2, 3, 0.2604970733);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 3, 2, 0.1821104048);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 16, 5, 0.1359017842);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 3, 2, 0.2966684108);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 4, 1, 0.2341585824);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 16, 5, 0.0349082383);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 3, 3, 0.2361314215);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 12, 3, 0.2990210261);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 17, 5, 0.1565518405);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 5, 2, 0.2781897339);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 0, 3, 0.2676158223);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 8, 2, 0.1825921753);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 13, 5, 0.2191127206);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 1, 5, 0.2160118181);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 4, 2, 0.0457135289);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 10, 4, 0.0941896929);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 15, 1, 0.2374258765);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 4, 2, 0.117894049);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 14, 5, 0.212758951);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 2, 3, 0.1722330925);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 15, 1, 0.1853930282);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 7, 5, 0.1778228582);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 12, 4, 0.0107032164);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 8, 4, 0.2283719101);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 13, 5, 0.2975341348);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 11, 1, 0.21649671);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 12, 3, 0.2523350867);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 12, 5, 0.1923267507);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 10, 1, 0.1301573968);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 2, 1, 0.224352111);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 18, 4, 0.0520751155);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 18, 2, 0.1926658786);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 10, 3, 0.1383479664);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 1, 4, 0.1997629059);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 12, 1, 0.2332780861);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 17, 3, 0.0111360414);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 13, 5, 0.074210776);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 4, 2, 0.194674889);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 14, 5, 0.1000406067);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 4, 1, 0.0173488387);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 5, 3, 0.1935231247);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 0, 2, 0.1485421021);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 10, 3, 0.056522583);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 11, 2, 0.1547316678);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 16, 5, 0.1188515674);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 18, 2, 0.1805185016);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 14, 1, 0.1998420639);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 2, 2, 0.0059389236);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 6, 4, 0.2564250052);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 0, 3, 0.2460762302);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 14, 4, 0.0439072836);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 18, 4, 0.2815468536);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 5, 2, 0.289498197);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 4, 1, 0.1972400654);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 14, 4, 0.2638767478);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 13, 3, 0.2215201284);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 6, 1, 0.0227573893);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 2, 3, 0.1196716305);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 6, 2, 0.1074756179);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 9, 2, 0.20191006);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 4, 4, 0.1392734497);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 16, 3, 0.0007763051);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 6, 3, 0.1461612496);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 5, 2, 0.2004449855);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 10, 4, 0.0475168333);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 3, 5, 0.1794147078);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 12, 2, 0.2254599544);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 19, 3, 0.1758210949);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 5, 4, 0.148042668);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 14, 2, 0.2687543161);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 8, 1, 0.071650119);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 14, 3, 0.2139697221);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 1, 2, 0.1813469546);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 13, 5, 0.2187205267);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 16, 2, 0.239440094);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 9, 4, 0.0345026421);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 5, 2, 0.0464998421);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 15, 2, 0.1173467543);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 11, 5, 0.0216869832);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 4, 2, 0.0754191568);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 10, 5, 0.2606115761);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 3, 3, 0.292636268);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 4, 4, 0.0744503669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 4, 5, 0.1644746148);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 5, 3, 0.2658807254);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 9, 4, 0.1173535205);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 1, 5, 0.0066677591);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 13, 2, 0.2123057065);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 10, 2, 0.1873084768);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 19, 3, 0.0579656864);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 6, 1, 0.1165224091);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 11, 2, 0.1228748283);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 6, 1, 0.0124958398);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 1, 4, 0.1006824212);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 11, 3, 0.0703279574);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 10, 2, 0.1226299315);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 0, 1, 0.0556523729);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 5, 1, 0.1631625861);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 18, 1, 0.2933812348);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 16, 4, 0.2771570484);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 2, 2, 0.1791467138);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 7, 2, 0.0357300529);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 16, 2, 0.0278678056);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 18, 2, 0.2826136222);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 18, 4, 0.2979138092);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 13, 1, 0.0234177801);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 15, 2, 0.2497169403);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 9, 5, 0.1551554221);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 14, 3, 0.1551744704);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 7, 5, 0.0843007525);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 4, 4, 0.0801392096);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 10, 2, 0.1988577175);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 10, 2, 0.0251022858);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 7, 3, 0.1487515046);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 18, 3, 0.1213115288);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 5, 2, 0.0792607775);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 7, 4, 0.1058898365);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 12, 1, 0.1175500142);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 4, 4, 0.0926349866);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 14, 5, 0.2808366191);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 7, 2, 0.1705373326);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 19, 1, 0.1486618793);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 3, 2, 0.207469591);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 14, 3, 0.2406740664);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 18, 3, 0.080247031);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 0, 5, 0.1408127584);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 10, 2, 0.0803546376);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 10, 5, 0.0511002707);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 13, 5, 0.1616746314);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 16, 2, 0.234904317);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 10, 3, 0.1940826201);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 2, 2, 0.1816452356);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 7, 5, 0.1495451324);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 18, 3, 0.0475181334);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 15, 4, 0.0818170783);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 16, 5, 0.0371163105);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 13, 3, 0.1934178877);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 6, 2, 0.1132802793);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 9, 1, 0.2931995966);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 0, 2, 0.2198854305);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 14, 5, 0.1130426896);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 1, 5, 0.1735448382);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 3, 5, 0.1300481332);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 14, 5, 0.2227778072);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 6, 5, 0.0060069217);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 17, 1, 0.1536333862);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 0, 3, 0.1884924026);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 15, 3, 0.1059355081);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 13, 3, 0.2398643022);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 2, 1, 0.0545123795);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 3, 5, 0.0543386888);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 18, 5, 0.2528650514);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 5, 3, 0.0664019783);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 15, 4, 0.0347229025);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 19, 5, 0.0453796157);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 16, 4, 0.0635330701);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 12, 1, 0.1345851569);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 3, 3, 0.2683622531);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 6, 2, 0.1614040344);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 7, 5, 0.2214137019);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 12, 5, 0.1042023278);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 12, 2, 0.1158071278);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 10, 1, 0.1716757767);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 3, 4, 0.1881631308);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 3, 3, 0.1566411978);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 11, 2, 0.2996909038);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 11, 4, 0.1653318775);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 2, 3, 0.2882489983);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 9, 4, 0.1974651886);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 8, 2, 0.1173959455);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 19, 2, 0.0729460072);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 17, 2, 0.0044924357);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 4, 2, 0.1849547855);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 19, 2, 0.2463803354);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 0, 4, 0.2502914814);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 8, 3, 0.1280534986);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 1, 2, 0.1452502642);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 13, 2, 0.2758266133);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 12, 2, 0.2950853619);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 6, 3, 0.2448891519);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 9, 4, 0.0267349564);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 9, 1, 0.0569008714);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 8, 2, 0.1572948338);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 12, 5, 0.1643657282);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 8, 5, 0.1109728376);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 19, 1, 0.2642077343);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 17, 5, 0.0444150862);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 13, 3, 0.2456944333);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 1, 1, 0.0871984837);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 19, 3, 0.1963478355);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 3, 1, 0.1863272837);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 16, 5, 0.0629822729);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 7, 5, 0.126448916);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 17, 1, 0.1810245719);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 13, 4, 0.1976053574);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 17, 3, 0.1719278736);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 11, 4, 0.1359761539);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 14, 3, 0.0356858866);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 8, 1, 0.2981777666);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 13, 2, 0.2080073574);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 3, 5, 0.215923157);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 13, 1, 0.0442234457);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 14, 2, 0.2805694943);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 15, 2, 0.293928202);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 13, 2, 0.0065226859);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 5, 2, 0.0351184605);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 15, 5, 0.1895728033);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 19, 2, 0.0246262718);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 17, 1, 0.0397412785);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 14, 3, 0.0193455409);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 10, 1, 0.1764349084);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 17, 1, 0.2191538754);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 9, 5, 0.2482275958);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 10, 5, 0.2704257131);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 12, 5, 0.2906802261);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 18, 3, 0.1024796254);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 2, 3, 0.08811374);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 10, 5, 0.2771214709);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 0, 4, 0.2865522188);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 7, 3, 0.2393272911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 3, 3, 0.0190055769);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 7, 4, 0.2336950968);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 12, 1, 0.1673706824);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 17, 4, 0.037555965);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 1, 1, 0.0719823562);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 4, 4, 0.2341002191);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 13, 3, 0.2140582151);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 9, 2, 0.2559704584);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 19, 2, 0.0570411695);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 16, 1, 0.2493403705);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 2, 2, 0.0816345166);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 3, 5, 0.0923057065);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 2, 3, 0.0866153699);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 0, 3, 0.175903539);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 6, 2, 0.0549667156);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 2, 5, 0.0153217418);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 13, 5, 0.168360608);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 8, 5, 0.2934549888);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 3, 4, 0.2563366345);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 2, 4, 0.1478943422);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 15, 3, 0.2431654534);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 7, 3, 0.0301858969);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 4, 4, 0.0422466944);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 15, 2, 0.2266660156);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 9, 2, 0.0796600193);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 5, 3, 0.1472483831);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 18, 5, 0.1481472529);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 11, 2, 0.2838408686);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 11, 4, 0.2199270923);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 0, 3, 0.0628661305);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 12, 3, 0.244305984);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 18, 5, 0.1308601499);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 15, 3, 0.1948024972);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 18, 1, 0.0458885976);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 15, 1, 0.1659523994);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 13, 2, 0.1791740962);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 8, 2, 0.1722690698);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 2, 2, 0.2741671118);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 10, 4, 0.1437058386);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 18, 1, 0.0029723922);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 7, 1, 0.1280792637);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 16, 1, 0.2670596928);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 0, 4, 0.2958237633);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 3, 3, 0.032399839);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 15, 4, 0.2655070987);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (4, 13, 5, 0.1251539896);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 1, 5, 0.2169049906);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (10, 8, 2, 0.2041278911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 7, 1, 0.0208358015);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 15, 3, 0.0908978379);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 9, 1, 0.2136769175);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 8, 1, 0.0742549061);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 14, 2, 0.1683974231);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 15, 5, 0.0035603448);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 10, 2, 0.2283881193);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 6, 5, 0.2457608594);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 19, 1, 0.2604882812);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 17, 3, 0.1428962355);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (16, 17, 4, 0.1259815849);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 6, 1, 0.00511911);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 19, 4, 0.083061974);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 10, 2, 0.2858367945);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 8, 2, 0.1328497862);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 9, 2, 0.1732041405);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 11, 2, 0.1439593577);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 2, 2, 0.1933344363);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 11, 5, 0.2738248834);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 6, 1, 0.1158427528);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 16, 3, 0.2179562758);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 1, 4, 0.0845357786);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 17, 2, 0.2144669198);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 11, 5, 0.1024953377);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 9, 1, 0.1857150128);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (46, 18, 3, 0.1090469644);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 10, 2, 0.1562431334);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 18, 4, 0.0446048405);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 13, 5, 0.2296003899);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (17, 9, 2, 0.0220697472);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 2, 3, 0.2705025674);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 5, 3, 0.1898173602);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 2, 4, 0.0194670994);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 14, 3, 0.2379964303);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 19, 4, 0.2704795148);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (37, 16, 5, 0.0414348098);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 10, 4, 0.2949478678);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (25, 12, 2, 0.2419223184);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (44, 11, 5, 0.2880690826);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 9, 5, 0.2758400091);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 7, 4, 0.2531691196);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 11, 1, 0.1287683079);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 13, 1, 0.2490315655);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 7, 4, 0.1384938531);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (47, 7, 4, 0.0028620645);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (35, 11, 1, 0.1112607535);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 9, 1, 0.2183190825);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 1, 2, 0.1186030603);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 14, 2, 0.2979210352);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 17, 2, 0.0354752188);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 1, 4, 0.2403569795);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 18, 2, 0.2364253765);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 5, 2, 0.2855426897);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (39, 19, 2, 0.0766846939);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 15, 1, 0.1540000344);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 16, 2, 0.2861678847);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 16, 3, 0.1507756748);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 13, 2, 0.1587986925);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 18, 4, 0.2827443117);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 12, 3, 0.2925690151);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 16, 3, 0.234732944);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 7, 4, 0.2431483613);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 17, 1, 0.2963664557);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 6, 2, 0.155775077);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (48, 18, 5, 0.2225442715);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 1, 2, 0.2675537257);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 8, 3, 0.1812664117);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 3, 1, 0.1222941354);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 14, 3, 0.0579546332);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 2, 4, 0.0024659297);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (5, 11, 1, 0.1282121458);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (14, 12, 4, 0.2960276623);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (41, 18, 5, 0.03456008);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (2, 8, 3, 0.0789019403);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 5, 3, 0.2747932669);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 3, 2, 0.2729027514);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (11, 18, 2, 0.0469045093);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 0, 5, 0.0397136503);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 18, 3, 0.2199685553);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (6, 8, 3, 0.1444207691);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (32, 10, 2, 0.2297386886);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 7, 3, 0.2448055653);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 8, 3, 0.259250336);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (49, 8, 3, 0.2814043295);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (36, 13, 5, 0.1743833556);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 4, 2, 0.1314708333);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 4, 2, 0.0807073053);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 18, 3, 0.1501074197);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (24, 2, 5, 0.0510086112);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 0, 4, 0.0962219662);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (38, 6, 5, 0.1805809995);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 16, 3, 0.1089864099);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 17, 5, 0.0463887188);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (26, 4, 5, 0.0307082346);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (9, 7, 4, 0.1210796208);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 13, 4, 0.1685017781);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (12, 17, 2, 0.0420143415);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (8, 9, 1, 0.2609923741);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 19, 5, 0.1433413676);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (18, 14, 1, 0.1506873111);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 14, 3, 0.0163326377);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 2, 5, 0.2164836315);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 10, 3, 0.1829975283);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (23, 3, 5, 0.0837239941);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (30, 1, 4, 0.0201655997);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (40, 6, 3, 0.2039076956);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 10, 2, 0.1517198302);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (0, 9, 5, 0.1643305776);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (43, 0, 3, 0.0772658502);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (22, 1, 3, 0.1258821516);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 12, 5, 0.0359081432);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (27, 10, 2, 0.2636748904);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 4, 3, 0.0154869825);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 1, 5, 0.2127020369);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (7, 18, 5, 0.0948171665);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (50, 17, 5, 0.2766731566);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (13, 13, 3, 0.0022500874);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (34, 14, 3, 0.0161067221);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (29, 11, 4, 0.0674145469);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (1, 6, 3, 0.2005915795);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 19, 2, 0.2533026243);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (33, 17, 3, 0.0304334519);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (21, 12, 5, 0.1120208434);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (42, 3, 4, 0.2448577878);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 9, 5, 0.2829018655);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (3, 11, 3, 0.2081088878);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (31, 3, 4, 0.1681758365);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (15, 16, 1, 0.0069901001);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 6, 5, 0.1054079374);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (45, 10, 2, 0.0988963003);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (28, 14, 5, 0.1816611558);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (19, 6, 1, 0.0302166137);
insert into SP_DonHang (IDDonHang, IDSanPham, SoLuong, TyLeGiamGia) values (20, 15, 5, 0.1279522867);


update SP_DonHang set DonGiaBan = (select DonGiaNhap from SanPham where IDSanPham = SP_DonHang.IDSanPham)
