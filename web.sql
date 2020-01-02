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
  `price_state` int,
  `price_current` int,
  `price_step` int, -- bước giá bội
  `winner` int,
  `price_maketing` int,
  `state` text,
  `start_date` date,
  `end_date` date,
  `time_validate` time,
  `automatic_time` bool,
  `number_of_bids` int,
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
  `name` text,
   `birthday` date,
  `pass` text,
  `address` text,
  `score` float,
  `email` text,
  `position` text,
  `state` bool -- Trạng thái chưa từng dc đánh giá 0, hoặc đã đánh giá 1
);

CREATE TABLE `validation` (
  `id_user` int NOT NULL auto_increment PRIMARY KEY,
  `score_plus` int,
  `score_sub` int,
  `detail` text
);


CREATE TABLE `auction` (
	`id` int NOT NULL auto_increment PRIMARY KEY,
  `id_product` int,
  `id_bidder_holder` int,
  `price_setup` int, -- Giá vào sản phẩm (giá khởi điểm)
  `price_current` int, -- giá hiện tại (giá vào sản phẩm hiện tại cao nhất)
  `type` text, -- đấu giá thông thường và đấu giá tự động
  `date` datetime
 
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
  `id_bidder` int NOT NULL auto_increment PRIMARY KEY,
  `position_upgrade` text,
   `date_upgrade` date,
   `state` bool

);

CREATE TABLE `send_email` (
  `id` int NOT NULL auto_increment PRIMARY KEY,
  `id_auction` int ,
  `id_bidder` int ,
  `id_seller` int ,
  `id_bidder_prev` int ,
  `type` text,
  `content` text,
  `date_send` date
);

ALTER TABLE `product` ADD FOREIGN KEY (`category`) REFERENCES `category` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`winner`) REFERENCES `users` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`seller`) REFERENCES `users` (`id`);

ALTER TABLE `validation` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `upgrade_position` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);

ALTER TABLE `send_email` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `send_email` ADD FOREIGN KEY (`id_seller`) REFERENCES `users` (`id`);
ALTER TABLE `send_email` ADD FOREIGN KEY (`id_bidder_prev`) REFERENCES `users` (`id`);
ALTER TABLE `send_email` ADD FOREIGN KEY (`id_auction`) REFERENCES `auction` (`id`);

ALTER TABLE `describe_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `image_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `auction` ADD FOREIGN KEY (`id_bidder_holder`) REFERENCES `users` (`id`);
ALTER TABLE `auction` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

ALTER TABLE `detail_auction` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `detail_auction` ADD FOREIGN KEY (`id_auction`) REFERENCES `auction` (`id`);

