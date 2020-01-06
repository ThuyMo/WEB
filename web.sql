drop database daugia;

create database daugia;

use daugia;
 
CREATE TABLE `category` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `type` text
);
-- lưu ý còn lưu các ảnh phụ chưa xử lý
CREATE TABLE `product` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `category` int,
  `name_product` text,
  `name_avata` text,
  `price_step` int, -- bước giá bội
  `winner` int,
  `price_maketing` int,
  `state` bool default 0, --  đã bán hay chưa bán?
  `seller` int
  -- `describe` text
  
);

CREATE TABLE `image_product` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `id_product` int,
  `name` text
);


CREATE TABLE `describe_product` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `id_product` int,
  `date_update` date,
  `content` text
);



CREATE TABLE `users` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `uname` text,
   `birthday` date,
  `pass` text,
  `address` text,
  `score_plus` int default 0,
  `score_sub` int default 0,
  `email` text,
  `position` text,
  `state` int DEFAULT 0 CHECK (state >=-1 and state <= 1 ) -- Trạng thái -1 đã bị vô hiệu hóa, chưa từng dc đánh giá 0, hoặc đã đánh giá 1
);

create table `validation`(
	`id` int NOT NULL auto_increment PRIMARY KEY,
	`id_subject` int,
    `id_object` int,
    `type` bool, -- 1: like, 0: dislike
    `reason` text
); 


CREATE TABLE `auction` (
	`id` int NOT NULL auto_increment PRIMARY KEY,
  `id_product` int,
  `id_bidder_holder` int,
  `price_setup` int, -- Giá vào sản phẩm (giá khởi điểm)
  `price_current` int, -- giá hiện tại (giá vào sản phẩm hiện tại cao nhất)
  `type` text, -- đấu giá thông thường và đấu giá tự động
  `start_date` datetime,
  `end_date` datetime,
  `automatic_time` bool default 0,
  `number_of_bids` int default 0,
  `state` bool default 0 -- chấp nhận bán cho bidder_holder
 
);

CREATE TABLE `detail_auction` (
	`id` int NOT NULL auto_increment PRIMARY KEY,
  `id_auction` int,
  `id_bidder` int,
  `init_price` int, -- là giá mà bidder ra giá đấu
  `date` datetime,
  `state` text -- trạng thái được đồng ý hay từ chối, đang yêu cầu 
  
);

CREATE TABLE `favorite_product` (
`id` int NOT NULL auto_increment PRIMARY KEY,
  `id_bidder` int,
  `id_product` int

);

CREATE TABLE `upgrade_position` (
	`id` int NOT NULL auto_increment PRIMARY KEY,
  `id_bidder` int,
  `position_upgrade` text,
   `date_upgrade` date,
   `state` bool

);

CREATE TABLE `send_email` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `id_auction` int ,
  `id_user` int ,
  `content` text, 
  `date` datetime
);


ALTER TABLE `product` ADD FOREIGN KEY (`category`) REFERENCES `category` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`winner`) REFERENCES `users` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`seller`) REFERENCES `users` (`id`);


ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `upgrade_position` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);

ALTER TABLE `send_email` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
ALTER TABLE `send_email` ADD FOREIGN KEY (`id_auction`) REFERENCES `auction` (`id`);

ALTER TABLE `describe_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `image_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `auction` ADD FOREIGN KEY (`id_bidder_holder`) REFERENCES `users` (`id`);
ALTER TABLE `auction` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `detail_auction` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `detail_auction` ADD FOREIGN KEY (`id_auction`) REFERENCES `auction` (`id`);
ALTER TABLE `validation` ADD FOREIGN KEY (`id_subject`) REFERENCES `users` (`id`);
ALTER TABLE `validation` ADD FOREIGN KEY (`id_subject`) REFERENCES `users` (`id`);
ALTER TABLE `validation` ADD FOREIGN KEY (`id_object`) REFERENCES `users` (`id`);



