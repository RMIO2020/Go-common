ALTER TABLE `wallet_handling_fee` MODIFY COLUMN `currency`  enum('','BTC','ETH','USDT','CNY','ZEC','CKB','FUSDT','USD') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '币种' AFTER `id`;
ALTER TABLE `wallet_handling_fee` MODIFY COLUMN `currency`  enum('','BTC','ETH','USDT','CNY','ZEC','CKB','FUSDT','USD') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '币种' AFTER `id`;