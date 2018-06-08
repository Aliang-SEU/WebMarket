CREATE DATABASE webmarket;

use webmarket;

'用户表'
create TABLE user(
  `user_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` VARCHAR(40) NOT NULL COMMENT '用户登录名',
  `real_name` VARCHAR(40) DEFAULT '' COMMENT '用户真实姓名',
  `password` VARCHAR(40) NOT NULL COMMENT '密码',
  `email` VARCHAR(40) NOT NULL COMMENT '邮箱',
  `phone` VARCHAR(11) DEFAULT '' COMMENT '手机号码',
  `address` VARCHAR(40) DEFAULT '' COMMENT '地址',
  `register_time` TIMESTAMP not null COMMENT '注册时间',
  primary key (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用户表';


'收货地址表'
create TABLE user_address(
  `address_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `receive_name` VARCHAR(40) DEFAULT '' COMMENT '收货人姓名',
  `phone` VARCHAR(11) DEFAULT '' COMMENT '手机号码',
  `address` VARCHAR(40) DEFAULT '' COMMENT '收货人地址',
  `type` int not null DEFAULT 0 COMMENT '是否为默认地址0不是，1是',
  primary key (address_id),
  FOREIGN KEY (user_id) REFERENCES user(user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='收货地址表';

'商品描述表'
CREATE TABLE good(
  `good_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(50) NOT NULL COMMENT '商品的名称',
  `description` varchar(1000) NOT NULL COMMENT '商品描述',
  `key_word` varchar(1000) NOT NULL COMMENT '商品的关键字',
  `price` decimal(20,2) NOT NULL COMMENT '商品的价格',
  `counts` int NOT NULL COMMENT '商品的数量',
  `good_image` VARCHAR(255) COMMENT '商品的图片地址',
  `type` int NOT NULL COMMENT '商品的分类',
  primary key (good_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='商品表';

'购物车表'
CREATE TABLE shopping_cart(
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `good_price` decimal(20,2) NOT NULL COMMENT '商品价格',
  `counts` int NOT NULL COMMENT '商品的数量',
  primary key (user_id, good_id),
  foreign key (good_id) references good(good_id),
  foreign key (user_id) references user(user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='购物车表';

'订单表'
CREATE TABLE shopping_order(
  `order_id` int(10) unsigned zerofill AUTO_INCREMENT COMMENT '订单id',
  `order_number` varchar(32) NOT NULL COMMENT '订单号',
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `create_time` timestamp not null COMMENT '订单提交时间',
  `finish_time` timestamp COMMENT '订单完成时间',
  `order_state` int not null COMMENT '订单状态',
  `good_price` decimal(20,2) not null COMMENT '商品价格',
  `counts` int not null COMMENT '商品数量',
  `total_price` decimal(20,2) not null COMMENT '订单总价格',
  `order_address` VARCHAR(50) not NULL COMMENT '订单地址',
  `receive_name` VARCHAR(10) NOT NULL COMMENT '收货人姓名',
  `phone` VARCHAR(11) NOT NULL COMMENT '收货人手机号',
  primary key (order_id),
  key(user_id),
  foreign key (good_id) references good(good_id),
  foreign key (user_id) references user(user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='订单表';

'商品分类表'
CREATE TABLE good_type(
  `type` int not null AUTO_INCREMENT COMMENT '商品分类id',
  `name` VARCHAR(20) not null comment '分类的名称',
  primary key (type)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='商品分类表';

'''数据插入'''
insert into good_type(type, name) values(1, '手机');
insert into good_type(type, name) values(2, '衣服');
insert into good_type(type, name) values(3, '箱包');
insert into good_type(type, name) values(4, '电脑');
insert into good_type(type, name) values(5, '家居');
insert into good_type(type, name) values(6, '日常百货');
insert into good_type(type, name) values(7, '五金');
insert into good_type(type, name) values(8, '图书');
insert into good_type(type, name) values(9, '玩具');
insert into good_type(type, name) values(10, '办公');



CREATE TABLE `address_info` (
  `address` varchar(20) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '是否为默认地址,1为默认地址,0为非默认地址',
  `tel_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `address_id` varchar(100) NOT NULL COMMENT '地址的id用来区分地址',
  `receiver_name` varchar(11) DEFAULT NULL COMMENT '接受者姓名',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;