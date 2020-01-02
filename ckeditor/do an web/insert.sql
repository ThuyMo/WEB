-- user
INSERT INTO `user` (`name`,`birthday`,`pass`,`address`,`score`,`email`, `position`) 
VALUES (`Trịnh Trần Phương Tuấn`, `06/11/1987`,`ttpt1234`,`167 Trần Phú, F4, Q6, TP HCM`, 13,`ttptuan@gmail.com`,`seller`);  

INSERT INTO `user` (`name`,`birthday`,`pass`,`address`,`score`,`email`, `position`) 
VALUES (`Nguyễn Bảo Khánh`, `10/26/1989`,`nbk1234`,`490 An Dương Vương, F4, Q6, TP HCM`, 10,`nbkhanh@gmail.com`,`seller`);  

INSERT INTO `user` (`name`,`birthday`,`pass`,`address`,`score`,`email`, `position`) 
VALUES (`Trịnh Trần Phương Tuấn`, `06/11/1987`,`ttpt1234`,`167 Trần Phú, F4, Q6, TP HCM`, 13,`ttptuan@gmail.com`,`seller`);  

INSERT INTO `user` (`name`,`birthday`,`pass`,`address`,`score`,`email`, `position`) 
VALUES (`Trịnh Trần Phương Tuấn`, `06/11/1987`,`ttpt1234`,`167 Trần Phú, F4, Q6, TP HCM`, 13,`ttptuan@gmail.com`,`seller`);  

-- catetogy
INSERT INTO `category` (`type`) 
VALUES (''); 


-- product
INSERT INTO `product` (`category`,`name_product`,`name_avata`,`price_state`,`price_current`,`price_step`,`winner`,`price_maketing`,`state`,`start_date`,`end_date` ,`time_validate`,`number_of_bids`,`seller`, `describe`)
VALUES	(); 

-- valuation
INSERT INTO `validation` (`id_user`,`score_plus`,`score_sub`,`detail`)
VALUES	(); 
-- email


-- upgade-position
INSERT INTO `upgrade_position` ()
VALUES	(); 



-- auction 
INSERT INTO `auction` (`id_bidder`,`id_product` ,`id_bidder_holder`,`price_setup`, `price_max`,`price_current`,`type` ,`date`,`price`,`state`)
VALUES	(); 


-- favorite-product
INSERT INTO `favorite_product` (`id_bidder`,`id_product`)
VALUES	(); 
 


