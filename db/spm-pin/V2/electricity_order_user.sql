CREATE TABLE `electricity_order_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_team_id` int(11) NOT NULL DEFAULT '0' COMMENT '电费订单团id',
  `period_no` varchar(256) NOT NULL DEFAULT '' COMMENT '批次号',
  `time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费开始时间',
  `time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '电费结束时间',
  `order_no` varchar(255) NOT NULL DEFAULT '' COMMENT '订单号',
  `order_name` varchar(256) NOT NULL DEFAULT '' COMMENT '电费单名称',
  `latest_payment_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '最迟还款时间',
  `team_id` int(11) NOT NULL DEFAULT '0' COMMENT '团id',
  `team_machine_id` int(11) NOT NULL DEFAULT '0' COMMENT '团矿机id',
  `user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '用户id',
  `machine_model` varchar(256) NOT NULL DEFAULT '' COMMENT '矿机型号',
  `machine_num` int(11) NOT NULL DEFAULT '0' COMMENT '矿机份数',
  `site` varchar(256) NOT NULL DEFAULT '' COMMENT '场地',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电费单价',
  `electricity_num` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '电度数',
  `electricity_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '电费总金额',
  `late_fee_rate` decimal(15,4) NOT NULL DEFAULT '0.0000' COMMENT '滞纳金率',
  `late_day` int(11) NOT NULL DEFAULT '0' COMMENT '滞纳天数',
  `late_fee` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '滞纳金',
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `usdt_amount` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'usdt总金额',
  `cny_amount` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '人民币总金额',
  `usdt_rate` decimal(15,8) NOT NULL DEFAULT '0.00000000' COMMENT 'USDT兑换成人民币的汇率',
  `status` enum('FAIL','SUCCESS','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '状态',
  `pay_type` enum('','WECHAT','ALIPAY','VIRTUAL') NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式',
  `currency` enum('','CNY','USDT') NOT NULL DEFAULT 'CNY' COMMENT '支付币种',
  `protocol` enum('','ERC20') NOT NULL DEFAULT '' COMMENT '协议',
  `pay_status` enum('FAIL','SUCCESS','BEING','WAIT') NOT NULL DEFAULT 'WAIT' COMMENT '支付状态',
  `pay_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '支付时间',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电费单-用户';

-- 2020-08-24 吴永展 支付方式增加银行卡转账
ALTER TABLE `electricity_order_user` MODIFY COLUMN `pay_type`  enum('','WECHAT','ALIPAY','BANK','VIRTUAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'VIRTUAL' COMMENT '支付方式' AFTER `status`;

-- 2020-08-24 吴永展 增加支付流水字段
ALTER TABLE `electricity_order_user` ADD COLUMN `pay_flow` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '支付流水' AFTER `pay_time`;