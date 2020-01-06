# For each database:
ALTER DATABASE daugia CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
# For each table:
ALTER TABLE category CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    category
    CHANGE type type
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

-- ---------------------------------------
ALTER TABLE product CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    product
    CHANGE name_product name_product
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

ALTER TABLE
    product
    CHANGE name_avata name_avata
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
-- -----------------
ALTER TABLE image_product CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    image_product
    CHANGE name name
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
    
-- -----------------
ALTER TABLE describe_product CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    describe_product
    CHANGE content content
    VARCHAR(4000)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
-- -----------------
ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    users
    CHANGE uname uname
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

ALTER TABLE
    users
    CHANGE pass pass
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

ALTER TABLE
    users
    CHANGE address address
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
ALTER TABLE
    users
    CHANGE email email
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
ALTER TABLE
    users
    CHANGE position position
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    

-- -----------------
ALTER TABLE validation CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    validation
    CHANGE reason reason
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
   -- ---------------------------------- 
ALTER TABLE auction CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    auction
    CHANGE type type
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
   -- ---------------------------------- 
-- ALTER TABLE detail_auction CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
-- # For each column:
-- ALTER TABLE
--     detail_auction
--     CHANGE state state
--     VARCHAR(191)
--     CHARACTER SET utf8mb4
--     COLLATE utf8mb4_unicode_ci;
    
   -- ---------------------------------- 
ALTER TABLE upgrade_position CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
ALTER TABLE
    upgrade_position
    CHANGE position_upgrade position_upgrade
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
   -- ---------------------------------- 
ALTER TABLE send_email CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
-- ALTER TABLE
--     send_email
--     CHANGE type type
--     VARCHAR(191)
--     CHARACTER SET utf8mb4
--     COLLATE utf8mb4_unicode_ci;
    
ALTER TABLE
    send_email
    CHANGE content content
    VARCHAR(191)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
    
    
    

    
    