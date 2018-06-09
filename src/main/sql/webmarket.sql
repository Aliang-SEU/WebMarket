/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : webmarket

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-06-09 21:22:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good` (
  `good_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `name` varchar(50) NOT NULL COMMENT '商品的名称',
  `description` varchar(1000) NOT NULL COMMENT '商品描述',
  `key_word` varchar(1000) NOT NULL COMMENT '商品的关键字',
  `price` decimal(20,2) NOT NULL COMMENT '商品的价格',
  `counts` int(11) NOT NULL COMMENT '商品的数量',
  `good_image` varchar(255) DEFAULT NULL COMMENT '商品的图片地址',
  `type` int(11) NOT NULL COMMENT '商品的分类',
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB AUTO_INCREMENT=677 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES ('0000000001', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.99', '75', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000002', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '76', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000003', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '93', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000004', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '97', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000005', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000006', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000007', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000008', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '84', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000009', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000010', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000011', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000012', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000013', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000014', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000015', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000016', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000017', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000018', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000019', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000020', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000021', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000022', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000023', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000024', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000025', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000026', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000027', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000028', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000029', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000030', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000031', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000032', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000033', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000034', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000035', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000036', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000037', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000038', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000039', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000040', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000041', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000042', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000043', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000044', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000045', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000046', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.99', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000047', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000048', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000049', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000050', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000051', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000052', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000053', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000054', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000055', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000192', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000193', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '86', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000194', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000195', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000196', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000197', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000198', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000199', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000200', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000201', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000202', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000203', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000204', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000205', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000206', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000207', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000208', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000209', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000210', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000211', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000212', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000213', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000214', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000215', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000216', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000217', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000218', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000219', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000220', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000221', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000222', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000223', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000224', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000225', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000226', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000227', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000228', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000229', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000230', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000231', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000232', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000233', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000234', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000235', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000236', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000237', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '4');
INSERT INTO `good` VALUES ('0000000238', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '4');
INSERT INTO `good` VALUES ('0000000239', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '4');
INSERT INTO `good` VALUES ('0000000240', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000241', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '4');
INSERT INTO `good` VALUES ('0000000242', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '94', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000243', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '99', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000244', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000245', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000246', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000247', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000248', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000249', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000250', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000251', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000252', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000253', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000254', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000255', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000256', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000257', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000258', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000259', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000260', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000261', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000262', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000263', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000264', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000265', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000266', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000267', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000268', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000269', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000270', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000271', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000272', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000273', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000274', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000275', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000276', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000277', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000278', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000279', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000280', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000281', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000282', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000283', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000284', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000285', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000286', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000287', '小米pro', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '小米(MI)Pro 15.6英寸金属轻薄笔记本(i5-8250U 8G 256GSSD MX150 2G独显 FHD 指纹识别 预装office)深空灰', '5598.00', '100', 'computer03.jpg', '5');
INSERT INTO `good` VALUES ('0000000288', '惠普690-053ccn', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '惠普（HP）光影精灵II代 八代酷睿i5吃鸡游戏台式电脑主机(六核i5-8400 高频8G 128G+1TB GTX1060 3G独显)', '4999.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000289', 'AppleMQD32CH/A', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', 'Apple MacBook Air 13.3英寸笔记本电脑 银色(2017款Core i5 处理器/8GB内存/128GB闪存 MQD32CH/A)', '5788.00', '100', 'computer05.jpg', '5');
INSERT INTO `good` VALUES ('0000000290', 'ThinkPad翼480', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '联想ThinkPad 翼480（04CD）英特尔8代酷睿14英寸轻薄窄边框笔记本电脑（i5-8250U 8G 256SSD Office）冰原银', '4799.00', '100', 'computer01.jpg', '5');
INSERT INTO `good` VALUES ('0000000291', '联想天逸510S', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G1T 集显 WiFi 蓝牙 三年上门 win10）21.5英寸', '3099.00', '100', 'computer02.jpg', '5');
INSERT INTO `good` VALUES ('0000000292', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000293', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '99', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000294', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '84', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000295', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '89', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000296', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000297', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000298', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000299', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000300', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000301', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000302', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000303', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000304', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000305', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000306', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000307', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000308', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000309', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000310', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000311', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000312', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000313', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000314', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000315', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000316', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000317', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000318', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000319', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000320', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000321', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000322', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000323', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '10');
INSERT INTO `good` VALUES ('0000000324', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '10');
INSERT INTO `good` VALUES ('0000000325', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '10');
INSERT INTO `good` VALUES ('0000000326', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000327', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000328', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000329', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000330', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000331', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000332', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000333', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000334', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000335', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000336', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000337', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000338', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000339', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000340', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000341', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000342', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000343', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000344', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000345', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000346', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000347', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000348', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000349', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000350', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000351', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000352', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000353', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '6');
INSERT INTO `good` VALUES ('0000000354', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '6');
INSERT INTO `good` VALUES ('0000000355', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '6');
INSERT INTO `good` VALUES ('0000000356', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000357', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000358', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000359', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000360', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000361', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000362', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000363', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000364', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000365', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000366', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000367', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000368', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000369', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000370', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000371', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000372', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000373', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000374', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000375', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000376', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000377', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000378', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000379', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000380', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000381', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000382', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000383', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '7');
INSERT INTO `good` VALUES ('0000000384', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '7');
INSERT INTO `good` VALUES ('0000000385', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '7');
INSERT INTO `good` VALUES ('0000000386', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000387', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000388', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000389', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000390', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000391', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000392', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000393', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000394', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000395', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000396', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000397', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000398', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000399', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000400', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000401', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000402', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000403', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000404', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000405', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000406', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000407', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000408', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000409', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000410', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000411', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000412', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000413', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '8');
INSERT INTO `good` VALUES ('0000000414', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '8');
INSERT INTO `good` VALUES ('0000000415', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '8');
INSERT INTO `good` VALUES ('0000000416', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000417', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000418', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000419', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000420', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000421', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000422', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000423', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000424', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000425', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000426', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000427', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000428', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000429', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000430', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000431', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000432', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000433', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000434', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000435', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000436', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000437', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000438', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000439', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000440', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000441', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000442', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000443', '包邮 Java编程思想(第4版', '包邮 Java编程思想(第4版)', '包邮 Java编程思想(第4版)', '78.00', '100', 'book01.jpg', '9');
INSERT INTO `good` VALUES ('0000000444', 'Java从入门到精通', 'Java从入门到精通(第4版)(附光盘)', 'Java从入门到精通(第4版)(附光盘)', '46.80', '100', 'book02.jpg', '9');
INSERT INTO `good` VALUES ('0000000445', '深入理解java虚拟机', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '深入理解Java虚拟机：JVM高级特性与最佳实践（第2版）', '58.80', '100', 'book03.jpg', '9');
INSERT INTO `good` VALUES ('0000000446', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000447', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000448', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000449', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000450', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000451', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000452', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000453', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000454', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000455', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000456', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000457', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000458', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000459', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000460', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000461', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000462', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000463', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000464', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000465', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000466', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000467', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000468', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000469', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000470', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000471', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000472', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000473', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000474', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000475', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000476', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000477', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000478', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000479', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000480', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000481', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000482', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000483', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000484', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000485', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000486', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000487', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000488', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000489', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000490', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000491', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000492', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000493', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000494', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000495', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000496', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000497', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000498', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000499', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000500', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000501', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000502', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000503', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000504', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000505', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000506', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000507', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000508', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000509', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000510', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000511', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000512', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000513', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000514', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000515', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000516', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000517', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000518', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000519', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000520', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000521', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000522', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000523', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000524', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000525', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000526', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000527', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000528', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000529', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000530', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000531', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000532', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000533', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000534', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000535', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000536', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000537', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000538', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000539', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000540', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000541', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000542', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000543', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000544', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000545', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000546', '小米6x', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '小米6X 全网通 6GB+64GB 曜石黑 移动联通电信4G手机 双卡双待 智能手机', '1799.00', '100', 'xiaomi6x.jpg', '1');
INSERT INTO `good` VALUES ('0000000547', '华为P20', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', ' 华为 HUAWEI P20 AI智慧全面屏 6GB +64GB 亮黑色 全网通版 移动联通电信4G手机 双卡双待', '3788.00', '100', 'huaweip20.jpg', '1');
INSERT INTO `good` VALUES ('0000000548', '三星Galaxy S9+', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', ' 三星 Galaxy S9+（SM-G9650/DS）6GB+128GB 夕雾紫 移动联通电信4G手机 双卡双待', '6999.00', '100', 'sumsungS9.jpg', '1');
INSERT INTO `good` VALUES ('0000000549', 'AppleiPhone X', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '7399.00', '100', 'iphoneX.jpg', '1');
INSERT INTO `good` VALUES ('0000000550', '锤子坚果3', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '锤子（smartisan） 坚果 3 4G+64GB 碳黑色 全面屏双摄 全网通4G手机 双卡双待', '1299.00', '100', 'chuizi.jpg', '1');
INSERT INTO `good` VALUES ('0000000551', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000552', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '99', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000553', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000554', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000555', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000556', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000557', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000558', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000559', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000560', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000561', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000562', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000563', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000564', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000565', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000566', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000567', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000568', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000569', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000570', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000571', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000572', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000573', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000574', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000575', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000576', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000577', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000578', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000579', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000580', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000581', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000582', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000583', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000584', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000585', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000586', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000587', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000588', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000589', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000590', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000591', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000592', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000593', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000594', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000595', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000596', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000597', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000598', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000599', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000600', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000601', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000602', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000603', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000604', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000605', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000606', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000607', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000608', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000609', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000610', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000611', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000612', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000613', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000614', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000615', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000616', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000617', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000618', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000619', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000620', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000621', '男T恤', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '【2件128元】短袖t恤男2018夏季新品纯色日系宽松男士短袖上衣大码夏装打底衫圆领衣服半袖体恤男装 浅灰色 L/170', '79.00', '100', 'clothes01.jpg', '2');
INSERT INTO `good` VALUES ('0000000622', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000623', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000624', '滋涩棉麻连衣裙', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '滋涩棉麻连衣裙2018夏季新款韩版女装名媛衣服两件套套装裙时尚套装女短袖中长款包臀裙子a字裙G63 黄色 L', '109.00', '100', 'clothes02.jpg', '2');
INSERT INTO `good` VALUES ('0000000625', '雪中飞运动户外羽绒服男', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '雪中飞运动户外羽绒服男中长款 连帽修身显瘦加厚羽绒衣X1701727 青靛蓝5047 175/92A 黄色 L', '699.00', '99', 'clothes03.jpg', '2');
INSERT INTO `good` VALUES ('0000000626', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000627', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000628', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000629', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000630', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000631', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000632', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000633', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000634', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000635', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000636', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000637', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000638', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000639', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000640', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000641', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000642', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000643', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000644', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000645', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000646', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000647', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000648', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000649', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000650', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000651', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000652', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000653', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000654', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000655', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000656', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000657', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000658', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000659', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000661', '爱华仕拉杆箱', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '爱华仕（OIWAS）飞机轮拉杆箱6182 商务出差旅行箱 男女休闲旅游登机箱20英寸灰色', '299.00', '100', 'bag01.jpg', '3');
INSERT INTO `good` VALUES ('0000000662', 'GCE新款行李箱女拉', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', 'GCE新款行李箱女拉杆箱男旅行箱登机箱子母箱万向轮密码箱学生拉杆箱子旅行箱女 蓝色子母套 22英寸', '238.00', '100', 'bag02.jpg', '3');
INSERT INTO `good` VALUES ('0000000663', '小米90分旅行箱', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '小米（MI）90分旅行箱拉杆箱 男女万向轮登机行李箱 20英寸 星空灰', '299.00', '100', 'bag03.jpg', '3');
INSERT INTO `good` VALUES ('0000000664', '瑞士军刀威戈电脑包', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '128.00', '100', 'bag04.jpg', '3');
INSERT INTO `good` VALUES ('0000000665', 'GCE新款行李箱女拉', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '瑞士军刀威戈Wenger双肩包商务笔记本电脑包14.4英寸 时尚休闲双肩背包男女书包防泼水 黑色SGB10516109044', '238.00', '100', 'bag02.jpg', '3');

-- ----------------------------
-- Table structure for good_type
-- ----------------------------
DROP TABLE IF EXISTS `good_type`;
CREATE TABLE `good_type` (
  `type` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `name` varchar(20) NOT NULL COMMENT '分类的名称',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='商品分类表';

-- ----------------------------
-- Records of good_type
-- ----------------------------
INSERT INTO `good_type` VALUES ('1', '手机');
INSERT INTO `good_type` VALUES ('2', '衣服');
INSERT INTO `good_type` VALUES ('3', '箱包');
INSERT INTO `good_type` VALUES ('4', '电脑');
INSERT INTO `good_type` VALUES ('5', '家居');
INSERT INTO `good_type` VALUES ('6', '日常百货');
INSERT INTO `good_type` VALUES ('7', '五金');
INSERT INTO `good_type` VALUES ('8', '图书');
INSERT INTO `good_type` VALUES ('9', '玩具');
INSERT INTO `good_type` VALUES ('10', '办公');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_id` int(10) unsigned zerofill DEFAULT NULL COMMENT '订单id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `good_name` varchar(50) NOT NULL COMMENT '商品的名称',
  `good_price` decimal(20,2) NOT NULL COMMENT '商品的价格',
  PRIMARY KEY (`order_detail_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='订单商品详情表';

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('0000000011', '0000000013', '0000000002', '华为P20', '3788.00');
INSERT INTO `order_detail` VALUES ('0000000012', '0000000014', '0000000552', '滋涩棉麻连衣裙', '109.00');
INSERT INTO `order_detail` VALUES ('0000000013', '0000000015', '0000000242', '小米pro', '5598.00');
INSERT INTO `order_detail` VALUES ('0000000014', '0000000016', '0000000002', '华为P20', '3788.00');

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `good_price` decimal(20,2) NOT NULL COMMENT '商品价格',
  `counts` int(11) NOT NULL COMMENT '商品的数量',
  PRIMARY KEY (`user_id`,`good_id`),
  KEY `good_id` (`good_id`),
  CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`good_id`) REFERENCES `good` (`good_id`),
  CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for shopping_order
-- ----------------------------
DROP TABLE IF EXISTS `shopping_order`;
CREATE TABLE `shopping_order` (
  `order_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_number` varchar(32) NOT NULL COMMENT '订单号',
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `good_id` int(10) unsigned zerofill NOT NULL COMMENT '商品id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单提交时间',
  `finish_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单完成时间',
  `order_state` int(11) NOT NULL COMMENT '订单状态',
  `good_price` decimal(20,2) NOT NULL COMMENT '商品价格',
  `counts` int(11) NOT NULL COMMENT '商品数量',
  `total_price` decimal(20,2) NOT NULL COMMENT '订单总价格',
  `order_address` varchar(50) NOT NULL COMMENT '订单地址',
  `receive_name` varchar(10) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(11) NOT NULL COMMENT '收货人手机号',
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `shopping_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of shopping_order
-- ----------------------------
INSERT INTO `shopping_order` VALUES ('0000000013', '00000000011528549679962', '0000000001', '0000000002', '2018-06-09 21:12:58', '2018-06-09 21:08:00', '3', '3788.00', '1', '3788.00', '江苏省南京市玄武区四牌楼', '李永斌', '15698598695');
INSERT INTO `shopping_order` VALUES ('0000000014', '00000000011528550008298', '0000000001', '0000000552', '2018-06-09 21:13:55', '2018-06-09 21:13:28', '2', '109.00', '1', '109.00', '江苏省南京市玄武区东南大学', '黄志亮', '15365717168');
INSERT INTO `shopping_order` VALUES ('0000000015', '00000000011528550019942', '0000000001', '0000000242', '2018-06-09 21:14:10', '2018-06-09 21:13:40', '1', '5598.00', '6', '33588.00', '江苏省南京市玄武区东南大学', '黄志亮', '15365717168');
INSERT INTO `shopping_order` VALUES ('0000000016', '00000000011528550084556', '0000000001', '0000000002', '2018-06-09 21:14:45', '2018-06-09 21:14:45', '0', '3788.00', '10', '37880.00', '江苏省南京市玄武区四牌楼', '李永斌', '15698598695');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(40) NOT NULL COMMENT '用户登录名',
  `real_name` varchar(40) DEFAULT '' COMMENT '用户真实姓名',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `email` varchar(40) NOT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `address` varchar(40) DEFAULT '' COMMENT '地址',
  `register_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0000000001', 'hzl', null, '81dc9bdb52d04dc20036dbd8313ed055', '550850113@qq.com', null, null, '2018-06-08 15:21:55');
INSERT INTO `user` VALUES ('0000000002', 'hahaha', null, '81dc9bdb52d04dc20036dbd8313ed055', '555@163.com', null, null, '2018-06-08 15:22:51');

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `address_id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `user_id` int(10) unsigned zerofill NOT NULL COMMENT '用户id',
  `receive_name` varchar(40) DEFAULT '' COMMENT '收货人姓名',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号码',
  `address` varchar(40) DEFAULT '' COMMENT '收货人地址',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '是否为默认地址0不是，1是',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='收货地址表';

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('0000000001', '0000000001', '黄志亮', '15365717168', '江苏省南京市玄武区东南大学', '0');
INSERT INTO `user_address` VALUES ('0000000002', '0000000002', '周华', '15676576576', '上海市浦东新区', '0');
INSERT INTO `user_address` VALUES ('0000000003', '0000000001', '李永斌', '15698598695', '江苏省南京市玄武区四牌楼', '0');
