/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : localhost:3306
 Source Schema         : warehouse

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 28/04/2023 12:28:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bus_customer
-- ----------------------------
DROP TABLE IF EXISTS `bus_customer`;
CREATE TABLE `bus_customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `connectionpersion` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10011 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_customer
-- ----------------------------
INSERT INTO `bus_customer` VALUES (1, '小张超市', '100000', '北京', '18138313801', '张鹏海', '16562881810', '交通银行', '6222029958995900481', '2942194404@163.com', '87752 ', 1);
INSERT INTO `bus_customer` VALUES (2, '小牛超市', '300000', '天津', '13902204103', '牛元龙', '15273018251', '中国银行', '	6222022182664471911', '639932740@163.com', '32001 ', 1);
INSERT INTO `bus_customer` VALUES (3, '小李超市', '050000', '石家庄市', '14571379312', '曹高义', '17650049700', '中国建设银行', '6222026409957997718', '689237917@163.com', '24459 ', 1);
INSERT INTO `bus_customer` VALUES (4, '小夏超市', '	030000', '太原市', '13204466974', '夏思远', '18739018299', '中国农业银行', '6222024745485884286', '22396325@163.com', '52351', 1);
INSERT INTO `bus_customer` VALUES (5, '小孙超市', '	200000', '上海市', '17361326568', '戴飞扬', '13700314747', '中国工商银行', '6222026726136358453', '5821703811@163.com', '92153 ', 1);
INSERT INTO `bus_customer` VALUES (6, '小乔超市', '	210000', '南京市', '18390896944', '乔泰华', '15048147739', '中国邮政储蓄银行', '6222021907985787999', '174753286@163.com', '83554 ', 1);
INSERT INTO `bus_customer` VALUES (7, '小须超市', '310000', '杭州市', '15150129765', '须正豪', '13712567287', '交通银行', '6222029432599157101', '9346668019@163.com', '10772 ', 1);
INSERT INTO `bus_customer` VALUES (8, '小何超市', '	230000', '合肥市', '15593689217', '何正雅', '13667416860', '中国银行', '6222029343355836931', '035554@163.com', '86155 ', 1);

-- ----------------------------
-- Table structure for bus_goods
-- ----------------------------
DROP TABLE IF EXISTS `bus_goods`;
CREATE TABLE `bus_goods`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `providerid` int NULL DEFAULT NULL,
  `produceplace` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `goodspackage` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `productcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `promitcode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `dangernum` int NULL DEFAULT NULL,
  `goodsimg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_sq0btr2v2lq8gt8b4gb8tlk0i`(`providerid` ASC) USING BTREE,
  CONSTRAINT `bus_goods_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_goods
-- ----------------------------
INSERT INTO `bus_goods` VALUES (1, '娃哈哈', 1, '武汉', '120ml/瓶', '瓶', 'SC86028 ', 'PZ23993 ', '非常美味', 2, 500, 1000, '2023-04-24/adgai.jpg', 1);
INSERT INTO `bus_goods` VALUES (2, '纯牛奶', 2, '内蒙古', '240ml/盒', '盒', 'SC11178', 'PZ85247 ', '非常美味', 4, 500, 1000, '2023-04-24/chunniunai.jpg', 1);
INSERT INTO `bus_goods` VALUES (3, '橘子罐头', 3, '天津', '300ml/罐', '罐', 'SC87674 ', 'PZ14857 ', '非常美味', 8, 500, 1000, '2023-04-24/juziguantou.jpg', 1);
INSERT INTO `bus_goods` VALUES (4, '夹心面包', 4, '河南', '100g/包', '包', 'SC35992 ', 'PZ73700 ', '非常美味', 5, 500, 100, '2023-04-24/jiaxinmianbao.jpg', 1);
INSERT INTO `bus_goods` VALUES (5, '营养快线', 5, '河北', '480ml/瓶', '瓶', 'SC38968 ', 'PZ80782 ', '非常美味', 5, 500, 100, '2023-04-24/yingyangkuaixian.jpg', 1);
INSERT INTO `bus_goods` VALUES (6, '旺旺雪饼', 6, '仙桃', '20g/袋', '袋', 'SC53055 ', 'PZ78069 ', '非常美味', 3, 500, 100, '2023-04-24/wangwangxuebing.jpg', 1);
INSERT INTO `bus_goods` VALUES (7, '旺旺大礼包', 7, '仙桃', '30包/袋', '袋', 'SC50033 ', 'PZ87710 ', '非常美味', 30, 500, 100, '2023-04-24/wangwangdalibao.jpg', 1);
INSERT INTO `bus_goods` VALUES (8, '大瓶农夫山泉', 8, '长白山', '1.2l/瓶', '瓶', 'SC46161 ', 'PZ11513', '非常美味', 3, 500, 100, '2023-04-24/dapingnongfushanquan.jpg', 1);

-- ----------------------------
-- Table structure for bus_inport
-- ----------------------------
DROP TABLE IF EXISTS `bus_inport`;
CREATE TABLE `bus_inport`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `inporttime` datetime NULL DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `inportprice` double NULL DEFAULT NULL,
  `providerid` int NULL DEFAULT NULL,
  `goodsid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `bus_inport_ibfk_1`(`providerid` ASC) USING BTREE,
  INDEX `bus_inport_ibfk_2`(`goodsid` ASC) USING BTREE,
  CONSTRAINT `bus_inport_ibfk_1` FOREIGN KEY (`providerid`) REFERENCES `bus_provider` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `bus_inport_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `bus_goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_inport
-- ----------------------------
INSERT INTO `bus_inport` VALUES (1, '微信', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 1.5, 1, 1);
INSERT INTO `bus_inport` VALUES (2, '微信', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 3.5, 2, 2);
INSERT INTO `bus_inport` VALUES (3, '微信', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 6, 3, 3);
INSERT INTO `bus_inport` VALUES (4, '银联', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 4, 4, 4);
INSERT INTO `bus_inport` VALUES (5, '银联', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 4, 5, 5);
INSERT INTO `bus_inport` VALUES (6, '银联', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 2.5, 6, 6);
INSERT INTO `bus_inport` VALUES (7, '支付宝', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 25, 7, 7);
INSERT INTO `bus_inport` VALUES (8, '支付宝', '2023-04-24 17:10:09', '仓库管理员', 500, '无', 2, 8, 8);

-- ----------------------------
-- Table structure for bus_outport
-- ----------------------------
DROP TABLE IF EXISTS `bus_outport`;
CREATE TABLE `bus_outport`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `providerid` int NULL DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `outputtime` datetime NULL DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `outportprice` double(10, 2) NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `goodsid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_outport
-- ----------------------------
INSERT INTO `bus_outport` VALUES (1, 1, '微信', '2023-04-24 08:19:50', '仓库管理员', 20.00, 10, '无', 1);
INSERT INTO `bus_outport` VALUES (2, 2, '微信', '2023-04-24 08:19:50', '仓库管理员', 40.00, 10, '无', 2);
INSERT INTO `bus_outport` VALUES (3, 3, '支付宝', '2023-04-24 08:19:50', '仓库管理员', 80.00, 10, '无', 3);
INSERT INTO `bus_outport` VALUES (4, 4, '支付宝', '2023-04-24 08:19:50', '仓库管理员', 50.00, 10, '无', 4);

-- ----------------------------
-- Table structure for bus_provider
-- ----------------------------
DROP TABLE IF EXISTS `bus_provider`;
CREATE TABLE `bus_provider`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `providername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `zip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `connectionperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_provider
-- ----------------------------
INSERT INTO `bus_provider` VALUES (1, '娃哈哈集团', '430000	', '武汉', '17625831378', '戴元洲', '19934674242', '中国农业银行', '6222025764174083696', '490843@163.com', '52051 ', 1);
INSERT INTO `bus_provider` VALUES (2, '蒙牛集团', '022250', '内蒙古', '16696558183', '杨昊空', '17846315279', '中国农业银行', '	6222029443305522719', '828477@163.com', '47983 ', 1);
INSERT INTO `bus_provider` VALUES (3, '橘子罐头集团', '303115', '天津', '13032127354', '车嘉玉', '18801442317', '建设银行', '	6222023813667330011', '324080@163.com', '23048 ', 1);
INSERT INTO `bus_provider` VALUES (4, '蒙牛集团', '	648104	', '河南', '18148299840', '古坚白', '13617252689', '中国银行', '6222021233540507928', '6791521@163.com', '39401', 1);
INSERT INTO `bus_provider` VALUES (5, '伊利集团', '406022', '河北', '14518614663', '乔学文', '13698560566', '建设银行', '6222024940272512142', '880865@163.com', '77110 ', 1);
INSERT INTO `bus_provider` VALUES (6, '旺旺食品集团', '525441', '仙桃', '18413201828', '刘嘉玉', '16512899315', '交通银行', '6222022752703220414', '7723376@163.com', '27159 ', 1);
INSERT INTO `bus_provider` VALUES (7, '旺旺食品集团', '525441', '仙桃', '13236633641', '桓茂材', '15925849206', '中国工商银行', '6222025184511978781', '478464@163.com', '32278 ', 1);
INSERT INTO `bus_provider` VALUES (8, '农夫山泉集团', '133600', '长白山', '17747254509', '从荣轩', '13931226601', '中国农业银行', '6222025184511978781', '478464@163.com', '73272 ', 1);

-- ----------------------------
-- Table structure for bus_sales
-- ----------------------------
DROP TABLE IF EXISTS `bus_sales`;
CREATE TABLE `bus_sales`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerid` int NULL DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `salestime` datetime NULL DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `saleprice` decimal(10, 2) NULL DEFAULT NULL,
  `goodsid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_sales
-- ----------------------------
INSERT INTO `bus_sales` VALUES (1, 1, '微信', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 200.00, 1);
INSERT INTO `bus_sales` VALUES (2, 2, '微信', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 400.00, 2);
INSERT INTO `bus_sales` VALUES (3, 3, '微信', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 800.00, 3);
INSERT INTO `bus_sales` VALUES (4, 4, '银联', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 500.00, 4);
INSERT INTO `bus_sales` VALUES (5, 5, '银联', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 500.00, 5);
INSERT INTO `bus_sales` VALUES (6, 6, '支付宝', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 300.00, 6);
INSERT INTO `bus_sales` VALUES (7, 7, '支付宝', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 3000.00, 7);
INSERT INTO `bus_sales` VALUES (8, 8, '支付宝', '2023-04-25 14:45:33', '仓库管理员', 100, '无', 300.00, 8);

-- ----------------------------
-- Table structure for bus_salesback
-- ----------------------------
DROP TABLE IF EXISTS `bus_salesback`;
CREATE TABLE `bus_salesback`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customerid` int NULL DEFAULT NULL,
  `paytype` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `salesbacktime` datetime NULL DEFAULT NULL,
  `salebackprice` double(10, 2) NULL DEFAULT NULL,
  `operateperson` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `goodsid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bus_salesback
-- ----------------------------
INSERT INTO `bus_salesback` VALUES (1, 1, '微信', '2023-04-25 10:05:26', 20.00, '仓库管理员', 10, '无', 1);
INSERT INTO `bus_salesback` VALUES (2, 2, '银联', '2023-04-25 10:05:26', 40.00, '仓库管理员', 10, '无', 2);
INSERT INTO `bus_salesback` VALUES (3, 3, '微信', '2023-04-25 10:05:26', 80.00, '仓库管理员', 10, '无', 3);
INSERT INTO `bus_salesback` VALUES (4, 4, '支付宝', '2023-04-25 10:05:26', 50.00, '仓库管理员', 10, '无', 4);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `open` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL COMMENT '状态【0不可用1可用】',
  `ordernum` int NULL DEFAULT NULL COMMENT '排序码【为了调试显示顺序】',
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, 0, '总经办', 1, '最高管理者', '北京', 1, 1, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (2, 1, '销售总部', 0, '无', '上海', 1, 2, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (3, 2, '销售分部', 0, '无', '上海', 1, 3, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (4, 3, '运营总部', 0, '无', '武汉', 1, 4, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (5, 4, '运营分部', 0, '无', '武汉', 1, 5, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (6, 5, '生产总部', 0, '无', '深圳', 1, 6, '2023-04-25 14:06:32');
INSERT INTO `sys_dept` VALUES (7, 6, '生产分部', 0, '无', '深圳', 1, 7, '2023-04-25 14:06:32');

-- ----------------------------
-- Table structure for sys_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginfo`;
CREATE TABLE `sys_loginfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `loginip` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `logintime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 296 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_loginfo
-- ----------------------------
INSERT INTO `sys_loginfo` VALUES (295, '仓库管理员-admin', '0:0:0:0:0:0:0:1', '2023-04-25 09:25:27');
INSERT INTO `sys_loginfo` VALUES (296, '仓库管理员-admin', '0:0:0:0:0:0:0:1', '2023-04-28 04:13:31');
INSERT INTO `sys_loginfo` VALUES (297, '张一-zhangyi', '0:0:0:0:0:0:0:1', '2023-04-28 04:14:47');
INSERT INTO `sys_loginfo` VALUES (298, '张六-zhangliu', '0:0:0:0:0:0:0:1', '2023-04-28 04:15:05');
INSERT INTO `sys_loginfo` VALUES (299, '张六-zhangliu', '0:0:0:0:0:0:0:1', '2023-04-28 04:16:12');
INSERT INTO `sys_loginfo` VALUES (300, '张一-zhangyi', '0:0:0:0:0:0:0:1', '2023-04-28 04:16:31');
INSERT INTO `sys_loginfo` VALUES (301, '张六-zhangliu', '0:0:0:0:0:0:0:1', '2023-04-28 04:19:17');
INSERT INTO `sys_loginfo` VALUES (302, '仓库管理员-admin', '0:0:0:0:0:0:0:1', '2023-04-28 04:25:20');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `createtime` datetime NULL DEFAULT NULL,
  `opername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '仓库管理系统正式启动！！！', '经过我们全体人员的不懈努力，仓库管理系统功能全部完善，已经可以投入使用！撒花~撒花~撒花~', '2023-04-25 17:25:42', '仓库管理员');
INSERT INTO `sys_notice` VALUES (2, '系统公告2 系统公告2 双击查看！！！', '系统公告2 系统公告2 系统公告2', '2023-04-25 17:25:42', '仓库管理员');
INSERT INTO `sys_notice` VALUES (3, '系统公告3 系统公告3 双击查看！！！', '系统公告3 系统公告3 系统公告3', '2023-04-25 17:25:42', '仓库管理员');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限类型[menu/permission]',
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `percode` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '权限编码[只有type= permission才有  user:view]',
  `icon` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `open` int NULL DEFAULT NULL,
  `ordernum` int NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL COMMENT '状态【0不可用1可用】',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------
INSERT INTO `sys_permission` VALUES (1, 0, 'menu', '仓库管理系统', NULL, '&#xe68e;', '', '', 1, 1, 1);
INSERT INTO `sys_permission` VALUES (2, 1, 'menu', '基础管理', NULL, '&#xe857;', '', '', 0, 2, 1);
INSERT INTO `sys_permission` VALUES (3, 1, 'menu', '进货管理', NULL, '&#xe645;', '', NULL, 0, 3, 1);
INSERT INTO `sys_permission` VALUES (4, 1, 'menu', '销售管理', NULL, '&#xe611;', '', '', 0, 4, 1);
INSERT INTO `sys_permission` VALUES (5, 1, 'menu', '系统管理', NULL, '&#xe614;', '', '', 1, 5, 1);
INSERT INTO `sys_permission` VALUES (6, 1, 'menu', '其它管理', NULL, '&#xe628;', '', '', 0, 6, 1);
INSERT INTO `sys_permission` VALUES (7, 2, 'menu', '客户管理', NULL, '&#xe651;', '/bus/toCustomerManager', '', 0, 7, 1);
INSERT INTO `sys_permission` VALUES (8, 2, 'menu', '供应商管理', NULL, '&#xe658;', '/bus/toProviderManager', '', 0, 8, 1);
INSERT INTO `sys_permission` VALUES (9, 2, 'menu', '商品管理', NULL, '&#xe657;', '/bus/toGoodsManager', '', 0, 9, 1);
INSERT INTO `sys_permission` VALUES (10, 3, 'menu', '商品进货', NULL, '&#xe756;', '/bus/toInportManager', '', 0, 10, 1);
INSERT INTO `sys_permission` VALUES (11, 3, 'menu', '商品退货查询', NULL, '&#xe65a;', '/bus/toOutportManager', '', 0, 11, 1);
INSERT INTO `sys_permission` VALUES (12, 4, 'menu', '商品销售', NULL, '&#xe65b;', '/bus/toSalesManager', '', 0, 12, 1);
INSERT INTO `sys_permission` VALUES (13, 4, 'menu', '销售退货查询', NULL, '&#xe770;', '/bus/toSalesbackManager', '', 0, 13, 1);
INSERT INTO `sys_permission` VALUES (14, 5, 'menu', '部门管理', NULL, '&#xe770;', '/sys/toDeptManager', '', 0, 14, 1);
INSERT INTO `sys_permission` VALUES (15, 5, 'menu', '菜单管理', NULL, '&#xe663;', '/sys/toMenuManager', '', 0, 15, 1);
INSERT INTO `sys_permission` VALUES (16, 5, 'menu', '权限管理', '', '&#xe857;', '/sys/toPermissionManager', '', 0, 16, 1);
INSERT INTO `sys_permission` VALUES (17, 5, 'menu', '角色管理', '', '&#xe650;', '/sys/toRoleManager', '', 0, 17, 1);
INSERT INTO `sys_permission` VALUES (18, 5, 'menu', '用户管理', '', '&#xe612;', '/sys/toUserManager', '', 0, 18, 1);
INSERT INTO `sys_permission` VALUES (21, 6, 'menu', '登陆日志', NULL, '&#xe675;', '/sys/toLoginfoManager', '', 0, 21, 1);
INSERT INTO `sys_permission` VALUES (22, 6, 'menu', '系统公告', NULL, '&#xe756;', '/sys/toNoticeManager', NULL, 0, 22, 1);
INSERT INTO `sys_permission` VALUES (23, 6, 'menu', '图标管理', NULL, '&#xe670;', '../resources/page/icon.html', NULL, 0, 23, 1);
INSERT INTO `sys_permission` VALUES (30, 14, 'permission', '添加部门', 'dept:create', '', NULL, NULL, 0, 24, 1);
INSERT INTO `sys_permission` VALUES (31, 14, 'permission', '修改部门', 'dept:update', '', NULL, NULL, 0, 26, 1);
INSERT INTO `sys_permission` VALUES (32, 14, 'permission', '删除部门', 'dept:delete', '', NULL, NULL, 0, 27, 1);
INSERT INTO `sys_permission` VALUES (34, 15, 'permission', '添加菜单', 'menu:create', '', '', '', 0, 29, 1);
INSERT INTO `sys_permission` VALUES (35, 15, 'permission', '修改菜单', 'menu:update', '', NULL, NULL, 0, 30, 1);
INSERT INTO `sys_permission` VALUES (36, 15, 'permission', '删除菜单', 'menu:delete', '', NULL, NULL, 0, 31, 1);
INSERT INTO `sys_permission` VALUES (38, 16, 'permission', '添加权限', 'permission:create', '', NULL, NULL, 0, 33, 1);
INSERT INTO `sys_permission` VALUES (39, 16, 'permission', '修改权限', 'permission:update', '', NULL, NULL, 0, 34, 1);
INSERT INTO `sys_permission` VALUES (40, 16, 'permission', '删除权限', 'permission:delete', '', NULL, NULL, 0, 35, 1);
INSERT INTO `sys_permission` VALUES (42, 17, 'permission', '添加角色', 'role:create', '', NULL, NULL, 0, 37, 1);
INSERT INTO `sys_permission` VALUES (43, 17, 'permission', '修改角色', 'role:update', '', NULL, NULL, 0, 38, 1);
INSERT INTO `sys_permission` VALUES (44, 17, 'permission', '删除角色', 'role:delete', '', NULL, NULL, 0, 39, 1);
INSERT INTO `sys_permission` VALUES (46, 17, 'permission', '分配权限', 'role:selectPermission', '', NULL, NULL, 0, 41, 1);
INSERT INTO `sys_permission` VALUES (47, 18, 'permission', '添加用户', 'user:create', '', NULL, NULL, 0, 42, 1);
INSERT INTO `sys_permission` VALUES (48, 18, 'permission', '修改用户', 'user:update', '', NULL, NULL, 0, 43, 1);
INSERT INTO `sys_permission` VALUES (49, 18, 'permission', '删除用户', 'user:delete', '', NULL, NULL, 0, 44, 1);
INSERT INTO `sys_permission` VALUES (51, 18, 'permission', '用户分配角色', 'user:selectRole', '', NULL, NULL, 0, 46, 1);
INSERT INTO `sys_permission` VALUES (52, 18, 'permission', '重置密码', 'user:resetPwd', NULL, NULL, NULL, 0, 47, 1);
INSERT INTO `sys_permission` VALUES (53, 14, 'permission', '部门查询', 'dept:view', NULL, NULL, NULL, 0, 48, 1);
INSERT INTO `sys_permission` VALUES (54, 15, 'permission', '菜单查询', 'menu:view', NULL, NULL, NULL, 0, 49, 1);
INSERT INTO `sys_permission` VALUES (55, 16, 'permission', '权限查询', 'permission:view', NULL, NULL, NULL, 0, 50, 1);
INSERT INTO `sys_permission` VALUES (56, 17, 'permission', '角色查询', 'role:view', NULL, NULL, NULL, 0, 51, 1);
INSERT INTO `sys_permission` VALUES (57, 18, 'permission', '用户查询', 'user:view', NULL, NULL, NULL, 0, 52, 1);
INSERT INTO `sys_permission` VALUES (68, 7, 'permission', '客户查询', 'customer:view', NULL, NULL, NULL, NULL, 60, 1);
INSERT INTO `sys_permission` VALUES (69, 7, 'permission', '客户添加', 'customer:create', NULL, NULL, NULL, NULL, 61, 1);
INSERT INTO `sys_permission` VALUES (70, 7, 'permission', '客户修改', 'customer:update', NULL, NULL, NULL, NULL, 62, 1);
INSERT INTO `sys_permission` VALUES (71, 7, 'permission', '客户删除', 'customer:delete', NULL, NULL, NULL, NULL, 63, 1);
INSERT INTO `sys_permission` VALUES (73, 21, 'permission', '日志查询', 'info:view', NULL, NULL, NULL, NULL, 65, 1);
INSERT INTO `sys_permission` VALUES (74, 21, 'permission', '日志删除', 'info:delete', NULL, NULL, NULL, NULL, 66, 1);
INSERT INTO `sys_permission` VALUES (75, 21, 'permission', '日志批量删除', 'info:batchdelete', NULL, NULL, NULL, NULL, 67, 1);
INSERT INTO `sys_permission` VALUES (76, 22, 'permission', '公告查询', 'notice:view', NULL, NULL, NULL, NULL, 68, 1);
INSERT INTO `sys_permission` VALUES (77, 22, 'permission', '公告添加', 'notice:create', NULL, NULL, NULL, NULL, 69, 1);
INSERT INTO `sys_permission` VALUES (78, 22, 'permission', '公告修改', 'notice:update', NULL, NULL, NULL, NULL, 70, 1);
INSERT INTO `sys_permission` VALUES (79, 22, 'permission', '公告删除', 'notice:delete', NULL, NULL, NULL, NULL, 71, 1);
INSERT INTO `sys_permission` VALUES (81, 8, 'permission', '供应商查询', 'provider:view', NULL, NULL, NULL, NULL, 73, 1);
INSERT INTO `sys_permission` VALUES (82, 8, 'permission', '供应商添加', 'provider:create', NULL, NULL, NULL, NULL, 74, 1);
INSERT INTO `sys_permission` VALUES (83, 8, 'permission', '供应商修改', 'provider:update', NULL, NULL, NULL, NULL, 75, 1);
INSERT INTO `sys_permission` VALUES (84, 8, 'permission', '供应商删除', 'provider:delete', NULL, NULL, NULL, NULL, 76, 1);
INSERT INTO `sys_permission` VALUES (86, 22, 'permission', '公告查看', 'notice:viewnotice', NULL, NULL, NULL, NULL, 78, 1);
INSERT INTO `sys_permission` VALUES (91, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, NULL, 0, 79, 1);
INSERT INTO `sys_permission` VALUES (92, 9, 'permission', '商品添加', 'goods:create', NULL, NULL, NULL, 0, 80, 1);
INSERT INTO `sys_permission` VALUES (116, 9, 'permission', '商品删除', 'goods:delete', NULL, NULL, NULL, 0, 84, 1);
INSERT INTO `sys_permission` VALUES (117, 9, 'permission', '商品修改', 'goods:update', NULL, NULL, NULL, 0, 85, 1);
INSERT INTO `sys_permission` VALUES (118, 9, 'permission', '商品查询', 'goods:view', NULL, NULL, NULL, 0, 86, 1);
INSERT INTO `sys_permission` VALUES (119, 22, 'permission', '公告批量删除', 'notice:batchdelete', NULL, NULL, NULL, 0, 87, 1);
INSERT INTO `sys_permission` VALUES (122, 6, 'menu', '缓存管理', NULL, '&#xe630', '/sys/toCacheManager', '_black', 1, 88, 1);
INSERT INTO `sys_permission` VALUES (123, 122, 'permission', '同步缓存', 'cache:syncCache', NULL, NULL, NULL, 0, 89, 1);
INSERT INTO `sys_permission` VALUES (124, 122, 'permission', '清空缓存', 'cache:removeAllCache', NULL, NULL, NULL, 0, 90, 1);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `available` int NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有所有菜单权限', 1, '2023-04-25 14:06:32');
INSERT INTO `sys_role` VALUES (4, '基础数据管理员', '基础数据管理员', 1, '2023-04-25 14:06:32');
INSERT INTO `sys_role` VALUES (6, '销售管理员', '销售管理员', 1, '2023-04-25 14:06:32');
INSERT INTO `sys_role` VALUES (8, '系统管理员', '管理所有的系统设置', 1, '2023-04-25 14:06:32');
INSERT INTO `sys_role` VALUES (10, '测试', '测试', 1, '2023-04-25 14:06:32');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `rid` int NOT NULL,
  `pid` int NOT NULL,
  PRIMARY KEY (`pid`, `rid`) USING BTREE,
  INDEX `sys_role_permission_ibfk_1`(`pid` ASC) USING BTREE,
  INDEX `sys_role_permission_ibfk_2`(`rid` ASC) USING BTREE,
  CONSTRAINT `sys_role_permission_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `sys_permission` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `sys_role_permission_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------
INSERT INTO `sys_role_permission` VALUES (1, 1);
INSERT INTO `sys_role_permission` VALUES (4, 1);
INSERT INTO `sys_role_permission` VALUES (6, 1);
INSERT INTO `sys_role_permission` VALUES (8, 1);
INSERT INTO `sys_role_permission` VALUES (10, 1);
INSERT INTO `sys_role_permission` VALUES (1, 2);
INSERT INTO `sys_role_permission` VALUES (4, 2);
INSERT INTO `sys_role_permission` VALUES (1, 3);
INSERT INTO `sys_role_permission` VALUES (1, 4);
INSERT INTO `sys_role_permission` VALUES (6, 4);
INSERT INTO `sys_role_permission` VALUES (1, 5);
INSERT INTO `sys_role_permission` VALUES (8, 5);
INSERT INTO `sys_role_permission` VALUES (1, 6);
INSERT INTO `sys_role_permission` VALUES (10, 6);
INSERT INTO `sys_role_permission` VALUES (1, 7);
INSERT INTO `sys_role_permission` VALUES (4, 7);
INSERT INTO `sys_role_permission` VALUES (1, 8);
INSERT INTO `sys_role_permission` VALUES (4, 8);
INSERT INTO `sys_role_permission` VALUES (1, 9);
INSERT INTO `sys_role_permission` VALUES (4, 9);
INSERT INTO `sys_role_permission` VALUES (1, 10);
INSERT INTO `sys_role_permission` VALUES (1, 11);
INSERT INTO `sys_role_permission` VALUES (1, 12);
INSERT INTO `sys_role_permission` VALUES (6, 12);
INSERT INTO `sys_role_permission` VALUES (1, 13);
INSERT INTO `sys_role_permission` VALUES (6, 13);
INSERT INTO `sys_role_permission` VALUES (1, 14);
INSERT INTO `sys_role_permission` VALUES (8, 14);
INSERT INTO `sys_role_permission` VALUES (1, 15);
INSERT INTO `sys_role_permission` VALUES (8, 15);
INSERT INTO `sys_role_permission` VALUES (1, 16);
INSERT INTO `sys_role_permission` VALUES (8, 16);
INSERT INTO `sys_role_permission` VALUES (1, 17);
INSERT INTO `sys_role_permission` VALUES (8, 17);
INSERT INTO `sys_role_permission` VALUES (1, 18);
INSERT INTO `sys_role_permission` VALUES (8, 18);
INSERT INTO `sys_role_permission` VALUES (1, 21);
INSERT INTO `sys_role_permission` VALUES (1, 22);
INSERT INTO `sys_role_permission` VALUES (1, 23);
INSERT INTO `sys_role_permission` VALUES (1, 30);
INSERT INTO `sys_role_permission` VALUES (8, 30);
INSERT INTO `sys_role_permission` VALUES (1, 31);
INSERT INTO `sys_role_permission` VALUES (8, 31);
INSERT INTO `sys_role_permission` VALUES (1, 32);
INSERT INTO `sys_role_permission` VALUES (8, 32);
INSERT INTO `sys_role_permission` VALUES (1, 34);
INSERT INTO `sys_role_permission` VALUES (8, 34);
INSERT INTO `sys_role_permission` VALUES (1, 35);
INSERT INTO `sys_role_permission` VALUES (8, 35);
INSERT INTO `sys_role_permission` VALUES (1, 36);
INSERT INTO `sys_role_permission` VALUES (8, 36);
INSERT INTO `sys_role_permission` VALUES (1, 38);
INSERT INTO `sys_role_permission` VALUES (8, 38);
INSERT INTO `sys_role_permission` VALUES (1, 39);
INSERT INTO `sys_role_permission` VALUES (8, 39);
INSERT INTO `sys_role_permission` VALUES (1, 40);
INSERT INTO `sys_role_permission` VALUES (8, 40);
INSERT INTO `sys_role_permission` VALUES (1, 42);
INSERT INTO `sys_role_permission` VALUES (8, 42);
INSERT INTO `sys_role_permission` VALUES (1, 43);
INSERT INTO `sys_role_permission` VALUES (8, 43);
INSERT INTO `sys_role_permission` VALUES (1, 44);
INSERT INTO `sys_role_permission` VALUES (8, 44);
INSERT INTO `sys_role_permission` VALUES (1, 46);
INSERT INTO `sys_role_permission` VALUES (8, 46);
INSERT INTO `sys_role_permission` VALUES (1, 47);
INSERT INTO `sys_role_permission` VALUES (8, 47);
INSERT INTO `sys_role_permission` VALUES (1, 48);
INSERT INTO `sys_role_permission` VALUES (8, 48);
INSERT INTO `sys_role_permission` VALUES (1, 49);
INSERT INTO `sys_role_permission` VALUES (8, 49);
INSERT INTO `sys_role_permission` VALUES (1, 51);
INSERT INTO `sys_role_permission` VALUES (8, 51);
INSERT INTO `sys_role_permission` VALUES (1, 52);
INSERT INTO `sys_role_permission` VALUES (8, 52);
INSERT INTO `sys_role_permission` VALUES (1, 53);
INSERT INTO `sys_role_permission` VALUES (8, 53);
INSERT INTO `sys_role_permission` VALUES (1, 54);
INSERT INTO `sys_role_permission` VALUES (8, 54);
INSERT INTO `sys_role_permission` VALUES (1, 55);
INSERT INTO `sys_role_permission` VALUES (8, 55);
INSERT INTO `sys_role_permission` VALUES (1, 56);
INSERT INTO `sys_role_permission` VALUES (8, 56);
INSERT INTO `sys_role_permission` VALUES (1, 57);
INSERT INTO `sys_role_permission` VALUES (8, 57);
INSERT INTO `sys_role_permission` VALUES (1, 68);
INSERT INTO `sys_role_permission` VALUES (4, 68);
INSERT INTO `sys_role_permission` VALUES (1, 69);
INSERT INTO `sys_role_permission` VALUES (1, 70);
INSERT INTO `sys_role_permission` VALUES (1, 71);
INSERT INTO `sys_role_permission` VALUES (1, 73);
INSERT INTO `sys_role_permission` VALUES (1, 74);
INSERT INTO `sys_role_permission` VALUES (1, 75);
INSERT INTO `sys_role_permission` VALUES (1, 76);
INSERT INTO `sys_role_permission` VALUES (1, 77);
INSERT INTO `sys_role_permission` VALUES (1, 78);
INSERT INTO `sys_role_permission` VALUES (1, 79);
INSERT INTO `sys_role_permission` VALUES (1, 81);
INSERT INTO `sys_role_permission` VALUES (4, 81);
INSERT INTO `sys_role_permission` VALUES (1, 82);
INSERT INTO `sys_role_permission` VALUES (1, 83);
INSERT INTO `sys_role_permission` VALUES (1, 84);
INSERT INTO `sys_role_permission` VALUES (1, 86);
INSERT INTO `sys_role_permission` VALUES (1, 91);
INSERT INTO `sys_role_permission` VALUES (4, 91);
INSERT INTO `sys_role_permission` VALUES (1, 92);
INSERT INTO `sys_role_permission` VALUES (4, 92);
INSERT INTO `sys_role_permission` VALUES (1, 116);
INSERT INTO `sys_role_permission` VALUES (4, 116);
INSERT INTO `sys_role_permission` VALUES (1, 117);
INSERT INTO `sys_role_permission` VALUES (4, 117);
INSERT INTO `sys_role_permission` VALUES (1, 118);
INSERT INTO `sys_role_permission` VALUES (4, 118);
INSERT INTO `sys_role_permission` VALUES (10, 122);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `loginname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL,
  `deptid` int NULL DEFAULT NULL,
  `hiredate` datetime NULL DEFAULT NULL,
  `mgr` int NULL DEFAULT NULL COMMENT '上级领导id',
  `available` int NULL DEFAULT 1 COMMENT '是否可用，0不可用，1可用',
  `ordernum` int NULL DEFAULT NULL COMMENT '排序码',
  `type` int NULL DEFAULT NULL COMMENT '用户类型[0超级管理员，1管理员，2普通用户]',
  `imgpath` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '用户头像地址',
  `salt` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NULL DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_user_loginname`(`loginname` ASC) USING BTREE COMMENT '登陆名称唯一',
  INDEX `FK_sys_dept_sys_user`(`deptid` ASC) USING BTREE,
  CONSTRAINT `FK_sys_dept_sys_user` FOREIGN KEY (`deptid`) REFERENCES `sys_dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, '仓库管理员', 'admin', '532ac00e86893901af5f0be6b704dbc7', '北京', 1, '超级管理员', 1, '2023-04-25 15:26:20', NULL, 1, 1, 0, '2023-04-24/admin.jpg', '04A93C74C8294AA09A8B974FD1F4ECBB');
INSERT INTO `sys_user` VALUES (2, '张一', 'zhangyi', 'b8935fd904683ecc4ae330893b4d39ae', '上海', 1, '基础数据管理员', 2, '2023-04-25 15:26:20', 0, 1, 2, 1, '2023-04-24/default.jpg', '434995F88EF44079B6E3B530022116FA');
INSERT INTO `sys_user` VALUES (3, '张二', 'zhanger', 'bb98a99327f8ef11dca8a7e5a26b776d', '上海', 1, '基础数据管理员', 3, '2023-04-25 15:26:20', 2, 1, 3, 1, '2023-04-24/default.jpg', '149D7B2F59AA427BB96D03091DF2EA22');
INSERT INTO `sys_user` VALUES (4, '张三', 'zhangsan', 'c4db5389ccf97f465e94bd79836a303d', '武汉', 1, '销售管理员', 4, '2023-04-25 15:26:20', 0, 1, 4, 1, '2023-04-24/default.jpg', 'E6A4667FA1E949F887B12BD0A0D0B936');
INSERT INTO `sys_user` VALUES (5, '张四', 'zhansgi', '80850e0d99b3de31ef864a0445581ad2', '武汉', 1, '销售管理员', 5, '2023-04-25 15:26:20', 4, 1, 5, 1, '2023-04-24/default.jpg', '8706C928A6144A69BC773486E6BE0AEB');
INSERT INTO `sys_user` VALUES (6, '张五', 'zhanwgu', '0411a99f92ea8c7d93a8bf23093829fa', '深圳', 1, '系统管理员', 6, '2023-04-25 15:26:20', 0, 1, 6, 1, '2023-04-24/default.jpg', '070D87ED8077415D940AF255FA957727');
INSERT INTO `sys_user` VALUES (7, '张六', 'zhangliu', 'a4cafd88bfb5128bcb39ddd7b026d5b7', '深圳', 1, '系统管理员', 7, '2023-04-25 15:26:20', 6, 1, 7, 1, '2023-04-24/default.jpg', '637D428DB49B477B8D5847519A9AD656');
INSERT INTO `sys_user` VALUES (8, '测试', 'ceshi', 'ad24a355ac800df6ab412c9ea22504fb', '北京', 1, '测试', 1, '2023-04-28 12:24:08', 1, 1, 8, 1, '2023-04-24/default.jpg', 'F0D7CB13CE8D4621AA6FE831665D8DE4');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `uid` int NOT NULL,
  `rid` int NOT NULL,
  PRIMARY KEY (`uid`, `rid`) USING BTREE,
  INDEX `FK_sys_user_role_1`(`rid` ASC) USING BTREE,
  CONSTRAINT `FK_sys_user_role_1` FOREIGN KEY (`rid`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_sys_user_role_2` FOREIGN KEY (`uid`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 4);
INSERT INTO `sys_user_role` VALUES (3, 4);
INSERT INTO `sys_user_role` VALUES (4, 6);
INSERT INTO `sys_user_role` VALUES (5, 6);
INSERT INTO `sys_user_role` VALUES (6, 8);
INSERT INTO `sys_user_role` VALUES (7, 8);

SET FOREIGN_KEY_CHECKS = 1;
