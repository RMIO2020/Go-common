CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL DEFAULT '' COMMENT '名称',
  `issue` varchar(256) NOT NULL DEFAULT '' COMMENT '期次',
  `team_name` varchar(256) NOT NULL DEFAULT '' COMMENT '团名',
  `type` enum('ROUTINE','SINGLE') NOT NULL DEFAULT 'ROUTINE' COMMENT '类型：routine为常规，single为单人成团',
  `source_id` int(11) NOT NULL DEFAULT 0 COMMENT '来源id（如果是单人成团则是原团id）',
  `tag` varchar(2048) NOT NULL DEFAULT '' COMMENT '标签',
  `head_img_url` varchar(256) NOT NULL DEFAULT '' COMMENT '列表图片地址',
  `img_url` varchar(512) NOT NULL DEFAULT '' COMMENT '详情图片地址',
  `machine_id` int(11) NOT NULL DEFAULT 0 COMMENT '矿机id',
  `group_num` int(11) NOT NULL DEFAULT 0 COMMENT '成团数量',
  `stock` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '矿机份数',
  `order_num` int(11) NOT NULL DEFAULT 0 COMMENT '下单份数',
  `pay_num` int(11) NOT NULL DEFAULT 0 COMMENT '支付份数',
  `total_num` int(11) NOT NULL DEFAULT 0 COMMENT '矿机总份数',
  `single_machine_num` int(11) NOT NULL DEFAULT 0 COMMENT '单人成团的矿机份数',
  `electricity_price` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '电价',
  `price` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '定价',
  `discount` decimal(15,4) NOT NULL DEFAULT 0.0000 COMMENT '折扣',
  `result_price` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '售价',
  `deposit` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '押金',
  `late_fee_rate` decimal(15,4) NOT NULL DEFAULT 0.0000 COMMENT '滞纳金率',
  `other_fee` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '其他费用',
  `observer_url` varchar(512) NOT NULL DEFAULT '' COMMENT '观察者链接',
  `pool_conf` varchar(500) NOT NULL DEFAULT '' COMMENT '矿池配置',
  `income_status` enum('OFF','ON') NOT NULL DEFAULT 'ON' COMMENT '收益状态',
  `introduce` text NOT NULL COMMENT '介绍',
  `status` enum('READY','FULL','FAIL','SUCCESS','OVER','FORMGROUP','BEING') NOT NULL DEFAULT 'BEING' COMMENT '拼团状态',
  `goods_status` enum('PUT','OFF') NOT NULL DEFAULT 'PUT' COMMENT '商品状态',
  `show_status` enum('OFF','ON') NOT NULL DEFAULT 'ON' COMMENT '显示状态（特殊用户都可以观看）',
  `machine_num` int(11) NOT NULL DEFAULT 0 COMMENT '实际成团矿机数量',
  `event_time_start` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动开始时间',
  `event_time_end` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '活动结束时间',
  `delivery_time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计发货开始时间',
  `delivery_time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计发货结束时间',
  `shelf_time_start` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计上架开始时间',
  `shelf_time_end` date NOT NULL DEFAULT '1970-01-01' COMMENT '预计上架结束时间',
  `delivery_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '发货时间',
  `shelf_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '上架时间',
  `dig_time` date NOT NULL DEFAULT '1970-01-01' COMMENT '开挖时间',
  `daily_output` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '日产值',
  `daily_electricity_fee` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '日电费',
  `daily_income` decimal(15,2) NOT NULL DEFAULT 0.00 COMMENT '日净收益',
  `rank` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `remarks` varchar(1024) NOT NULL DEFAULT '' COMMENT '备注',
  `single_order_no` varchar(256) NOT NULL DEFAULT '' COMMENT '单人成团订单号',
  `single_user_id` varchar(128) NOT NULL DEFAULT '' COMMENT '单人成团用户id',
  `create_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '添加时间',
  `update_time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='团（产品）表';
