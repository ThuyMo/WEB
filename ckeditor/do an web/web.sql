create database daugia;

use daugia;
CREATE TABLE `category` (
  `id` int PRIMARY KEY,
  `type` text
);

CREATE TABLE `product` (
  `id` int PRIMARY KEY,
  `category` int,
  `name_product` text,
  `name_avata` text,
  `price_state` int,
  `price_current` int,
  `price_step` int,
  `winner` int,
  `price_maketing` int,
  `state` text,
  `start_date` date,
  `end_date` date,
  `time_validate` time,
  `number_of_bids` int,
  `seller` int,
  `describe` text
  
);

CREATE TABLE `users` (
  `id` int PRIMARY KEY,
  `name` text,
   `birthday` date,
  `pass` text,
  `address` text,
  `score` int,
  `email` text,
  `position` text,
  `state` text
);

CREATE TABLE `validation` (
  `id_user` int PRIMARY KEY,
  `score_plus` int,
  `score_sub` int,
  `detail` text
);

CREATE TABLE `auction` (
	`id` int PRIMARY KEY,
  `id_bidder` int,
  `id_product` int,
  `id_bidder_holder` int,
  `price_setup` int,
  `price_max` int,
  `price_current` int,
  `type` text,
  `date` datetime,
  `price` int,
  `state` text
  
);

CREATE TABLE `favorite_product` (
`id` int PRIMARY KEY,
  `id_bidder` int,
  `id_product` int

);

CREATE TABLE `upgrade_position` (
  `id_bidder` int PRIMARY KEY,
  `position_upgrade` text,
   `state` int

);

CREATE TABLE `email` (
  `id` int PRIMARY KEY,
  `id_bidder` int ,
  `id_seller` int ,
  `id_bidder_prev` int ,
  `type` text,
  `content` text
);


ALTER TABLE `product` ADD FOREIGN KEY (`category`) REFERENCES `category` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`winner`) REFERENCES `users` (`id`);
ALTER TABLE `product` ADD FOREIGN KEY (`seller`) REFERENCES `users` (`id`);
ALTER TABLE `validation` ADD FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
ALTER TABLE `auction` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `auction` ADD FOREIGN KEY (`id_bidder_holder`) REFERENCES `users` (`id`);
ALTER TABLE `auction` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `favorite_product` ADD FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
ALTER TABLE `upgrade_position` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `email` ADD FOREIGN KEY (`id_bidder`) REFERENCES `users` (`id`);
ALTER TABLE `email` ADD FOREIGN KEY (`id_seller`) REFERENCES `users` (`id`);
ALTER TABLE `email` ADD FOREIGN KEY (`id_bidder_prev`) REFERENCES `users` (`id`);




