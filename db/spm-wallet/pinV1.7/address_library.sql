ALTER TABLE `address_library` MODIFY COLUMN `currency`  enum('BTC','ETH','USDT','ZEC','FUSDT','CKB') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BTC' COMMENT '币种' AFTER `user_id`;