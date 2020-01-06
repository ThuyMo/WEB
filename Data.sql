use daugia;
select * from users;
 
 select * from describe_product;

-- user
-- admin
INSERT INTO users(uname,birthday,pass,address,email, position) 
VALUES ('Phan Anh Tú ', '1990-10-17','pat1234','983 Sư Vạn Hạnh, F4, Q10, TP HCM','patu@gmail.com','admin'),
('Phạm Đức Trọng ', '1986-08-20','pdt1234','217 Nguyễn Văn Cừ, F4, Q5, TP HCM','pdtrong@gmail.com','admin');  

-- seller
INSERT INTO users(uname,birthday,pass,address,score_plus,score_sub,email, position, state) 
VALUES ('Trịnh Trần Phương Tuấn', '1987-06-11','ttpt1234','345 Hùng Vương, F8, Q5, TP HCM', 1,0,'ttptuan@gmail.com','seller',1),
  ('Nguyễn Bảo Khánh', '1989-10-26','nbk1234','490 An Dương Vương, F4, Q6, TP HCM',2,0,'nbkhanh@gmail.com','seller',1),
  ('Trị Thu Phương', '1997-01-19','ttp1234','234 Điện Biên Phủ, F3, Q.Bình Thạnh, TP HCM',0,0,'ttphuong@gmail.com','seller',0 ),
  ('Trần Quang Huy', '1995-09-24','tqh1234','234 Lê Duẫn, F1, Q1, TP HCM',3,0,'tqhuy@gmail.com','seller',1 ),
  ('Lê Ngọc Dung', '1985-12-30','lnd1234','255 Đoàn Văn B, F4, Q4, TP HCM',0,0,'lndung@gmail.com','seller',0);  

-- bidder
INSERT INTO users(uname,birthday,pass,address,score_plus,score_sub,email, position, state) 
VALUES ('Trần Minh Thư', '1985-10-10','tmt1234','445 Nguyễn Trãi, F4, Q5, TP HCM',1,0,'tmt@gmail.com','bidder',1),
('Nguyễn Thị Huyên', '1987-04-11','nth1234','17 Thành Thái, F7, Q10, TP HCM',2,0,'nthuyen@gmail.com','bidder',1),
 ('Ngô Ánh Tuyết', '1989-05-20','nat1234','276 Tô Hiến Thành, F4, Q10, TP HCM',0,0,'natuyet@gmail.com','bidder',1),
 ('Thiều Bảo Ngọc', '1987-09-14','tbn1234','205 Nguyễn Trãi, F4, Q5, TP HCM',2,0,'tbngoc@gmail.com','bidder',1),
 ('Lê Văn Hiên ', '1989-12-22','lvh1234','240 Nguyễn Thị Minh Khai, F3, Q1, TP HCM',0,0,'lvhien@gmail.com','bidder',0)
 ;  

 


-- catetogy
INSERT INTO category (type) 
VALUES ('Máy tính xách tay'),
	(' Điện thoại di động'); 


-- product
-- select * from users;
-- select * from category;
-- select * from product;
-- Máy tính xách tay
INSERT INTO product (category,name_product,name_avata,price_step,price_maketing ,seller)
VALUES (1, 'Asus VivoBook X409F i5 8265U/8GB/1TB/Win10 (EK138T)', 'l1-1.jpg', 200000, 14000000,4),
	(1,'HP 15s du0056TU i3 7020U/4GB/1TB/Win10 (6ZF53PA)','l2-1.jpg', 200000,12000000,5),
	(1,'Acer Aspire A315 54 36QY i3 10110U/4GB/256GB/Win10 (NX.HM2SV.001)','l3-1.jpg', 200000,13000000, 3),
	(1,'Lenovo IdeaPad S145 15IKB i3 7020U/4GB/256GB/Win10 (81VD0035VN)','l4-1.jpg', 200000,13000000,5 ),
    (1,'Dell Inspiron 5593 i3 1005G1/4GB/128GB/Win10 (70196703)','l5-1.jpg', 200000,16000000,7 ),
    (1,'Asus VivoBook A412FA i5 8265U/8GB/32GB+512GB/Win10 (EK662T)','l6-1.jpg', 200000,18000000,8),
    (1,'Asus VivoBook X509FJ i7 8565U/8GB/512GB/2GB MX230/Win10 (EJ133T)','l7-1.jpg', 200000,19000000,7),
    (1,'Acer Swift 3 SF315 52 50T9 i5 8250U/8GB/256GB/Win10 (NX.GZBSV.002)','l8-1.jpg', 200000,18000000,6),
    (1,'HP 15s du0115TU i3 7020U/4GB/512GB/Win10 (8VB37PA)','l9-1.jpg',200000,13000000 ,4),
    (1,'Acer Aspire A315 34 C2H9 N4000/4GB/256GB/Win10 (NX.HE3SV.005)','l10-1.jpg',100000,6500000,5 ),
    (1,'Asus Gaming ROG Strix G531GD i7 9750H/8GB/512GB/4GB GTX1050/Win10 (AL034T)','l11-1.jpg', 300000,27000000,8),
    (1,'MSI Gaming 15 GF63 9SC i7 9750H/8GB/256GB/4GB GTX1650/Win10 (070VN)' ,'l12-1.jpg',300000,26000000,3),
    (1,'Lenovo IdeaPad L340 15IRH i5 9300H/8GB/512GB/3GB GTX1050/Win10 (81LK00VTVN)','l13-1.jpg', 200000,20000000,4),
    (1, 'Apple MacBook Pro 2018 Touch i5 2.3GHz/8GB/256GB (MR9Q2SA/A)','l14-1.jpg',400000,39000000,7),
    (1,'Acer Swift 3 SF315 52 38YQ i3 8130U/4GB/1TB/Win10 (NX.GZBSV.003)' ,'l15-1.jpg',200000,14000000,6),
    (1, 'Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)','l16-1.jpg',200000,20000000,5),
    (1, 'Dell Vostro 3580 i3 8145U/4GB/1TB/Win10 (V5I3058W)','l17-1.jpg',200000,14000000,6),
    (1,'Asus VivoBook X509FJ i3 8145U/4GB/1TB/2GB MX230/Win10 (EJ227T)' ,'l18-1.jpg',200000,13200000,3),
    (1,'Acer Swift SF114 32 P8TS N5000/4GB/64GB/14"F/Win10/(NX.GXQSV.001)' ,'l19-1.jpg',200000,'9100000',4),
    (1,'Laptop Asus VivoBook X407UA i3 7020U/4GB/1TB/Win10 (BV351T)' ,'l20-1.jpg',200000,1200000,4)
;
-- điện thoại
INSERT INTO product (category,name_product,name_avata,price_step,price_maketing ,seller)
VALUES	(2,' OPPO A5 (2020) 64GB','d1-1.png',100000,4400000,3),
	(2,' Xiaomi Redmi 8 (3GB/32GB)','d2-1.png',100000, 3100000,5),
    (2, ' iPhone 11 64GB','d3-1.png',200000,23000000,4),
    (2, 'Vivo U10', 'd4-1.png',100000, 4200000, 6),
    (2,'Realme 5 (3GB/64GB)','d5-1.png', 100000, 4100000,7),
    (2,'iPhone 11 Pro Max 512GB','d6-1.png', 300000, 45000000, 4 ),
    (2,'Samsung Galaxy Note 10 Đỏ','d7-1.png', 200000, 24000000,5 ),
    (2,'Huawei P30 Pro','d8-1.png', 200000,25000000, 7 ),
    (2, 'BlackBerry KEY2','d9-1.png', 100000,16000000,6),
    (2, 'Vivo S1 Pro','d10-1.png', 100000,6700000,8),
    (2,'Nokia 7.2','d11-1.png', 100000, 5600000 ,6 ),
    (2, 'Samsung Galaxy A30','d12-1.png',100000, 4900000, 8 ),
    (2,'OPPO F11','d13-1.png', 100000, 5600000,3 ),
    (2,'OPPO K3','d14-1.png', 100000, 5620000, 4 ),
    (2,'BlackBerry KEYone 3GB/32GB','d15-1.png', 100000, 7200000, 5 ),
    (2, 'iPhone Xs 64GB','d16-1.png', 100000, 26000000,  7 ),
    (2, 'Xiaomi Mi 9T','d17-1.png', 100000, 8300000, 5 ),
    (2, 'iPhone 11 128GB','d18-1.png', 200000, 2500000, 6),
    (2, 'Samsung Galaxy Note 10', 'd19-1.png', 200000, 28000000,3),
    (2, 'iPhone 7 32GB','d20-1.png', 100000, 11000000, 4)
; 


    

-- image_product
INSERT INTO image_product (id_product ,name)
values (1,'d1-2.jpg'),
	(1,'d1-3.jpg'),
    (1,'d1-4.jpg'),
    (2,'d2-2.jpg'),
    (2,'d2-3.jpg'),
    (2,'d2-4.jpg'),
    (3,'d3-2.jpg'),
    (3,'d3-3.jpg'),
    (3,'d3-4.jpg'),
    (4,'d4-2.jpg'),
    (4,'d4-3.jpg'),
    (4,'d4-4.jpg'),
    (5,'d5-2.jpg'),
    (5,'d5-3.jpg'),
    (5,'d5-4.jpg'),
    (6,'d6-2.jpg'),
    (6,'d6-3.jpg'),
    (6,'d6-4.jpg'),
    (7,'d7-2.jpg'),
    (7,'d7-3.jpg'),
    (7,'d7-4.jpg'),
    (8,'d8-2.jpg'),
    (8,'d8-3.jpg'),
    (8,'d8-4.jpg'),
    (9,'d9-2.jpg'),
    (9,'d9-3.jpg'),
    (9,'d9-4.jpg'),
    (10,'d10-2.jpg'),
    (10,'d10-3.jpg'),
    (10,'d10-4.jpg'),
    (11,'d11-2.jpg'),
    (11,'d11-3.jpg'),
    (11,'d11-4.jpg'),
    (12,'d12-2.jpg'),
    (12,'d12-3.jpg'),
    (12,'d12-4.jpg'),
    (13,'d13-2.jpg'),
    (13,'d13-3.jpg'),
    (13,'d13-4.jpg'),
    (14,'d14-2.jpg'),
    (14,'d14-3.jpg'),
    (14,'d14-5.jpg'),
    (15,'d15-2.jpg'),
    (15,'d15-3.jpg'),
    (15,'d15-4.jpg'),
    (16,'d16-2.jpg'),
    (16,'d16-3.jpg'),
    (16,'d16-4.jpg'),
    (17,'d17-2.jpg'),
    (17,'d17-3.jpg'),
    (17,'d17-4.jpg'),
    (18,'d18-2.jpg'),
    (18,'d18-3.jpg'),
    (18,'d18-4.jpg'),
    (19,'d19-2.jpg'),
    (19,'d19-3.jpg'),
    (19,'d19-4.jpg'),
    (20,'d20-2.jpg'),
    (20,'d20-3.jpg'),
    (20,'d20-4.jpg'),
    (21,'l1-2.jpg'),
	(21,'l1-3.jpg'),
    (21,'l1-4.jpg'),
    (22,'l2-2.jpg'),
    (22,'l2-3.jpg'),
    (22,'l2-4.jpg'),
    (23,'l3-2.jpg'),
    (23,'l3-3.jpg'),
    (23,'l3-4.jpg'),
    (24,'l4-2.jpg'),
    (24,'l4-3.jpg'),
    (24,'l4-4.jpg'),
    (25,'l5-2.jpg'),
    (25,'l5-3.jpg'),
    (25,'l5-4.jpg'),
    (26,'l6-2.jpg'),
    (26,'l6-3.jpg'),
    (26,'l6-4.jpg'),
    (27,'l7-2.jpg'),
    (27,'l7-3.jpg'),
    (27,'l7-4.jpg'),
    (28,'l8-2.jpg'),
    (28,'l8-3.jpg'),
    (28,'l8-4.jpg'),
    (29,'l9-2.jpg'),
    (29,'l9-3.jpg'),
    (29,'l9-4.jpg'),
    (30,'l10-2.jpg'),
    (30,'l10-3.jpg'),
    (30,'l10-4.jpg'),
    (31,'l11-2.jpg'),
    (31,'l11-3.jpg'),
    (31,'l11-4.jpg'),
    (32,'l12-2.jpg'),
    (32,'l12-3.jpg'),
    (32,'l12-4.jpg'),
    (33,'l13-2.jpg'),
    (33,'l13-3.jpg'),
    (33,'l13-4.jpg'),
    (34,'l14-2.jpg'),
    (34,'l14-3.jpg'),
    (34,'l14-5.jpg'),
    (35,'l15-2.jpg'),
    (35,'l15-3.jpg'),
    (35,'l15-4.jpg'),
    (36,'l16-2.jpg'),
    (36,'l16-3.jpg'),
    (36,'l16-4.jpg'),
    (37,'l17-2.jpg'),
    (37,'l17-3.jpg'),
    (37,'l17-4.jpg'),
    (38,'l18-2.jpg'),
    (38,'l18-3.jpg'),
    (38,'l18-4.jpg'),
    (39,'l19-2.jpg'),
    (39,'l19-3.jpg'),
    (39,'l19-4.jpg'),
    (40,'l20-2.jpg'),
    (40,'l20-3.jpg'),
    (40,'l20-4.jpg')
;

-- select * from image_product;

-- describe_product
INSERT INTO describe_product (id_product,date_update,content) 
values (1,'2019-12-20','Đặc điểm nổi bật của OPPO A5 (2020) 64GB

Bộ sản phẩm chuẩn: Hộp, Sạc, Sách hướng dẫn, Cáp, Cây lấy sim
Thiết kế hiện đại, bắt mắt, kèm theo hiệu ứng chuyển màu dưới ánh sáng đẹp mắt, tinh tế.

Mặt trước là màn hình "giọt nước" kích thước 6.5 inch, với diện tích màn hình chiếm toàn mặt trước là 89.3%, bảo vệ bằng kính Gorilla Glass 3+.
Pin trâu không lo bị hết

Một điểm thú vị, bạn có "hô biến" OPPO A5 (2020) thành một cục pin dự phòng và sạc cho thiết bị khác thông qua cáp kết nối OTG.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(2,'2019-12-22','Thiết kế mặt lưng bóng bẩy sang trọng
Xiaomi Redmi 8 32GB có vẻ bề ngoài nổi bật nhờ màn hình tràn cạnh tỷ lệ 18:9 với phần viền được làm mỏng theo xu thế hiện đại.
Màn hình máy thể hiện màu sắc khá chính xác, đáp ứng tốt nhu cầu xem phim hay trải nghiệm giải trí về hình ảnh của người dùng.

Bảo vệ bằng kính cường lực Corning Gorilla Glass 5, cộng thêm lớp phủ nano chống thấm nước, kích thước màn hình 6.22 inch.

Mặt lưng của chiếc điện thoại này được làm bằng chất nhiệu nhựa giả kính trông khá bóng bẩy. 
Tích hợp chip Qualcomm Snapdragon 439 8 nhân 64-bit, RAM 3 GB và bộ nhớ trong 32 GB hỗ trợ thao tác cuộn hay điều khiển đa nhiệm.
Khi chơi tựa game “quốc dân” Liên quân Mobile trên Redmi 8, máy xử lý mượt mà, ít gặp hiện tượng giật, lag hay giảm FPS.
Thiết bị có một tính năng khá thú vị đó là nghe đài FM không cần cắm tai nghe.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(3,'2019-12-22','iPhone 11 chúng ta sẽ có tới hai camera ở mặt sau.
Camera chính vẫn có độ phân giải 12 MP thì chúng ta sẽ có thêm một camera góc siêu rộng và cũng với độ phân giải tương tự.
Theo Apple thì việc chuyển đổi qua lại giữa hai ống kính thì sẽ không làm thay đổi màu sắc của bức ảnh, nâng cấp độ phân giải camera trước nên 12 MP
Camera trước cũng có một tính năng thông minh, khi bạn xoay ngang điện thoại nó sẽ tự kích hoạt chế độ selfie góc rộng để bạn có thể chụp với nhiều người hơn.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(4,'2020-12-24','Màn hình chiếc điện thoại Vivo U10 có kích thước 6.35 inch độ phân giải HD+ trên tấm nền IPS LCD độ sáng cao, cho góc nhìn tốt, màu sắc trung tính.
Thiết kế mặt lưng bóng bẩy, hoàn thiện tốt, không để lại dấu vân tay kết hợp với hiệu ứng chuyển đổi màu bắt mắt đem lại cho bạn cảm giác trẻ trung, hiện đại.
Viền màn hình của Vivo U10 được làm mỏng và bo cong các góc kết hợp với mặt kính 2.5D cho trải nghiệm cầm nắm nhẹ nhàng, thoải mái mỗi khi sử dụng

Camera máy có chất lượng tốt
Máy được trang bị bộ ba camera trí tuệ nhân tạo bao gồm: 1 camera chính 13 MP, 1 camera góc rộng 8 MP và 1 camera đo chiều sâu 2 MP cùng đèn flash led. 
Hệ thống camera được hỗ trợ AI giúp máy có thể tự động nhận diện chủ thể mà tự điều chỉnh, lấy nét, cân bằng ánh sáng, không cần phải tinh chỉnh nhiều, chụp góc rộng 118 độ giúp bắt trọn mọi khoảnh khắc đẹp hay chụp hình xóa phông độc đáo.
Camera trước có độ phân giải 8 MP cùng nhiều công nghệ hiện đại đáp ứng tốt nhu cầu selfie của mọi người dùng.

Hiệu năng tốt, trải nghiệm mượt 
Dung lượng pin khủng 5000 mAh, hỗ trợ công nghệ sạc nhanh 18W.
Điện thoại Vivo U10 | Cảm biến vân tay ở mặt sau
Ngoài ra máy có hỗ trợ cảm biến vân tay ở mặt lưng. ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(5,'2019-12-25','Camera "bá đạo" trong phân khúc
Realme 5 sở hữu cho mình tới 4 camera sau ở trong phân khúc mà những chiếc máy khác đang "loay hoay" với cụm camera kép.
Với cụm camera này thì Realme 5 tự tin đáp ứng cho bạn hầu hết các nhu cầu trong cuộc sống thường ngàyNếu bạn đi du lịch đã có camera góc siêu rộng với khả năng thu được nhiều chi tiết hơn thoải mái cho chụp nhóm hay thiên nhiên hùng vĩ.
Bên cạnh đó máy còn sở hữu riêng một ống kính macro 2 MP giúp bạn có thể chụp được những chủ thể ở khoảng cách rất gần.
Camera selfie ở mặt trước với độ phân giải 13 MP với tính năng làm đẹp bằng AI.
Pin khủng: thời gian gọi 49 giờ, 12 giờ YouTube và 156 giờ nghe nhạc qua tai nghe, trang bị cho máy công nghệ 10W giúp bạn rút ngắn được đáng kể thời gian chờ sạc.
Cấu hình là điểm cộng lớn
Kết hợp với đó là 3 GB RAM cùng 64 GB bộ nhớ trong khá thoải mái cho bạn cài đặt và lưu trữ dữ liệu cá nhân.

Chiếc smartphone Realme này được cài đặt sẵn ColorOS 6.0.1 dựa trên Android 9.0 Pie.

Bảo mật bằng mật khẩu hoặc dấu vân tay của người dùng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(6,'2019-12-25','Hiệu năng "đè bẹp" mọi đối thủ
iPhone 11 Pro Max 512GB năm nay sử dụng chip Apple A13 Bionic mới nhất, nhanh và tiết kiệm điện hơn so với A12 năm ngoái.
Máy cũng sở hữu riêng một con chip AI Neural Engine sẽ phụ trách các tính năng xử lý hình ảnh như Deep Fusion và Night Mode.
Điểm Geekbench của iPhone 11 Pro Max

Theo Apple thì đây là điện thoại thông minh có hiệu suất nhanh nhất thế giới ở thời điểm hiện tại.
Thậm chí hiệu năng của bộ vi xử lý A13 Bionic mới của Apple có thể sánh ngang với các bộ vi xử lý máy tính nhanh nhất hiện tại của Intel và AMD.
Máy sẽ chạy trên phiên bản iOS 13 mới với nhiều tính năng tiện dụng giúp bạn khai thác chiếc iPhone của mình hiệu quả hơn.
Năm nay Face ID cũng được cải thiện.
Chiếc iPhone này sẽ có 3 camera với 1 camera chính góc rộng 12 MP, 1 camera tele 12 MP và 1 camera góc siêu rộng 12 MP.
Ảnh chụp chân dung ngược sáng với HDR
Các camera này đều có sự liên hệ mật thiết với nhau vì vậy khi người dùng chuyển đổi giữa các loại camera, thì độ sáng hay màu sắc của bức ảnh hầu như không thay đổi nhiều.
Những bức ảnh với chế độ Night Mode có chất lượng rất tốt, đủ sắc nét, màu sắc tuyệt vời, độ tương phản xuất sắc và độ phơi sáng rất cân bằng.
Apple nâng cấp lên độ phân giải 4K 60fps.
Camera trước độ phân giải cao hơn
12 MP và độ phân giải mới của camera trước trên chiếc iPhone 11 Pro Max, nó cao hơn khá nhiều nếu so sánh với 7 MP trên những chiếc iPhone năm ngoái.
Giờ đây người dùng sẽ có những bức ảnh selfie với độ chi tiết cao hơn và đặc biệt còn có thể quay video 4K với chính camera trước của máy.
Camera trước của iPhone 11 Pro Max với tính năng selfie góc rộng,
Tính năng này sẽ tự động kích hoạt khi nào bạn xoay ngang chiếc iPhone của mình.
Thêm một trang bị khác khá thú vị là khả năng quay video siêu chậm slofie với camera trước của máy.
Pin lớn thoải mái cả ngày
iPhone 11 Pro Max 512GB sở hữu viên pin có dung lượng lớn hơn 25% so với iPhone Xs Max năm ngoái nhờ vậy mà thời gian sử dụng pin cũng được cải thiện đáng kể.
Tặng kèm sạc nhanh 18W bên trong hộp máy giúp bạn sạc được 50% pin chỉ trong vòng 30 phút.
Bên cạnh đó iPhone 11 Pro Max 512GB cũng hỗ trợ sạc nhanh không dây lên tới 10W để bạn có thể sử dụng hằng ngày.
iPhone 11 Pro Max đã giải quyết được tình trạng để lại nhiều mồ hôi và dấu vân tay trong quá trình sử dụng trên những chiếc iPhone đời trước với mặt lưng được hoàn thiện dưới dạng kính mờ.
Đặc biệt, màu sắc của iPhone 11 Pro Max rất hấp dẫn, bao gồm xanh bóng đêm, xám không gian, bạc và vàng.
Kính mà hãng sử dụng trên chiếc iPhone này là loại kính bền nhất từ trước tới nay từng được sử dụng cho smartphone.
Máy có thể chịu được độ sâu lên tới 4m.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(7,'2019-12-26','Thiết kế sang trọng, quyến rũ
Phiên bản đặc biệt có số lượng cực kì giới hạn tại thị trường Việt Nam.

Vì dành cho phái đẹp nên màu này chỉ có trên phiên bản Note 10 thường kích thước nhỏ vừa tay. Màn hình siêu tràn viền nên kích thước hiển thị đạt đến 6.3 inch

Máy được hoàn thiện từ khung kim loại và 2 mặt kính cường lực Gorilla Corning 6 chống nứt vỡ cùng khả năng kháng nước IP68 tạo nên cho bạn sự yên tâm khi sử dụng.

Màn hình Dynamic AMOLED rực rỡ
Công nghệ Dynamic AMOLED mới nhất của Samsung cho khả năng điều chỉnh màu sắc theo môi trường xung quanh để thể hiện sống động, trung thực nhất, hỗ trợ nội dung HDR10+ và hạn chế ánh sáng xanh 42%.

Bút S Pen đa năng, siêu tiện dụng
Chỉ cần rút bút S Pen ra khỏi máy là bạn có thể ghi chú ngay lập tức lên màn hình và lưu lại, tiện dụng tối đa. Không những thế bạn có thể làm rất nhiều thứ khác như điều khiển từ xa để chụp ảnh, tăng giảm âm lượng, ứng dụng nhạc,...
Camera chuyên nghiệp hơn máy ảnh
Xứng danh 1 trong những smartphone đỉnh nhất năm 2020, Note 10 trang bị những camera chất lượng bao gồm 1 ống kính góc rộng 12MP khẩu độ thay đổi f/1.5-f/2.4, 1 ống kính góc siêu rộng 16M và 1 ống kính tele 12MP zoom quang học 2x.
Công nghệ siêu chống rung cho phép bạn quay những đoạn video cực kì ổn định khi bạn di chuyển hay rung lắc nhiều tương tự như đang đứng yên và cầm chắc smartphone giống các máy quay phim chuyên nghiệp.

Với Samsung Galaxy Note 10 Đỏ Bạn có thể thỏa thích sáng sáng tạo chuyên nghiệp như Studio ngay trên chiếc smartphone của bạn, Note 10 bổ sung tính năng quay dựng rất chuyên nghiệp như cắt, ghép, thêm hiệu ứng, phụ đề, tốc độ video,... với chất lượng 4K 60fps.

Camera selfie của máy nằm ngay trên màn hình hiển thị với độ phân giải 10 MP cực nét cùng rất nhiều tính năng chụp ảnh như: làm đẹp, xóa phông chân dung cùng khả năng quay phim chất lượng 4K,... 

Chạm vào màn hình để nhận diện vân tay
Chỉ cần chạm vào màn hình để nhận dạng vân tay bảo mật rất tiện dụng thay vì trên nút nguồn hay mặt lưng máy như các smartphone khác. Ngoài ra, nếu không thích bạn cũng có thể dùng mống mắt hay bảo mật khuôn mặt.

Ngoài sử dụng để mở khóa màn hình, bạn cũng có thể sử dụng các phương thức bảo mật này để xác nhận nhanh khi thanh toán thẻ, đăng nhập tài khoản web, Facebook, ứng dụng qua Samsung Pass,...

Phục vụ tối đa cho công việc và giải trí
Mọi thao tác từ lướt web, soạn thảo văn bản, Facebook, Youtube đến chơi game "nặng" đều không phải là "vấn đề" đối với Galaxy Note 10 đỏ bởi hiệu năng cực kỳ mạnh mẽ từ vi xử lý Exynos 9825, một trong những con chip mạnh nhất hiện nay.

Dung lượng RAM 8 GB cho bạn sử dụng mượt mà nhiều ứng dụng cùng lúc và bộ nhớ trong đến 256 GB lưu trữ được rất nhiều hình ảnh, video, game, ứng dụng,... không lo đến việc đầy bộ nhớ.

Pin dùng cả ngày, sạc nhanh, sạc không dây
Dung lượng pin 3500 mAh cùng màn hình AMOLED và phần cứng tối ưu năng lượng nên cho bạn thời gian sử dụng lên đến 12 giờ lướt web liên tục hoặc 18 giờ xem phim (trên điều kiện lý tưởng) hay sử dụng từ 1, 2 ngày với nhu cầu thông thường hơn.

Máy có hỗ trợ công nghệ sạc nhanh nên chỉ 30 phút sạc đầy 54% pin và chỉ cần 1 giờ 20 phút để sạc đầy 100%. Ngoài ra máy cũng được trang bị sạc không dây 12W cũng như tính năng chia sẻ năng lượng sạc ngược không dây cho thiết bị khác.' );	
INSERT INTO describe_product (id_product,date_update,content) 
values(8,'2019-12-26','Camera là điểm nhấn trên Huawei P30 Pro với camera chính SuperSpectrum độ phân giải 40 MP.

Cảm biến SuperSpectrum sử dụng cấu trúc RYYB (Red Yellow Yellow Blue), trái ngược với RGB (Red Green Blue), thay thế các pixel màu xanh lá cây bằng màu vàng, theo Huawei cho phép cảm biến cho ánh sáng nhiều hơn.

Cụm 3 camera còn lại bao gồm một ống kính góc siêu rộng 20 MP, tiêu cự 17mm, camera tele 8 MP tiêu cự 125mm (zoom 5X, khẩu độ f/3.4 và cuối cùng là camera ToF.

Cảm biến ToF sẽ thu thập thông tin chiều sâu bằng cách chiếu ánh sáng hồng ngoại vào đối tượng và phản xạ lại camera để đo khoảng cách. Công nghệ này sẽ cho phép chế độ chụp chân dung có hiệu ứng bo-keh chuyên nghiệp hơn giúp phông nền có độ mờ hợp lý.

Huawei đã tinh tế khi dùng thấu kính kết hợp gương nằm nghiêng thay vì xếp chồng như cách truyền thống. Thay đổi này cho phép P30 Pro zoom quang hybrid 10x mà không làm thay đổi chất lượng hình ảnh.

Chưa dừng lại ở đó, máy còn cho phép người dùng zoom tới 50X giúp bạn có thể nhìn rõ những hình ảnh ở xa mà mắt thường không thể nào quan sát được.

Ngoài ra Huawei P30 Pro còn là chiếc smartphone có độ nhạy sáng lớn nhất thế giới lên tới 409.600, kết hợp với khẩu độ rộng hơn sẽ cho phép camera có thể thu thập thêm nhiều thông tin ánh sáng để chất lượng hình ảnh được cải thiện.

Tính năng Dual-View cho phép người dùng cùng lúc quay phim bằng hai camera sau với hai tiêu cự khác nhau (góc cận và siêu rộng).

Ảnh selfie bằng camera trước trên điện thoại Huawei P30 Pro chính hãng
Hiệu năng hàng đầu thế giới smartphone
Cung cấp sức mạnh cho máy là bộ xử lý Hisilicon Kirin 980 8 nhân 64-bit kết hợp với 8 GB RAM và 256 GB bộ nhớ trong đem lại cho bạn hiệu năng vượt trội.

Điểm hiệu năng Antutu Benchmark của điện thoại Huawei P30 Pro chính hãng

Hiện tại, đây là con chip mạnh mẽ nhất hiện nay của Huawei cho nên bạn có thể tự tin sử dụng tất cả các game và ứng dụng nặng nhất hiện nay mà máy vẫn hoạt động một cách mượt mà.

Huawei P30 Pro chạy trên phiên bản EMUI 9.1 mới nhất tới từ Huawei với những cải tiến mới như điều hướng cử chỉ hay các tính năng kỹ thuật số.
Máy còn hỗ trợ vài tính năng mới thú vị như OneHop, cho phép quay lại màn hình PC bằng điện thoại hay đồng bộ hóa tập tin.

Những trang bị cao cấp chỉ có trên P30 Pro
Trên Huawei P30 Pro thì bạn sẽ không còn thấy sự xuất hiện của loa thoại và Huawei đã sử dụng công nghệ truyền âm thanh qua màn hình rất độc đáo.

Bên cạnh đó vẫn là cảm biến được đặt ngay bên dưới màn hình nên bạn sẽ không phải hi sinh bất cứ bộ phận nào trên thiết kế để sử dụng tính năng này.

Tính năng nhận diện khuôn mặt vẫn xuất hiện và bạn có thể mở khóa máy chỉ trong tích tắc.

Ngoài ra máy cũng sẽ hỗ trợ chuẩn kháng nước và bụi bẩn IP68 cao cấp nhất hiện nay cho bạn thoải mái sử dụng trong những điều kiện khắc nghiệt của thời tiết.

Dung lượng pin khủng, sạc nhanh siêu ấn tượng
Huawei P30 Pro trang bị viên pin 4200 mAh cùng với khả năng sạc siêu nhanh SuperCharge 40W.

Thời lượng pin của điện thoại Huawei P30 Pro chính hãng

Huawei tuyên bố P30 Pro có thể sạc từ 0 lên 70% chỉ mất 30 phút và đây chính là một trong những chiếc smartphone sạc nhanh nhất trên thị trường hiện nay.

Công nghệ sạc ngược không dây cho tai nghe, bàn chải hoặc điện thoại khác của P30 Pro mang đến sự tiện dụng và linh hoạt cho người dùng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(9,'2019-12-26','Thiết kế của những chiếc máy BlackBerry luôn được người dùng đánh giá cao bởi chất doanh nhân của máy.
Các góc cạnh trên BlackBerry KEY2 được bo cong mềm mại

Cổng kết nối trên BlackBerry KEY2 là chuẩn USB-C ở cạnh dưới

Bảo mật tối đa
DTEK là phần mềm bảo mật được BlackBerry viết ra dành riêng cho hệ điều hành Android.

Dữ liệu luôn an toàn với BlackBerry KEY2

DTEK có thể mã hóa mọi dữ liệu của mình để tránh bị đánh cắp thông tin, vô hiệu hóa máy từ xa và xóa hoàn toàn những thông tin cá nhân được lưu trên máy.

Bàn phím vật lý
Không nhiều smartphone hiện nay còn trang bị bàn phím vật lý như BlackBerry KEY2

Bàn phím trên BlackBerry KEY2 cao hơn 20% giúp người dùng dễ bấm hơn so với chiếc KeyOne
Bàn phím của BlackBerry KEY2 cũng hỗ trợ cảm ứng tương tự như phần màn hình

Smartphone đầu tiên có camera kép của BlackBerry
Trang bị cao cấp
BlackBerry Key2 còn sở hữu màn hình IPS LCD kích thước 4.5 inch độ phân giải 1080x1620 pixels và bộ vi xử lý Qualcomm Snapdragon 660 8 nhân kết hợp với 6 GB RAM.

Màn hình trên BlackBerry KEY2 khá sắc nét

Với những trang bị này giúp máy đáp ứng tốt hầu hết các nhu cầu sử dụng hằng ngày mượt mà và ổn định.

Điểm Antutu Benchmark trên BlackBerry KEY2

Pin trên BlackBerry KEY2 có dung lượng 3360 mAh
thiết bị Android có thiết kế hoàn toàn khác biệt.' ),
	(40,'2019-12-26','Được thiết kế vẻ ngoài trang nhã, laptop Asus X407UA (BV351T) có cấu hình đủ khoẻ để chạy tốt các ứng dụng văn phòng, photoshop cơ bản phù hợp cho nhân viên văn phòng.
Thiết kế hài hoà, dễ di chuyển
Laptop Asus X407UA (BV351T) được thiết kế đơn giản nhưng vẫn rất tinh tế với vỏ nhựa giả kim loại ở mặt lưng. Các cạnh được bo cong với độ dày máy chỉ 21.9 mm đi cùng trọng lượng 1.5 kg, đây là mẫu laptop nhỏ gọn, tiện lợi bỏ vào ba lô, va li mang theo đến lớp, đi du lịch. 
Thiết kết trang nhã trên laptop nhỏ gọn Asus X407UA i3 7020U (BV351T)
Cấu hình xử lý tốt ứng dụng văn phòng, đồ hoạ cơ bản
Máy được trang bị chip xử lý Core i3 thế hệ 7, kết hợp 4 GB DDR4 đủ khoẻ để chạy mượt các ứng dụng văn phòng: Word, Excel, Powerpoint, ... Thời gian phản hồi các thao tác kéo thả trong photoshop nhanh chóng.
Cấu hình trên laptop nhỏ gọn Asus X407UA i3 7020U (BV351T)
Laptop có thể chơi game Liên minh ở mức setting cao nhất là 75 FPS. Việc chơi game trên máy chỉ ở mức giải trí nhẹ nhàng, cơ bản.
Laptop Asus VivoBook X407UA có thể chơi game Liên minh ở mức setting 75 FPS
 
Bên cạnh cấu hình khoẻ, ổ cứng HDD 1 TB trên Asus X407UA (BV351T) hỗ trợ tốt cho nhân viên văn phòng, học sinh - sinh viên khi phải thường xuyên lưu trữ nhiều file dữ liệu, tài liệu học tập.
Màn hình 14 inch sắc nét
Laptop Asus X407UA (BV351T) trang bị màn hình 14 inch, độ phân giải HD (1366 x 768) kết hợp cùng card đồ hoạ Intel® HD Graphics 620 cho chất lượng ảnh tươi sáng.

Màn hình hiển thị sắc nét trên laptop nhỏ gọn Asus X407UA i3 7020U (BV351T)

Bảo mật vân tay mở khoá màn hình nhanh chóng
Máy được tích hợp công nghệ bảo mật vân tay tiện lợi trên TouchPad, chỉ cần chạm nhẹ, mở khóa nhanh chóng, tiết kiệm thời gian, dữ liệu trên máy cũng được bảo mật hơn.
 
Mở khoá vân tay trên laptop nhỏ gọn Ausu X407UA
Cổng USB 3.0 tiết kiệm thời gian truyền dữ liệu
Ngoài các cổng kết nối cơ bản, máy hỗ trợ 1 cổng USB 3.0 giúp việc truyền dữ liệu sang thiết bị ngoại vi nhanh chóng với tốc độ tối đa lên đến 600MB/s. 
Cổng kết nối trên laptop nhỏ gọn Asus X407UA i3 7020U (BV351T)
Thời lượng pin lâu
Laptop Asus VivoBook có thể sử dụng liên tục trong khoảng 3 - 4 tiếng nếu bạn sử dụng các tác vụ cơ bản như soạn thảo văn bản, lướt web, nghe nhạc, ...' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(10,'2019-12-27','Máy sở hữu ngoại hình rất thanh lịch với hai sắc màu trắng và đen, phù hợp với cả những bạn trẻ hoặc người dùng trung niên hơn.
Dưới nguồn sáng thay đổi, bạn có thể thấy mặt lưng của chiếc điện thoại này thay đổi tinh tế và trông rất lung linh, hấp dẫn.

Mặt trước rất ít có khuyết điểm khi toàn bộ không gian được dành cho màn hình kích thước 6.38 inch và phần loa thoại được hoàn thiện khéo léo sát cạnh trên màn hình.
Để có được trải nghiệm tràn viền thực thụ thì Vivo đã cố gắng rất nhiều khi trang bị lên Vivo S1 Pro rất nhiều công nghệ tiên tiến vốn chỉ xuất hiện trên smartphone cao cấp.
Camera selfie "nốt ruồi" như flagship cao cấp
Camera trước của máy được ngay bên trong màn hình giống như flagship cao cấp nhất hiện nay của Samsung là Galaxy S10.

Vivo cho biết rằng họ đã tối ưu rất nhiều thuật toán làm đẹp nhờ AI để cung cấp cho người dùng một trải nghiệm selfie tuyệt vời nhất.
Camera chính cũng được đầu tư mạnh mẽ với cụm 4 camera trong đó camera chính có độ phân giải lên tới 48 MP.

Khi bạn chụp vào ban đêm, điện thoại sẽ tự động sử dụng công nghệ Pixel Binning để gộp "4 pixel thành 1" để cải thiện chất lượng và chi tiết bên trong hình ảnh.

Cảm biến vân tay bên trong màn hình
Công nghệ cảm biến vân tay trên Vivo S1 Pro có tốc độ nhận diện rất nhanh và chính xác, không hề thua kém các cảm biến vân tay truyền thống.

Bên cạnh đó người dùng cũng có thể sử dụng tính năng mở khóa bằng khuôn mặt trong nhiều trường hợp không thể sử dụng được vân tay.

Về thời lượng pin thì bạn cũng có thể yên tâm dùng Vivo S1 Pro trong cả ngày dài chỉ với một lần sạc nhờ viên pin dung lượng cao 4.500 mAh.

Máy cũng sẽ hỗ trợ công nghệ sạc nhanh để tiết kiệm thời gian sạc tối đa cho người dùng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(11,'2019-12-27','Nokia 7.2 là một chiếc smartphone rất đáng chú ý trong những tháng cuối năm 2019 với thiết kế thời thượng, hệ điều hành mượt mà và cụm camera chất lượng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(12,'2019-12-27','Samsung Galaxy A30 64GB là một chiếc máy khá hấp dẫn, dành cho các bạn yêu thích thương hiệu Samsung, muốn sở hữu một sản phẩm có nhiều tính năng hấp dẫn mà không cần phải bỏ ra nhiều tiền.
Màn hình lớn tương đương Galaxy S10+
Có thể bạn sẽ bất ngờ bởi chiếc điện thoại Samsung mới sở hữu cho mình màn hình có kích thước lên tới 6.4 inch, tương đương với màn hình của chiếc Samsung Galaxy S10+.
Dung lượng pin thoải mái sử dụng
Mang trong mình một viên pin có dung lượng 4000 mAh giúp Samsung Galaxy A30 đáp ứng khá trọn vẹn với các nhu cầu giải trí cơ bản trong hơn một ngày.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(13,'2019-12-27','OPPO F11 gây ấn tượng với người dùng bởi thiết kế màn hình tràn viền hình giọt nước và camera sau khủng đến 48 MP.
Thiết kế màn hình tràn viền thực thụ
Với các nhà sản xuất smartphone thì màn hình giọt nước để chứa camera selfie đang là xu hướng mới mẻ và vẫn tiếp tục phát triển.
Camera sau khủng đến 48 MP
Chiếc điện thoại OPPO sở hữu một camera selfie 16 MP chất lượng ngay điểm giọt nước trên màn hình.

Tất nhiên camera này cũng được tích hợp công nghệ AI và nhiều chế độ làm đẹp để bạn luôn có được những hình ảnh đẹp nhất, chia sẻ với bạn bè.
Hiệu năng mượt mà trong hầu hết điều kiện
Cung cấp sức mạnh cho F11 là con chip MediaTek Helio P70 8 nhân, bộ nhớ RAM lên tới 6 GB, ROM 64 GB.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(14,'2019-12-28','OPPO K3 là một chiếc smartphone tầm trung với khá nhiều tính năng cao cấp như màn hình không "tai thỏ" hay cảm biến vân tay bên trong màn hình.
Thiết kế hài lòng tất cả mọi người
OPPO K3 có thiết kế kính cường lực mặt trước, cùng với lớp màu gradient ở mặt sau làm cho chiếc smartphone này trở nên tuyệt đẹp.
Màn hình AMOLED như trên các smartphone cao cấp
Do trang bị camera pop-up nên màn hình của OPPO K3 có viền mỏng và không có thiết kế notch.
Cấu hình tốt trong tầm giá với RAM 6 GB
Ở phân khúc giá dưới 7 triệu, OPPO K3 được ưu ái trang bị dòng chip tầm trung Snapdragon 710 cùng với RAM khủng đến 6 GB.
Nhiều công nghệ hàng đầu được trang bị
OPPO K3 còn có viên pin dung lượng lớn 3765 mAh với tiêu chuẩn sạc nhanh VOOC 3.0, chỉ cần hơn 1 giờ để sạc đầy điện thoại nên cung cấp một thời lượng sử dụng rất dài.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(15,'2019-12-28','Nếu yêu thích hãng điện thoại BlackBerry và muốn sở hữu một chiếc smartphone Android với bàn phìm vật lý độc đáo, có lẽ BlackBerry KEYone 3GB/32GB là sự lựa chọn hàng đầu của bạn hiện nay.
Thiết kế "không giống ai"
Những chiếc máy của BlackBerry luôn tạo được dấu ấn riêng và với BlackBerry KEYone thì người dùng sẽ có một thiết bị hoàn toàn khác biệt so với những chiếc smartphone còn lại.
Bàn phím tạo nên sự khác biệt
Đặc điểm nổi bật của BlackBerry KEYone 3GB/32GB
Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim

Nếu yêu thích hãng điện thoại BlackBerry và muốn sở hữu một chiếc smartphone Android với bàn phìm vật lý độc đáo, có lẽ BlackBerry KEYone 3GB/32GB là sự lựa chọn hàng đầu của bạn hiện nay.
Những chiếc máy của BlackBerry luôn tạo được dấu ấn riêng và với BlackBerry KEYone thì người dùng sẽ có một thiết bị hoàn toàn khác biệt so với những chiếc smartphone còn lại.

Không chạy theo xu hướng tai thỏ hay màn hình tràn viền, smartphone BlackBerry vẫn thiết kế đậm chất rất riêng, với một màn hình IPS kích thước 4.5 inch và một bàn phím QWERTY vật lý quen thuộc.

Phần lưng máy nổi bật với tông màu đen và logo đậm chất BlackBerry, được thiết kế dạng sần với nhiều ô hình thoi nhỏ cho cảm giác cầm rất thích tay và thoải mái trong quá trình sử dụng.

Cảm giác cầm nắm của máy khá tốt và đặc biệt là máy không để lại mồ hôi và dấu vân tay trong quá trình sử dụng.

Nhìn chung thì thiết kế trên KEYone vẫn mạnh mẽ và đẹp với những đường nhôm bao quanh thân máy.

Bàn phím tạo nên sự khác biệt
Bàn phím QWERTY chính là điều làm nên sự khác biệt của BlackBerry KEYone và có lẽ cũng chính là lý do lớn nhất khiến người dùng muốn sở hữu chiếc máy này.

Bàn phím trên BlackBerry KEYone có độ nảy phím tốt, cho cảm giác bấm êm và thoải mái.
Nếu bạn đã quen với một chiếc máy bàn phím cảm ứng thì lần đầu gõ bằng bàn phím QWERTY trên BlackBerry có thể sẽ phải cần thời gian để làm quen.
Điểm thú vị trên BlackBerry KEYone chính là cảm biến vân tay một chạm được đặt ngay trên phím cứng Space (kế bên phím sym ở giữa hàng cuối trên bàn phím) rất tiện lợi.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(16,'2019-12-28','Đến hẹn lại lên, năm nay Apple giới thiệu tới người dùng thế hệ tiếp theo với 3 phiên bản, trong đó có cái tên iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. 
Hiệu năng đỉnh cao đến từ con chip Apple A12
Ngoài điện thoại thì năm nay iPhone cũng đã chính thức ra mắt chip A12 bionic thế hệ mới với những nâng cấp vượt trội về mặt hiệu năng.
Màn hình Super Retina siêu sắc nét
Đặc điểm nổi bật của iPhone Xs 64GB
Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Cáp, Cây lấy sim

Đến hẹn lại lên, năm nay Apple giới thiệu tới người dùng thế hệ tiếp theo với 3 phiên bản, trong đó có cái tên iPhone Xs 64 GB với những nâng cấp mạnh mẽ về phần cứng đến hiệu năng, màn hình cùng hàng loạt các trang bị cao cấp khác. 
Hiệu năng đỉnh cao đến từ con chip Apple A12
Ngoài điện thoại thì năm nay iPhone cũng đã chính thức ra mắt chip A12 bionic thế hệ mới với những nâng cấp vượt trội về mặt hiệu năng.

Chip A12 trên điện thoại iPhone Xs chính hãng

Apple A12 Bionic được xây dựng trên tiến trình 7nm đầu tiên của hãng với 6 nhân giúp iPhone Xs có được một hiệu năng “vô đối” cùng khả năng tiết kiệm năng lượng tối ưu.

Bên cạnh đó, bộ xử lý đồ họa của máy cũng được Apple thiết kế lại giúp việc chơi game hay dựng hình mượt mà và nhanh chóng hơn gấp nhiều lần.

Điểm Antutu Benchmark trên iPhone Xs

Chưa dừng lại ở đó, iPhone Xs còn được tích hợp thêm trí thông minh nhân tạo giúp tối ưu phần cứng để bạn có thể xử lý các tác vụ một cách đơn giản nhất.

iOS trên điện thoại iPhone Xs chính hãng

Kết hợp với phần cứng mạnh mẽ là hệ điều hành iOS 12 siêu mượt, hứa hẹn iPhone Xs sẽ trở thành một con quái thú trong làng smartphone hiện nay.

Hệ thống âm thanh cải tiến
iPhone XS sở hữu hệ thống âm thanh 2 chiều cực kì tuyệt vời được Apple tinh chỉnh mang lại dải âm rộng và chi tiết hơn.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(17,'2019-12-29','Xiaomi Mi 9T (tên khác là Redmi K20) là chiếc smartphone vừa được giới thiệu gây rất nhiều chú ý với người dùng bởi nó hội tụ đủ 3 yếu tố "ngon bổ rẻ".
Thiết kế màn hình tràn ra 4 cạnh
Cảm biến vân tay trong màn hình
Trên chiếc điện thoại Xiaomi này người dùng sẽ không phải hi sinh bất cứ bộ phận nào để đặt cảm biến vân tay khi bạn có thể sử dụng vân tay trong màn hình để mở khóa máy.
Camera thò thụt mới lạ
Xiaomi Mi 9T sở hữu cụm camera "thò thụt" ở mặt trước với độ phân giải khủng lên tới 20 MP.
Hiệu năng vượt trội trong phân khúc
Cung cấp sức mạnh cho Xiaomi Mi 9T chính là con chip Snapdragon 730 với 6 GB RAM và 64 GB bộ nhớ trong.
Xiaomi Mi 9T còn hỗ trợ chế độ Game Turbo 2.0 giúp phân phối tài nguyên hợp lý khi chơi game đảm bảo bạn có được những trải nghiệm tối ưu nhất.

Hơn nữa chiếc smartphone này còn được tích hợp viên pin dung lượng 4.000 mAh cho bạn thoải mái sử dụng cả ngày' ),
	(18,'2019-12-29','Được xem là phiên bản iPhone "giá rẻ" trong bộ 3 iPhone mới ra mắt nhưng iPhone 11 128GB vẫn sở hữu cho mình rất nhiều ưu điểm mà hiếm có một chiếc smartphone nào khác sở hữu.
Nâng cấp mạnh mẽ về cụm camera
Năm nay với iPhone 11 thì Apple đã nâng cấp khá nhiều về camera nếu so sánh với chiếc iPhone Xr 128GB năm ngoái.
Night Mode sẽ tự động kích hoạt khi bạn chụp ảnh trong điều kiện thiếu sáng và chất lượng ảnh cho ra là rất ấn tượng khi so sánh với những chiếc iPhone đời cũ.

Camera trước cũng đã tốt hơn nhiều
Đầu tiên phải kể đến là độ phân giải camera trước đã được nâng từ 7 MP lên thành 12 MP cho người dùng những bức ảnh chi tiết hơn.
Và Face ID trên iPhone 11 cũng được cải tiến để có thể nhận diện ở góc rộng hơn và có tốc độ nhanh hơn so với iPhone Xr cũ.

Hiệu năng mạnh mẽ hàng đầu thế giới
Máy sở hữu con chip mạnh mẽ nhất của Apple cho những chiếc iPhone năm 2019 Apple A13 Bionic cùng 4 GB RAM và 128 GB bộ nhớ trong.
Pin đã tốt nay còn tốt hơn' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(19,'2019-12-29','Nếu như từ trước tới nay dòng Galaxy Note của Samsung thường ít được các bạn nữ sử dụng bởi kích thước màn hình khá lớn khiến việc cầm nắm trở nên khó khăn thì Samsung Galaxy Note 10 sẽ là chiếc smartphone nhỏ gọn, phù hợp với cả những bạn có bàn tay nhỏ.
Màn hình tràn viền tuyệt đẹp
Công nghệ Dynamic AMOLED này còn cho ra màn hình ít ánh sáng xanh hơn nhằm giúp mắt thoải mái.
Thiết kế với màu gradient bóng bẩy
Dòng Note 10 là sản phẩm đầu tiên của Samsung áp dụng thiết kế màu gradient rất thu hút người dùng.
Bút S Pen “thần thánh” ngày càng nhiều "phép"
Bút S Pen vốn là phụ kiện đặc trưng của Galaxy Note mà iPhone hay bất kỳ dòng smartphone nào khác chưa từng sở hữu.
S Pen, cho phép bạn biến bút S Pen thành công cụ giúp bạn điều chỉnh ống kính camera, thay đổi màu sắc, zoom,... giống như đang thao tác bằng tay.
Camera cải tiến rõ rệt
Một trong những điểm nhấn đáng quan tâm nhất ở Samsung Galaxy Note 10 chính là cụm camera chất lượng và tiên tiến...' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(20,'2090-12-29','Đặc điểm nổi bật của iPhone 7 32GB
Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim

iPhone 7 32GB vẫn mang trên mình thiết kế quen thuộc của từ thời iPhone 6 nhưng có nhiều thay đổi lớn về phần cứng, dàn loa stereo và cấu hình cực mạnh.
Camera trước tăng lên 7 MP
Một sự cải thiện đáng kể so với iPhone 6s trước đó, những tấm ảnh chụp selfie của bạn càng thêm độ chi tiết và sắc nét.
Bộ nhớ trong của máy cũng được nâng cấp lên 32 GB giúp bạn thoải mái chụp và lưu trữ ảnh mà không lo hết dung lượng để lưu.
Âm thanh stereo phát ra từ 2 phía
Không còn khó chịu khi bạn cầm máy chơi game nhưng bị bít loa như ở những phiên bản trước đó.
Cảm biến vân tay nhanh nhạy hơn
Giúp bạn mở khóa máy chỉ trong vài nốt nhạc, giúp tiết kiệm thời gian cũng như bảo mật cao dữ liệu trong máy...' ),
	(22,'2019-12-29','Laptop HP 15s du0056tu là laptop giá phổ thông cấu hình đủ dùng cho dân văn phòng, bộ nhớ khủng 1 TB lưu trữ thả ga. Hơn nữa, mọi hình ảnh hiển thị sống động hơn với độ phân giải màn hình Full HD. 
Thiết kế đơn giản
Máy mang thiết kế đơn giản phù hợp với sinh viên, nhân viên văn phòng. Trọng lượng máy 1.74 kg không phải quá nhẹ tuy nhiên người dùng vẫn có thể mang đi làm hằng ngày mà không cảm giác quá nặng. 
Cấu hình vừa đủ dùng 
Laptop HP 15s là sản phẩm laptop văn phòng sử dụng Chip Intel Core i3 thế hệ 7 cho phép người dùng soạn thảo văn bản, lướt web, xử lý hình ảnh 2D cơ bản bằng Photoshop,... 
Lưu trữ thả ga mọi tài liệu, hình ảnh hay những bộ phim bạn thích trực tiếp trên chiếc laptop HP cố ổ cứng HDD dung lượng lên đến 1 TB mà không lo hết bộ nhớ.

Laptop HP 15s du0056tu Lưu trữ thả ga mọi tài liệu, hình ảnh
Hình ảnh mượt mà, bắt mắt
Với độ phân giải màn hình Full HD và công nghệ chống chói, bạn có thể tương tác với màn hình ở mọi nơi ngay cả ngoài trời nắng gắt.

Kích thước màn hình 15.6 inch, viền mỏng mở rộng không gian hiển thị.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(21,'2019-12-30','Đặc điểm nổi bật của Asus VivoBook X409F i5 8265U/8GB/1TB/Win10 (EK138T)

Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop Asus Vivobook X409F (EK138T) là một trong những mẫu laptop mỏng nhẹ có hiệu năng tốt trong phân khúc phổ thông. Bản lề Ergolift thông minh nâng phím tự động, giúp tản nhiệt và khuếch đại âm thanh cũng là một điểm cộng cho sản phẩm này.
Thiết kế mỏng nhẹ thanh lịch
Asus Vivobook X409F (EK138T) được thiết kế hướng đến người dùng hiện đại cần di chuyển nhiều, laptop gọn nhẹ với trọng lượng 1.6 kg dễ dàng đem theo đến bất cứ đâu. Các góc máy được bo tròn tinh tế tạo cảm giác thanh lịch và dễ dàng cầm nắm.

Laptop Asus Vivobook X409F được thiết kế hướng đến người dùng hiện đại 
Xử lí tốt tác vụ văn phòng và đồ họa
Laptop Asus Vivobook X409F đáp ứng tốt nhu cầu văn phòng, đồ họa và giải trí của người dùng nhờ cấu hình mạnh bao gồm chip Core i5 thế hệ thứ 8, RAM 8 GB đa nhiệm mượt mà. 

Bên cạnh đó, laptop còn sở hữu một không gian lưu trữ rộng lên đến 1 TB HDD để bạn thoải mái lưu các tài liệu hay các tựa phim, game yêu thích.

Laptop Asus Vivobook X409F đáp ứng tốt nhu cầu văn phòng, đồ họa và giải trí
Bản lề thông minh
Laptop sở hữu bản lề Ergolift thông minh nâng góc máy lên một góc 3 độ. Thiết kế này đem đến cảm giác gõ phím tốt hơn, tản nhiệt hiệu quả và khuếch đại âm thanh tối ưu hơn.

Laptop Asus Vivobook X409F ở hữu bản lề Ergolift thông minh
Màn hình Full HD chống chói
Màn hình laptop 14 inch Full HD đem đến hình ảnh rõ nét, màu sắc chân thực. Ngoài ra, tấm nền chống chói giúp hình ảnh hiển thị tốt cả khi sử dụng ngược sáng.

Laptop Asus Vivobook X409F đem đến hình ảnh rõ nét, màu sắc chân thực
Âm thanh SonicMaster sống động');
INSERT INTO describe_product (id_product,date_update,content) 
values	(22,'2019-12-30','Đầy đủ các cổng thông tin 
Laptop có đủ các cổng kết nối thông thường, nổi bật hơn với cổng USB Type-C truyền dữ liệu nhanh chóng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(23,'2020-12-30','Acer Aspire A315 54 36QY (NX.HM2SV.001) là chiếc laptop có thiết kế nhỏ gọn, hợp thời trang, màn hình chân thực, sắc nét cùng cấu hình ổn định đáp ứng nhu cầu học tập, làm việc văn phòng. 
Thiết kế nhỏ gọn, tiện lợi
Laptop Acer Aspire A315 (NX.HM2SV.001) được thiết kế với phong cách hiện đại, trẻ trung với màu đen chủ đạo toát lên vẻ ngoài chắc chắn, sang trọng. Laptop có trọng lượng 1.7 kg
Cấu hình xử lý mượt mà các thao tác văn phòng
Laptop Acer Aspire A315 sở hữu bộ vi xử lý Intel Core i3 Comet Lake 10110U, RAM 4 GB mang đến khả năng xử lý mượt mà các thao tác văn phòng như soạn thảo văn bản, trình bày bảng tính, trình chiếu,...

Ngoài ra laptop còn hỗ trợ khe RAM tối đa đến 12 GB giúp bạn dễ dàng nâng cấp thêm cho chiếc máy.
Tốc độ cực nhanh
Laptop sở hữu ổ cứng SSD 256GB NVMe PCIe mang đến khả năng khởi động máy nhanh khoảng 10s, khởi động ứng dụng 3 - 5s giúp công việc của bạn tiết kiệm được nhiều thời gian, công việc hiệu quả hơn. Dung lượng 256 GB đủ dùng giúp bạn có thể thoải mái lưu trữ tài liệu, hình ảnh hay những bản nhạc, bộ phim yêu thích của mình. 
Màn hình lớn 15.6 inch, hình ảnh sắc nét
Laptop có màn hình rộng 15.6 inch độ phân giải Full HD mang đến chất lượng hình ảnh chân thực sắc nét. Công nghệ màn hình Acer ComfyView chống chói hiệu quả giúp màn hình hiển thị tốt ngoài trời nắng sáng. 
Pin sử dụng trong 9 tiếng liên tục
Acer Aspire A315 (NX.HM2SV.001) có thời lượng pin khoảng 9 tiếng giúp bạn thoải mái làm việc, học tập mà chẳng lo hết pin
Cổng kết nối tiện lợi
Laptop được trang bị đầy đủ các cổng kết nối phổ biến như 2 x USB 2.0, USB 3.1, HDMI, LAN (RJ45)' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(1,'2019-12-30','Điện thoại OPPO A5 (2020) có cảm biến vân tay ở mặt lưng' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(2,'2019-12-31','Pin "trâu" hỗ trợ sạc nhanh dung lượng 5.000 mAh. 
Redmi 8 còn sử dụng hệ thống camera kép bao gồm cảm biến chính Sony IMX363 12 MP và cảm biến chiều sâu 2 MP để chụp ảnh xóa phông.
Hệ thống camera này tích hợp A.I để tối ưu trong việc chụp hình, các bộ lọc màu Filter, quay video ngắn, nói chung chất lượng ảnh ở mức ổn trong tầm giá.
Trong khi đó, camera selfie của máy có độ phân giải 8 MP cũng hỗ trợ tính năng làm đẹp "ảo diệu", cà da khá mịn và cả xóa phông nữa.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(24,'2019-12-31','Lenovo IdeaPad 15IKB (81VD0035VN) là mẫu laptop dành cho sinh viên, nhân viên văn phòng với thiết kế hiện đại, trẻ trung và cấu hình sử dụng mượt mà các tác vụ như soạn thảo văn bản, lướt web, nghe nhạc,... 
Cấu hình ổn định 
Lenovo IdeaPad 15IKB được trang bị chip Intel Core i3 7020U, RAM 4 GB mang đến hiệu năng ổn định, sử dụng mượt mà các thao tác mượt mà các ứng dụng văn phòng như Word, Excel, PowerPoint,...
Ổ cứng SSD cực nhanh
Ở phân khúc laptop giá rẻ nhưng máy tính lại được trang bị ổ cứng SSD giúp tốc độ khởi động máy 10s, mở ứng dụng 3 - 5s. Hiệu năng của laptop cũng được cải thiện rõ ràng giúp cho công việc cũng như hoạt động giải trí của bạn đều diễn ra một cách trơn tru, mượt mà.
Thiết kế hiện đại, trẻ trung
Laptop có màu đen chủ đạo mang vẻ ngoài chắc chắn, bền vững. Ngoài ra laptop có trọng lượng là 2.1 kg không quá cồng kềnh để bạn có thể mang chiếc máy theo khi đi học hay đi làm.
Màn hình chân thực, sắc nét
Màn hình laptop Lenovo rộng 15.6 inch thoải mái, độ phân giải Full HD cùng công nghệ màn hình chống chói giúp hiển thị hình ảnh chân thực, sắc nét kể cả khi bạn làm việc trong điều kiện ánh sáng chói vào. 
Thời lượng pin
IdeaPad 15IKB (81VD0035VN) có thể sử dụng liên tục khoảng 6 tiếng với độ sáng màn hình tối đa và thực hiện các thao tác như soạn thảo văn bản, nghe nhạc hay mở cùng lúc nhiều tab Chrome,... ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(21,'2020-12-31','Pin sử dụng cả ngày
Laptop trang bị pin Li-Ion 2 cell có thời gian sử dụng thực tế lên đến 7 - 8 tiếng thoải mái với các tác vụ thông thường sử dụng cả ngày mà không cần sạc pin. ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(25,'2020-12-31','Laptop Dell Inspiron 5593 với lớp vỏ nhựa cao cấp màu bạc thể hiện sự đẳng cấp sang trọng. Đây là chiếc laptop phù hợp với các bạn học sinh sinh viên đang tìm kiếm một trợ thủ công nghệ đồng hành với mức giá phải chăng.
Đẹp hơn với màu bạc sang trọng
Có thể nói với trọng lượng 2.05 kg thì laptop sẽ khá cồng kềnh với những ai phải thường xuyên mang laptop bên mình. Nhưng bù lại lớp vỏ nhựa và màu bạc sang trọng đã là một điểm cộng cho chiếc máy thêm phần hiện đại, trẻ trung
Intel Core i3 thế hệ thứ 10
Được trang bị bộ vi xử lí Intel Core i3 thế hệ 10 mới ra mắt (cuối 2019), laptop Dell xử lí mượt mà ở những tác vụ văn phòng như Word, Excel, ... phục vụ tốt các nhu cầu giải trí, xem phim trên Youtube của bạn. 
Đặc điểm nổi bật của Dell Inspiron 5593 i3 1005G1/4GB/128GB/Win10 (70196703)
Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop Dell Inspiron 5593 với lớp vỏ nhựa cao cấp màu bạc thể hiện sự đẳng cấp sang trọng. Đây là chiếc laptop phù hợp với các bạn học sinh sinh viên đang tìm kiếm một trợ thủ công nghệ đồng hành với mức giá phải chăng.
Đẹp hơn với màu bạc sang trọng
Có thể nói với trọng lượng 2.05 kg thì laptop sẽ khá cồng kềnh với những ai phải thường xuyên mang laptop bên mình. Nhưng bù lại lớp vỏ nhựa và màu bạc sang trọng đã là một điểm cộng cho chiếc máy thêm phần hiện đại, trẻ trung.

Laptop Dell Inspiron 5593 với lớp vỏ nhựa cao cấp màu bạc

Intel Core i3 thế hệ thứ 10
Được trang bị bộ vi xử lí Intel Core i3 thế hệ 10 mới ra mắt (cuối 2019), laptop Dell xử lí mượt mà ở những tác vụ văn phòng như Word, Excel, ... phục vụ tốt các nhu cầu giải trí, xem phim trên Youtube của bạn. 

Việc cài đặt ổ cứng SSD 128 GB cho máy nhằm rút ngắn thời gian khởi động máy chưa đến 20 giây, sao chép, truyền tải dữ liệu nhanh chóng.
Màn hình rộng đến 15.6 inch, độ phân giải Full HD mang đến những thước phim vô cùng ấn tượng với độ sắc nét tuyệt vời.
Cổng kết nối đa dạng
Laptop Dell Inspiron được thiết kế có đến 2 cổng USB 3.1 - thoải mái kết nối với các thiết bị đi kèm. Ngoài ra còn có những cổng thông thường: HDMI, LAN (RJ45), USB 2.0' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(26,'2019-12-31','Đặc điểm nổi bật của Asus VivoBook A412FA i5 8265U/8GB/32GB+512GB/Win10 (EK662T)

Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop Asus VivoBook A412FA đáp ứng được nhu cầu văn phòng và đồ họa kĩ thuật. Với trọng lượng siêu nhẹ 1.5 kg, bạn thoải mái mang theo cả ngày mà chẳng thấy nặng tay. 
Siêu nhẹ, siêu di động
Với chất liệu vỏ nhựa, trọng lượng laptop được tối ưu hóa chỉ còn 1.5 kg thuận lợi với những ai thường hay di chuyển.

Thiết kế bề mặt nhám, sắc xám trung tính không chỉ làm sáng không gian làm việc mà còn mang đến sự sang trọng khi cầm trên tay.
Rút ngắn thời gian xử lý dữ liệu
Laptop Asus sở hữu chip Intel Core i5 8265U, RAM 8 GB nên chạy mượt mọi ứng dụng văn phòng cho đến phần mềm đồ họa chuyên nghiệp như Ai, Lr, Ps,... 

Laptop Asus VivoBook A412FA đáp ứng được nhu cầu văn phòng và đồ họa kĩ thuật. 

Việc trang bị ổ cứng SSD 512 GB Intel Optane 32GB giúp Asus VivoBook có khả năng khởi chạy các tệp video, âm thanh,... nhanh hơn đến 90% trong đa nhiệm hay mở tài liệu nhanh gấp 2 lần ổ SSD thông thường. 
Thể hiện bắt mắt văn bản, hình ảnh
Màn hình độ phân giải Full HD, kích thước 14 inch thể hiện mọi nội dung sắc nét, màu sắc tươi sáng.

Viền màn hình siêu mỏng ở cả 4 cạnh kết hợp công nghệ chống chói phủ toàn màn hình giúp mở góc nhìn rộng hơn, tiện lợi khi sử dụng đông người.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(27,'2019-12-31','Đặc điểm nổi bật của Asus VivoBook X509FJ i7 8565U/8GB/512GB/2GB MX230/Win10 (EJ133T)

Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop Asus Vivobook X509FJ (EJ133T) là chiếc máy tính xách tay mang đến hiệu năng mạnh mẽ cùng hình ảnh chân thực đáp ứng mọi nhu cầu cho dù là học tập văn phòng hay giải trí. 
Nhanh hơn, hiệu suất cao hơn
Asus Vivobook X509FJ (EJ133T) có cấu hình mạnh mẽ bao gồm bộ xử lý Intel Core i7 8565U thế hệ thứ 8, RAM 8 GB 
Bên cạnh đó, chiếc laptop này còn được trang bị ổ cứng SSD : 512 GB, M.2 PCIe với tốc độ truy xuất dữ liệu nhanh và thoải mái lưu trữ tài liệu, hình ảnh, hay các bộ phim yêu thích. 
Thiết kế phong cách và khả năng di động cao
Thiết kế của laptop Asus Vivobook X509FJ hướng đến người dùng hiện đại với khả năng di chuyển cao với trọng lượng 1.9 kg. 
Màn hình FULL HD chống chói
Asus Vivobook X509FJ (EJ133T) có màn hình rộng 15.6 inch Full HD (1920 x 1080) và tấm nền chống chói 60 Hz mang đến chất lượng hình ảnh chân thực, rõ nét ngay cả khi ngược sáng
Cảm biến vân tay một chạm
Cảm biến vân tay tích hợp trong bàn di chuột của laptop Asus Vivobook X509FJ cùng với Windows Hello giúp bạn dễ dàng mở khóa và bảo mật chỉ với một chạm là đủ.
Pin dùng được cả ngày
Laptop có pin dùng được khoảng 7 đến 8 giờ liên tục cho bạn thỏa sức học tập, làm việc cả ngày dài. ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(28,'2020-01-01','Laptop Acer Swift 3 SF315 đáp ứng tất cả các nhu cầu học tập và làm việc cơ bản. Thiết kế mỏng nhẹ giúp bạn có thể di chuyển nhiều nơi một cách dễ dàng. 
Thiết kế sang trọng, mỏng nhẹ
Dù là một chiếc laptop 15.6 inch, Acer Swift SF315 52 50T9 i5 vẫn sở hữu một thiết kế mỏng nhẹ với độ dày chỉ 16.9 mm và nặng 1.7 kg. Vẻ ngoài lại thêm phần sang trọng với lớp vỏ nhôm cao cấp.
Màn hình Full HD, viền mỏng
Với màn hình kích thước 15.6 inch Full HD sắc nét cùng viền máy cực mỏng ở 3 cạnh, những đoạn video chất lượng cao sẽ tràn ra sát cạnh, cho cảm giác choáng ngợp khi nhìn vào, mang lại thời gian làm việc lẫn giải trí thoải mái và tuyệt vời. 

Tấm nền IPS tăng cường độ tươi sáng cho hình ảnh, màu sắc hài hòa bắt mắt ở mọi khung hình.
Cấu hình mượt mà, văn phòng và thiết kế 2D
Laptop Acer Swift SF315 sở hữu vi xử lý Chip Intel Core i5 thế hệ thứ 8, dung lượng RAM 8 GB hỗ trợ xử lý mượt mà các đa nhiệm. Cấu hình của máy cũng đảm bảo việc thiết kế hình ảnh chuyên nghiệp với Photoshop và chỉnh sửa video bằng Premiere.
Dòng máy này trang bị card đồ họa Intel UHD Graphics 620 có thể chơi một số game nhẹ, đối với Liên Minh Huyền Thoại thì máy cho mức FPS dao động khoảng 60 ở mức đồ họa cao nhất. 
Cảm biến vân tay
Mở khóa laptop không còn rườm rà như trước với cảm biến vân tay được tích hợp trên laptop Acer Swift SF315 52 50T9 i5. 
Thời lượng pin khỏe
Mặc dù là chiếc máy mỏng nhẹ, tuy nhiên Laptop Acer Swift SF315 52 50T9 i5 vẫn sở hữu thời lượng pin cực ấn tượng lên đến 10 giờ sử dụng, bạn có thể sử' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(29,'2020-01-01','aptop HP 15s du0115TU i3 (8VB37PA) là mẫu laptop thuộc phân khúc học tập - văn phòng cơ bản. Máy có cấu hình trung bình, thiết kế mỏng nhẹ thanh lịch và ổ cứng SSD siêu nhanh. Laptop đang được bán với giá tốt phù hợp cho học sinh, sinh viên. 
Cấu hình đủ dùng học tập - văn phòng
Laptop có CPU Intel Core i3 Kabylake thế hệ thứ 7, RAM 4 GB (có thể nâng cấp lên 16 GB). Cấu hình này chạy ổn định ứng dụng văn phòng, học tập phổ biến hiện nay, lướt web mượt mà, sử dụng Photoshop, Ai cơ bản.
Thiết kế trang nhã
Máy tính có kiểu dáng truyền thống, vỏ nhựa bền bỉ, êm ái khi cầm trên tay. Laptop khá mỏng nhẹ chỉ 1.74 kg - dày 19.9 mm.
Khởi động nhanh, lưu trữ thoải mái
Laptop sử dụng ổ cứng SSD 512 GB vận hành nhanh và êm ái. Khởi động máy chỉ mất 10-15 giây, khởi động ứng dụng chỉ khoảng 3-5 giây giúp mọi tác vụ diễn ra nhanh chóng.
Đặc điểm nổi bật của HP 15s du0115TU i3 7020U/4GB/512GB/Win10 (8VB37PA)

Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop HP 15s du0115TU i3 (8VB37PA) là mẫu laptop thuộc phân khúc học tập - văn phòng cơ bản. Máy có cấu hình trung bình, thiết kế mỏng nhẹ thanh lịch và ổ cứng SSD siêu nhanh. Laptop đang được bán với giá tốt phù hợp cho học sinh, sinh viên. 
Cấu hình đủ dùng học tập - văn phòng
Laptop có CPU Intel Core i3 Kabylake thế hệ thứ 7, RAM 4 GB (có thể nâng cấp lên 16 GB). Cấu hình này chạy ổn định ứng dụng văn phòng, học tập phổ biến hiện nay, lướt web mượt mà, sử dụng Photoshop, Ai cơ bản.
Thiết kế trang nhã
Máy tính có kiểu dáng truyền thống, vỏ nhựa bền bỉ, êm ái khi cầm trên tay. Laptop khá mỏng nhẹ chỉ 1.74 kg - dày 19.9 mm có thể đồng hành cùng bạn đến khắp mọi nơi.
Khởi động nhanh, lưu trữ thoải mái
Laptop sử dụng ổ cứng SSD 512 GB vận hành nhanh và êm ái. Khởi động máy chỉ mất 10-15 giây, khởi động ứng dụng chỉ khoảng 3-5 giây giúp mọi tác vụ diễn ra nhanh chóng, không mất nhiều thời gian chờ đợi.
Màn hình 15.6 inch được thiết kế viền mỏng để nhìn thoải mái hơn, góc nhìn rộng hơn so với laptop 15.6 inch thông thường. Độ phân giải Full HD cho hình ảnh rõ nét, màu sắc chân thật đến từng chi tiết..
Laptop có các cổng giao tiếp: USB 3.1, HDMI, USB Type-C kết nối với tivi, điện thoại,...và các thiết bị khác dễ dàng mà không cần cổng chuyển đổi rườm rà' );
INSERT INTO describe_product (id_product,date_update,content) 
values (30,'2019-01-01','Laptop Acer Aspire A315 34 C2H9 hướng đến đối tượng học sinh - sinh viên đòi hỏi cấu hình đủ dùng để lướt web, soạn thảo, cùng với đó là mức phải chăng và thiết kế gọn nhẹ. Máy là một trong số ít sản phẩm đảm bảo các yếu tố giá rẻ, thời lượng pin cao cùng ổ cứng SSD nhanh chóng.
Ổ cứng SSD nhanh chóng, dung lượng đủ dùng
Laptop Acer Aspire A315 là máy tính hiếm hoi trong tầm giá dưới 10 triệu được trang bị ổ cứng SSD cực nhanh. Nghĩa là bạn chỉ mất 10 - 15 giây để khởi động máy và 3 giây để mở ứng dụng thường dùng chư Chrome, Excel... Dung lượng 256 GB cho không gian đủ để lưu trữ tài liệu, hình ảnh..
Thời lượng pin đủ dùng thoải mái
6 tiếng là thời lượng pin đủ dùng của chiếc máy tính này. Giờ đây, bạn có thể mang laptop đi học tập hay làm việc một cách thoải mái.
Bảo vệ sức khoẻ cho đôi mắt
Công nghệ màn hình ComfyView của Acer tạo một lớp nhám chống chói trên màn hình, kết hợp với phần mềm Bluelight Shield ngăn chặn ánh sáng xanh giúp bảo vệ đôi mắt.
Không gian làm việc rộng rãi
Laptop Acer có màn hình rộng 15.6 inch kết hợp với viền mỏng cho bạn không gian làm việc, giải trí thoải mái, không phải căng mắt nhìn so với laptop có màn hình 13.3 inch. Chất lượng HD cho độ hiển thị hình ảnh rõ ràng.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(31,'2020-01-01','Đặc điểm nổi bật của Asus Gaming ROG Strix G531GD i7 9750H/8GB/512GB/4GB GTX1050/Win10 (AL034T)
Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop ASUS Gaming ROG G531GD i7 (AL034T) là một “cỗ máy chiến game” cực kì ấn tượng với vẻ ngoài cực ngầu, cấu hình khủng. ASUS Gaming ROG là một trong số những chiếc laptop gaming được các game thủ mong chờ nhất hiện nay. 
Thiết kế hầm hố chuẩn gaming 
Laptop ASUS hoàn thiện từ chất liệu nhựa với tông màu đen ấn tượng hơn với những đường phay xước cùng logo đặc trưng trên nắp lưng. Trọng lượng 2.4 
Cấu hình vượt trội trong tầm giá
Laptop gaming ASUS ROG G531GD trang bị cấu hình khủng gồm chip Intel Core i7 thế hệ thứ 9 hiện đại, RAM 8 GB đa nhiệm mượt mà, hỗ trợ nâng cấp lên đến 32 GB. 
Ngoài ra còn có card đồ họa rời NVIDIA GeForce GTX 1050, 4GB tối ưu hóa sức mạnh cho laptop gaming ASUS. Với cấu hình này, bạn thoải mái chiến các game nặng như: Fortnite, Far cry 5, Battlefleld 1,.. với mức setting cao.
Khởi động máy và vào game nhanh hơn
Ổ cứng SSD 512 GB tăng tốc độ khởi động máy, bạn chỉ cần mất 10-15 giây để mở máy, 3-5 giây để mở ứng dụng. Với 512 GB SSD, bạn cũng có thể thả ga lưu trữ các tựa phim, game, tài liệu nặng. 
Laptop có màn hình 15.6 inch Full HD (1920 x 1080) với tấm nền IPS hiện đại, cho không gian nhìn rộng và sắc nét, hình ảnh không bị biến đổi qua các góc nhìn. 
Bên cạnh đó, với công nghệ Anti-Glare, bạn có thể dùng máy ở ngoài trời mà không lo bị lóa. 
Âm thanh vòm đa chiều - dễ dàng nhận biết vị trí kẻ địch 
Công nghệ ROG Sonic Studio đem đến âm thanh vòm to rõ, sống động phát ra từ nhiều hướng, giúp bạn dễ dàng nhận biết vị trí của kẻ địch đồng thời tạo cảm giác đắm chìm như đang tham gia vào trò chơi thật. 
àn phím trên laptop Gaming ASUS là bàn phím to, hành trình sâu với đèn nền chuyển màu RGB đẹp mắt, tô điểm thêm vẻ cá tính mạnh mẽ. 
ASUS trang bị công nghệ tản nhiệt hiệu quả. Công nghệ này giúp máy luôn vận hành mát mẻ, tăng tuổi thọ cho laptop. ' ),
	(32,'2020-01-02','Laptop gaming MSI đã đem lại cho người dùng phân khúc Laptop MSI Gaming GF63 9SC giá rẻ - chỉ hơn 20 triệu đồng. Bạn sẽ có một thiết kế gaming hầm hố nhưng lại thanh lịch, tối giản và tính di động cao hơn cùng với cấu hình mới nhất đem lại hiệu năng mạnh mẽ không thua kém quá nhiều so với các laptop tầm trung hay cận cao cấp. Đây là một lựa chọn rất đáng cân nhắc và hấp dẫn cho người dùng.
Thiết kế mỏng nhẹ thanh lịch
Được chế tác bằng chất liệu chủ đạo là nhôm phay xước, MSI GF63 Thin 9SC là chiếc laptop gaming hiện đại được thiết kế theo xu hướng mới mỏng nhẹ và tinh tế. Với trọng lượng 1.86 kg và kích thước 21.7 mm giúp cho người dùng dễ dàng di chuyển mọi nơi.
Cấu hình siêu khủng
Tuy có thiết kế nhỏ gọn nhưng MSI Gaming GF63 9SC lại mang sức mạnh gaming đến từ vi xử lý Intel Core i7 6 nhân thế hệ thứ 9 mới nhất cho hiệu suất vượt trội hơn hẳn so với thế hệ trước. Cùng với đó là RAM 8 GB giúp người dùng mở nhiều ứng dụng và tab Chrome cùng lúc.
Card đồ họa Nvidia
Sức mạnh đồ họa đến từ card đồ họa rời GeForce GTX 1650 Max-Q Design cho phép bạn có thể sử dụng tốt các ứng dụng đồ họa nặng và các tựa game nổi tiếng cho người dùng hiện nay như PUBG, Apex Legends, Tom Clancy`s Rainbow Six Siege mượt mà hơn.
Màn hình viền mỏng
Laptop MSI có độ phân giải Full HD, tấm nền IPS cùng với viền màn hình máy mỏng cho máy một cảm giác tinh tế và phù hợp với xu hướng thiết kế của laptop hiện nay. Cũng nhờ có thiết kế viền mỏng mà tỉ lệ màn hình với thân máy được tăng lên, mang đến không gian hiển thị rộng lớn đắm chìm.
Ổ cứng SSD siêu nhanh
Cùng với cấu hình khủng như thế MSI cũng đã trang bị thêm cho chiếc laptop ổ cứng SSD 256 GB 
Đặc điểm nổi bật của MSI Gaming 15 GF63 9SC i7 9750H/8GB/256GB/4GB GTX1650/Win10 (070VN)
Bộ sản phẩm chuẩn: Sách hướng dẫn, Thùng máy, Adapter sạc

Laptop gaming MSI đã đem lại cho người dùng phân khúc Laptop MSI Gaming GF63 9SC giá rẻ - chỉ hơn 20 triệu đồng. Bạn sẽ có một thiết kế gaming hầm hố nhưng lại thanh lịch, tối giản và tính di động cao hơn cùng với cấu hình mới nhất đem lại hiệu năng mạnh mẽ không thua kém quá nhiều so với các laptop tầm trung hay cận cao cấp. Đây là một lựa chọn rất đáng cân nhắc và hấp dẫn cho người dùng.
Thiết kế mỏng nhẹ thanh lịch
Được chế tác bằng chất liệu chủ đạo là nhôm phay xước, MSI GF63 Thin 9SC là chiếc laptop gaming hiện đại được thiết kế theo xu hướng mới mỏng nhẹ và tinh tế. Với trọng lượng 1.86 kg và kích thước 21.7 mm giúp cho người dùng dễ dàng di chuyển mọi nơi.

PIN lên đến 7 giờ
Thời lượng pin của chiếc laptop lên đến 7 giờ sử dụng khi làm việc và giải trí trên MSI GF63 Thin 9SC-070VN mà không cần cắm sạc. Bên cạnh đó, công nghệ sạc nhanh sẽ giúp bạn sẵn sàng trò chơi ở bất kỳ lúc nào.' );
INSERT INTO describe_product (id_product,date_update,content) 
values (33,'2020-01-02','Laptop Lenovo IdeaPad L340 15IRH i5 (81LK00VTVN) là chiếc laptop gaming gọn nhẹ với hiệu năng cao. Máy được trang bị card đồ họa rời mạnh mẽ và màn hình rộng 15.6 inch cho bạn thỏa sức làm việc, giải trí với các tựa game 3D hiện đại.
Cấu hình khỏe với CPU Core i5 và card rời GTX 1050
Với chip Intel Core i5 thế hệ 9, đây là loại chip dòng H với hiệu năng cao. Cùng với dung lượng RAM 8 GB giúp Lenovo IdeaPad L340 15IRH chạy mượt mà và cho khả năng đa nhiệm tốt.
Điểm cộng ấn tượng của máy chính là card đồ họa rời NVIDIA GeForce GTX 1050 3 GB với khả năng xử lý hình ảnh mượt mà, hạn chế tình trạng giật đứng khi xử lí đồ họa hoặc chơi game. Laptop có thể chơi được các tựa game phổ biến như Liên Minh, GTA V với cấu hình trung bình cho đến cao.
Khởi động máy nhanh chóng, lưu trữ thoải mái
Laptop sử dụng ổ cứng SSD 512 GB khởi động máy cực nhanh chỉ khoảng 5-8 giây. Vào game cũng nhanh hơn so với các laptop dùng ổ cứng HDD khác. Dung lượng 512 GB, tương đương với khoảng 400 tập phim dài 45 phút, cho bạn có nhiều không gian để tải game, lưu phim, ứng dụng...
Màn hình 15.6 inch Full HD thể hiện sắc nét màu sắc cũng như độ sống động trong từng khung hình. Tấm nền chống chói giúp màn hình không bị lóa khi sử dụng ngoài trời hay ngược sáng, thoải mái sử dụng ở mọi nơi.
Laptop trang bị bàn phím Full size có đèn nền màu xanh độc đáo, đem đến cái nhìn đầy cuốn hút đồng thời dễ dàng sử dụng hơn vào ban đêm.

Không lo thiếu cổng kết nối
Máy trang bị đầy đủ các cổng giao tiếp như USB 3.1, HDMI, và USB Type-C cho khả năng kết nối tiện lợi và truy xuất dữ liệu nhanh chóng. Việc gắn thêm chuột và bàn phím rời để chơi game cũng đơn giản hơn với Lenovo IdeaPad L340.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(34,'2020-01-02','Thế hệ Macbook Pro 2018 đã được ra mắt với nâng cấp mạnh mẽ về cấu hình và khả năng bảo mật với con chip Apple T2. Máy vẫn giữ nguyên các ưu điểm đặc trưng như màn hình siêu nét, thiết kế cao cấp cùng thanh Touch Bar cho khả năng tương tác tuyệt vời với các ứng dụng.
Vỏ nhôm nguyên khối đẳng cấp
MacBook Pro 2018 13 inch gần như được giữ nguyên thiết kế so với thế hệ 2017. Chiếc máy tính xách tay vẫn sở hữu thiết kế kim loại nguyên khối Unibody chắc chắn và bóng bẩy.
Trọng lượng và độ dày của laptop lần lượt là 1.37kg và 1.49cm.
Đặc điểm nổi bật của Apple MacBook Pro 2018 Touch i5 2.3GHz/8GB/256GB (MR9Q2SA/A)
Bộ sản phẩm chuẩn: Sách hướng dẫn,Cáp,Adapter sạc,Thùng máy

Thế hệ Macbook Pro 2018 đã được ra mắt với nâng cấp mạnh mẽ về cấu hình và khả năng bảo mật với con chip Apple T2. Máy vẫn giữ nguyên các ưu điểm đặc trưng như màn hình siêu nét, thiết kế cao cấp cùng thanh Touch Bar cho khả năng tương tác tuyệt vời với các ứng dụng.
Vỏ nhôm nguyên khối đẳng cấp
MacBook Pro 2018 13 inch gần như được giữ nguyên thiết kế so với thế hệ 2017. Chiếc máy tính xách tay vẫn sở hữu thiết kế kim loại nguyên khối Unibody chắc chắn và bóng bẩy. Đây vẫn là mẫu laptop cao cấp có chất lượng hoàn thiện phần cứng thuộc hàng tốt nhất thị trường. 

Bộ sản phẩm chuẩn: Sách hướng dẫn,Cáp,Adapter sạc,Thùng máy
MacBook Pro 2018 13 inch gần như được giữ nguyên thiết kế so với thế hệ 2017. Chiếc máy tính xách tay vẫn sở hữu thiết kế kim loại nguyên khối Unibody chắc chắn và bóng bẩy. Đây vẫn là mẫu laptop cao cấp có chất lượng hoàn thiện phần cứng thuộc hàng tốt nhất thị trường. 

Trọng lượng và độ dày của laptop lần lượt là 1.37kg và 1.49cm, đủ mỏng nhẹ để người dùng không cảm thấy khó chịu khi đeo trên vai thường xuyên đi học, đi làm hàng ngày.

Thiết kế và hộp của Apple Macbook Pro 2018 13 inch Touchbar MR9Q2SA 
Nhiều nâng cấp về hiệu năng
Trên phiên bản 2018, Laptop MacBook Pro được nâng cấp lên CPU Core i5 thế hệ 8 KabyLake R, tốc độ tối đa đạt đến 3.8 GHz, dung lượng RAM 8 GB cùng card đồ họa tích hợp hiệu năng cao Intel Iris Plus Graphics 655.

Cấu hình mạnh mẽ hơn giúp MacBook Pro 13 2018 cân được các tác vụ nặng như xử lý các video Full HD, 4K với các phần mềm Final Cut X, hoặc dùng Premiere Pro ở mức đơn giản hơn.
Bảo mật hơn với chip bảo mật T2
Mẫu Macbook chính hãng được trang bị cảm biến vân tay Touch ID để mở khóa nhanh chóng hơn. Ngoài ra chip bảo mật Apple T2 còn có khả năng chống nghe lén, máy sẽ tự động ngắt hoàn toàn micro khi gập máy.

Con chip này còn đảm bảo mã hóa an toàn dữ liệu với khả năng mã hóa bộ nhớ SSD, chống lại nguy cơ bị đánh cắp dữ liệu bởi kẻ xấu.

Toucj ID trên Apple Macbook Pro 2018 13 inch Touchbar MR9Q2SA 

Bàn phím gõ êm hơn
MacBook Pro 2018 sở hữu Butterfly thế hệ 3. So với loạt máy năm 2017, MacBook Pro mới được bổ sung phần cao su ở bên dưới mỗi phím, mang lại cảm giác gõ êm hơn và ít gây tiếng ồn hơn. 
Máy cũng hỗ trợ công nghệ True Tone, đổi màu màn hình tùy theo không gian sử dụng, cho hình ảnh trở nên tự nhiên và đỡ mỏi mắt hơn khi sử dụng lâu.
Hệ thống âm thanh cao cấp
Macbook Pro Touchbar 2018 13 inch được Apple trang bị 4 cổng Thunderbolt 3 (USB-C) cho phép truyền dữ liệu lên tới 40 Gbps, nhanh gấp đôi so với Thunderbolt 2 chỉ 20 Gbps trên MacBook 2017, trong khi điện năng tiêu thụ thì chỉ bằng phân nửa.
Thời lượng pin lên đến 9 tiếng' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(35,'2020-01-02','Cấu hình sử dụng văn phòng mượt mà
Với bộ xử lý Intel Core i3 8130U cùng bộ nhớ RAM 4 GB, chiếc máy có thể giải quyết mượt mà các tác vụ văn phòng cơ bản như soạn thảo văn bản trong Word, làm việc với Excel, PowerPoint hay chỉnh sửa hình ảnh đơn giản trong Photoshop,... 

Ổ cứng HDD 1TB với dung lượng lưu trữ cực lớn giúp bạn thoải mái lưu trữ hình ảnh, tài liệu hay những bộ phim, bài hát yêu thích.
Acer Swift 3 có thời lượng pin lên đến 11 giờ.
Hình ảnh sắc nét, góc nhìn siêu rộng
Màn hình rộng 15.6 inch cùng độ phân giải Full HD mang đến chất lượng hình ảnh chân thực, sắc nét. 

Công nghệ Acer ComfyView tăng khả năng chống chói cùng tấm nền IPS mang đến góc nhìn rộng, độ tương phản cao, màu sắc trung thực giúp bạn có những trải nghiệm hình ảnh tuyệt vời nhất. ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(36,'2020-01-02','Đặc điểm nổi bật của Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)
Bộ sản phẩm chuẩn: Dây nguồn,Adapter sạc,Thùng máy,Sách hướng dẫn

MacBook Air 2017 i5 128GB là mẫu laptop văn phòng, có thiết kế siêu mỏng và nhẹ, vỏ nhôm nguyên khối sang trọng. Máy có hiệu năng ổn định, thời lượng pin cực lâu 12 giờ, phù hợp cho hầu hết các nhu cầu làm việc và giải trí. 
Thiết kế siêu mỏng và nhẹ 
Macbook Air 2017 mang những đặc trưng thiết kế của dòng MacBook Air với trọng lượng và độ dày của laptop lần lượt là 1.7 cm và 1.35 kg .
Hiệu năng mượt mà
Macbook Air MQD32SA/A i5 5350U có bộ xử lý Intel Core i5 Broadwell hai nhân xung nhịp 1.8 GHz, bộ nhớ RAM 8 GB thoải mái trong việc duyệt web, chơi game, sử dụng mượt mà cac thao tác trong phần mềm Photoshop, AI…
Ổ cứng lưu trữ SSD 128 GB cho tốc độ cực nhanh, thời gian để bạn khởi động máy chỉ khoảng 10-15 giây, dung lượng 128 GB không quá dư giả, nhưng vẫn đủ để lưu trữ các tài liệu, hình ảnh, ứng dụng thường dùng.

Thời lượng pin cực lâu
Macbook Air MQD32SA/A i5 5350U cho thời lượng sử dụng lên đến 12 tiếng sau một lần sạc đầy khi sử dụng soạn thảo và lướt web thông thường. ' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(37,'2020-01-02','Laptop Dell Vostro 3580 i3 (V5I3058W) là mẫu laptop học tập văn phòng với thiết kế cứng cáp, chắc chắn, cấu hình vừa phải đáp ứng nhu cầu học tập và giải trí của bạn. 
Thiết kế chắc chắn, đơn giản
Dell luôn được yêu thích vì độ bền cao, Dell Vostro 3580 là một chiếc laptop tối ưu với sức chịu đựng, cứng cáp, chắc chắn. Chiếc laptop có trọng lượng 2.16 kg.
Cấu hình đủ dùng văn phòng
Dell Vostro 3580 được trang bị chip Core i3 8145U, RAM 4GB chiếc máy có thể giải quyết mượt mà các tác vụ văn phòng cơ bản như soạn thảo văn bản trong Word, làm việc với Excel, PowerPoint hay chỉnh sửa hình ảnh đơn giản trong Photoshop,...
Ổ cứng HDD 1TB với dung lượng lưu trữ cực lớn giúp bạn thoải mái lưu trữ hình ảnh, tài liệu hay những bộ phim, bài hát yêu thích. 
Chiếc laptop này còn được trang bị đầy đủ các cổng kết nối thông dụng hiện nay như 2 cổng USB 3.0, USB 2.0, HDMI 2.0, VGA giúp bạn dễ dàng kết nối và truy xuất dữ liệu. 
Trên Dell Vostro 3580 i3 còn được tích hợp cảm biến vân tay, bạn dễ dàng mở khóa laptop của mình một cách tiện lợi và an toàn' );
INSERT INTO describe_product (id_product,date_update,content) 
values (38,'2020-01-02','Laptop ASUS VivoBook X509FJ (EJ227T) là chiếc máy tính xách tay văn phòng giá rẻ nhưng có cấu hình khá, thiết kế đẹp mắt. Máy còn được trang bị cảm biến vân tay mở máy cực nhanh, card đồ họa rời GeForce hiện đại. Đây là một lựa chọn tuyệt vời dành cho giới trẻ. 
Sử dụng văn phòng - đồ họa cơ bản 
Laptop có cấu hình trung bình, chip Core i3 thế hệ 8 kết hợp với RAM 4 GB dùng được các ứng dụng học tập văn phòng phổ biến, sử dụng ứng dụng đồ họa như Photoshop, AI, ... ở mức cơ bản.
Thiết kế của ASUS VivoBook hướng đến giới trẻ, kiểu dáng thanh lịch, màn hình có viền siêu mỏng. Trọng lượng 1.9 kg, dày 22.9 mm khá mỏng nhẹ đối với một chiếc laptop 15.6 inch. 
Công nghệ màn hình Anti-Glare giảm các tình trạng hình ảnh bị chói, lóa khi sử dụng ngoài trời. 
Card đồ họa rời NVIDIA GeForce MX230 2 GB tái hiện hình ảnh mượt mà hơn, hỗ trợ sử dụng tốt hơn các ứng dụng đồ họa, kỹ thuật. Bạn cũng có thể giải trí với các game như: Apex legends, Fortnite,.. với cấu hình thấp đến trung bình. 
Bảo mật và mở khóa nhanh chóng 
Bảo mật vân tay nằm gọn gàng trên touchpad dễ dàng hơn để mở máy, bạn chỉ cần chạm nhẹ để mở máy mà không cần phải nhập mật khẩu dài dòng.
Ổ cứng HDD 1 TB cho không gian lưu trữ rộng, lưu được một lượng lớn phim ảnh, tài liệu và các tựa game. Bên cạnh đó, máy hỗ trợ khe cắm SSD M.2 PCIe để tiện cho việc nâng cấp ổ cứng
Thời lượng pin lâu
Thời lượng pin của máy khoảng 3 - 4 giờ. Có thể di chuyển và làm việc thoải mái cả ngày nhờ pin lithium-polymer chất lượng cao có khả năng sử dụng liên tục trong thời gian dài. Công nghệ ASUS Battery Health Charging tăng tuổi thọ cho pin.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(39,'2020-01-03','Laptop Acer Swift SF114 được trang bị chip Intel Pentium có cấu hình tầm trung, đạt được hiệu năng ổn định với mức giá phải chăng, phù hợp với những bạn học sinh sinh viên đang tìm một trợ thủ đắc lực cùng sánh bước lên giảng đường.
Khối lượng 1.3 kg khá là nhẹ so với những mẫu laptop có cấu hình tầm trung hiện nay. Việc mang máy tính bên mình sẽ không còn là điều khiến bạn phải trăn trở. Laptop siêu mỏng nhẹ  Acer Swift SF114 chỉ dày 14.95 mm cùng chất liệu kim loại nguyên khối sang trọng càng làm tăng sự tinh tế, sang trọng cho chiếc máy tính này
Chip Intel Pentium mang lại cấu hình tầm trung đáp ứng tốt các ứng dụng soạn thảo Word, các phép tính Excel hay trình chiếu PowerPoint.
 Laptop Acer đã trang bị cho sản phẩm tính năng cảm biến vân tay, mở khoá chỉ bằng một cú chạm, giúp người dùng  đăng nhập nhanh chóng.
Chất lượng hiển thị hình ảnh của Acer Swift SF114 vô cùng sống động, sắc nét với màn hình 14 inch độ phân giải Full HD. Màn hình IPS được trang bị nhằm tái hiện hình ảnh rõ ràng, màu sắc chính xác hơn khi nhìn ở góc rộng.
Công nghệ âm thanh Acer TrueHarmony đem đến âm thanh to rõ, giải trí cực đã cùng những bản nhạc.
Đèn bàn phím được thiết kế nhằm hỗ trợ tối đa cho người dùng khi phải sử dụng máy tính ở nơi thiếu ánh sáng.
Laptop Acer Swift là sự kết hợp của các chuẩn kết nối phổ biến hiện nay, bao gồm: USB 3.0, HDMI, USB 2.0, USB Type-C, dễ dàng kết nối - chia sẻ dữ liệu.' );
INSERT INTO describe_product (id_product,date_update,content) 
values (1,'2020-01-03','4 camera gấy ấn tượng mạnh, OPPO A5 (2020) còn hỗ trợ tính năng Ultra Night Mode 2.0 giúp chụp ảnh rõ nét trong điều kiện thiếu sáng, quay video 4K cùng khả năng chống rung.
Một điều nữa camera selfie 8 MP tích hợp AI hỗ trợ làm đẹp hứa hẹn mang lại cho các chị em những bức hình lung linh để chia sẻ lên mạng xã hội.' );
INSERT INTO describe_product (id_product,date_update,content) 
values (3,'2020-01-03','Thêm tính năng quay video slow motion dành cho camera trước
Ram lên thành 4 GB, iOS 13 , mọi thao tác trên iPhone mới rất mượt, khả năng chống nước tốt hơn,thời lượng pin trâu hơn 1 giờ so với chiếc iPhone Xr.' );
INSERT INTO describe_product (id_product,date_update,content) 
values(21,'2019-01-06','Với Asus VivoBook X409F, Asus mang đến công nghệ âm thanh SonicMaster độc quyền đem lại âm thanh to rõ, sống động để bạn có được trải nghiệm nghe tốt nhất.
Laptop Asus Vivobook X409F mang đến công nghệ âm thanh SonicMaster độc quyền
Mở máy nhanh chóng với bảo mật vân tay
Nhằm đem lại độ bảo mật hiệu quả cho các dữ liệu mật của bạn, Asus trang bị cảm biến vân tay giúp mở máy nhanh, bảo mật an toàn.' );
INSERT INTO describe_product (id_product,date_update,content) 
values	(22,'2020-01-05','Laptop có thời lượng pin thực tế khoảng 5 giờ
Bạn có thể sử dụng các tác vụ văn phòng bình thường như: đánh máy, nghe nhạc, lướt Facebook khoảng 5 giờ liên tục mà không cần cắm sạc.' )	
;

-- select * from describe_product;

-- valuation
-- INSERT INTO validation(id_user,score_plus,score_sub,detail)
-- VALUES	


-- upgade-position
INSERT INTO upgrade_position (id_bidder,position_upgrade,date_upgrade,state)
VALUES	(8,'seller','2019-12-25',1),
	(9,'seller','2019-12-25',1),  
    (12,'seller','2019-12-26',1),
    (3,'seller','2019-12-31',0),
	(5,'seller','2020-01-03',0),
    (9,'bidder','2019-12-28',0)
;
-- select * from upgrade_position;
-- auction 
select * from product;

INSERT INTO auction (id_product,id_bidder_holder,price_setup,price_current,type,start_date,end_date)
VALUES	(1,8,13500000, 13800000,'Thông thường', '2019-12-26 09:00:00','2019-12-28 12:00:00'),
	(2,10,10500000, 11700000,'Thông thường', '2019-12-26 09:00:00','2019-12-28 11:00:00'),
    (4,9,11500000, 12600000,'Thông thường', '2019-12-28 15:00:00','2019-12-28 19:00:00'),
    (5,10,14500000, 15500000,'Thông thường', '2019-12-28 18:00:00','2019-12-28 21:00:00'),
    (3,null,11800000, 11800000,'Thông thường', '2019-12-28 19:00:00','2019-12-28 21:00:00'),
    (9,9,11300000, 12800000,'Tự động', '2019-12-29 09:00:00','2019-12-29 10:00:00'),
    (6,12,16800000, 17800000,'Thông thường', '2019-12-29 16:00:00','2019-12-29 20:00:00'),
    (7,null,17900000, 17900000,'Thông thường', '2019-12-29 09:00:00','2019-12-29 13:00:00'),
    (8,9,16500000, 18200000,'Thông thường', '2019-12-30 08:00:00','2019-12-30 10:00:00'),
    (21,8,3500000, 4200000,'Thông thường', '2019-12-30 10:00:00','2019-12-30 15:00:00'),
    (24,8,3600000, 4000000,'Tự động', '2019-12-30 14:00:00','2019-12-30 18:00:00'),
    (29,7,14800000, 15700000,'Thông thường', '2020-01-02 10:00:00','2020-01-02 13:00:00'),
    (37,9,7400000, 8200000,'Thông thường', '2020-01-03 22:00:00','2020-01-04 2:00:00'),
    (40,null,9500000, 9500000,'Tự động', '2020-01-04 13:00:00','2020-01-04 15:00:00')
; 

-- select * from auction;

-- detail_auction
INSERT INTO detail_auction (id_auction,id_bidder,init_price,date,state)
VALUES	(1,9,13100000, '2019-12-26 09:01:00', 1),
		(1,8,13800000,'2019-12-26 09:02:00',1),
		(2,10, 11700000, '2019-12-26 09:03:00',1),
        (3,9,11500000, '2019-12-28 15:03:00',1),
        (3,10,11900000,'2019-12-28 15:07:00',1),
		(3,9, 12600000,'2019-12-28 15:30:00',1),
		(4,10, 15500000, '2019-12-28 19:05:00',1),
        (6,8, 12500000, '2019-12-29 09:20:00',0),
		(6,9, 12800000, '2019-12-29 09:27:00',1),
		(7,12, 17800000, '2019-12-29 17:36:00',1),
		(9,9, 18200000,'2019-12-30 08:33:00',1),
        (10,11,3800000, '2019-12-30 10:16:00',1),
		(10,8, 4200000, '2019-12-30 10:27:00',1),
		(11,8, 4000000, '2019-12-30 14:05:00',1),
        (12,7,1500000, '2020-01-02 10:08:00',0),
		(12,7, 15700000,'2020-01-02 10:19:00',1),
		(13,9, 8200000, '2020-01-03 22:15:00',1)
;


-- select d.id_bidder, p.seller from detail_auction as d , auction as a, product as p where d.id_auction =a.id and a.id_product = p.id;
-- select d.id_bidder, p.seller from detail_auction as d , auction as a, product as p where d.id_auction =a.id and a.id_product = p.id;

-- select * from product where id = 20;

-- favorite_product
INSERT INTO favorite_product (id_bidder,id_product)
VALUES	(10,1),
	(10,9),
    (12,5),
    (10,3),
    (8,15),
    (11,19),
    (9,1),
    (8,8),
    (8,10),
    (11,9); 
    
-- select * from product where seller = 3; 
-- select * from auction as a, product as p where a.id_product = p.id and a.id_bidder_holder = 11;
-- validation
INSERT INTO validation (id_subject, id_object, type, reason)
VALUES (8, 3, 1, 'Sản phẩm chất lượng'),
		(8, 4, 1, 'Sản phẩm chất lượng'),
		(9, 4, 1, 'Sản phẩm chất lượng'),
		(7, 6, 1, 'Sản phẩm chất lượng'),
		(8, 6, 1, 'Sản phẩm chất lượng'),
		(9, 6, 1, 'Sản phẩm chất lượng'),
		(3, 8, 1, 'Thanh toán đúng hạn'),
		(4, 9, 1, 'Thanh toán đúng hạn'),
		(6, 9, 1, 'Thanh toán đúng hạn'),
		(5, 10, 1, 'Thanh toán đúng hạn'),
		(7, 10, 1, 'Thanh toán đúng hạn')
; 
-- select * from auction;
-- select * from detail_auction as d, auction as a, product as p where d.id_auction = a.id and a.id_product = p.id ;
-- send_email
INSERT INTO send_email (id_auction,id_user,content, date)
VALUES	(5,3, 'Đấu giá kết thúc không có người mua','2019-12-28 21:01:00' ),
		(8,7, 'Đấu giá kết thúc không có người mua', '2019-12-29 13:01:00' ),
        (14,4,'Đấu giá kết thúc không có người mua','2020-01-04 15:01:00'   )
; 

