/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : ojmovie

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-23 16:52:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can view group', '2', 'view_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can add user', '3', 'add_user');
INSERT INTO `auth_permission` VALUES ('10', 'Can change user', '3', 'change_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete user', '3', 'delete_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can view user', '3', 'view_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add permission', '4', 'add_permission');
INSERT INTO `auth_permission` VALUES ('14', 'Can change permission', '4', 'change_permission');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete permission', '4', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('16', 'Can view permission', '4', 'view_permission');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add movie', '7', 'add_movie');
INSERT INTO `auth_permission` VALUES ('26', 'Can change movie', '7', 'change_movie');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete movie', '7', 'delete_movie');
INSERT INTO `auth_permission` VALUES ('28', 'Can view movie', '7', 'view_movie');
INSERT INTO `auth_permission` VALUES ('29', 'Can add doubantop', '8', 'add_doubantop');
INSERT INTO `auth_permission` VALUES ('30', 'Can change doubantop', '8', 'change_doubantop');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete doubantop', '8', 'delete_doubantop');
INSERT INTO `auth_permission` VALUES ('32', 'Can view doubantop', '8', 'view_doubantop');
INSERT INTO `auth_permission` VALUES ('33', 'Can add mov', '7', 'add_mov');
INSERT INTO `auth_permission` VALUES ('34', 'Can change mov', '7', 'change_mov');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete mov', '7', 'delete_mov');
INSERT INTO `auth_permission` VALUES ('36', 'Can view mov', '7', 'view_mov');
INSERT INTO `auth_permission` VALUES ('37', 'Can add mobeil', '9', 'add_mobeil');
INSERT INTO `auth_permission` VALUES ('38', 'Can change mobeil', '9', 'change_mobeil');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete mobeil', '9', 'delete_mobeil');
INSERT INTO `auth_permission` VALUES ('40', 'Can view mobeil', '9', 'view_mobeil');
INSERT INTO `auth_permission` VALUES ('41', 'Can add ss', '10', 'add_ss');
INSERT INTO `auth_permission` VALUES ('42', 'Can change ss', '10', 'change_ss');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete ss', '10', 'delete_ss');
INSERT INTO `auth_permission` VALUES ('44', 'Can view ss', '10', 'view_ss');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for blog_mobeil
-- ----------------------------
DROP TABLE IF EXISTS `blog_mobeil`;
CREATE TABLE `blog_mobeil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_mobeil
-- ----------------------------
INSERT INTO `blog_mobeil` VALUES ('1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏 双卡双待', '1299', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('2', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1299', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('3', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待', '5899', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('4', '【KPL官方比赛用机】vivo iQOO 44W超快闪充 8GB+128GB电光蓝 全面屏拍照手机 骁龙855电竞游戏 全网通4G', '3298', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('5', '荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 4800万深感相机 6GB+128GB 幻夜黑 移动联通电信4G全面屏', '2799', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('6', 'vivo U1 水滴全面屏 AI智慧拍照手机 3GB+32GB 极光色 移动联通电信全网通4G', '799', '12万+');
INSERT INTO `blog_mobeil` VALUES ('7', 'vivo X27 8GB+256GB大内存 雀羽蓝 4800万AI三摄全面屏拍照手机 移动联通电信全网通4G', '3598', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('8', 'OPPO Reno 全面屏拍照手机 6G+128G 极夜黑 全网通 移动联通电信 双卡双待手机', '2999', '200+');
INSERT INTO `blog_mobeil` VALUES ('9', '小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '1199', '53万+');
INSERT INTO `blog_mobeil` VALUES ('10', '荣耀畅玩8C两天一充 莱茵护眼 刘海屏 全网通版4GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '899', '39万+');
INSERT INTO `blog_mobeil` VALUES ('11', '黑鲨游戏手机2 8GB+128GB 暗影黑 骁龙855 Magic Press立体操控 塔式全域液冷 全面屏 全网通4G 双卡双待', '3499', '3.6万+');
INSERT INTO `blog_mobeil` VALUES ('12', '小米 红米6 4GB+64GB 流沙金 全网通4G手机 双卡双待', '799', '77万+');
INSERT INTO `blog_mobeil` VALUES ('13', '小米8SE 全面屏智能游戏拍照手机 6GB+64GB 灰色 骁龙710处理器 全网通4G 双卡双待', '1599', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('14', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G', '3989', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('15', '小米 红米Redmi 7 幻彩渐变AI双摄 3GB+32GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '799', '4.1万+');
INSERT INTO `blog_mobeil` VALUES ('16', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '6349', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('17', 'Apple iPhone XS Max (A2104) 256GB 金色 移动联通电信4G手机 双卡双待', '9699', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('18', '荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待 游戏', '2198', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('19', 'vivo Z3 6GB+64GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '1598', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('20', '小米9 xiaomi新品三摄 6GB+128GB全息幻彩蓝 骁龙855 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '2999', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('21', 'Apple iPhone 8 (A1863) 64GB 深空灰色 移动联通电信4G手机', '3799', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('22', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '4699', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('23', 'vivo S1 6GB+128GB 冰湖蓝 2480万AI高清自拍 超广角后置三摄拍照手机 移动联通电信全网通4G', '2298', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('24', 'OPPO【预约购机赠1年碎屏险】Reno全面屏拍照手机', '3299', '0');
INSERT INTO `blog_mobeil` VALUES ('25', '小米8青春版 镜面渐变AI双摄 6GB+64GB 梦幻蓝 骁龙 全网通4G 双卡双待 全面屏拍照游戏智能', '1499', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('26', '小米 红米6A AI美颜 3GB+32GB 流沙金 全网通4G手机 双卡双待', '649', '79万+');
INSERT INTO `blog_mobeil` VALUES ('27', '华为 HUAWEI Mate 20 Pro (UD)屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB翡冷翠全网通双4G', '5489', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('28', '诺基亚 NOKIA X6 6GB+64GB 星空黑 全网通 双卡双待 移动联通电信4G手机', '1099', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('29', '华为 HUAWEI nova 4e 3200万立体美颜AI超广角三摄珍珠屏4GB+128GB幻夜黑全网通版双4G', '1989', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('30', '荣耀Play 全网通版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待', '1898', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('31', '【千玺代言】华为新品 HUAWEI nova 4 极点全面屏手机 2000万超广角三摄 6GB+128GB 亮黑色 全网通双卡双待', '2789', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('32', 'vivo【新品上市】U1全面屏 AI智慧拍照 双卡双待 4G全网通 大电量智能手机y93 y97 极光色 3GB 32GB', '799', '9900+');
INSERT INTO `blog_mobeil` VALUES ('33', 'OPPO K1 光感屏幕指纹 水滴屏拍照手机 6G+64G 梵星蓝 全网通 移动联通电信4G 双卡双待', '1599', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('34', '三星 Galaxy S10 8GB+128GB皓玉白（SM-G9730）超感官全视屏骁龙855双卡双待全网通4G游戏', '5999', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('35', '华为 HUAWEI 畅享9 Plus 4GB+64GB 极光紫 全网通 四摄超清全面屏大电池 移动联通电信4G 双卡双待', '1399', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('36', '一加手机6T 8GB+128GB 墨岩黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '3198', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('37', 'Apple iPhone 7 (A1660) 128G 黑色 移动联通电信4G手机', '3349', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('38', 'Apple iPhone 7 Plus (A1661) 128G 黑色 移动联通电信4G手机', '4199', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('39', '小米 红米Redmi Note7Pro AI双摄 6GB+128GB 暮光金 全网通4G 双卡双待 水滴屏拍照游戏', '1599', '4.1万+');
INSERT INTO `blog_mobeil` VALUES ('40', '华为 HUAWEI P20 Pro 全面屏徕卡三摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G 双卡双待', '4278', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('41', '三星 Galaxy S10+ 8GB+128GB皓玉白（SM-G9750）3D超声波屏下指纹超感官全视屏双卡双待全网通4G游戏', '6999', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('42', '荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量 3GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '799', '16万+');
INSERT INTO `blog_mobeil` VALUES ('43', '荣耀Note10 全网通6G+64G 幻夜黑 移动联通电信4G全面屏手机 双卡双待 游戏手机', '2598', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('44', '小米8屏幕指纹版 6GB+128GB 黑色 全网通4G 双卡双待 全面屏拍照游戏智能手机', '2499', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('45', 'HUAWEI 华为畅享9 3GB+32GB 幻夜黑 高清珍珠屏 AI长续航 全网通标配版 移动联通电信4G', '949', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('46', '小米9 SE 4800万超广角三摄 骁龙712 水滴全面屏 游戏智能拍照手机 6GB+64GB 全息幻彩蓝 全网通4G双卡双待', '1999', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('47', '华为 HUAWEI Mate20X 麒麟980芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB宝石蓝全网通版双4G游戏', '4489', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('48', '魅族 Note9 全面屏游戏拍照手机 4GB+64GB 幻黑 全网通移动联通电信4G 双卡双待', '1398', '1.4万+');
INSERT INTO `blog_mobeil` VALUES ('49', '华为 HUAWEI 畅享 9S 4GB+64GB 极光蓝 全网通 2400万超广角三摄珍珠屏大存储 移动联通电信4G 双卡双待', '1499', '9300+');
INSERT INTO `blog_mobeil` VALUES ('50', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G 双卡双待', '3088', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('51', '荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '599', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('52', 'Apple iPhone XS (A2100) 64GB 金色 移动联通电信4G手机', '7599', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('53', '华为 HUAWEI 畅享MAX 4GB+64GB 幻夜黑 全网通版 珍珠屏杜比全景声大电池 移动联通电信4G 双卡双待', '1489', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('54', 'OPPO R15x 光感屏幕指纹手机 6G+128G 星云渐变 全网通 移动联通电信4G 双卡双待', '2299', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('55', 'vivo【新品上市】X27 4800万广角夜景三摄 零界全面屏拍照手机 移动联通电信全网通4G 雀羽蓝 8GB+256GB', '3598', '1900+');
INSERT INTO `blog_mobeil` VALUES ('56', '小辣椒 红辣椒7R 6.0英寸 全面屏手机 3GB+32GB 渐变黑 全网通 移动联通电信4G 双卡双待', '560', '4800+');
INSERT INTO `blog_mobeil` VALUES ('57', 'vivo iQOO 水滴全面屏 超广角AI三摄拍照 高通骁龙855 4G全网通 电竞游戏 智能手机 熔岩橙 8GB 128GB', '3298', '1.4万+');
INSERT INTO `blog_mobeil` VALUES ('58', 'Apple iPhone 6s Plus (A1699) 128G 玫瑰金色 移动联通电信4G手机', '3099', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('59', '魅族 15 全面屏手机 全网通公开版 4GB+64GB 砚黑 移动联通电信4G手机 双卡双待', '1198', '二手有售');
INSERT INTO `blog_mobeil` VALUES ('60', '三星 Galaxy S10e 6GB+128GB 炭晶黑（SM-G9700）超感官全视屏 骁龙855 双卡双待 全网通4G', '4999', '二手有售');

-- ----------------------------
-- Table structure for blog_mov
-- ----------------------------
DROP TABLE IF EXISTS `blog_mov`;
CREATE TABLE `blog_mov` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `charactor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_mov
-- ----------------------------
INSERT INTO `blog_mov` VALUES ('1', '肖申克的救赎', '导演:弗兰克·德拉邦特FrankDarabont主演:蒂姆·罗宾斯TimRobbins/...1994/美国/犯罪剧情');
INSERT INTO `blog_mov` VALUES ('2', '霸王别姬', '导演:陈凯歌KaigeChen主演:张国荣LeslieCheung/张丰毅FengyiZha...1993/中国大陆香港/剧情爱情同性');
INSERT INTO `blog_mov` VALUES ('3', '这个杀手不太冷', '导演:吕克·贝松LucBesson主演:让·雷诺JeanReno/娜塔莉·波特曼...1994/法国/剧情动作犯罪');
INSERT INTO `blog_mov` VALUES ('4', '阿甘正传', '导演:罗伯特·泽米吉斯RobertZemeckis主演:汤姆·汉克斯TomHanks/...1994/美国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('5', '美丽人生', '导演:罗伯托·贝尼尼RobertoBenigni主演:罗伯托·贝尼尼RobertoBeni...1997/意大利/剧情喜剧爱情战争');
INSERT INTO `blog_mov` VALUES ('6', '泰坦尼克号', '导演:詹姆斯·卡梅隆JamesCameron主演:莱昂纳多·迪卡普里奥Leonardo...1997/美国/剧情爱情灾难');
INSERT INTO `blog_mov` VALUES ('7', '千与千寻', '导演:宫崎骏HayaoMiyazaki主演:柊瑠美RumiHragi/入野自由Miy...2001/日本/剧情动画奇幻');
INSERT INTO `blog_mov` VALUES ('8', '辛德勒的名单', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:连姆·尼森LiamNeeson...1993/美国/剧情历史战争');
INSERT INTO `blog_mov` VALUES ('9', '盗梦空间', '导演:克里斯托弗·诺兰ChristopherNolan主演:莱昂纳多·迪卡普里奥Le...2010/美国英国/剧情科幻悬疑冒险');
INSERT INTO `blog_mov` VALUES ('10', '忠犬八公的故事', '导演:莱塞·霍尔斯道姆LasseHallstrm主演:理查·基尔RichardGer...2009/美国英国/剧情');
INSERT INTO `blog_mov` VALUES ('11', '机器人总动员', '导演:安德鲁·斯坦顿AndrewStanton主演:本·贝尔特BenBurtt/艾丽...2008/美国/爱情科幻动画冒险');
INSERT INTO `blog_mov` VALUES ('12', '三傻大闹宝莱坞', '导演:拉库马·希拉尼RajkumarHirani主演:阿米尔·汗AamirKhan/卡...2009/印度/剧情喜剧爱情歌舞');
INSERT INTO `blog_mov` VALUES ('13', '海上钢琴师', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:蒂姆·罗斯TimRoth/...1998/意大利/剧情音乐');
INSERT INTO `blog_mov` VALUES ('14', '放牛班的春天', '导演:克里斯托夫·巴拉蒂ChristopheBarratier主演:热拉尔·朱尼奥Gé...2004/法国瑞士德国/剧情音乐');
INSERT INTO `blog_mov` VALUES ('15', '楚门的世界', '导演:彼得·威尔PeterWeir主演:金·凯瑞JimCarrey/劳拉·琳妮Lau...1998/美国/剧情科幻');
INSERT INTO `blog_mov` VALUES ('16', '大话西游之大圣娶亲', '导演:刘镇伟JeffreyLau主演:周星驰StephenChow/吴孟达ManTatNg...1995/香港中国大陆/喜剧爱情奇幻古装');
INSERT INTO `blog_mov` VALUES ('17', '星际穿越', '导演:克里斯托弗·诺兰ChristopherNolan主演:马修·麦康纳MatthewMc...2014/美国英国加拿大冰岛/剧情科幻冒险');
INSERT INTO `blog_mov` VALUES ('18', '龙猫', '导演:宫崎骏HayaoMiyazaki主演:日高法子NorikoHidaka/坂本千夏Ch...1988/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('19', '教父', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:马龙·白兰度M...1972/美国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('20', '熔炉', '导演:黄东赫Dong-hyukHwang主演:孔侑YooGong/郑有美Yu-miJeong...2011/韩国/剧情');
INSERT INTO `blog_mov` VALUES ('21', '无间道', '导演:刘伟强/麦兆辉主演:刘德华/梁朝伟/黄秋生2002/香港/剧情犯罪悬疑');
INSERT INTO `blog_mov` VALUES ('22', '疯狂动物城', '导演:拜伦·霍华德ByronHoward/瑞奇·摩尔RichMoore主演:金妮弗·...2016/美国/喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('23', '当幸福来敲门', '导演:加布里尔·穆奇诺GabrieleMuccino主演:威尔·史密斯WillSmith...2006/美国/剧情传记家庭');
INSERT INTO `blog_mov` VALUES ('24', '怦然心动', '导演:罗伯·莱纳RobReiner主演:玛德琳·卡罗尔MadelineCarroll/卡...2010/美国/剧情喜剧爱情');
INSERT INTO `blog_mov` VALUES ('25', '触不可及', '导演:奥利维·那卡什OlivierNakache/艾力克·托兰达EricToledano主...2011/法国/剧情喜剧');
INSERT INTO `blog_mov` VALUES ('26', '乱世佳人', '导演:维克多·弗莱明VictorFleming/乔治·库克GeorgeCukor主演:费...1939/美国/剧情历史爱情战争');
INSERT INTO `blog_mov` VALUES ('27', '蝙蝠侠：黑暗骑士', '导演:克里斯托弗·诺兰ChristopherNolan主演:克里斯蒂安·贝尔Christ...2008/美国英国/剧情动作科幻犯罪惊悚');
INSERT INTO `blog_mov` VALUES ('28', '活着', '导演:张艺谋YimouZhang主演:葛优YouGe/巩俐LiGong/姜武WuJiang1994/中国大陆香港/剧情历史家庭');
INSERT INTO `blog_mov` VALUES ('29', '少年派的奇幻漂流', '导演:李安AngLee主演:苏拉·沙玛SurajSharma/伊尔凡·可汗Irrfan...2012/美国台湾英国加拿大/剧情奇幻冒险');
INSERT INTO `blog_mov` VALUES ('30', '控方证人', '导演:比利·怀尔德BillyWilder主演:泰隆·鲍华TyronePower/玛琳·...1957/美国/剧情犯罪悬疑');
INSERT INTO `blog_mov` VALUES ('31', '天堂电影院', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:安东内拉·阿蒂利Anton...1988/意大利法国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('32', '鬼子来了', '导演:姜文WenJiang主演:姜文WenJiang/香川照之TeruyukiKagawa/...2000/中国大陆/剧情历史战争');
INSERT INTO `blog_mov` VALUES ('33', '指环王3：王者无敌', '导演:彼得·杰克逊PeterJackson主演:维果·莫腾森ViggoMortensen/...2003/美国新西兰/剧情动作奇幻冒险');
INSERT INTO `blog_mov` VALUES ('34', '十二怒汉', '导演:SidneyLumet主演:亨利·方达HenryFonda/马丁·鲍尔萨姆Marti...1957/美国/剧情');
INSERT INTO `blog_mov` VALUES ('35', '天空之城', '导演:宫崎骏HayaoMiyazaki主演:田中真弓MayumiTanaka/横泽启子Ke...1986/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('36', '摔跤吧！爸爸', '导演:涅提·蒂瓦里NiteshTiwari主演:阿米尔·汗AamirKhan/法缇玛...2016/印度/剧情传记运动家庭');
INSERT INTO `blog_mov` VALUES ('37', '飞屋环游记', '导演:彼特·道格特PeteDocter/鲍勃·彼德森BobPeterson主演:爱德...2009/美国/剧情喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('38', '大话西游之月光宝盒', '导演:刘镇伟JeffreyLau主演:周星驰StephenChow/吴孟达ManTatNg...1995/香港中国大陆/喜剧爱情奇幻古装');
INSERT INTO `blog_mov` VALUES ('39', '搏击俱乐部', '导演:大卫·芬奇DavidFincher主演:爱德华·诺顿EdwardNorton/布拉...1999/美国德国/剧情动作悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('40', '罗马假日', '导演:威廉·惠勒WilliamWyler主演:奥黛丽·赫本AudreyHepburn/格...1953/美国/喜剧剧情爱情');
INSERT INTO `blog_mov` VALUES ('41', '哈尔的移动城堡', '导演:宫崎骏HayaoMiyazaki主演:倍赏千惠子ChiekoBaish/木村拓...2004/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('42', '闻香识女人', '导演:马丁·布莱斯MartinBrest主演:阿尔·帕西诺AlPacino/克里斯...1992/美国/剧情');
INSERT INTO `blog_mov` VALUES ('43', '辩护人', '导演:杨宇硕Woo-seokYang主演:宋康昊Kang-hoSong/吴达洙Dal-suO...2013/韩国/剧情');
INSERT INTO `blog_mov` VALUES ('44', '窃听风暴', '导演:弗洛里安·亨克尔·冯·多纳斯马尔克FlorianHenckelvonDonnersmarck&n...2006/德国/剧情悬疑');
INSERT INTO `blog_mov` VALUES ('45', '两杆大烟枪', '导演:GuyRitchie主演:JasonFlemyng/DexterFletcher/NickMoran1998/英国/剧情喜剧犯罪');
INSERT INTO `blog_mov` VALUES ('46', '末代皇帝', '导演:贝纳尔多·贝托鲁奇BernardoBertolucci主演:尊龙JohnLone/陈...1987/英国意大利中国大陆法国美国/剧情传记历史');
INSERT INTO `blog_mov` VALUES ('47', '飞越疯人院', '导演:米洛斯·福尔曼MiloForman主演:杰克·尼科尔森JackNichols...1975/美国/剧情');
INSERT INTO `blog_mov` VALUES ('48', '死亡诗社', '导演:彼得·威尔PeterWeir主演:罗宾·威廉姆斯RobinWilliams/罗伯...1989/美国/剧情');
INSERT INTO `blog_mov` VALUES ('49', '指环王2：双塔奇兵', '导演:彼得·杰克逊PeterJackson主演:伊利亚·伍德ElijahWood/西恩...2002/美国新西兰/剧情动作奇幻冒险');
INSERT INTO `blog_mov` VALUES ('50', '素媛', '导演:李濬益Jun-ikLee主演:薛景求Kyung-guSol/严志媛Ji-wonUhm...2013/韩国/剧情');
INSERT INTO `blog_mov` VALUES ('51', 'V字仇杀队', '导演:詹姆斯·麦克特格JamesMcTeigue主演:娜塔莉·波特曼NataliePor...2005/美国英国德国/剧情动作科幻惊悚');
INSERT INTO `blog_mov` VALUES ('52', '教父2', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:阿尔·帕西诺A...1974/美国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('53', '寻梦环游记', '导演:李·昂克里奇LeeUnkrich/阿德里安·莫利纳AdrianMolina主演:...2017/美国/喜剧动画奇幻音乐');
INSERT INTO `blog_mov` VALUES ('54', '指环王1：魔戒再现', '导演:彼得·杰克逊PeterJackson主演:伊利亚·伍德ElijahWood/西恩...2001/新西兰美国/剧情动作奇幻冒险');
INSERT INTO `blog_mov` VALUES ('55', '海豚湾', '导演:路易·西霍尤斯LouiePsihoyos主演:RichardO\'Barry/路易·西霍...2009/美国/纪录片');
INSERT INTO `blog_mov` VALUES ('56', '饮食男女', '导演:李安AngLee主演:郎雄SihungLung/杨贵媚Kuei-MeiYang/吴...1994/台湾美国/剧情家庭');
INSERT INTO `blog_mov` VALUES ('57', '美丽心灵', '导演:朗·霍华德RonHoward主演:罗素·克劳RussellCrowe/艾德·哈...2001/美国/传记剧情');
INSERT INTO `blog_mov` VALUES ('58', '狮子王', '导演:RogerAllers/罗伯·明可夫RobMinkoff主演:乔纳森·泰勒·托马...1994/美国/剧情动画冒险歌舞家庭');
INSERT INTO `blog_mov` VALUES ('59', '情书', '导演:岩井俊二ShunjiIwai主演:中山美穗MihoNakayama/丰川悦司Ets...1995/日本/剧情爱情');
INSERT INTO `blog_mov` VALUES ('60', '钢琴家', '导演:罗曼·波兰斯基RomanPolanski主演:艾德里安·布洛迪AdrienBrod...2002/法国德国英国波兰/剧情传记历史战争音乐');
INSERT INTO `blog_mov` VALUES ('61', '本杰明·巴顿奇事', '导演:大卫·芬奇DavidFincher主演:凯特·布兰切特CateBlanchett/...2008/美国/剧情爱情奇幻');
INSERT INTO `blog_mov` VALUES ('62', '美国往事', '导演:赛尔乔·莱翁内SergioLeone主演:罗伯特·德尼罗RobertDeNiro...1984/意大利美国/犯罪剧情');
INSERT INTO `blog_mov` VALUES ('63', '看不见的客人', '导演:奥里奥尔·保罗OriolPaulo主演:马里奥·卡萨斯MarioCasas/阿...2016/西班牙/剧情犯罪悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('64', '黑客帝国', '导演:安迪·沃卓斯基AndyWachowski/拉娜·沃卓斯基LanaWachowski主...1999/美国澳大利亚/动作科幻');
INSERT INTO `blog_mov` VALUES ('65', '小鞋子', '导演:马基德·马基迪MajidMajidi主演:法拉赫阿米尔·哈什米安AmirFa...1997/伊朗/剧情儿童家庭');
INSERT INTO `blog_mov` VALUES ('66', '西西里的美丽传说', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:莫妮卡·贝鲁奇Monica...2000/意大利美国/剧情战争情色');
INSERT INTO `blog_mov` VALUES ('67', '大闹天宫', '导演:万籁鸣LaimingWan/唐澄ChengTang主演:邱岳峰YuefengQiu/...1961(中国大陆)/1964(中国大陆)/1978(中国大陆)/2004(中国大陆)/中国大陆/动画奇幻');
INSERT INTO `blog_mov` VALUES ('68', '让子弹飞', '导演:姜文WenJiang主演:姜文WenJiang/葛优YouGe/周润发Yun-F...2010/中国大陆香港/剧情喜剧动作西部');
INSERT INTO `blog_mov` VALUES ('69', '拯救大兵瑞恩', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:汤姆·汉克斯TomHanks...1998/美国/剧情历史战争');
INSERT INTO `blog_mov` VALUES ('70', '哈利·波特与魔法石', '导演:ChrisColumbus主演:DanielRadcliffe/EmmaWatson/RupertGrint2001/美国英国/奇幻冒险');
INSERT INTO `blog_mov` VALUES ('71', '致命魔术', '导演:克里斯托弗·诺兰ChristopherNolan主演:休·杰克曼HughJackman...2006/美国英国/剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('72', '七宗罪', '导演:大卫·芬奇DavidFincher主演:摩根·弗里曼MorganFreeman/布...1995/美国/剧情犯罪悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('73', '被嫌弃的松子的一生', '导演:中岛哲也TetsuyaNakashima主演:中谷美纪MikiNakatani/瑛太E...2006/日本/剧情歌舞');
INSERT INTO `blog_mov` VALUES ('74', '音乐之声', '导演:罗伯特·怀斯RobertWise主演:朱莉·安德鲁斯JulieAndrews/克...1965/美国/剧情传记爱情歌舞');
INSERT INTO `blog_mov` VALUES ('75', '低俗小说', '导演:昆汀·塔伦蒂诺QuentinTarantino主演:约翰·特拉沃尔塔JohnTra...1994/美国/剧情喜剧犯罪');
INSERT INTO `blog_mov` VALUES ('76', '天使爱美丽', '导演:让-皮埃尔·热内Jean-PierreJeunet主演:奥黛丽·塔图AudreyTau...2001/法国德国/喜剧爱情');
INSERT INTO `blog_mov` VALUES ('77', '沉默的羔羊', '导演:乔纳森·戴米JonathanDemme主演:朱迪·福斯特JodieFoster/安...1991/美国/剧情犯罪惊悚');
INSERT INTO `blog_mov` VALUES ('78', '勇敢的心', '导演:梅尔·吉布森MelGibson主演:梅尔·吉布森MelGibson/苏菲·玛...1995/美国/动作传记剧情历史战争');
INSERT INTO `blog_mov` VALUES ('79', '猫鼠游戏', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:莱昂纳多·迪卡普里奥L...2002/美国加拿大/传记犯罪剧情');
INSERT INTO `blog_mov` VALUES ('80', '蝴蝶效应', '导演:埃里克·布雷斯EricBress/J·麦基·格鲁伯J.MackyeGruber主...2004/美国加拿大/剧情悬疑科幻惊悚');
INSERT INTO `blog_mov` VALUES ('81', '剪刀手爱德华', '导演:蒂姆·波顿TimBurton主演:约翰尼·德普JohnnyDepp/薇诺娜·...1990/美国/剧情奇幻爱情');
INSERT INTO `blog_mov` VALUES ('82', '春光乍泄', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/梁朝伟TonyLeu...1997/香港日本韩国/剧情爱情同性');
INSERT INTO `blog_mov` VALUES ('83', '心灵捕手', '导演:格斯·范·桑特GusVanSant主演:马特·达蒙MattDamon/罗宾·...1997/美国/剧情');
INSERT INTO `blog_mov` VALUES ('84', '禁闭岛', '导演:MartinScorsese主演:莱昂纳多·迪卡普里奥LeonardoDiCaprio/...2010/美国/剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('85', '布达佩斯大饭店', '导演:韦斯·安德森WesAnderson主演:拉尔夫·费因斯RalphFiennes/...2014/美国德国英国/剧情喜剧冒险');
INSERT INTO `blog_mov` VALUES ('86', '穿条纹睡衣的男孩', '导演:马克·赫尔曼MarkHerman主演:阿萨·巴特菲尔德AsaButterfield...2008/英国美国/剧情战争');
INSERT INTO `blog_mov` VALUES ('87', '入殓师', '导演:泷田洋二郎YjirTakita主演:本木雅弘MasahiroMotoki/...2008/日本/剧情');
INSERT INTO `blog_mov` VALUES ('88', '阿凡达', '导演:詹姆斯·卡梅隆JamesCameron主演:萨姆·沃辛顿SamWorthington...2009/美国英国/动作战争科幻冒险');
INSERT INTO `blog_mov` VALUES ('89', '幽灵公主', '导演:宫崎骏HayaoMiyazaki主演:松田洋治YjiMatsuda/石田百合...1997/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('90', '阳光灿烂的日子', '导演:姜文WenJiang主演:夏雨YuXia/宁静JingNing/陶虹HongTao1994/中国大陆香港/剧情爱情');
INSERT INTO `blog_mov` VALUES ('91', '致命ID', '导演:JamesMangold主演:JohnCusack/RayLiotta/AmandaPeet2003/美国/剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('92', '第六感', '导演:M·奈特·沙马兰M.NightShyamalan主演:布鲁斯·威利斯BruceWi...1999/美国/剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('93', '加勒比海盗', '导演:戈尔·维宾斯基GoreVerbinski主演:约翰尼·德普JohnnyDepp/...2003/美国/动作冒险奇幻');
INSERT INTO `blog_mov` VALUES ('94', '狩猎', '导演:托马斯·温特伯格ThomasVinterberg主演:麦斯·米科尔森MadsMik...2012/丹麦瑞典/剧情');
INSERT INTO `blog_mov` VALUES ('95', '玛丽和马克思', '导演:亚当·艾略特AdamElliot主演:托妮·科莱特ToniCollette/菲利...2009/澳大利亚/剧情喜剧动画');
INSERT INTO `blog_mov` VALUES ('96', '断背山', '导演:李安AngLee主演:希斯·莱杰HeathLedger/杰克·吉伦哈尔Jake...2005/美国加拿大/剧情爱情同性家庭');
INSERT INTO `blog_mov` VALUES ('97', '重庆森林', '导演:王家卫KarWaiWong主演:林青霞BrigitteLin/金城武TakeshiK...1994/香港/剧情爱情');
INSERT INTO `blog_mov` VALUES ('98', '摩登时代', '导演:查理·卓别林CharlesChaplin主演:查理·卓别林CharlesChaplin...1936/美国/剧情喜剧爱情');
INSERT INTO `blog_mov` VALUES ('99', '喜剧之王', '导演:周星驰StephenChow/李力持Lik-ChiLee主演:周星驰StephenCh...1999/香港/喜剧剧情爱情');
INSERT INTO `blog_mov` VALUES ('100', '告白', '导演:中岛哲也TetsuyaNakashima主演:松隆子TakakoMatsu/冈田将生...2010/日本/剧情惊悚');
INSERT INTO `blog_mov` VALUES ('101', '大鱼', '导演:蒂姆·波顿TimBurton主演:伊万·麦克格雷格EwanMcGregor/阿...2003/美国/剧情家庭奇幻冒险');
INSERT INTO `blog_mov` VALUES ('102', '消失的爱人', '导演:大卫·芬奇DavidFincher主演:本·阿弗莱克BenAffleck/罗莎蒙...2014/美国/剧情犯罪悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('103', '一一', '导演:杨德昌EdwardYang主演:吴念真/李凯莉KellyLee/金燕玲Elai...2000/台湾日本/剧情爱情家庭');
INSERT INTO `blog_mov` VALUES ('104', '射雕英雄传之东成西就', '导演:刘镇伟JeffreyLau主演:梁朝伟TonyLeungChiuWai/林青霞Bri...1993/香港/喜剧奇幻武侠古装');
INSERT INTO `blog_mov` VALUES ('105', '阳光姐妹淘', '导演:姜炯哲Hyeong-CheolKang主演:沈恩京Eun-kyungShim/闵孝琳Hy...2011/韩国/剧情喜剧');
INSERT INTO `blog_mov` VALUES ('106', '甜蜜蜜', '导演:陈可辛PeterChan主演:黎明LeonLai/张曼玉MaggieCheung/...1996/香港/剧情爱情');
INSERT INTO `blog_mov` VALUES ('107', '爱在黎明破晓前', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...1995/美国奥地利瑞士/剧情爱情');
INSERT INTO `blog_mov` VALUES ('108', '小森林 夏秋篇', '导演:森淳一JunichiMori主演:桥本爱AiHashimoto/三浦贵大Takahir...2014/日本/剧情');
INSERT INTO `blog_mov` VALUES ('109', '驯龙高手', '导演:迪恩·德布洛斯DeanDeBlois/克里斯·桑德斯ChrisSanders主演:...2010/美国/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('110', '侧耳倾听', '导演:近藤喜文YoshifumiKondo主演:本名阳子YoukoHonna/小林桂树K...1995/日本/剧情爱情动画');
INSERT INTO `blog_mov` VALUES ('111', '红辣椒', '导演:今敏SatoshiKon主演:林原惠美MegumiHayashibara/江守彻Toru...2006/日本/动画悬疑科幻惊悚');
INSERT INTO `blog_mov` VALUES ('112', '请以你的名字呼唤我', '导演:卢卡·瓜达尼诺LucaGuadagnino主演:艾米·汉莫ArmieHammer/...2017/意大利法国巴西美国荷兰德国/剧情爱情同性');
INSERT INTO `blog_mov` VALUES ('113', '倩女幽魂', '导演:程小东Siu-TungChing主演:张国荣LeslieCheung/王祖贤JoeyW...1987/香港/爱情奇幻武侠古装');
INSERT INTO `blog_mov` VALUES ('114', '恐怖直播', '导演:金秉祐Byeong-wooKim主演:河正宇Jung-wooHa/李璟荣Kyeong-y...2013/韩国/剧情犯罪悬疑');
INSERT INTO `blog_mov` VALUES ('115', '风之谷', '导演:宫崎骏HayaoMiyazaki主演:岛本须美SumiShimamoto/松田洋治Y...1984/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('116', '上帝之城', '导演:KátiaLund/FernandoMeirelles主演:AlexandreRodrigues/Lea...2002/巴西法国/犯罪剧情');
INSERT INTO `blog_mov` VALUES ('117', '超脱', '导演:托尼·凯耶TonyKaye主演:艾德里安·布洛迪AdrienBrody/马西...2011/美国/剧情');
INSERT INTO `blog_mov` VALUES ('118', '爱在日落黄昏时', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...2004/美国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('119', '菊次郎的夏天', '导演:北野武TakeshiKitano主演:北野武TakeshiKitano/关口雄介Yus...1999/日本/剧情喜剧');
INSERT INTO `blog_mov` VALUES ('120', '幸福终点站', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:汤姆·汉克斯TomHanks...2004/美国/喜剧剧情爱情');
INSERT INTO `blog_mov` VALUES ('121', '哈利·波特与死亡圣器(下)', '导演:大卫·叶茨DavidYates主演:丹尼尔·雷德克里夫DanielRadcliffe...2011/美国英国/剧情悬疑奇幻冒险');
INSERT INTO `blog_mov` VALUES ('122', '小森林 冬春篇', '导演:森淳一JunichiMori主演:桥本爱AiHashimoto/三浦贵大Takahir...2015/日本/剧情');
INSERT INTO `blog_mov` VALUES ('123', '杀人回忆', '导演:奉俊昊Joon-hoBong主演:宋康昊Kang-hoSong/金相庆Sang-kyun...2003/韩国/犯罪剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('124', '7号房的礼物', '导演:李焕庆Hwan-kyeongLee主演:柳承龙Seung-yongRyoo/朴信惠Shi...2013/韩国/剧情喜剧家庭');
INSERT INTO `blog_mov` VALUES ('125', '神偷奶爸', '导演:皮艾尔·柯芬PierreCoffin/克里斯·雷纳德ChrisRenaud主演:...2010/美国法国/喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('126', '借东西的小人阿莉埃蒂', '导演:米林宏昌HiromasaYonebayashi主演:志田未来MiraiShida/神木...2010/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('127', '萤火之森', '导演:大森贵弘TakahiroOmori主演:佐仓绫音AyaneSakura/内山昂辉K...2011/日本/剧情爱情动画奇幻');
INSERT INTO `blog_mov` VALUES ('128', '唐伯虎点秋香', '导演:李力持Lik-ChiLee主演:周星驰StephenChow/巩俐LiGong/陈...1993/香港/喜剧爱情古装');
INSERT INTO `blog_mov` VALUES ('129', '超能陆战队', '导演:唐·霍尔DonHall/克里斯·威廉姆斯ChrisWilliams主演:斯科特...2014/美国/喜剧动作科幻动画冒险');
INSERT INTO `blog_mov` VALUES ('130', '蝙蝠侠：黑暗骑士崛起', '导演:克里斯托弗·诺兰ChristopherNolan主演:克里斯蒂安·贝尔Christ...2012/美国英国/剧情动作科幻犯罪惊悚');
INSERT INTO `blog_mov` VALUES ('131', '怪兽电力公司', '导演:彼特·道格特PeteDocter/大卫·斯沃曼DavidSilverman主演:约...2001/美国/儿童喜剧动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('132', '岁月神偷', '导演:罗启锐AlexLaw主演:吴君如SandraNg/任达华SimonYam/钟绍...2010/香港中国大陆/剧情家庭');
INSERT INTO `blog_mov` VALUES ('133', '电锯惊魂', '导演:詹姆斯·温JamesWan主演:雷·沃纳尔LeighWhannell/加利·艾...2004/美国/悬疑惊悚恐怖');
INSERT INTO `blog_mov` VALUES ('134', '七武士', '导演:黑泽明AkiraKurosawa主演:三船敏郎ToshirMifune/志村乔...1954/日本/动作冒险剧情');
INSERT INTO `blog_mov` VALUES ('135', '谍影重重3', '导演:保罗·格林格拉斯PaulGreengrass主演:马特·达蒙MattDamon/...2007/美国德国/动作悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('136', '真爱至上', '导演:理查德·柯蒂斯RichardCurtis主演:休·格兰特HughGrant/柯林...2003/英国美国法国/喜剧剧情爱情');
INSERT INTO `blog_mov` VALUES ('137', '疯狂原始人', '导演:科克·德·米科KirkDeMicco/克里斯·桑德斯ChrisSanders主演...2013/美国/喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('138', '无人知晓', '导演:是枝裕和HirokazuKoreeda主演:柳乐优弥YyaYagira/北浦爱...2004/日本/剧情');
INSERT INTO `blog_mov` VALUES ('139', '喜宴', '导演:李安AngLee主演:赵文瑄WinstonChao/郎雄SihungLung/归亚...1993/台湾美国/剧情喜剧爱情同性家庭');
INSERT INTO `blog_mov` VALUES ('140', '萤火虫之墓', '导演:高畑勋IsaoTakahata主演:辰己努/白石绫乃/志乃原良子1988/日本/动画剧情战争');
INSERT INTO `blog_mov` VALUES ('141', '东邪西毒', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/林青霞Brigitte...1994/香港台湾/剧情动作爱情武侠古装');
INSERT INTO `blog_mov` VALUES ('142', '英雄本色', '导演:吴宇森JohnWoo主演:周润发Yun-FatChow/狄龙LungTi/张国...1986/香港/动作犯罪');
INSERT INTO `blog_mov` VALUES ('143', '贫民窟的百万富翁', '导演:丹尼·鲍尔DannyBoyle/洛芙琳·坦丹LoveleenTandan主演:戴夫...2008/英国美国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('144', '黑天鹅', '导演:达伦·阿罗诺夫斯基DarrenAronofsky主演:娜塔莉·波特曼Natalie...2010/美国/剧情惊悚');
INSERT INTO `blog_mov` VALUES ('145', '记忆碎片', '导演:克里斯托弗·诺兰ChristopherNolan主演:盖·皮尔斯GuyPearce/...2000/美国/犯罪剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('146', '血战钢锯岭', '导演:梅尔·吉布森MelGibson主演:安德鲁·加菲尔德AndrewGarfield/...2016/美国澳大利亚/剧情传记历史战争');
INSERT INTO `blog_mov` VALUES ('147', '心迷宫', '导演:忻钰坤YukunXin主演:霍卫民WeiminHuo/王笑天XiaotianWang...2014/中国大陆/剧情犯罪悬疑');
INSERT INTO `blog_mov` VALUES ('148', '傲慢与偏见', '导演:乔·怀特JoeWright主演:凯拉·奈特莉KeiraKnightley/马修·...2005/法国英国美国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('149', '时空恋旅人', '导演:理查德·柯蒂斯RichardCurtis主演:多姆纳尔·格里森DomhnallGl...2013/英国/喜剧爱情奇幻');
INSERT INTO `blog_mov` VALUES ('150', '荒蛮故事', '导演:达米安·斯兹弗隆DamiánSzifron主演:达里奥·葛兰帝内提Darío...2014/阿根廷西班牙/剧情喜剧犯罪');
INSERT INTO `blog_mov` VALUES ('151', '雨人', '导演:巴瑞·莱文森BarryLevinson主演:达斯汀·霍夫曼DustinHoffman...1988/美国/剧情');
INSERT INTO `blog_mov` VALUES ('152', '纵横四海', '导演:吴宇森JohnWoo主演:周润发Yun-FatChow/张国荣LeslieCheung...1991/香港/剧情喜剧动作犯罪');
INSERT INTO `blog_mov` VALUES ('153', '教父3', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:阿尔·帕西诺A...1990/美国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('154', '达拉斯买家俱乐部', '导演:让-马克·瓦雷Jean-MarcVallée主演:马修·麦康纳MatthewMcCon...2013/美国/剧情传记同性');
INSERT INTO `blog_mov` VALUES ('155', '玩具总动员3', '导演:李·昂克里奇LeeUnkrich主演:汤姆·汉克斯TomHanks/蒂姆·艾...2010/美国/喜剧动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('156', '卢旺达饭店', '导演:特瑞·乔治TerryGeorge主演:唐·钱德尔DonCheadle/苏菲·奥...2004/英国南非意大利美国/剧情历史战争');
INSERT INTO `blog_mov` VALUES ('157', '完美的世界', '导演:克林特·伊斯特伍德ClintEastwood主演:凯文·科斯特纳KevinCos...1993/美国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('158', '花样年华', '导演:王家卫KarWaiWong主演:梁朝伟TonyLeungChiuWai/张曼玉Ma...2000/香港/剧情爱情');
INSERT INTO `blog_mov` VALUES ('159', '海边的曼彻斯特', '导演:肯尼斯·罗纳根KennethLonergan主演:卡西·阿弗莱克CaseyAffle...2016/美国/剧情家庭');
INSERT INTO `blog_mov` VALUES ('160', '海洋', '导演:雅克·贝汉JacquesPerrin/雅克·克鲁奥德JacquesCluzaud主演:...2009/法国瑞士西班牙美国阿联酋/纪录片');
INSERT INTO `blog_mov` VALUES ('161', '恋恋笔记本', '导演:尼克·卡索维茨NickCassavetes主演:瑞恩·高斯林RyanGosling/...2004/美国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('162', '虎口脱险', '导演:杰拉尔·乌里GérardOury主演:路易·德·菲耐斯LouisdeFunès...1966/法国英国/喜剧战争');
INSERT INTO `blog_mov` VALUES ('163', '你看起来好像很好吃', '导演:藤森雅也MasayaFujimori主演:山口胜平KappeiYamaguchi/爱河...2010/日本/剧情动画儿童');
INSERT INTO `blog_mov` VALUES ('164', '二十二', '导演:郭柯KeGuo主演:2015/中国大陆/纪录片');
INSERT INTO `blog_mov` VALUES ('165', '被解救的姜戈', '导演:昆汀·塔伦蒂诺QuentinTarantino主演:杰米·福克斯JamieFoxx/...2012/美国/剧情动作西部冒险');
INSERT INTO `blog_mov` VALUES ('166', '头脑特工队', '导演:彼特·道格特PeteDocter/罗纳尔多·德尔·卡门RonaldoDelCarmen&nb...2015/美国/喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('167', '无敌破坏王', '导演:瑞奇·莫尔RichMoore主演:约翰·C·赖利JohnC.Reilly/萨拉...2012/美国/喜剧动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('168', '冰川时代', '导演:卡洛斯·沙尔丹哈CarlosSaldanha/克里斯·韦奇ChrisWedge主演...2002/美国/喜剧动画冒险');
INSERT INTO `blog_mov` VALUES ('169', '燃情岁月', '导演:爱德华·兹威克EdwardZwick主演:布拉德·皮特BradPitt/安东...1994/美国/剧情爱情战争西部');
INSERT INTO `blog_mov` VALUES ('170', '你的名字。', '导演:新海诚MakotoShinkai主演:神木隆之介RynosukeKamiki/上...2016/日本/剧情爱情动画');
INSERT INTO `blog_mov` VALUES ('171', '雨中曲', '导演:斯坦利·多南StanleyDonen/吉恩·凯利GeneKelly主演:吉恩·...1952/美国/喜剧歌舞爱情');
INSERT INTO `blog_mov` VALUES ('172', '我是山姆', '导演:杰茜·尼尔森JessieNelson主演:SeanPenn/DakotaFanning/Mi...2001/美国/剧情家庭');
INSERT INTO `blog_mov` VALUES ('173', '三块广告牌', '导演:马丁·麦克唐纳MartinMcDonagh主演:弗兰西斯·麦克多蒙德France...2017/美国英国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('174', '爆裂鼓手', '导演:达米恩·查泽雷DamienChazelle主演:迈尔斯·特勒MilesTeller/...2014/美国/剧情音乐');
INSERT INTO `blog_mov` VALUES ('175', '人工智能', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:海利·乔·奥斯蒙Haley...2001/美国/冒险剧情科幻');
INSERT INTO `blog_mov` VALUES ('176', '未麻的部屋', '导演:今敏SatoshiKon主演:岩男润子JunkoIwao/松本梨香RicaMatsu...1997/日本/动画奇幻惊悚');
INSERT INTO `blog_mov` VALUES ('177', '穿越时空的少女', '导演:细田守MamoruHosoda主演:仲里依纱RiisaNaka/石田卓也Takuya...2006/日本/剧情爱情科幻动画');
INSERT INTO `blog_mov` VALUES ('178', '魂断蓝桥', '导演:茂文·勒鲁瓦MervynLeRoy主演:费雯·丽VivienLeigh/罗伯特·...1940/美国/剧情爱情战争');
INSERT INTO `blog_mov` VALUES ('179', '猜火车', '导演:丹尼·博伊尔DannyBoyle主演:伊万·麦克格雷格EwanMcGregor/...1996/英国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('180', '模仿游戏', '导演:莫滕·泰杜姆MortenTyldum主演:本尼迪克特·康伯巴奇BenedictC...2014/英国美国/剧情传记战争同性');
INSERT INTO `blog_mov` VALUES ('181', '一个叫欧维的男人决定去死', '导演:汉内斯·赫尔姆HannesHolm主演:罗夫·拉斯加德RolfLassgård...2015/瑞典/剧情');
INSERT INTO `blog_mov` VALUES ('182', '房间', '导演:伦尼·阿伯拉罕森LennyAbrahamson主演:布丽·拉尔森BrieLarson...2015/爱尔兰加拿大英国美国/剧情家庭');
INSERT INTO `blog_mov` VALUES ('183', '忠犬八公物语', '导演:SeijirKyama主演:山本圭KeiYamamoto/井川比佐志Hisa...1987/日本/剧情');
INSERT INTO `blog_mov` VALUES ('184', '完美陌生人', '导演:保罗·格诺维瑟PaoloGenovese主演:马可·贾利尼MarcoGiallini...2016/意大利/剧情喜剧');
INSERT INTO `blog_mov` VALUES ('185', '罗生门', '导演:黑泽明AkiraKurosawa主演:三船敏郎ToshirMifune/千秋实...1950/日本/犯罪剧情悬疑');
INSERT INTO `blog_mov` VALUES ('186', '恐怖游轮', '导演:克里斯托弗·史密斯ChristopherSmith主演:梅利莎·乔治Melissa...2009/英国澳大利亚/剧情悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('187', '魔女宅急便', '导演:宫崎骏HayaoMiyazaki主演:高山南MinamiTakayama/佐久间玲Re...1989/日本/动画奇幻冒险');
INSERT INTO `blog_mov` VALUES ('188', '阿飞正传', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/张曼玉MaggieC...1990/香港/犯罪剧情爱情');
INSERT INTO `blog_mov` VALUES ('189', '香水', '导演:汤姆·提克威TomTykwer主演:本·卫肖BenWhishaw/艾伦·瑞克...2006/德国法国西班牙美国/剧情犯罪奇幻');
INSERT INTO `blog_mov` VALUES ('190', '哪吒闹海', '导演:严定宪DingxianYan/王树忱ShuchenWang主演:梁正晖Zhenghui...1979/中国大陆/冒险动画奇幻');
INSERT INTO `blog_mov` VALUES ('191', '浪潮', '导演:丹尼斯·甘塞尔DennisGansel主演:尤尔根·沃格尔JürgenVogel...2008/德国/剧情惊悚');
INSERT INTO `blog_mov` VALUES ('192', '朗读者', '导演:史蒂芬·戴德利StephenDaldry主演:凯特·温丝莱特KateWinslet...2008/美国德国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('193', '黑客帝国3：矩阵革命', '导演:AndyWachowski/LarryWachowski主演:基努·里维斯KeanuReeves...2003/美国澳大利亚/动作科幻');
INSERT INTO `blog_mov` VALUES ('194', '海街日记', '导演:是枝裕和HirokazuKoreeda主演:绫濑遥HarukaAyase/长泽雅美M...2015/日本/剧情家庭');
INSERT INTO `blog_mov` VALUES ('195', '可可西里', '导演:陆川ChuanLu主演:多布杰Duobujie/张磊LeiZhang/亓亮QiL...2004/中国大陆香港/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('196', '谍影重重2', '导演:保罗·格林格拉斯PaulGreengrass主演:马特·达蒙MattDamon/...2004/美国德国/动作悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('197', '谍影重重', '导演:道格·里曼DougLiman主演:马特·达蒙MattDamon/弗兰卡·波坦...2002/美国德国捷克/动作悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('198', '战争之王', '导演:安德鲁·尼科尔AndrewNiccol主演:尼古拉斯·凯奇NicolasCage/...2005/美国法国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('199', '牯岭街少年杀人事件', '导演:杨德昌EdwardYang主演:张震ChenChang/杨静怡LisaYang/张...1991/台湾/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('200', '地球上的星星', '导演:阿米尔·汗AamirKhan主演:达席尔·萨法瑞DarsheelSafary/阿...2007/印度/剧情儿童家庭');
INSERT INTO `blog_mov` VALUES ('201', '青蛇', '导演:徐克HarkTsui主演:张曼玉MaggieCheung/王祖贤JoeyWang/...1993/香港/剧情爱情奇幻古装');
INSERT INTO `blog_mov` VALUES ('202', '一次别离', '导演:阿斯哈·法哈蒂AsgharFarhadi主演:佩曼·莫阿迪PeymanMoadi/...2011/伊朗法国/剧情家庭');
INSERT INTO `blog_mov` VALUES ('203', '惊魂记', '导演:AlfredHitchcock主演:JanetLeigh/AnthonyPerkins/VeraMiles1960/美国/悬疑惊悚恐怖');
INSERT INTO `blog_mov` VALUES ('204', '疯狂的石头', '导演:宁浩HaoNing主演:郭涛TaoGuo/刘桦HuaLiu/连晋TeddyLin2006/中国大陆香港/喜剧犯罪');
INSERT INTO `blog_mov` VALUES ('205', '追随', '导演:克里斯托弗·诺兰ChristopherNolan主演:杰里米·西奥伯德Jeremy...1998/英国/犯罪悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('206', '终结者2：审判日', '导演:詹姆斯·卡梅隆JamesCameron主演:阿诺·施瓦辛格ArnoldSchwarz...1991/美国法国/动作科幻');
INSERT INTO `blog_mov` VALUES ('207', '源代码', '导演:邓肯·琼斯DuncanJones主演:杰克·吉伦哈尔JakeGyllenhaal/...2011/美国加拿大/科幻悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('208', '小萝莉的猴神大叔', '导演:卡比尔·汗KabirKhan主演:萨尔曼·汗SalmanKhan/哈莎莉·马...2015/印度/剧情喜剧动作');
INSERT INTO `blog_mov` VALUES ('209', '步履不停', '导演:是枝裕和HirokazuKoreeda主演:阿部宽HiroshiAbe/夏川结衣Yu...2008/日本/剧情家庭');
INSERT INTO `blog_mov` VALUES ('210', '初恋这件小事', '导演:普特鹏·普罗萨卡·那·萨克那卡林PuttipongPromsakaNaSakolnakorn/华森·波克彭...2010/泰国/剧情喜剧爱情');
INSERT INTO `blog_mov` VALUES ('211', '再次出发之纽约遇见你', '导演:约翰·卡尼JohnCarney主演:凯拉·奈特莉KeiraKnightley/马克...2013/美国/喜剧爱情音乐');
INSERT INTO `blog_mov` VALUES ('212', '新龙门客栈', '导演:李惠民RaymondLee主演:张曼玉MaggieCheung/林青霞Brigitte...1992/香港中国大陆/动作爱情武侠古装');
INSERT INTO `blog_mov` VALUES ('213', '撞车', '导演:保罗·哈吉斯PaulHaggis主演:桑德拉·布洛克SandraBullock/...2004/美国德国/犯罪剧情');
INSERT INTO `blog_mov` VALUES ('214', '天书奇谭', '导演:王树忱ShuchenWang/钱运达YundaQian主演:丁建华JianhuaDin...1983(中国大陆)/2019(中国大陆重映)/中国大陆/动画奇幻');
INSERT INTO `blog_mov` VALUES ('215', '梦之安魂曲', '导演:达伦·阿伦诺夫斯基DarrenAronofsky主演:艾伦·伯斯汀EllenBur...2000/美国/剧情');
INSERT INTO `blog_mov` VALUES ('216', '爱在午夜降临前', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...2013/美国希腊/剧情爱情');
INSERT INTO `blog_mov` VALUES ('217', '海蒂和爷爷', '导演:阿兰·葛斯彭纳AlainGsponer主演:阿努克·斯特芬AnukSteffen/...2015/德国瑞士南非/剧情冒险家庭');
INSERT INTO `blog_mov` VALUES ('218', '无耻混蛋', '导演:QuentinTarantino主演:布拉德·皮特BradPitt/梅拉尼·罗兰M...2009/美国德国/剧情犯罪');
INSERT INTO `blog_mov` VALUES ('219', '东京物语', '导演:小津安二郎YasujirOzu主演:笠智众ChishRy/原节...1953/日本/剧情家庭');
INSERT INTO `blog_mov` VALUES ('220', '城市之光', '导演:CharlesChaplin主演:查理·卓别林CharlesChaplin/弗吉尼亚·...1931/美国/喜剧剧情爱情');
INSERT INTO `blog_mov` VALUES ('221', '绿里奇迹', '导演:FrankDarabont主演:汤姆·汉克斯TomHanks/大卫·摩斯DavidM...1999/美国/犯罪剧情奇幻悬疑');
INSERT INTO `blog_mov` VALUES ('222', '彗星来的那一夜', '导演:詹姆斯·沃德·布柯特JamesWardByrkit主演:艾米丽·芭尔多尼Em...2013/美国英国/科幻悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('223', '血钻', '导演:爱德华·兹威克EdwardZwick主演:莱昂纳多·迪卡普里奥Leonardo...2006/美国德国/剧情惊悚冒险');
INSERT INTO `blog_mov` VALUES ('224', '这个男人来自地球', '导演:理查德·沙因克曼RichardSchenkman主演:大卫·李·史密斯David...2007/美国/剧情科幻');
INSERT INTO `blog_mov` VALUES ('225', 'E.T. 外星人', '导演:StevenSpielberg主演:HenryThomas/DeeWallace/RobertMacNa...1982/美国/剧情科幻');
INSERT INTO `blog_mov` VALUES ('226', '末路狂花', '导演:雷德利·斯科特RidleyScott主演:吉娜·戴维斯GeenaDavis/苏...1991/美国法国/犯罪剧情惊悚');
INSERT INTO `blog_mov` VALUES ('227', '2001太空漫游', '导演:斯坦利·库布里克StanleyKubrick主演:凯尔·杜拉KeirDullea/...1968/英国美国/科幻惊悚冒险');
INSERT INTO `blog_mov` VALUES ('228', '聚焦', '导演:托马斯·麦卡锡ThomasMcCarthy主演:马克·鲁弗洛MarkRuffalo/...2015/美国/剧情传记');
INSERT INTO `blog_mov` VALUES ('229', '勇闯夺命岛', '导演:迈克尔·贝MichaelBay主演:肖恩·康纳利SeanConnery/尼古拉...1996/美国/动作冒险');
INSERT INTO `blog_mov` VALUES ('230', '变脸', '导演:吴宇森JohnWoo主演:约翰·特拉沃尔塔JohnTravolta/尼古拉斯...1997/美国/动作科幻犯罪惊悚');
INSERT INTO `blog_mov` VALUES ('231', '发条橙', '导演:StanleyKubrick主演:MalcolmMcDowell/PatrickMagee/Michael...1971/英国美国/犯罪剧情科幻');
INSERT INTO `blog_mov` VALUES ('232', '秒速5厘米', '导演:新海诚MakotoShinkai主演:水桥研二KenjiMizuhashi/近藤好美...2007/日本/动画剧情爱情');
INSERT INTO `blog_mov` VALUES ('233', '黄金三镖客', '导演:SergioLeone主演:ClintEastwood/EliWallach/LeeVanCleef1966/意大利西班牙西德/冒险西部');
INSERT INTO `blog_mov` VALUES ('234', '黑鹰坠落', '导演:雷德利·斯科特RidleyScott主演:乔什·哈奈特JoshHartnett/...2001/美国/动作历史战争');
INSERT INTO `blog_mov` VALUES ('235', '功夫', '导演:周星驰StephenChow主演:周星驰StephenChow/元秋QiuYuen/...2004/中国大陆香港/动作喜剧犯罪奇幻');
INSERT INTO `blog_mov` VALUES ('236', '非常嫌疑犯', '导演:布莱恩·辛格BryanSinger主演:史蒂芬·鲍德温StephenBaldwin/...1995/德国美国/剧情犯罪悬疑惊悚');
INSERT INTO `blog_mov` VALUES ('237', '卡萨布兰卡', '导演:迈克尔·柯蒂兹MichaelCurtiz主演:亨弗莱·鲍嘉HumphreyBogart...1942/美国/剧情爱情战争');
INSERT INTO `blog_mov` VALUES ('238', '我爱你', '导演:秋昌民Chang-minChoo主演:宋在河Jae-hoSong/李顺载Soon-jae...2011/韩国/剧情爱情');
INSERT INTO `blog_mov` VALUES ('239', '国王的演讲', '导演:汤姆·霍珀TomHooper主演:柯林·菲尔斯ColinFirth/杰弗里·...2010/英国澳大利亚美国/剧情传记历史');
INSERT INTO `blog_mov` VALUES ('240', '千钧一发', '导演:安德鲁·尼科尔AndrewNiccol主演:伊桑·霍克EthanHawke/乌玛...1997/美国/剧情科幻惊悚');
INSERT INTO `blog_mov` VALUES ('241', '美国丽人', '导演:萨姆·门德斯SamMendes主演:凯文·史派西KevinSpacey/安妮特...1999/美国/剧情爱情家庭');
INSERT INTO `blog_mov` VALUES ('242', '疯狂的麦克斯4：狂暴之路', '导演:乔治·米勒GeorgeMiller主演:汤姆·哈迪TomHardy/查理兹·塞...2015/澳大利亚美国/动作科幻冒险');
INSERT INTO `blog_mov` VALUES ('243', '遗愿清单', '导演:罗伯·莱纳RobReiner主演:杰克·尼科尔森JackNicholson/摩根...2007/美国/冒险喜剧剧情');
INSERT INTO `blog_mov` VALUES ('244', '奇迹男孩', '导演:斯蒂芬·卓博斯基StephenChbosky主演:雅各布·特伦布莱JacobTr...2017/美国香港/剧情儿童家庭');
INSERT INTO `blog_mov` VALUES ('245', '碧海蓝天', '导演:LucBesson主演:让-马克·巴尔Jean-MarcBarr/让·雷诺JeanRe...1988/法国美国意大利/剧情爱情');
INSERT INTO `blog_mov` VALUES ('246', '荒岛余生', '导演:罗伯特·泽米吉斯RobertZemeckis主演:汤姆·汉克斯TomHanks/...2000/美国/冒险剧情');
INSERT INTO `blog_mov` VALUES ('247', '驴得水', '导演:周申ShenZhou/刘露LuLiu主演:任素汐SuxiRen/大力DaLi...2016/中国大陆/剧情喜剧');
INSERT INTO `blog_mov` VALUES ('248', '枪火', '导演:杜琪峰JohnnieTo主演:吴镇宇FrancisNg/任达华SimonYam/...1999/香港/剧情动作犯罪');
INSERT INTO `blog_mov` VALUES ('249', '英国病人', '导演:安东尼·明格拉AnthonyMinghella主演:拉尔夫·费因斯RalphFien...1996/美国英国/爱情剧情战争');
INSERT INTO `blog_mov` VALUES ('250', '荒野生存', '导演:西恩·潘SeanPenn主演:埃米尔·赫斯基EmileHirsch/马西娅·...2007/美国/冒险传记剧情');

-- ----------------------------
-- Table structure for blog_ss
-- ----------------------------
DROP TABLE IF EXISTS `blog_ss`;
CREATE TABLE `blog_ss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of blog_ss
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'doubantop');
INSERT INTO `django_content_type` VALUES ('9', 'blog', 'mobeil');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'mov');
INSERT INTO `django_content_type` VALUES ('10', 'blog', 'ss');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-04-09 11:21:34.358998');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2019-04-09 11:21:50.534636');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2019-04-09 11:21:56.631113');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2019-04-09 11:21:56.732073');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0003_logentry_add_action_flag_choices', '2019-04-09 11:21:56.806015');
INSERT INTO `django_migrations` VALUES ('6', 'contenttypes', '0002_remove_content_type_name', '2019-04-09 11:21:58.633975');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0002_alter_permission_name_max_length', '2019-04-09 11:21:59.766321');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0003_alter_user_email_max_length', '2019-04-09 11:22:00.102111');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0004_alter_user_username_opts', '2019-04-09 11:22:00.224038');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0005_alter_user_last_login_null', '2019-04-09 11:22:01.147523');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0006_require_contenttypes_0002', '2019-04-09 11:22:01.299419');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0007_alter_validators_add_error_messages', '2019-04-09 11:22:01.391364');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0008_alter_user_username_max_length', '2019-04-09 11:22:02.726611');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0009_alter_user_last_name_max_length', '2019-04-09 11:22:03.985868');
INSERT INTO `django_migrations` VALUES ('15', 'blog', '0001_initial', '2019-04-09 11:22:04.571529');
INSERT INTO `django_migrations` VALUES ('16', 'sessions', '0001_initial', '2019-04-09 11:22:05.401048');
INSERT INTO `django_migrations` VALUES ('17', 'blog', '0002_movie_num', '2019-04-09 14:28:06.735138');
INSERT INTO `django_migrations` VALUES ('18', 'blog', '0003_auto_20190410_1427', '2019-04-10 06:27:49.458167');
INSERT INTO `django_migrations` VALUES ('19', 'blog', '0004_auto_20190410_1438', '2019-04-10 06:38:48.457403');
INSERT INTO `django_migrations` VALUES ('20', 'blog', '0005_auto_20190410_1506', '2019-04-10 07:06:12.465905');
INSERT INTO `django_migrations` VALUES ('21', 'blog', '0006_mobeil', '2019-04-12 10:26:59.386874');
INSERT INTO `django_migrations` VALUES ('22', 'blog', '0007_auto_20190412_1854', '2019-04-12 10:54:41.893289');
INSERT INTO `django_migrations` VALUES ('23', 'blog', '0008_ss', '2019-04-22 09:30:18.151780');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for doubantop
-- ----------------------------
DROP TABLE IF EXISTS `doubantop`;
CREATE TABLE `doubantop` (
  `num` int(50) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `charactor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of doubantop
-- ----------------------------
INSERT INTO `doubantop` VALUES ('1', '肖申克的救赎', '导演:弗兰克·德拉邦特FrankDarabont主演:蒂姆·罗宾斯TimRobbins/...1994/美国/犯罪剧情');
INSERT INTO `doubantop` VALUES ('2', '霸王别姬', '导演:陈凯歌KaigeChen主演:张国荣LeslieCheung/张丰毅FengyiZha...1993/中国大陆香港/剧情爱情同性');
INSERT INTO `doubantop` VALUES ('3', '这个杀手不太冷', '导演:吕克·贝松LucBesson主演:让·雷诺JeanReno/娜塔莉·波特曼...1994/法国/剧情动作犯罪');
INSERT INTO `doubantop` VALUES ('4', '阿甘正传', '导演:罗伯特·泽米吉斯RobertZemeckis主演:汤姆·汉克斯TomHanks/...1994/美国/剧情爱情');
INSERT INTO `doubantop` VALUES ('5', '美丽人生', '导演:罗伯托·贝尼尼RobertoBenigni主演:罗伯托·贝尼尼RobertoBeni...1997/意大利/剧情喜剧爱情战争');
INSERT INTO `doubantop` VALUES ('6', '泰坦尼克号', '导演:詹姆斯·卡梅隆JamesCameron主演:莱昂纳多·迪卡普里奥Leonardo...1997/美国/剧情爱情灾难');
INSERT INTO `doubantop` VALUES ('7', '千与千寻', '导演:宫崎骏HayaoMiyazaki主演:柊瑠美RumiHragi/入野自由Miy...2001/日本/剧情动画奇幻');
INSERT INTO `doubantop` VALUES ('8', '辛德勒的名单', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:连姆·尼森LiamNeeson...1993/美国/剧情历史战争');
INSERT INTO `doubantop` VALUES ('9', '盗梦空间', '导演:克里斯托弗·诺兰ChristopherNolan主演:莱昂纳多·迪卡普里奥Le...2010/美国英国/剧情科幻悬疑冒险');
INSERT INTO `doubantop` VALUES ('10', '忠犬八公的故事', '导演:莱塞·霍尔斯道姆LasseHallstrm主演:理查·基尔RichardGer...2009/美国英国/剧情');
INSERT INTO `doubantop` VALUES ('11', '机器人总动员', '导演:安德鲁·斯坦顿AndrewStanton主演:本·贝尔特BenBurtt/艾丽...2008/美国/爱情科幻动画冒险');
INSERT INTO `doubantop` VALUES ('12', '三傻大闹宝莱坞', '导演:拉库马·希拉尼RajkumarHirani主演:阿米尔·汗AamirKhan/卡...2009/印度/剧情喜剧爱情歌舞');
INSERT INTO `doubantop` VALUES ('13', '海上钢琴师', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:蒂姆·罗斯TimRoth/...1998/意大利/剧情音乐');
INSERT INTO `doubantop` VALUES ('14', '放牛班的春天', '导演:克里斯托夫·巴拉蒂ChristopheBarratier主演:热拉尔·朱尼奥Gé...2004/法国瑞士德国/剧情音乐');
INSERT INTO `doubantop` VALUES ('15', '楚门的世界', '导演:彼得·威尔PeterWeir主演:金·凯瑞JimCarrey/劳拉·琳妮Lau...1998/美国/剧情科幻');
INSERT INTO `doubantop` VALUES ('16', '大话西游之大圣娶亲', '导演:刘镇伟JeffreyLau主演:周星驰StephenChow/吴孟达ManTatNg...1995/香港中国大陆/喜剧爱情奇幻古装');
INSERT INTO `doubantop` VALUES ('17', '星际穿越', '导演:克里斯托弗·诺兰ChristopherNolan主演:马修·麦康纳MatthewMc...2014/美国英国加拿大冰岛/剧情科幻冒险');
INSERT INTO `doubantop` VALUES ('18', '龙猫', '导演:宫崎骏HayaoMiyazaki主演:日高法子NorikoHidaka/坂本千夏Ch...1988/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('19', '教父', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:马龙·白兰度M...1972/美国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('20', '熔炉', '导演:黄东赫Dong-hyukHwang主演:孔侑YooGong/郑有美Yu-miJeong...2011/韩国/剧情');
INSERT INTO `doubantop` VALUES ('21', '无间道', '导演:刘伟强/麦兆辉主演:刘德华/梁朝伟/黄秋生2002/香港/剧情犯罪悬疑');
INSERT INTO `doubantop` VALUES ('22', '疯狂动物城', '导演:拜伦·霍华德ByronHoward/瑞奇·摩尔RichMoore主演:金妮弗·...2016/美国/喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('23', '当幸福来敲门', '导演:加布里尔·穆奇诺GabrieleMuccino主演:威尔·史密斯WillSmith...2006/美国/剧情传记家庭');
INSERT INTO `doubantop` VALUES ('24', '怦然心动', '导演:罗伯·莱纳RobReiner主演:玛德琳·卡罗尔MadelineCarroll/卡...2010/美国/剧情喜剧爱情');
INSERT INTO `doubantop` VALUES ('25', '触不可及', '导演:奥利维·那卡什OlivierNakache/艾力克·托兰达EricToledano主...2011/法国/剧情喜剧');
INSERT INTO `doubantop` VALUES ('26', '乱世佳人', '导演:维克多·弗莱明VictorFleming/乔治·库克GeorgeCukor主演:费...1939/美国/剧情历史爱情战争');
INSERT INTO `doubantop` VALUES ('27', '蝙蝠侠：黑暗骑士', '导演:克里斯托弗·诺兰ChristopherNolan主演:克里斯蒂安·贝尔Christ...2008/美国英国/剧情动作科幻犯罪惊悚');
INSERT INTO `doubantop` VALUES ('28', '活着', '导演:张艺谋YimouZhang主演:葛优YouGe/巩俐LiGong/姜武WuJiang1994/中国大陆香港/剧情历史家庭');
INSERT INTO `doubantop` VALUES ('29', '少年派的奇幻漂流', '导演:李安AngLee主演:苏拉·沙玛SurajSharma/伊尔凡·可汗Irrfan...2012/美国台湾英国加拿大/剧情奇幻冒险');
INSERT INTO `doubantop` VALUES ('30', '控方证人', '导演:比利·怀尔德BillyWilder主演:泰隆·鲍华TyronePower/玛琳·...1957/美国/剧情犯罪悬疑');
INSERT INTO `doubantop` VALUES ('31', '天堂电影院', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:安东内拉·阿蒂利Anton...1988/意大利法国/剧情爱情');
INSERT INTO `doubantop` VALUES ('32', '鬼子来了', '导演:姜文WenJiang主演:姜文WenJiang/香川照之TeruyukiKagawa/...2000/中国大陆/剧情历史战争');
INSERT INTO `doubantop` VALUES ('33', '指环王3：王者无敌', '导演:彼得·杰克逊PeterJackson主演:维果·莫腾森ViggoMortensen/...2003/美国新西兰/剧情动作奇幻冒险');
INSERT INTO `doubantop` VALUES ('34', '十二怒汉', '导演:SidneyLumet主演:亨利·方达HenryFonda/马丁·鲍尔萨姆Marti...1957/美国/剧情');
INSERT INTO `doubantop` VALUES ('35', '天空之城', '导演:宫崎骏HayaoMiyazaki主演:田中真弓MayumiTanaka/横泽启子Ke...1986/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('36', '摔跤吧！爸爸', '导演:涅提·蒂瓦里NiteshTiwari主演:阿米尔·汗AamirKhan/法缇玛...2016/印度/剧情传记运动家庭');
INSERT INTO `doubantop` VALUES ('37', '飞屋环游记', '导演:彼特·道格特PeteDocter/鲍勃·彼德森BobPeterson主演:爱德...2009/美国/剧情喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('38', '大话西游之月光宝盒', '导演:刘镇伟JeffreyLau主演:周星驰StephenChow/吴孟达ManTatNg...1995/香港中国大陆/喜剧爱情奇幻古装');
INSERT INTO `doubantop` VALUES ('39', '搏击俱乐部', '导演:大卫·芬奇DavidFincher主演:爱德华·诺顿EdwardNorton/布拉...1999/美国德国/剧情动作悬疑惊悚');
INSERT INTO `doubantop` VALUES ('40', '罗马假日', '导演:威廉·惠勒WilliamWyler主演:奥黛丽·赫本AudreyHepburn/格...1953/美国/喜剧剧情爱情');
INSERT INTO `doubantop` VALUES ('41', '哈尔的移动城堡', '导演:宫崎骏HayaoMiyazaki主演:倍赏千惠子ChiekoBaish/木村拓...2004/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('42', '闻香识女人', '导演:马丁·布莱斯MartinBrest主演:阿尔·帕西诺AlPacino/克里斯...1992/美国/剧情');
INSERT INTO `doubantop` VALUES ('43', '辩护人', '导演:杨宇硕Woo-seokYang主演:宋康昊Kang-hoSong/吴达洙Dal-suO...2013/韩国/剧情');
INSERT INTO `doubantop` VALUES ('44', '窃听风暴', '导演:弗洛里安·亨克尔·冯·多纳斯马尔克FlorianHenckelvonDonnersmarck&n...2006/德国/剧情悬疑');
INSERT INTO `doubantop` VALUES ('45', '两杆大烟枪', '导演:GuyRitchie主演:JasonFlemyng/DexterFletcher/NickMoran1998/英国/剧情喜剧犯罪');
INSERT INTO `doubantop` VALUES ('46', '末代皇帝', '导演:贝纳尔多·贝托鲁奇BernardoBertolucci主演:尊龙JohnLone/陈...1987/英国意大利中国大陆法国美国/剧情传记历史');
INSERT INTO `doubantop` VALUES ('47', '飞越疯人院', '导演:米洛斯·福尔曼MiloForman主演:杰克·尼科尔森JackNichols...1975/美国/剧情');
INSERT INTO `doubantop` VALUES ('48', '死亡诗社', '导演:彼得·威尔PeterWeir主演:罗宾·威廉姆斯RobinWilliams/罗伯...1989/美国/剧情');
INSERT INTO `doubantop` VALUES ('49', '指环王2：双塔奇兵', '导演:彼得·杰克逊PeterJackson主演:伊利亚·伍德ElijahWood/西恩...2002/美国新西兰/剧情动作奇幻冒险');
INSERT INTO `doubantop` VALUES ('50', '素媛', '导演:李濬益Jun-ikLee主演:薛景求Kyung-guSol/严志媛Ji-wonUhm...2013/韩国/剧情');
INSERT INTO `doubantop` VALUES ('51', 'V字仇杀队', '导演:詹姆斯·麦克特格JamesMcTeigue主演:娜塔莉·波特曼NataliePor...2005/美国英国德国/剧情动作科幻惊悚');
INSERT INTO `doubantop` VALUES ('52', '教父2', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:阿尔·帕西诺A...1974/美国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('53', '寻梦环游记', '导演:李·昂克里奇LeeUnkrich/阿德里安·莫利纳AdrianMolina主演:...2017/美国/喜剧动画奇幻音乐');
INSERT INTO `doubantop` VALUES ('54', '指环王1：魔戒再现', '导演:彼得·杰克逊PeterJackson主演:伊利亚·伍德ElijahWood/西恩...2001/新西兰美国/剧情动作奇幻冒险');
INSERT INTO `doubantop` VALUES ('55', '海豚湾', '导演:路易·西霍尤斯LouiePsihoyos主演:RichardO\'Barry/路易·西霍...2009/美国/纪录片');
INSERT INTO `doubantop` VALUES ('56', '饮食男女', '导演:李安AngLee主演:郎雄SihungLung/杨贵媚Kuei-MeiYang/吴...1994/台湾美国/剧情家庭');
INSERT INTO `doubantop` VALUES ('57', '美丽心灵', '导演:朗·霍华德RonHoward主演:罗素·克劳RussellCrowe/艾德·哈...2001/美国/传记剧情');
INSERT INTO `doubantop` VALUES ('58', '狮子王', '导演:RogerAllers/罗伯·明可夫RobMinkoff主演:乔纳森·泰勒·托马...1994/美国/剧情动画冒险歌舞家庭');
INSERT INTO `doubantop` VALUES ('59', '情书', '导演:岩井俊二ShunjiIwai主演:中山美穗MihoNakayama/丰川悦司Ets...1995/日本/剧情爱情');
INSERT INTO `doubantop` VALUES ('60', '钢琴家', '导演:罗曼·波兰斯基RomanPolanski主演:艾德里安·布洛迪AdrienBrod...2002/法国德国英国波兰/剧情传记历史战争音乐');
INSERT INTO `doubantop` VALUES ('61', '本杰明·巴顿奇事', '导演:大卫·芬奇DavidFincher主演:凯特·布兰切特CateBlanchett/...2008/美国/剧情爱情奇幻');
INSERT INTO `doubantop` VALUES ('62', '美国往事', '导演:赛尔乔·莱翁内SergioLeone主演:罗伯特·德尼罗RobertDeNiro...1984/意大利美国/犯罪剧情');
INSERT INTO `doubantop` VALUES ('63', '看不见的客人', '导演:奥里奥尔·保罗OriolPaulo主演:马里奥·卡萨斯MarioCasas/阿...2016/西班牙/剧情犯罪悬疑惊悚');
INSERT INTO `doubantop` VALUES ('64', '黑客帝国', '导演:安迪·沃卓斯基AndyWachowski/拉娜·沃卓斯基LanaWachowski主...1999/美国澳大利亚/动作科幻');
INSERT INTO `doubantop` VALUES ('65', '小鞋子', '导演:马基德·马基迪MajidMajidi主演:法拉赫阿米尔·哈什米安AmirFa...1997/伊朗/剧情儿童家庭');
INSERT INTO `doubantop` VALUES ('66', '西西里的美丽传说', '导演:朱塞佩·托纳多雷GiuseppeTornatore主演:莫妮卡·贝鲁奇Monica...2000/意大利美国/剧情战争情色');
INSERT INTO `doubantop` VALUES ('67', '大闹天宫', '导演:万籁鸣LaimingWan/唐澄ChengTang主演:邱岳峰YuefengQiu/...1961(中国大陆)/1964(中国大陆)/1978(中国大陆)/2004(中国大陆)/中国大陆/动画奇幻');
INSERT INTO `doubantop` VALUES ('68', '让子弹飞', '导演:姜文WenJiang主演:姜文WenJiang/葛优YouGe/周润发Yun-F...2010/中国大陆香港/剧情喜剧动作西部');
INSERT INTO `doubantop` VALUES ('69', '拯救大兵瑞恩', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:汤姆·汉克斯TomHanks...1998/美国/剧情历史战争');
INSERT INTO `doubantop` VALUES ('70', '哈利·波特与魔法石', '导演:ChrisColumbus主演:DanielRadcliffe/EmmaWatson/RupertGrint2001/美国英国/奇幻冒险');
INSERT INTO `doubantop` VALUES ('71', '致命魔术', '导演:克里斯托弗·诺兰ChristopherNolan主演:休·杰克曼HughJackman...2006/美国英国/剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('72', '七宗罪', '导演:大卫·芬奇DavidFincher主演:摩根·弗里曼MorganFreeman/布...1995/美国/剧情犯罪悬疑惊悚');
INSERT INTO `doubantop` VALUES ('73', '被嫌弃的松子的一生', '导演:中岛哲也TetsuyaNakashima主演:中谷美纪MikiNakatani/瑛太E...2006/日本/剧情歌舞');
INSERT INTO `doubantop` VALUES ('74', '音乐之声', '导演:罗伯特·怀斯RobertWise主演:朱莉·安德鲁斯JulieAndrews/克...1965/美国/剧情传记爱情歌舞');
INSERT INTO `doubantop` VALUES ('75', '低俗小说', '导演:昆汀·塔伦蒂诺QuentinTarantino主演:约翰·特拉沃尔塔JohnTra...1994/美国/剧情喜剧犯罪');
INSERT INTO `doubantop` VALUES ('76', '天使爱美丽', '导演:让-皮埃尔·热内Jean-PierreJeunet主演:奥黛丽·塔图AudreyTau...2001/法国德国/喜剧爱情');
INSERT INTO `doubantop` VALUES ('77', '沉默的羔羊', '导演:乔纳森·戴米JonathanDemme主演:朱迪·福斯特JodieFoster/安...1991/美国/剧情犯罪惊悚');
INSERT INTO `doubantop` VALUES ('78', '勇敢的心', '导演:梅尔·吉布森MelGibson主演:梅尔·吉布森MelGibson/苏菲·玛...1995/美国/动作传记剧情历史战争');
INSERT INTO `doubantop` VALUES ('79', '猫鼠游戏', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:莱昂纳多·迪卡普里奥L...2002/美国加拿大/传记犯罪剧情');
INSERT INTO `doubantop` VALUES ('80', '蝴蝶效应', '导演:埃里克·布雷斯EricBress/J·麦基·格鲁伯J.MackyeGruber主...2004/美国加拿大/剧情悬疑科幻惊悚');
INSERT INTO `doubantop` VALUES ('81', '剪刀手爱德华', '导演:蒂姆·波顿TimBurton主演:约翰尼·德普JohnnyDepp/薇诺娜·...1990/美国/剧情奇幻爱情');
INSERT INTO `doubantop` VALUES ('82', '春光乍泄', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/梁朝伟TonyLeu...1997/香港日本韩国/剧情爱情同性');
INSERT INTO `doubantop` VALUES ('83', '心灵捕手', '导演:格斯·范·桑特GusVanSant主演:马特·达蒙MattDamon/罗宾·...1997/美国/剧情');
INSERT INTO `doubantop` VALUES ('84', '禁闭岛', '导演:MartinScorsese主演:莱昂纳多·迪卡普里奥LeonardoDiCaprio/...2010/美国/剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('85', '布达佩斯大饭店', '导演:韦斯·安德森WesAnderson主演:拉尔夫·费因斯RalphFiennes/...2014/美国德国英国/剧情喜剧冒险');
INSERT INTO `doubantop` VALUES ('86', '穿条纹睡衣的男孩', '导演:马克·赫尔曼MarkHerman主演:阿萨·巴特菲尔德AsaButterfield...2008/英国美国/剧情战争');
INSERT INTO `doubantop` VALUES ('87', '入殓师', '导演:泷田洋二郎YjirTakita主演:本木雅弘MasahiroMotoki/...2008/日本/剧情');
INSERT INTO `doubantop` VALUES ('88', '阿凡达', '导演:詹姆斯·卡梅隆JamesCameron主演:萨姆·沃辛顿SamWorthington...2009/美国英国/动作战争科幻冒险');
INSERT INTO `doubantop` VALUES ('89', '幽灵公主', '导演:宫崎骏HayaoMiyazaki主演:松田洋治YjiMatsuda/石田百合...1997/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('90', '阳光灿烂的日子', '导演:姜文WenJiang主演:夏雨YuXia/宁静JingNing/陶虹HongTao1994/中国大陆香港/剧情爱情');
INSERT INTO `doubantop` VALUES ('91', '致命ID', '导演:JamesMangold主演:JohnCusack/RayLiotta/AmandaPeet2003/美国/剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('92', '第六感', '导演:M·奈特·沙马兰M.NightShyamalan主演:布鲁斯·威利斯BruceWi...1999/美国/剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('93', '加勒比海盗', '导演:戈尔·维宾斯基GoreVerbinski主演:约翰尼·德普JohnnyDepp/...2003/美国/动作冒险奇幻');
INSERT INTO `doubantop` VALUES ('94', '狩猎', '导演:托马斯·温特伯格ThomasVinterberg主演:麦斯·米科尔森MadsMik...2012/丹麦瑞典/剧情');
INSERT INTO `doubantop` VALUES ('95', '玛丽和马克思', '导演:亚当·艾略特AdamElliot主演:托妮·科莱特ToniCollette/菲利...2009/澳大利亚/剧情喜剧动画');
INSERT INTO `doubantop` VALUES ('96', '断背山', '导演:李安AngLee主演:希斯·莱杰HeathLedger/杰克·吉伦哈尔Jake...2005/美国加拿大/剧情爱情同性家庭');
INSERT INTO `doubantop` VALUES ('97', '重庆森林', '导演:王家卫KarWaiWong主演:林青霞BrigitteLin/金城武TakeshiK...1994/香港/剧情爱情');
INSERT INTO `doubantop` VALUES ('98', '摩登时代', '导演:查理·卓别林CharlesChaplin主演:查理·卓别林CharlesChaplin...1936/美国/剧情喜剧爱情');
INSERT INTO `doubantop` VALUES ('99', '喜剧之王', '导演:周星驰StephenChow/李力持Lik-ChiLee主演:周星驰StephenCh...1999/香港/喜剧剧情爱情');
INSERT INTO `doubantop` VALUES ('100', '告白', '导演:中岛哲也TetsuyaNakashima主演:松隆子TakakoMatsu/冈田将生...2010/日本/剧情惊悚');
INSERT INTO `doubantop` VALUES ('101', '大鱼', '导演:蒂姆·波顿TimBurton主演:伊万·麦克格雷格EwanMcGregor/阿...2003/美国/剧情家庭奇幻冒险');
INSERT INTO `doubantop` VALUES ('102', '消失的爱人', '导演:大卫·芬奇DavidFincher主演:本·阿弗莱克BenAffleck/罗莎蒙...2014/美国/剧情犯罪悬疑惊悚');
INSERT INTO `doubantop` VALUES ('103', '一一', '导演:杨德昌EdwardYang主演:吴念真/李凯莉KellyLee/金燕玲Elai...2000/台湾日本/剧情爱情家庭');
INSERT INTO `doubantop` VALUES ('104', '射雕英雄传之东成西就', '导演:刘镇伟JeffreyLau主演:梁朝伟TonyLeungChiuWai/林青霞Bri...1993/香港/喜剧奇幻武侠古装');
INSERT INTO `doubantop` VALUES ('105', '阳光姐妹淘', '导演:姜炯哲Hyeong-CheolKang主演:沈恩京Eun-kyungShim/闵孝琳Hy...2011/韩国/剧情喜剧');
INSERT INTO `doubantop` VALUES ('106', '甜蜜蜜', '导演:陈可辛PeterChan主演:黎明LeonLai/张曼玉MaggieCheung/...1996/香港/剧情爱情');
INSERT INTO `doubantop` VALUES ('107', '爱在黎明破晓前', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...1995/美国奥地利瑞士/剧情爱情');
INSERT INTO `doubantop` VALUES ('108', '小森林 夏秋篇', '导演:森淳一JunichiMori主演:桥本爱AiHashimoto/三浦贵大Takahir...2014/日本/剧情');
INSERT INTO `doubantop` VALUES ('109', '驯龙高手', '导演:迪恩·德布洛斯DeanDeBlois/克里斯·桑德斯ChrisSanders主演:...2010/美国/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('110', '侧耳倾听', '导演:近藤喜文YoshifumiKondo主演:本名阳子YoukoHonna/小林桂树K...1995/日本/剧情爱情动画');
INSERT INTO `doubantop` VALUES ('111', '红辣椒', '导演:今敏SatoshiKon主演:林原惠美MegumiHayashibara/江守彻Toru...2006/日本/动画悬疑科幻惊悚');
INSERT INTO `doubantop` VALUES ('112', '请以你的名字呼唤我', '导演:卢卡·瓜达尼诺LucaGuadagnino主演:艾米·汉莫ArmieHammer/...2017/意大利法国巴西美国荷兰德国/剧情爱情同性');
INSERT INTO `doubantop` VALUES ('113', '倩女幽魂', '导演:程小东Siu-TungChing主演:张国荣LeslieCheung/王祖贤JoeyW...1987/香港/爱情奇幻武侠古装');
INSERT INTO `doubantop` VALUES ('114', '恐怖直播', '导演:金秉祐Byeong-wooKim主演:河正宇Jung-wooHa/李璟荣Kyeong-y...2013/韩国/剧情犯罪悬疑');
INSERT INTO `doubantop` VALUES ('115', '风之谷', '导演:宫崎骏HayaoMiyazaki主演:岛本须美SumiShimamoto/松田洋治Y...1984/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('116', '上帝之城', '导演:KátiaLund/FernandoMeirelles主演:AlexandreRodrigues/Lea...2002/巴西法国/犯罪剧情');
INSERT INTO `doubantop` VALUES ('117', '超脱', '导演:托尼·凯耶TonyKaye主演:艾德里安·布洛迪AdrienBrody/马西...2011/美国/剧情');
INSERT INTO `doubantop` VALUES ('118', '爱在日落黄昏时', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...2004/美国/剧情爱情');
INSERT INTO `doubantop` VALUES ('119', '菊次郎的夏天', '导演:北野武TakeshiKitano主演:北野武TakeshiKitano/关口雄介Yus...1999/日本/剧情喜剧');
INSERT INTO `doubantop` VALUES ('120', '幸福终点站', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:汤姆·汉克斯TomHanks...2004/美国/喜剧剧情爱情');
INSERT INTO `doubantop` VALUES ('121', '哈利·波特与死亡圣器(下)', '导演:大卫·叶茨DavidYates主演:丹尼尔·雷德克里夫DanielRadcliffe...2011/美国英国/剧情悬疑奇幻冒险');
INSERT INTO `doubantop` VALUES ('122', '小森林 冬春篇', '导演:森淳一JunichiMori主演:桥本爱AiHashimoto/三浦贵大Takahir...2015/日本/剧情');
INSERT INTO `doubantop` VALUES ('123', '杀人回忆', '导演:奉俊昊Joon-hoBong主演:宋康昊Kang-hoSong/金相庆Sang-kyun...2003/韩国/犯罪剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('124', '7号房的礼物', '导演:李焕庆Hwan-kyeongLee主演:柳承龙Seung-yongRyoo/朴信惠Shi...2013/韩国/剧情喜剧家庭');
INSERT INTO `doubantop` VALUES ('125', '神偷奶爸', '导演:皮艾尔·柯芬PierreCoffin/克里斯·雷纳德ChrisRenaud主演:...2010/美国法国/喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('126', '借东西的小人阿莉埃蒂', '导演:米林宏昌HiromasaYonebayashi主演:志田未来MiraiShida/神木...2010/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('127', '萤火之森', '导演:大森贵弘TakahiroOmori主演:佐仓绫音AyaneSakura/内山昂辉K...2011/日本/剧情爱情动画奇幻');
INSERT INTO `doubantop` VALUES ('128', '唐伯虎点秋香', '导演:李力持Lik-ChiLee主演:周星驰StephenChow/巩俐LiGong/陈...1993/香港/喜剧爱情古装');
INSERT INTO `doubantop` VALUES ('129', '超能陆战队', '导演:唐·霍尔DonHall/克里斯·威廉姆斯ChrisWilliams主演:斯科特...2014/美国/喜剧动作科幻动画冒险');
INSERT INTO `doubantop` VALUES ('130', '蝙蝠侠：黑暗骑士崛起', '导演:克里斯托弗·诺兰ChristopherNolan主演:克里斯蒂安·贝尔Christ...2012/美国英国/剧情动作科幻犯罪惊悚');
INSERT INTO `doubantop` VALUES ('131', '怪兽电力公司', '导演:彼特·道格特PeteDocter/大卫·斯沃曼DavidSilverman主演:约...2001/美国/儿童喜剧动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('132', '岁月神偷', '导演:罗启锐AlexLaw主演:吴君如SandraNg/任达华SimonYam/钟绍...2010/香港中国大陆/剧情家庭');
INSERT INTO `doubantop` VALUES ('133', '电锯惊魂', '导演:詹姆斯·温JamesWan主演:雷·沃纳尔LeighWhannell/加利·艾...2004/美国/悬疑惊悚恐怖');
INSERT INTO `doubantop` VALUES ('134', '七武士', '导演:黑泽明AkiraKurosawa主演:三船敏郎ToshirMifune/志村乔...1954/日本/动作冒险剧情');
INSERT INTO `doubantop` VALUES ('135', '谍影重重3', '导演:保罗·格林格拉斯PaulGreengrass主演:马特·达蒙MattDamon/...2007/美国德国/动作悬疑惊悚');
INSERT INTO `doubantop` VALUES ('136', '真爱至上', '导演:理查德·柯蒂斯RichardCurtis主演:休·格兰特HughGrant/柯林...2003/英国美国法国/喜剧剧情爱情');
INSERT INTO `doubantop` VALUES ('137', '疯狂原始人', '导演:科克·德·米科KirkDeMicco/克里斯·桑德斯ChrisSanders主演...2013/美国/喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('138', '无人知晓', '导演:是枝裕和HirokazuKoreeda主演:柳乐优弥YyaYagira/北浦爱...2004/日本/剧情');
INSERT INTO `doubantop` VALUES ('139', '喜宴', '导演:李安AngLee主演:赵文瑄WinstonChao/郎雄SihungLung/归亚...1993/台湾美国/剧情喜剧爱情同性家庭');
INSERT INTO `doubantop` VALUES ('140', '萤火虫之墓', '导演:高畑勋IsaoTakahata主演:辰己努/白石绫乃/志乃原良子1988/日本/动画剧情战争');
INSERT INTO `doubantop` VALUES ('141', '东邪西毒', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/林青霞Brigitte...1994/香港台湾/剧情动作爱情武侠古装');
INSERT INTO `doubantop` VALUES ('142', '英雄本色', '导演:吴宇森JohnWoo主演:周润发Yun-FatChow/狄龙LungTi/张国...1986/香港/动作犯罪');
INSERT INTO `doubantop` VALUES ('143', '贫民窟的百万富翁', '导演:丹尼·鲍尔DannyBoyle/洛芙琳·坦丹LoveleenTandan主演:戴夫...2008/英国美国/剧情爱情');
INSERT INTO `doubantop` VALUES ('144', '黑天鹅', '导演:达伦·阿罗诺夫斯基DarrenAronofsky主演:娜塔莉·波特曼Natalie...2010/美国/剧情惊悚');
INSERT INTO `doubantop` VALUES ('145', '记忆碎片', '导演:克里斯托弗·诺兰ChristopherNolan主演:盖·皮尔斯GuyPearce/...2000/美国/犯罪剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('146', '血战钢锯岭', '导演:梅尔·吉布森MelGibson主演:安德鲁·加菲尔德AndrewGarfield/...2016/美国澳大利亚/剧情传记历史战争');
INSERT INTO `doubantop` VALUES ('147', '心迷宫', '导演:忻钰坤YukunXin主演:霍卫民WeiminHuo/王笑天XiaotianWang...2014/中国大陆/剧情犯罪悬疑');
INSERT INTO `doubantop` VALUES ('148', '傲慢与偏见', '导演:乔·怀特JoeWright主演:凯拉·奈特莉KeiraKnightley/马修·...2005/法国英国美国/剧情爱情');
INSERT INTO `doubantop` VALUES ('149', '时空恋旅人', '导演:理查德·柯蒂斯RichardCurtis主演:多姆纳尔·格里森DomhnallGl...2013/英国/喜剧爱情奇幻');
INSERT INTO `doubantop` VALUES ('150', '荒蛮故事', '导演:达米安·斯兹弗隆DamiánSzifron主演:达里奥·葛兰帝内提Darío...2014/阿根廷西班牙/剧情喜剧犯罪');
INSERT INTO `doubantop` VALUES ('151', '雨人', '导演:巴瑞·莱文森BarryLevinson主演:达斯汀·霍夫曼DustinHoffman...1988/美国/剧情');
INSERT INTO `doubantop` VALUES ('152', '纵横四海', '导演:吴宇森JohnWoo主演:周润发Yun-FatChow/张国荣LeslieCheung...1991/香港/剧情喜剧动作犯罪');
INSERT INTO `doubantop` VALUES ('153', '教父3', '导演:弗朗西斯·福特·科波拉FrancisFordCoppola主演:阿尔·帕西诺A...1990/美国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('154', '达拉斯买家俱乐部', '导演:让-马克·瓦雷Jean-MarcVallée主演:马修·麦康纳MatthewMcCon...2013/美国/剧情传记同性');
INSERT INTO `doubantop` VALUES ('155', '玩具总动员3', '导演:李·昂克里奇LeeUnkrich主演:汤姆·汉克斯TomHanks/蒂姆·艾...2010/美国/喜剧动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('156', '卢旺达饭店', '导演:特瑞·乔治TerryGeorge主演:唐·钱德尔DonCheadle/苏菲·奥...2004/英国南非意大利美国/剧情历史战争');
INSERT INTO `doubantop` VALUES ('157', '完美的世界', '导演:克林特·伊斯特伍德ClintEastwood主演:凯文·科斯特纳KevinCos...1993/美国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('158', '花样年华', '导演:王家卫KarWaiWong主演:梁朝伟TonyLeungChiuWai/张曼玉Ma...2000/香港/剧情爱情');
INSERT INTO `doubantop` VALUES ('159', '海边的曼彻斯特', '导演:肯尼斯·罗纳根KennethLonergan主演:卡西·阿弗莱克CaseyAffle...2016/美国/剧情家庭');
INSERT INTO `doubantop` VALUES ('160', '海洋', '导演:雅克·贝汉JacquesPerrin/雅克·克鲁奥德JacquesCluzaud主演:...2009/法国瑞士西班牙美国阿联酋/纪录片');
INSERT INTO `doubantop` VALUES ('161', '恋恋笔记本', '导演:尼克·卡索维茨NickCassavetes主演:瑞恩·高斯林RyanGosling/...2004/美国/剧情爱情');
INSERT INTO `doubantop` VALUES ('162', '虎口脱险', '导演:杰拉尔·乌里GérardOury主演:路易·德·菲耐斯LouisdeFunès...1966/法国英国/喜剧战争');
INSERT INTO `doubantop` VALUES ('163', '你看起来好像很好吃', '导演:藤森雅也MasayaFujimori主演:山口胜平KappeiYamaguchi/爱河...2010/日本/剧情动画儿童');
INSERT INTO `doubantop` VALUES ('164', '二十二', '导演:郭柯KeGuo主演:2015/中国大陆/纪录片');
INSERT INTO `doubantop` VALUES ('165', '被解救的姜戈', '导演:昆汀·塔伦蒂诺QuentinTarantino主演:杰米·福克斯JamieFoxx/...2012/美国/剧情动作西部冒险');
INSERT INTO `doubantop` VALUES ('166', '头脑特工队', '导演:彼特·道格特PeteDocter/罗纳尔多·德尔·卡门RonaldoDelCarmen&nb...2015/美国/喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('167', '无敌破坏王', '导演:瑞奇·莫尔RichMoore主演:约翰·C·赖利JohnC.Reilly/萨拉...2012/美国/喜剧动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('168', '冰川时代', '导演:卡洛斯·沙尔丹哈CarlosSaldanha/克里斯·韦奇ChrisWedge主演...2002/美国/喜剧动画冒险');
INSERT INTO `doubantop` VALUES ('169', '燃情岁月', '导演:爱德华·兹威克EdwardZwick主演:布拉德·皮特BradPitt/安东...1994/美国/剧情爱情战争西部');
INSERT INTO `doubantop` VALUES ('170', '你的名字。', '导演:新海诚MakotoShinkai主演:神木隆之介RynosukeKamiki/上...2016/日本/剧情爱情动画');
INSERT INTO `doubantop` VALUES ('171', '雨中曲', '导演:斯坦利·多南StanleyDonen/吉恩·凯利GeneKelly主演:吉恩·...1952/美国/喜剧歌舞爱情');
INSERT INTO `doubantop` VALUES ('172', '我是山姆', '导演:杰茜·尼尔森JessieNelson主演:SeanPenn/DakotaFanning/Mi...2001/美国/剧情家庭');
INSERT INTO `doubantop` VALUES ('173', '三块广告牌', '导演:马丁·麦克唐纳MartinMcDonagh主演:弗兰西斯·麦克多蒙德France...2017/美国英国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('174', '爆裂鼓手', '导演:达米恩·查泽雷DamienChazelle主演:迈尔斯·特勒MilesTeller/...2014/美国/剧情音乐');
INSERT INTO `doubantop` VALUES ('175', '人工智能', '导演:史蒂文·斯皮尔伯格StevenSpielberg主演:海利·乔·奥斯蒙Haley...2001/美国/冒险剧情科幻');
INSERT INTO `doubantop` VALUES ('176', '未麻的部屋', '导演:今敏SatoshiKon主演:岩男润子JunkoIwao/松本梨香RicaMatsu...1997/日本/动画奇幻惊悚');
INSERT INTO `doubantop` VALUES ('177', '穿越时空的少女', '导演:细田守MamoruHosoda主演:仲里依纱RiisaNaka/石田卓也Takuya...2006/日本/剧情爱情科幻动画');
INSERT INTO `doubantop` VALUES ('178', '魂断蓝桥', '导演:茂文·勒鲁瓦MervynLeRoy主演:费雯·丽VivienLeigh/罗伯特·...1940/美国/剧情爱情战争');
INSERT INTO `doubantop` VALUES ('179', '猜火车', '导演:丹尼·博伊尔DannyBoyle主演:伊万·麦克格雷格EwanMcGregor/...1996/英国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('180', '模仿游戏', '导演:莫滕·泰杜姆MortenTyldum主演:本尼迪克特·康伯巴奇BenedictC...2014/英国美国/剧情传记战争同性');
INSERT INTO `doubantop` VALUES ('181', '一个叫欧维的男人决定去死', '导演:汉内斯·赫尔姆HannesHolm主演:罗夫·拉斯加德RolfLassgård...2015/瑞典/剧情');
INSERT INTO `doubantop` VALUES ('182', '房间', '导演:伦尼·阿伯拉罕森LennyAbrahamson主演:布丽·拉尔森BrieLarson...2015/爱尔兰加拿大英国美国/剧情家庭');
INSERT INTO `doubantop` VALUES ('183', '忠犬八公物语', '导演:SeijirKyama主演:山本圭KeiYamamoto/井川比佐志Hisa...1987/日本/剧情');
INSERT INTO `doubantop` VALUES ('184', '完美陌生人', '导演:保罗·格诺维瑟PaoloGenovese主演:马可·贾利尼MarcoGiallini...2016/意大利/剧情喜剧');
INSERT INTO `doubantop` VALUES ('185', '罗生门', '导演:黑泽明AkiraKurosawa主演:三船敏郎ToshirMifune/千秋实...1950/日本/犯罪剧情悬疑');
INSERT INTO `doubantop` VALUES ('186', '恐怖游轮', '导演:克里斯托弗·史密斯ChristopherSmith主演:梅利莎·乔治Melissa...2009/英国澳大利亚/剧情悬疑惊悚');
INSERT INTO `doubantop` VALUES ('187', '魔女宅急便', '导演:宫崎骏HayaoMiyazaki主演:高山南MinamiTakayama/佐久间玲Re...1989/日本/动画奇幻冒险');
INSERT INTO `doubantop` VALUES ('188', '阿飞正传', '导演:王家卫KarWaiWong主演:张国荣LeslieCheung/张曼玉MaggieC...1990/香港/犯罪剧情爱情');
INSERT INTO `doubantop` VALUES ('189', '香水', '导演:汤姆·提克威TomTykwer主演:本·卫肖BenWhishaw/艾伦·瑞克...2006/德国法国西班牙美国/剧情犯罪奇幻');
INSERT INTO `doubantop` VALUES ('190', '哪吒闹海', '导演:严定宪DingxianYan/王树忱ShuchenWang主演:梁正晖Zhenghui...1979/中国大陆/冒险动画奇幻');
INSERT INTO `doubantop` VALUES ('191', '浪潮', '导演:丹尼斯·甘塞尔DennisGansel主演:尤尔根·沃格尔JürgenVogel...2008/德国/剧情惊悚');
INSERT INTO `doubantop` VALUES ('192', '朗读者', '导演:史蒂芬·戴德利StephenDaldry主演:凯特·温丝莱特KateWinslet...2008/美国德国/剧情爱情');
INSERT INTO `doubantop` VALUES ('193', '黑客帝国3：矩阵革命', '导演:AndyWachowski/LarryWachowski主演:基努·里维斯KeanuReeves...2003/美国澳大利亚/动作科幻');
INSERT INTO `doubantop` VALUES ('194', '海街日记', '导演:是枝裕和HirokazuKoreeda主演:绫濑遥HarukaAyase/长泽雅美M...2015/日本/剧情家庭');
INSERT INTO `doubantop` VALUES ('195', '可可西里', '导演:陆川ChuanLu主演:多布杰Duobujie/张磊LeiZhang/亓亮QiL...2004/中国大陆香港/剧情犯罪');
INSERT INTO `doubantop` VALUES ('196', '谍影重重2', '导演:保罗·格林格拉斯PaulGreengrass主演:马特·达蒙MattDamon/...2004/美国德国/动作悬疑惊悚');
INSERT INTO `doubantop` VALUES ('197', '谍影重重', '导演:道格·里曼DougLiman主演:马特·达蒙MattDamon/弗兰卡·波坦...2002/美国德国捷克/动作悬疑惊悚');
INSERT INTO `doubantop` VALUES ('198', '战争之王', '导演:安德鲁·尼科尔AndrewNiccol主演:尼古拉斯·凯奇NicolasCage/...2005/美国法国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('199', '牯岭街少年杀人事件', '导演:杨德昌EdwardYang主演:张震ChenChang/杨静怡LisaYang/张...1991/台湾/剧情犯罪');
INSERT INTO `doubantop` VALUES ('200', '地球上的星星', '导演:阿米尔·汗AamirKhan主演:达席尔·萨法瑞DarsheelSafary/阿...2007/印度/剧情儿童家庭');
INSERT INTO `doubantop` VALUES ('201', '青蛇', '导演:徐克HarkTsui主演:张曼玉MaggieCheung/王祖贤JoeyWang/...1993/香港/剧情爱情奇幻古装');
INSERT INTO `doubantop` VALUES ('202', '一次别离', '导演:阿斯哈·法哈蒂AsgharFarhadi主演:佩曼·莫阿迪PeymanMoadi/...2011/伊朗法国/剧情家庭');
INSERT INTO `doubantop` VALUES ('203', '惊魂记', '导演:AlfredHitchcock主演:JanetLeigh/AnthonyPerkins/VeraMiles1960/美国/悬疑惊悚恐怖');
INSERT INTO `doubantop` VALUES ('204', '疯狂的石头', '导演:宁浩HaoNing主演:郭涛TaoGuo/刘桦HuaLiu/连晋TeddyLin2006/中国大陆香港/喜剧犯罪');
INSERT INTO `doubantop` VALUES ('205', '追随', '导演:克里斯托弗·诺兰ChristopherNolan主演:杰里米·西奥伯德Jeremy...1998/英国/犯罪悬疑惊悚');
INSERT INTO `doubantop` VALUES ('206', '终结者2：审判日', '导演:詹姆斯·卡梅隆JamesCameron主演:阿诺·施瓦辛格ArnoldSchwarz...1991/美国法国/动作科幻');
INSERT INTO `doubantop` VALUES ('207', '源代码', '导演:邓肯·琼斯DuncanJones主演:杰克·吉伦哈尔JakeGyllenhaal/...2011/美国加拿大/科幻悬疑惊悚');
INSERT INTO `doubantop` VALUES ('208', '小萝莉的猴神大叔', '导演:卡比尔·汗KabirKhan主演:萨尔曼·汗SalmanKhan/哈莎莉·马...2015/印度/剧情喜剧动作');
INSERT INTO `doubantop` VALUES ('209', '步履不停', '导演:是枝裕和HirokazuKoreeda主演:阿部宽HiroshiAbe/夏川结衣Yu...2008/日本/剧情家庭');
INSERT INTO `doubantop` VALUES ('210', '初恋这件小事', '导演:普特鹏·普罗萨卡·那·萨克那卡林PuttipongPromsakaNaSakolnakorn/华森·波克彭...2010/泰国/剧情喜剧爱情');
INSERT INTO `doubantop` VALUES ('211', '再次出发之纽约遇见你', '导演:约翰·卡尼JohnCarney主演:凯拉·奈特莉KeiraKnightley/马克...2013/美国/喜剧爱情音乐');
INSERT INTO `doubantop` VALUES ('212', '新龙门客栈', '导演:李惠民RaymondLee主演:张曼玉MaggieCheung/林青霞Brigitte...1992/香港中国大陆/动作爱情武侠古装');
INSERT INTO `doubantop` VALUES ('213', '撞车', '导演:保罗·哈吉斯PaulHaggis主演:桑德拉·布洛克SandraBullock/...2004/美国德国/犯罪剧情');
INSERT INTO `doubantop` VALUES ('214', '天书奇谭', '导演:王树忱ShuchenWang/钱运达YundaQian主演:丁建华JianhuaDin...1983(中国大陆)/2019(中国大陆重映)/中国大陆/动画奇幻');
INSERT INTO `doubantop` VALUES ('215', '梦之安魂曲', '导演:达伦·阿伦诺夫斯基DarrenAronofsky主演:艾伦·伯斯汀EllenBur...2000/美国/剧情');
INSERT INTO `doubantop` VALUES ('216', '爱在午夜降临前', '导演:理查德·林克莱特RichardLinklater主演:伊桑·霍克EthanHawke...2013/美国希腊/剧情爱情');
INSERT INTO `doubantop` VALUES ('217', '海蒂和爷爷', '导演:阿兰·葛斯彭纳AlainGsponer主演:阿努克·斯特芬AnukSteffen/...2015/德国瑞士南非/剧情冒险家庭');
INSERT INTO `doubantop` VALUES ('218', '无耻混蛋', '导演:QuentinTarantino主演:布拉德·皮特BradPitt/梅拉尼·罗兰M...2009/美国德国/剧情犯罪');
INSERT INTO `doubantop` VALUES ('219', '东京物语', '导演:小津安二郎YasujirOzu主演:笠智众ChishRy/原节...1953/日本/剧情家庭');
INSERT INTO `doubantop` VALUES ('220', '城市之光', '导演:CharlesChaplin主演:查理·卓别林CharlesChaplin/弗吉尼亚·...1931/美国/喜剧剧情爱情');
INSERT INTO `doubantop` VALUES ('221', '绿里奇迹', '导演:FrankDarabont主演:汤姆·汉克斯TomHanks/大卫·摩斯DavidM...1999/美国/犯罪剧情奇幻悬疑');
INSERT INTO `doubantop` VALUES ('222', '彗星来的那一夜', '导演:詹姆斯·沃德·布柯特JamesWardByrkit主演:艾米丽·芭尔多尼Em...2013/美国英国/科幻悬疑惊悚');
INSERT INTO `doubantop` VALUES ('223', '血钻', '导演:爱德华·兹威克EdwardZwick主演:莱昂纳多·迪卡普里奥Leonardo...2006/美国德国/剧情惊悚冒险');
INSERT INTO `doubantop` VALUES ('224', '这个男人来自地球', '导演:理查德·沙因克曼RichardSchenkman主演:大卫·李·史密斯David...2007/美国/剧情科幻');
INSERT INTO `doubantop` VALUES ('225', 'E.T. 外星人', '导演:StevenSpielberg主演:HenryThomas/DeeWallace/RobertMacNa...1982/美国/剧情科幻');
INSERT INTO `doubantop` VALUES ('226', '末路狂花', '导演:雷德利·斯科特RidleyScott主演:吉娜·戴维斯GeenaDavis/苏...1991/美国法国/犯罪剧情惊悚');
INSERT INTO `doubantop` VALUES ('227', '2001太空漫游', '导演:斯坦利·库布里克StanleyKubrick主演:凯尔·杜拉KeirDullea/...1968/英国美国/科幻惊悚冒险');
INSERT INTO `doubantop` VALUES ('228', '聚焦', '导演:托马斯·麦卡锡ThomasMcCarthy主演:马克·鲁弗洛MarkRuffalo/...2015/美国/剧情传记');
INSERT INTO `doubantop` VALUES ('229', '勇闯夺命岛', '导演:迈克尔·贝MichaelBay主演:肖恩·康纳利SeanConnery/尼古拉...1996/美国/动作冒险');
INSERT INTO `doubantop` VALUES ('230', '变脸', '导演:吴宇森JohnWoo主演:约翰·特拉沃尔塔JohnTravolta/尼古拉斯...1997/美国/动作科幻犯罪惊悚');
INSERT INTO `doubantop` VALUES ('231', '发条橙', '导演:StanleyKubrick主演:MalcolmMcDowell/PatrickMagee/Michael...1971/英国美国/犯罪剧情科幻');
INSERT INTO `doubantop` VALUES ('232', '秒速5厘米', '导演:新海诚MakotoShinkai主演:水桥研二KenjiMizuhashi/近藤好美...2007/日本/动画剧情爱情');
INSERT INTO `doubantop` VALUES ('233', '黄金三镖客', '导演:SergioLeone主演:ClintEastwood/EliWallach/LeeVanCleef1966/意大利西班牙西德/冒险西部');
INSERT INTO `doubantop` VALUES ('234', '黑鹰坠落', '导演:雷德利·斯科特RidleyScott主演:乔什·哈奈特JoshHartnett/...2001/美国/动作历史战争');
INSERT INTO `doubantop` VALUES ('235', '功夫', '导演:周星驰StephenChow主演:周星驰StephenChow/元秋QiuYuen/...2004/中国大陆香港/动作喜剧犯罪奇幻');
INSERT INTO `doubantop` VALUES ('236', '非常嫌疑犯', '导演:布莱恩·辛格BryanSinger主演:史蒂芬·鲍德温StephenBaldwin/...1995/德国美国/剧情犯罪悬疑惊悚');
INSERT INTO `doubantop` VALUES ('237', '卡萨布兰卡', '导演:迈克尔·柯蒂兹MichaelCurtiz主演:亨弗莱·鲍嘉HumphreyBogart...1942/美国/剧情爱情战争');
INSERT INTO `doubantop` VALUES ('238', '我爱你', '导演:秋昌民Chang-minChoo主演:宋在河Jae-hoSong/李顺载Soon-jae...2011/韩国/剧情爱情');
INSERT INTO `doubantop` VALUES ('239', '国王的演讲', '导演:汤姆·霍珀TomHooper主演:柯林·菲尔斯ColinFirth/杰弗里·...2010/英国澳大利亚美国/剧情传记历史');
INSERT INTO `doubantop` VALUES ('240', '千钧一发', '导演:安德鲁·尼科尔AndrewNiccol主演:伊桑·霍克EthanHawke/乌玛...1997/美国/剧情科幻惊悚');
INSERT INTO `doubantop` VALUES ('241', '美国丽人', '导演:萨姆·门德斯SamMendes主演:凯文·史派西KevinSpacey/安妮特...1999/美国/剧情爱情家庭');
INSERT INTO `doubantop` VALUES ('242', '疯狂的麦克斯4：狂暴之路', '导演:乔治·米勒GeorgeMiller主演:汤姆·哈迪TomHardy/查理兹·塞...2015/澳大利亚美国/动作科幻冒险');
INSERT INTO `doubantop` VALUES ('243', '遗愿清单', '导演:罗伯·莱纳RobReiner主演:杰克·尼科尔森JackNicholson/摩根...2007/美国/冒险喜剧剧情');
INSERT INTO `doubantop` VALUES ('244', '奇迹男孩', '导演:斯蒂芬·卓博斯基StephenChbosky主演:雅各布·特伦布莱JacobTr...2017/美国香港/剧情儿童家庭');
INSERT INTO `doubantop` VALUES ('245', '碧海蓝天', '导演:LucBesson主演:让-马克·巴尔Jean-MarcBarr/让·雷诺JeanRe...1988/法国美国意大利/剧情爱情');
INSERT INTO `doubantop` VALUES ('246', '荒岛余生', '导演:罗伯特·泽米吉斯RobertZemeckis主演:汤姆·汉克斯TomHanks/...2000/美国/冒险剧情');
INSERT INTO `doubantop` VALUES ('247', '驴得水', '导演:周申ShenZhou/刘露LuLiu主演:任素汐SuxiRen/大力DaLi...2016/中国大陆/剧情喜剧');
INSERT INTO `doubantop` VALUES ('248', '枪火', '导演:杜琪峰JohnnieTo主演:吴镇宇FrancisNg/任达华SimonYam/...1999/香港/剧情动作犯罪');
INSERT INTO `doubantop` VALUES ('249', '英国病人', '导演:安东尼·明格拉AnthonyMinghella主演:拉尔夫·费因斯RalphFien...1996/美国英国/爱情剧情战争');
INSERT INTO `doubantop` VALUES ('250', '荒野生存', '导演:西恩·潘SeanPenn主演:埃米尔·赫斯基EmileHirsch/马西娅·...2007/美国/冒险传记剧情');

-- ----------------------------
-- Table structure for jdgoods
-- ----------------------------
DROP TABLE IF EXISTS `jdgoods`;
CREATE TABLE `jdgoods` (
  `id` int(50) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL,
  `PRICE` double(10,2) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of jdgoods
-- ----------------------------
INSERT INTO `jdgoods` VALUES ('1', '荣耀10青春版 幻彩渐变 2400万AI自拍 全网通版4GB+64GB 渐变蓝 移动联通电信4G全面屏 双卡双待', '1299.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('2', '荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '1299.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('3', 'Apple iPhone XR (A2108) 128GB 黑色 移动联通电信4G手机 双卡双待', '5899.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('4', '【KPL官方比赛用机】vivo iQOO 44W超快闪充 8GB+128GB电光蓝 全面屏拍照手机 骁龙855电竞游戏 全网通4G', '3298.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('5', '荣耀V20 胡歌同款 麒麟980芯片 魅眼全视屏 4800万深感相机 6GB+128GB 幻夜黑 移动联通电信4G全面屏', '2799.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('6', 'vivo U1 水滴全面屏 AI智慧拍照手机 3GB+32GB 极光色 移动联通电信全网通4G', '799.00', '12万+');
INSERT INTO `jdgoods` VALUES ('7', 'vivo X27 8GB+256GB大内存 雀羽蓝 4800万AI三摄全面屏拍照手机 移动联通电信全网通4G', '3598.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('8', 'OPPO Reno 全面屏拍照手机 6G+128G 极夜黑 全网通 移动联通电信 双卡双待手机', '2999.00', '200+');
INSERT INTO `jdgoods` VALUES ('9', '小米 红米Redmi Note7 幻彩渐变AI双摄 4GB+64GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '1199.00', '53万+');
INSERT INTO `jdgoods` VALUES ('10', '荣耀畅玩8C两天一充 莱茵护眼 刘海屏 全网通版4GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '899.00', '39万+');
INSERT INTO `jdgoods` VALUES ('11', '黑鲨游戏手机2 8GB+128GB 暗影黑 骁龙855 Magic Press立体操控 塔式全域液冷 全面屏 全网通4G 双卡双待', '3499.00', '3.6万+');
INSERT INTO `jdgoods` VALUES ('12', '小米 红米6 4GB+64GB 流沙金 全网通4G手机 双卡双待', '799.00', '77万+');
INSERT INTO `jdgoods` VALUES ('13', '小米8SE 全面屏智能游戏拍照手机 6GB+64GB 灰色 骁龙710处理器 全网通4G 双卡双待', '1599.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('14', '华为 HUAWEI Mate 20 麒麟980AI智能芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB亮黑色全网通版双4G', '3989.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('15', '小米 红米Redmi 7 幻彩渐变AI双摄 3GB+32GB 梦幻蓝 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '799.00', '4.1万+');
INSERT INTO `jdgoods` VALUES ('16', 'Apple iPhone X (A1865) 64GB 深空灰色 移动联通电信4G手机', '6349.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('17', 'Apple iPhone XS Max (A2104) 256GB 金色 移动联通电信4G手机 双卡双待', '9699.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('18', '荣耀10 GT游戏加速 AIS手持夜景 6GB+64GB 幻夜黑 全网通 移动联通电信4G 双卡双待 游戏', '2198.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('19', 'vivo Z3 6GB+64GB 极光蓝 性能实力派 全面屏游戏手机 移动联通电信全网通4G手机', '1598.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('20', '小米9 xiaomi新品三摄 6GB+128GB全息幻彩蓝 骁龙855 全网通4G 双卡双待 水滴全面屏拍照游戏智能', '2999.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('21', 'Apple iPhone 8 (A1863) 64GB 深空灰色 移动联通电信4G手机', '3799.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('22', 'Apple iPhone 8 Plus (A1864) 64GB 深空灰色 移动联通电信4G手机', '4699.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('23', 'vivo S1 6GB+128GB 冰湖蓝 2480万AI高清自拍 超广角后置三摄拍照手机 移动联通电信全网通4G', '2298.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('24', 'OPPO【预约购机赠1年碎屏险】Reno全面屏拍照手机', '3299.00', '0');
INSERT INTO `jdgoods` VALUES ('25', '小米8青春版 镜面渐变AI双摄 6GB+64GB 梦幻蓝 骁龙 全网通4G 双卡双待 全面屏拍照游戏智能', '1499.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('26', '小米 红米6A AI美颜 3GB+32GB 流沙金 全网通4G手机 双卡双待', '649.00', '79万+');
INSERT INTO `jdgoods` VALUES ('27', '华为 HUAWEI Mate 20 Pro (UD)屏内指纹版麒麟980芯片全面屏超大广角徕卡三摄8GB+128GB翡冷翠全网通双4G', '5489.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('28', '诺基亚 NOKIA X6 6GB+64GB 星空黑 全网通 双卡双待 移动联通电信4G手机', '1099.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('29', '华为 HUAWEI nova 4e 3200万立体美颜AI超广角三摄珍珠屏4GB+128GB幻夜黑全网通版双4G', '1989.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('30', '荣耀Play 全网通版 6GB+64GB 幻夜黑 移动联通电信4G全面屏游戏手机 双卡双待', '1898.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('31', '【千玺代言】华为新品 HUAWEI nova 4 极点全面屏手机 2000万超广角三摄 6GB+128GB 亮黑色 全网通双卡双待', '2789.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('32', 'vivo【新品上市】U1全面屏 AI智慧拍照 双卡双待 4G全网通 大电量智能手机y93 y97 极光色 3GB 32GB', '799.00', '9900+');
INSERT INTO `jdgoods` VALUES ('33', 'OPPO K1 光感屏幕指纹 水滴屏拍照手机 6G+64G 梵星蓝 全网通 移动联通电信4G 双卡双待', '1599.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('34', '三星 Galaxy S10 8GB+128GB皓玉白（SM-G9730）超感官全视屏骁龙855双卡双待全网通4G游戏', '5999.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('35', '华为 HUAWEI 畅享9 Plus 4GB+64GB 极光紫 全网通 四摄超清全面屏大电池 移动联通电信4G 双卡双待', '1399.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('36', '一加手机6T 8GB+128GB 墨岩黑 光感屏幕指纹 高通骁龙845 全面屏双摄游戏手机 全网通4G 双卡双待', '3198.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('37', 'Apple iPhone 7 (A1660) 128G 黑色 移动联通电信4G手机', '3349.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('38', 'Apple iPhone 7 Plus (A1661) 128G 黑色 移动联通电信4G手机', '4199.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('39', '小米 红米Redmi Note7Pro AI双摄 6GB+128GB 暮光金 全网通4G 双卡双待 水滴屏拍照游戏', '1599.00', '4.1万+');
INSERT INTO `jdgoods` VALUES ('40', '华为 HUAWEI P20 Pro 全面屏徕卡三摄游戏手机 6GB+128GB 亮黑色 全网通移动联通电信4G 双卡双待', '4278.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('41', '三星 Galaxy S10+ 8GB+128GB皓玉白（SM-G9750）3D超声波屏下指纹超感官全视屏双卡双待全网通4G游戏', '6999.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('42', '荣耀畅玩8A 6.09英寸珍珠全面屏 震撼大音量 3GB+32GB 幻夜黑 移动联通电信4G全面屏 双卡双待', '799.00', '16万+');
INSERT INTO `jdgoods` VALUES ('43', '荣耀Note10 全网通6G+64G 幻夜黑 移动联通电信4G全面屏手机 双卡双待 游戏手机', '2598.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('44', '小米8屏幕指纹版 6GB+128GB 黑色 全网通4G 双卡双待 全面屏拍照游戏智能手机', '2499.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('45', 'HUAWEI 华为畅享9 3GB+32GB 幻夜黑 高清珍珠屏 AI长续航 全网通标配版 移动联通电信4G', '949.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('46', '小米9 SE 4800万超广角三摄 骁龙712 水滴全面屏 游戏智能拍照手机 6GB+64GB 全息幻彩蓝 全网通4G双卡双待', '1999.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('47', '华为 HUAWEI Mate20X 麒麟980芯片全面屏超微距影像超大广角徕卡三摄6GB+128GB宝石蓝全网通版双4G游戏', '4489.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('48', '魅族 Note9 全面屏游戏拍照手机 4GB+64GB 幻黑 全网通移动联通电信4G 双卡双待', '1398.00', '1.4万+');
INSERT INTO `jdgoods` VALUES ('49', '华为 HUAWEI 畅享 9S 4GB+64GB 极光蓝 全网通 2400万超广角三摄珍珠屏大存储 移动联通电信4G 双卡双待', '1499.00', '9300+');
INSERT INTO `jdgoods` VALUES ('50', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G 双卡双待', '3088.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('51', '荣耀 畅玩7 2GB+16GB 金色 全网通4G手机 双卡双待', '599.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('52', 'Apple iPhone XS (A2100) 64GB 金色 移动联通电信4G手机', '7599.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('53', '华为 HUAWEI 畅享MAX 4GB+64GB 幻夜黑 全网通版 珍珠屏杜比全景声大电池 移动联通电信4G 双卡双待', '1489.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('54', 'OPPO R15x 光感屏幕指纹手机 6G+128G 星云渐变 全网通 移动联通电信4G 双卡双待', '2299.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('55', 'vivo【新品上市】X27 4800万广角夜景三摄 零界全面屏拍照手机 移动联通电信全网通4G 雀羽蓝 8GB+256GB', '3598.00', '1900+');
INSERT INTO `jdgoods` VALUES ('56', '小辣椒 红辣椒7R 6.0英寸 全面屏手机 3GB+32GB 渐变黑 全网通 移动联通电信4G 双卡双待', '560.00', '4800+');
INSERT INTO `jdgoods` VALUES ('57', 'vivo iQOO 水滴全面屏 超广角AI三摄拍照 高通骁龙855 4G全网通 电竞游戏 智能手机 熔岩橙 8GB 128GB', '3298.00', '1.4万+');
INSERT INTO `jdgoods` VALUES ('58', 'Apple iPhone 6s Plus (A1699) 128G 玫瑰金色 移动联通电信4G手机', '3099.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('59', '魅族 15 全面屏手机 全网通公开版 4GB+64GB 砚黑 移动联通电信4G手机 双卡双待', '1198.00', '二手有售');
INSERT INTO `jdgoods` VALUES ('60', '三星 Galaxy S10e 6GB+128GB 炭晶黑（SM-G9700）超感官全视屏 骁龙855 双卡双待 全网通4G', '4999.00', '二手有售');
