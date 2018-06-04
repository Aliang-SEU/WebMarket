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
  primary key (user_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='用户表';

'商品描述表'
CREATE TABLE good(
  `good_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(50) NOT NULL COMMENT '商品的名称',
  `description` varchar(1000) NOT NULL COMMENT '商品描述',
  `key_word` varchar(1000) NOT NULL COMMENT '商品的关键字',
  `price` int NOT NULL COMMENT '商品的价格',
  `counts` int NOT NULL COMMENT '商品的数量',
  `type` int NOT NULL COMMENT '商品的分类',
  primary key (good_id)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='商品表';

'购物车表'
CREATE TABLE shopping_cart(
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `good_price` int NOT NULL COMMENT '商品价格',
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
  `time` timestamp not null COMMENT '订单提交时间',
  `order_status` int not null COMMENT '订单状态',
  `good_price` int not null COMMENT '商品价格',
  `counts` int not null COMMENT '商品数量',
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

insert into good(name, description, key_word, price, counts, type)
values ('小米5s', '小米公司最新产品', '手机 智能机 安卓', 5000, 100, 1);
insert into good(name, description, key_word, price, counts, type)
values ('iphoneX', '苹果2017年旗舰产品', '手机 ios', 10000, 100, 1);

insert into good(name, description, key_word, price, counts, type)
values ('男鞋', '衣服', '男鞋', 100, 100, 2);
insert into good(name, description, key_word, price, counts, type)
values ('女鞋', '衣服', '女鞋', 100, 100, 2);

insert into good(name, description, key_word, price, counts, type)
values ('书包', '双肩背包', '学生', 200, 100, 3);
insert into good(name, description, key_word, price, counts, type)
values ('拉杆箱', '拉杆旅行箱 超大容量', '旅行', 500, 100, 3);

insert into good(name, description, key_word, price, counts, type)
values ('小米笔记本电脑', '超薄 笔记本中的超韧', '便携', 200, 100, 4);
insert into good(name, description, key_word, price, counts, type)
values ('神州笔记本', '超性价比', 'gtx1080', 500, 100, 4);
insert into good(name, description, key_word, price, counts, type)
values ('macbok', 'mac系统', '便携', 500, 100, 4);

insert into good(name, description, key_word, price, counts, type)
values ('小米笔记本电脑', '超薄 笔记本中的超韧', '便携', 200, 100, 5);
insert into good(name, description, key_word, price, counts, type)
values ('神州笔记本', '超性价比', 'gtx1080', 500, 100, 5);
insert into good(name, description, key_word, price, counts, type)
values ('macbok', 'mac系统', '便携', 500, 100, 5);

insert into good(name, description, key_word, price, counts, type)
values ('小米笔记本电脑', '超薄 笔记本中的超韧', '便携', 200, 100, 6);
insert into good(name, description, key_word, price, counts, type)
values ('神州笔记本', '超性价比', 'gtx1080', 500, 100, 6);
insert into good(name, description, key_word, price, counts, type)
values ('macbok', 'mac系统', '便携', 500, 100, 6);

insert into good(name, description, key_word, price, counts, type)
values ('小米笔记本电脑', '超薄 笔记本中的超韧', '便携', 200, 100, 7);
insert into good(name, description, key_word, price, counts, type)
values ('神州笔记本', '超性价比', 'gtx1080', 500, 100, 7);
insert into good(name, description, key_word, price, counts, type)
values ('macbok', 'mac系统', '便携', 500, 100, 7);

insert into good(name, description, key_word, price, counts, type)
values ('java编程思想', 'java编程入门系列', 'java 编程', 100, 100, 8);
insert into good(name, description, key_word, price, counts, type)
values ('java从入门到精通', 'java编程入门系列', 'java 编程', 100, 100, 8);
insert into good(name, description, key_word, price, counts, type)
values ('深入理解java虚拟机', 'java编程入门系列', 'java 编程', 100, 100, 8);

insert into good(name, description, key_word, price, counts, type)
values ('小米笔记本电脑', '超薄 笔记本中的超韧', '便携', 200, 100, 9);
insert into good(name, description, key_word, price, counts, type)
values ('神州笔记本', '超性价比', 'gtx1080', 500, 100, 9);
insert into good(name, description, key_word, price, counts, type)
values ('macbok', 'mac系统', '便携', 500, 100, 9);

insert into good(name, description, key_word, price, counts, type)
values ('java编程思想', 'java编程入门系列', 'java 编程', 100, 100, 10);
insert into good(name, description, key_word, price, counts, type)
values ('java从入门到精通', 'java编程入门系列', 'java 编程', 100, 100, 10);
insert into good(name, description, key_word, price, counts, type)
values ('深入理解java虚拟机', 'java编程入门系列', 'java 编程', 100, 100, 10);


CREATE TABLE `address_info` (
  `address` varchar(20) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '是否为默认地址,1为默认地址,0为非默认地址',
  `tel_phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `address_id` varchar(100) NOT NULL COMMENT '地址的id用来区分地址',
  `receiver_name` varchar(11) DEFAULT NULL COMMENT '接受者姓名',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;