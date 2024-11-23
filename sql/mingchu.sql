/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : localhost:3306
 Source Schema         : mingchu

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 23/11/2024 18:08:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for canteen
-- ----------------------------
DROP TABLE IF EXISTS `canteen`;
CREATE TABLE `canteen`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canteenname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `safemanager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contactphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `validduration` date NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `school`(`school`) USING BTREE,
  INDEX `city`(`city`) USING BTREE,
  INDEX `area`(`area`) USING BTREE,
  INDEX `canteenname`(`canteenname`) USING BTREE,
  CONSTRAINT `area` FOREIGN KEY (`area`) REFERENCES `school` (`area`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `city` FOREIGN KEY (`city`) REFERENCES `school` (`city`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `school` FOREIGN KEY (`school`) REFERENCES `school` (`name`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of canteen
-- ----------------------------
INSERT INTO `canteen` VALUES (2, '二食堂', '马杰', '123456789', '2024-12-03', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `canteen` VALUES (15, '一食堂', '仇春山', '123123123', '2024-01-02', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `canteen` VALUES (17, '三食堂', '龙飞羽', '995672451', '2024-01-02', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `canteen` VALUES (18, '四食堂', '仇春山', '123456781', '2024-01-22', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `canteen` VALUES (20, '一食堂', '你好', '123456', '2024-01-22', '四川大学望双流校区', NULL, NULL);
INSERT INTO `canteen` VALUES (21, '一食堂', 'jjm11', '123456', '2024-01-22', '彭水县职业教育中心', '重庆市', '彭水县');
INSERT INTO `canteen` VALUES (22, '西园一食堂', '你好', '123-456-789', '2024-01-23', '建明大学', NULL, NULL);

-- ----------------------------
-- Table structure for complaints
-- ----------------------------
DROP TABLE IF EXISTS `complaints`;
CREATE TABLE `complaints`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complaint_merchant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_info_id` int(11) NULL DEFAULT NULL,
  `complainant_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_charge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `in_chargephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `response_complaint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complain_date` datetime NULL DEFAULT NULL,
  `if_handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complainant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchant_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of complaints
-- ----------------------------
INSERT INTO `complaints` VALUES (2, '杭州科技有限公司', '浙江省杭州市西湖区古墩路555号', 3, '17', '杜德刚', '987654321', '食物味道太差，服务态度也很差。', NULL, NULL, '2024-12-10 10:30:00', '未处理', '你好', '商家电话2', '杭州市', '西湖区');
INSERT INTO `complaints` VALUES (3, '长沙新世纪科技有限公司', '湖南省长沙市岳麓区麓谷大道9号', 4, '18', '杜德刚', '123456789', '投诉内容3', NULL, NULL, '2024-12-11 12:15:00', '未处理', '你好', '商家电话3', '长沙市', '岳麓区');
INSERT INTO `complaints` VALUES (4, '沈阳智慧科技有限公司', '辽宁省沈阳市沈河区和平北大街135号', 5, '2', '杜德刚', '987654321', '食物质量差，卫生状况不佳。', NULL, NULL, '2024-12-12 14:20:00', '未处理', '你好', '商家电话4', '沈阳市', '沈河区');
INSERT INTO `complaints` VALUES (5, '西安创业科技有限公司', '陕西省西安市雁塔区丈八路9号', 6, '3', '杜德刚', '123456789', '服务太慢，等了一个小时才上菜。', NULL, NULL, '2024-12-13 16:30:00', '未处理', '你好', '商家电话5', '西安市', '雁塔区');
INSERT INTO `complaints` VALUES (6, '长春新科技有限公司', '吉林省长春市朝阳区二道街456号', 7, '3', '杜德刚', '987654321', '投诉内容6', NULL, NULL, '2024-12-14 18:45:00', '未处理', '你好', '商家电话6', '长春市', '朝阳区');
INSERT INTO `complaints` VALUES (7, '哈尔滨先进科技有限公司', '黑龙江省哈尔滨市南岗区红旗大街123号', 8, '3', '杜德刚', '123456789', '食物口感差，味道不正宗。', NULL, NULL, '2024-12-15 20:10:00', '未处理', '你好', '商家电话7', '哈尔滨市', '南岗区');
INSERT INTO `complaints` VALUES (8, '昆明创新科技有限公司', '云南省昆明市官渡区昆明经济技术开发区', 9, '4', '杜德刚', '987654321', '服务态度极差，完全不愿解决问题。', NULL, NULL, '2024-12-16 22:25:00', '未处理', '你好', '商家电话8', '昆明市', '官渡区');
INSERT INTO `complaints` VALUES (9, '福州智能科技有限公司', '福建省福州市仓山区建新镇金山工业园区', 10, '5', '杜德刚', '123456789', '投诉内容9', NULL, NULL, '2024-12-17 00:40:00', '未处理', '你好', '商家电话9', '福州市', '仓山区');
INSERT INTO `complaints` VALUES (10, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 11, '6', '杜德刚', '987654321', '食物质量差，感觉有食材过期。', NULL, NULL, '2024-12-18 02:55:00', '未处理', '你好', '商家电话10', '太原市', '小店区');
INSERT INTO `complaints` VALUES (11, '合肥创业科技有限公司', '安徽省合肥市包河区逍遥津西路56号', 12, '7', '杜德刚', '123456789', '服务慢，态度差，不愿理会顾客。', NULL, NULL, '2024-12-19 05:10:00', '未处理', '你好', '商家电话11', '合肥市', '包河区');
INSERT INTO `complaints` VALUES (12, '重庆智慧科技有限公司', '重庆市渝北区龙溪街道康庄路68号', 13, '8', '杜德刚', '987654321', '投诉内容12', NULL, NULL, '2024-12-20 07:25:00', '未处理', '你好', '商家电话12', '重庆市', '渝北区');
INSERT INTO `complaints` VALUES (13, '南宁创新科技有限公司', '广西省南宁市青秀区民族大道23号', 14, '9', '杜德刚', '123456789', '食物味道差，感觉是用了劣质原料。', NULL, NULL, '2024-12-21 09:40:00', '未处理', '你好', '商家电话13', '南宁市', '青秀区');
INSERT INTO `complaints` VALUES (14, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 15, '10', '杜德刚', '987654321', '服务态度恶劣，完全不顾客户感受。', NULL, NULL, '2024-12-22 11:55:00', '未处理', '你好', '商家电话14', '太原市', '小店区');
INSERT INTO `complaints` VALUES (15, '南京智能科技有限公司', '江苏省南京市鼓楼区中央路100号', 16, '11', '杜德刚', '123456789', '投诉内容15', NULL, NULL, '2024-12-23 14:10:00', '未处理', '你好', '商家电话15', '南京市', '鼓楼区');
INSERT INTO `complaints` VALUES (16, '乌鲁木齐创新科技有限公司', '新疆乌鲁木齐市天山区友谊路88号', 17, '12', '杜德刚', '987654321', '食物口感不好，感觉没有新鲜感。', NULL, NULL, '2024-12-24 16:25:00', '未处理', '你好', '商家电话16', '乌鲁木齐市', '天山区');
INSERT INTO `complaints` VALUES (17, '海口创业科技有限公司', '海南省海口市龙华区国贸大道699号', 18, '13', '杜德刚', '123456789', '服务态度恶劣，完全不尊重客户。', NULL, NULL, '2024-12-25 18:40:00', '未处理', '你好', '商家电话17', '海口市', '龙华区');
INSERT INTO `complaints` VALUES (18, '石家庄智慧科技有限公司', '河北省石家庄市长安区中山东路12号', 19, '14', '杜德刚', '987654321', '投诉内容18', NULL, NULL, '2024-12-26 20:55:00', '未处理', '你好', '商家电话18', '石家庄市', '长安区');
INSERT INTO `complaints` VALUES (20, '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', 21, '16', '杜德刚', '987654321', '服务太慢，等了一个小时才有人理我。', NULL, NULL, '2024-12-28 01:25:00', '未处理', '你好', '商家电话20', '南昌市', '青山湖区');
INSERT INTO `complaints` VALUES (22, '杭州科技有限公司', '浙江省杭州市西湖区古墩路555号', 2, '2', '杜德刚', '987654321', '食物味道太差，服务态度也很差。', NULL, NULL, '2024-12-10 10:30:00', '未处理', '你好', '商家电话2', '杭州市', '西湖区');
INSERT INTO `complaints` VALUES (23, '长沙新世纪科技有限公司', '湖南省长沙市岳麓区麓谷大道9号', 2, '2', '杜德刚', '123456789', '投诉内容3', NULL, NULL, '2024-12-11 12:15:00', '未处理', '你好', '商家电话3', '长沙市', '岳麓区');
INSERT INTO `complaints` VALUES (24, '沈阳智慧科技有限公司', '辽宁省沈阳市沈河区和平北大街135号', 3, '2', '杜德刚', '987654321', '食物质量差，卫生状况不佳。', NULL, NULL, '2024-12-12 14:20:00', '未处理', '你好', '商家电话4', '沈阳市', '沈河区');
INSERT INTO `complaints` VALUES (25, '西安创业科技有限公司', '陕西省西安市雁塔区丈八路9号', 4, '3', '杜德刚', '123456789', '服务太慢，等了一个小时才上菜。', NULL, NULL, '2024-12-13 16:30:00', '未处理', '你好', '商家电话5', '西安市', '雁塔区');
INSERT INTO `complaints` VALUES (26, '长春新科技有限公司', '吉林省长春市朝阳区二道街456号', 4, '3', '杜德刚', '987654321', '投诉内容6', NULL, NULL, '2024-12-14 18:45:00', '未处理', '你好', '商家电话6', '长春市', '朝阳区');
INSERT INTO `complaints` VALUES (27, '哈尔滨先进科技有限公司', '黑龙江省哈尔滨市南岗区红旗大街123号', 5, '4', '杜德刚', '123456789', '食物口感差，味道不正宗。', NULL, NULL, '2024-12-15 20:10:00', '未处理', '你好', '商家电话7', '哈尔滨市', '南岗区');
INSERT INTO `complaints` VALUES (28, '昆明创新科技有限公司', '云南省昆明市官渡区昆明经济技术开发区', 5, '4', '杜德刚', '987654321', '服务态度极差，完全不愿解决问题。', NULL, NULL, '2024-12-16 22:25:00', '未处理', '你好', '商家电话8', '昆明市', '官渡区');
INSERT INTO `complaints` VALUES (29, '福州智能科技有限公司', '福建省福州市仓山区建新镇金山工业园区', 5, '5', '杜德刚', '123456789', '投诉内容9', NULL, NULL, '2024-12-17 00:40:00', '未处理', '你好', '商家电话9', '福州市', '仓山区');
INSERT INTO `complaints` VALUES (30, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 5, '6', '杜德刚', '987654321', '食物质量差，感觉有食材过期。', NULL, NULL, '2024-12-18 02:55:00', '未处理', '你好', '商家电话10', '太原市', '小店区');
INSERT INTO `complaints` VALUES (31, '合肥创业科技有限公司', '安徽省合肥市包河区逍遥津西路56号', 6, '7', '杜德刚', '123456789', '服务慢，态度差，不愿理会顾客。', NULL, NULL, '2024-12-19 05:10:00', '未处理', '你好', '商家电话11', '合肥市', '包河区');
INSERT INTO `complaints` VALUES (32, '重庆智慧科技有限公司', '重庆市渝北区龙溪街道康庄路68号', 6, '8', '杜德刚', '987654321', '投诉内容12', NULL, NULL, '2024-12-20 07:25:00', '未处理', '你好', '商家电话12', '重庆市', '渝北区');
INSERT INTO `complaints` VALUES (33, '南宁创新科技有限公司', '广西省南宁市青秀区民族大道23号', 7, '9', '杜德刚', '123456789', '食物味道差，感觉是用了劣质原料。', NULL, NULL, '2024-12-21 09:40:00', '未处理', '你好', '商家电话13', '南宁市', '青秀区');
INSERT INTO `complaints` VALUES (34, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 7, '10', '杜德刚', '987654321', '服务态度恶劣，完全不顾客户感受。', NULL, NULL, '2024-12-22 11:55:00', '未处理', '你好', '商家电话14', '太原市', '小店区');
INSERT INTO `complaints` VALUES (35, '南京智能科技有限公司', '江苏省南京市鼓楼区中央路100号', 7, '11', '杜德刚', '123456789', '投诉内容15', NULL, NULL, '2024-12-23 14:10:00', '未处理', '你好', '商家电话15', '南京市', '鼓楼区');
INSERT INTO `complaints` VALUES (36, '乌鲁木齐创新科技有限公司', '新疆乌鲁木齐市天山区友谊路88号', 7, '12', '杜德刚', '987654321', '食物口感不好，感觉没有新鲜感。', 'http://localhost:8087/file/downloadd/1705914348468_IMG_20171125_142025.jpg', NULL, '2024-12-24 16:25:00', '已处理', '你好', '商家电话16', '乌鲁木齐市', '天山区');
INSERT INTO `complaints` VALUES (37, '海口创业科技有限公司', '海南省海口市龙华区国贸大道699号', 7, '13', '杜德刚', '123456789', '服务态度恶劣，完全不尊重客户。', NULL, NULL, '2024-12-25 18:40:00', '已处理', '你好', '商家电话17', '海口市', '龙华区');
INSERT INTO `complaints` VALUES (38, '石家庄智慧科技有限公司', '河北省石家庄市长安区中山东路12号', 12, '14', '杜德刚', '987654321', '投诉内容18', NULL, NULL, '2024-12-26 20:55:00', '已处理', '你好', '商家电话18', '石家庄市', '长安区');
INSERT INTO `complaints` VALUES (40, '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', 15, '16', '杜德刚', '987654321', '服务太慢，等了一个小时才有人理我。', NULL, NULL, '2024-12-28 01:25:00', '已处理', '你好', '商家电话20', '南昌市', '青山湖区');
INSERT INTO `complaints` VALUES (41, '杭州科技有限公司', '浙江省杭州市西湖区古墩路555号', 3, '17', '杜德刚', '987654321', '食物味道太差，服务态度也很差。', '', '', '2024-12-10 10:30:00', '未处理', '你好', '商家电话2', '杭州市', '西湖区');
INSERT INTO `complaints` VALUES (42, '长沙新世纪科技有限公司', '湖南省长沙市岳麓区麓谷大道9号', 4, '18', '杜德刚', '123456789', '投诉内容3', '', '', '2024-12-11 12:15:00', '未处理', '你好', '商家电话3', '长沙市', '岳麓区');
INSERT INTO `complaints` VALUES (43, '沈阳智慧科技有限公司', '辽宁省沈阳市沈河区和平北大街135号', 5, '2', '杜德刚', '987654321', '食物质量差，卫生状况不佳。', '', '', '2024-12-12 14:20:00', '未处理', '你好', '商家电话4', '沈阳市', '沈河区');
INSERT INTO `complaints` VALUES (44, '西安创业科技有限公司', '陕西省西安市雁塔区丈八路9号', 6, '3', '杜德刚', '123456789', '服务太慢，等了一个小时才上菜。', '', '', '2024-12-13 16:30:00', '未处理', '你好', '商家电话5', '西安市', '雁塔区');
INSERT INTO `complaints` VALUES (45, '长春新科技有限公司', '吉林省长春市朝阳区二道街456号', 7, '3', '杜德刚', '987654321', '投诉内容6', '', '', '2024-12-14 18:45:00', '未处理', '你好', '商家电话6', '长春市', '朝阳区');
INSERT INTO `complaints` VALUES (46, '哈尔滨先进科技有限公司', '黑龙江省哈尔滨市南岗区红旗大街123号', 8, '3', '杜德刚', '123456789', '食物口感差，味道不正宗。', '', '', '2024-12-15 20:10:00', '未处理', '你好', '商家电话7', '哈尔滨市', '南岗区');
INSERT INTO `complaints` VALUES (47, '昆明创新科技有限公司', '云南省昆明市官渡区昆明经济技术开发区', 9, '4', '杜德刚', '987654321', '服务态度极差，完全不愿解决问题。', '', '', '2024-12-16 22:25:00', '未处理', '你好', '商家电话8', '昆明市', '官渡区');
INSERT INTO `complaints` VALUES (48, '福州智能科技有限公司', '福建省福州市仓山区建新镇金山工业园区', 10, '5', '杜德刚', '123456789', '投诉内容9', '', '', '2024-12-17 00:40:00', '未处理', '你好', '商家电话9', '福州市', '仓山区');
INSERT INTO `complaints` VALUES (49, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 11, '6', '杜德刚', '987654321', '食物质量差，感觉有食材过期。', '', '', '2024-12-18 02:55:00', '未处理', '你好', '商家电话10', '太原市', '小店区');
INSERT INTO `complaints` VALUES (50, '合肥创业科技有限公司', '安徽省合肥市包河区逍遥津西路56号', 12, '7', '杜德刚', '123456789', '服务慢，态度差，不愿理会顾客。', '', '', '2024-12-19 05:10:00', '未处理', '你好', '商家电话11', '合肥市', '包河区');
INSERT INTO `complaints` VALUES (51, '重庆智慧科技有限公司', '重庆市渝北区龙溪街道康庄路68号', 13, '8', '杜德刚', '987654321', '投诉内容12', '', '', '2024-12-20 07:25:00', '未处理', '你好', '商家电话12', '重庆市', '渝北区');
INSERT INTO `complaints` VALUES (52, '南宁创新科技有限公司', '广西省南宁市青秀区民族大道23号', 14, '9', '杜德刚', '123456789', '食物味道差，感觉是用了劣质原料。', '', '', '2024-12-21 09:40:00', '未处理', '你好', '商家电话13', '南宁市', '青秀区');
INSERT INTO `complaints` VALUES (53, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 15, '10', '杜德刚', '987654321', '服务态度恶劣，完全不顾客户感受。', '', '', '2024-12-22 11:55:00', '未处理', '你好', '商家电话14', '太原市', '小店区');
INSERT INTO `complaints` VALUES (54, '南京智能科技有限公司', '江苏省南京市鼓楼区中央路100号', 16, '11', '杜德刚', '123456789', '投诉内容15', '', '', '2024-12-23 14:10:00', '未处理', '你好', '商家电话15', '南京市', '鼓楼区');
INSERT INTO `complaints` VALUES (55, '乌鲁木齐创新科技有限公司', '新疆乌鲁木齐市天山区友谊路88号', 17, '12', '杜德刚', '987654321', '食物口感不好，感觉没有新鲜感。', '', '', '2024-12-24 16:25:00', '未处理', '你好', '商家电话16', '乌鲁木齐市', '天山区');
INSERT INTO `complaints` VALUES (56, '海口创业科技有限公司', '海南省海口市龙华区国贸大道699号', 18, '13', '杜德刚', '123456789', '服务态度恶劣，完全不尊重客户。', '', '', '2024-12-25 18:40:00', '未处理', '你好', '商家电话17', '海口市', '龙华区');
INSERT INTO `complaints` VALUES (57, '石家庄智慧科技有限公司', '河北省石家庄市长安区中山东路12号', 19, '14', '杜德刚', '987654321', '投诉内容18', '', '', '2024-12-26 20:55:00', '未处理', '你好', '商家电话18', '石家庄市', '长安区');
INSERT INTO `complaints` VALUES (59, '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', 21, '16', '杜德刚', '987654321', '服务太慢，等了一个小时才有人理我。', '', '', '2024-12-28 01:25:00', '未处理', '你好', '商家电话20', '南昌市', '青山湖区');
INSERT INTO `complaints` VALUES (60, '杭州科技有限公司', '浙江省杭州市西湖区古墩路555号', 2, '2', '杜德刚', '987654321', '食物味道太差，服务态度也很差。', '', '', '2024-12-10 10:30:00', '未处理', '你好', '商家电话2', '杭州市', '西湖区');
INSERT INTO `complaints` VALUES (61, '长沙新世纪科技有限公司', '湖南省长沙市岳麓区麓谷大道9号', 2, '2', '杜德刚', '123456789', '投诉内容3', '', '', '2024-12-11 12:15:00', '未处理', '你好', '商家电话3', '长沙市', '岳麓区');
INSERT INTO `complaints` VALUES (62, '沈阳智慧科技有限公司', '辽宁省沈阳市沈河区和平北大街135号', 3, '2', '杜德刚', '987654321', '食物质量差，卫生状况不佳。', '', '', '2024-12-12 14:20:00', '未处理', '你好', '商家电话4', '沈阳市', '沈河区');
INSERT INTO `complaints` VALUES (63, '西安创业科技有限公司', '陕西省西安市雁塔区丈八路9号', 4, '3', '杜德刚', '123456789', '服务太慢，等了一个小时才上菜。', '', '', '2024-12-13 16:30:00', '未处理', '你好', '商家电话5', '西安市', '雁塔区');
INSERT INTO `complaints` VALUES (64, '长春新科技有限公司', '吉林省长春市朝阳区二道街456号', 4, '3', '杜德刚', '987654321', '投诉内容6', '', '', '2024-12-14 18:45:00', '未处理', '你好', '商家电话6', '长春市', '朝阳区');
INSERT INTO `complaints` VALUES (65, '哈尔滨先进科技有限公司', '黑龙江省哈尔滨市南岗区红旗大街123号', 5, '4', '杜德刚', '123456789', '食物口感差，味道不正宗。', '', '', '2024-12-15 20:10:00', '未处理', '你好', '商家电话7', '哈尔滨市', '南岗区');
INSERT INTO `complaints` VALUES (66, '昆明创新科技有限公司', '云南省昆明市官渡区昆明经济技术开发区', 5, '4', '杜德刚', '987654321', '服务态度极差，完全不愿解决问题。', '', '', '2024-12-16 22:25:00', '未处理', '你好', '商家电话8', '昆明市', '官渡区');
INSERT INTO `complaints` VALUES (67, '福州智能科技有限公司', '福建省福州市仓山区建新镇金山工业园区', 5, '5', '杜德刚', '123456789', '投诉内容9', '', '', '2024-12-17 00:40:00', '未处理', '你好', '商家电话9', '福州市', '仓山区');
INSERT INTO `complaints` VALUES (68, '太原新世纪科技有限公司', '山西省太原市小店区迎新西大街303号', 5, '6', '杜德刚', '987654321', '食物质量差，感觉有食材过期。', '', '', '2024-12-18 02:55:00', '未处理', '你好', '商家电话10', '太原市', '小店区');
INSERT INTO `complaints` VALUES (69, '合肥创业科技有限公司', '安徽省合肥市包河区逍遥津西路56号', 6, '7', '杜德刚', '123456789', '服务慢，态度差，不愿理会顾客。', '', '', '2024-12-19 05:10:00', '未处理', '你好', '商家电话11', '合肥市', '包河区');
INSERT INTO `complaints` VALUES (70, '重庆智慧科技有限公司', '重庆市渝北区龙溪街道康庄路68号', 6, '8', '杜德刚', '987654321', '投诉内容12', '', '', '2024-12-20 07:25:00', '未处理', '你好', '商家电话12', '重庆市', '渝北区');
INSERT INTO `complaints` VALUES (71, '南宁创新科技有限公司', '广西省南宁市青秀区民族大道23号', 7, '9', '杜德刚', '123456789', '食物味道差，感觉是用了劣质原料。', '', '', '2024-12-21 09:40:00', '未处理', '你好', '商家电话13', '南宁市', '青秀区');
INSERT INTO `complaints` VALUES (72, '太原新世纪科技有限公司1', '山西省太原市小店区迎新西大街303号', 7, '10', '杜德刚', '987654321', '服务态度恶劣，完全不顾客户感受。', 'http://localhost:8087/file/downloadd/B.png', '', '2024-12-22 11:55:00', '已处理', '你好', '商家电话14', '太原市', '小店区');
INSERT INTO `complaints` VALUES (73, '南京智能科技有限公司', '江苏省南京市鼓楼区中央路100号', 7, '11', '杜德刚', '123456789', '投诉内容15', '', '', '2024-12-23 14:10:00', '已处理', '你好', '商家电话15', '南京市', '鼓楼区');
INSERT INTO `complaints` VALUES (74, '海口创业科技有限公司', '海南省海口市龙华区国贸大道699号', 7, '13', '杜德刚', '123456789', '服务态度恶劣，完全不尊重客户。', '', '', '2024-12-25 18:40:00', '已处理', '你好', '商家电话17', '海口市', '龙华区');
INSERT INTO `complaints` VALUES (75, '乌鲁木齐创新科技有限公司', '新疆乌鲁木齐市天山区友谊路88号', 7, '12', '杜德刚', '987654321', '食物口感不好，感觉没有新鲜感。', '', '1111', '2024-12-24 16:25:00', '已处理', '你好', '商家电话16', '乌鲁木齐市', '天山区');
INSERT INTO `complaints` VALUES (76, '石家庄智慧科技有限公司', '河北省石家庄市长安区中山东路12号', 12, '14', '杜德刚', '987654321', '投诉内容18', '', '', '2024-12-26 20:55:00', '已处理', '你好', '商家电话18', '石家庄市', '长安区');
INSERT INTO `complaints` VALUES (77, '贵阳新世纪科技有限公司', '贵州省贵阳市观山湖区舟岛大道8号', 13, '15', '杜德刚', '123456789', '食物质量太差，有异味。', '', '', '2024-12-27 23:07:00', '已处理', '你好', '商家电话19', '贵阳市', '观山湖区');
INSERT INTO `complaints` VALUES (78, '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', 15, '16', '杜德刚', '987654321', '服务太慢，等了一个小时才有人理我。', '', '', '2024-12-28 01:25:00', '已处理', '你好', '商家电话20', '南昌市', '青山湖区');
INSERT INTO `complaints` VALUES (79, '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', 15, '16', '杜德刚', '987654321', '服务太慢，等了一个小时才有人理我。', '', '', '2024-12-28 01:25:00', '已处理', '你好', '商家电话20', '南昌市', '青山湖区');
INSERT INTO `complaints` VALUES (86, '测试1', '1', 1, '1', '1', '1', '1', '/profile/upload/2024/11/21/OIP-C_20241121151402A003.jpg', '1', '2024-11-21 00:00:00', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for file_upload
-- ----------------------------
DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upload_time` datetime NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pre_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file_upload
-- ----------------------------
INSERT INTO `file_upload` VALUES (1, 'XM05_明厨亮灶子系统项目_模块分工', 'http://localhost:8087/file/download/XM05_明厨亮灶子系统项目_模块分工.doc', 'C:\\Users\\jiao\\Desktop\\明厨亮灶子系统\\vue\\src\\assets\\FileUpload\\XM05_明厨亮灶子系统项目_模块分工.doc', '2024-01-23 23:32:39', 'jjm11', 'jjm11', 'http://localhost:8087/file/preview/1706023959028_XM05_明厨亮灶子系统项目_模块分工.pdf');
INSERT INTO `file_upload` VALUES (2, '计算机网络答疑课', 'http://localhost:8087/file/download/计算机网络答疑课.pptx', 'C:\\Users\\jiao\\Desktop\\明厨亮灶子系统\\vue\\src\\assets\\FileUpload\\计算机网络答疑课.pptx', '2024-01-23 23:32:23', 'jjm11', 'jjm11', 'http://localhost:8087/file/preview/1706023943874_计算机网络答疑课.pdf');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `tpl_web_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前端模板类型（element-ui模版 element-plus模版）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'risk_warning', '风险预警', NULL, NULL, 'RiskWarning', 'crud', 'element-ui', 'com.ruoyi.warning', 'warning', 'warning', '风险预警', 'ruoyi', '0', '/', '{}', 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45', NULL);
INSERT INTO `gen_table` VALUES (2, 'complaints', '投诉信息', NULL, NULL, 'Complaints', 'crud', 'element-ui', 'com.ruoyi.complaints', 'complaints', 'complaints', '投诉信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34', NULL);
INSERT INTO `gen_table` VALUES (3, 'provider_info', '供应商信息', NULL, NULL, 'ProviderInfo', 'crud', 'element-ui', 'com.ruoyi.providerinfo', 'providerinfo', 'providerinfo', '供应商信息', 'ruoyi', '0', '/', '{\"parentMenuId\":2000}', 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', NULL, 'int(11)', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (2, 1, 'tradername', NULL, 'varchar(255)', 'String', 'tradername', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (3, 1, 'city', NULL, 'varchar(255)', 'String', 'city', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (4, 1, 'district', NULL, 'varchar(255)', 'String', 'district', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (5, 1, 'location', NULL, 'varchar(255)', 'String', 'location', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (6, 1, 'secureadmin', NULL, 'varchar(255)', 'String', 'secureadmin', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (7, 1, 'phone', NULL, 'varchar(255)', 'String', 'phone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (8, 1, 'depttype', NULL, 'varchar(255)', 'String', 'depttype', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (9, 1, 'expirationdate', NULL, 'date', 'Date', 'expirationdate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (10, 1, 'licensetype', NULL, 'varchar(255)', 'String', 'licensetype', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'select', '', 10, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (11, 1, 'flag', NULL, 'varchar(255)', 'String', 'flag', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (12, 1, 'remind', NULL, 'varchar(255)', 'String', 'remind', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-11-21 11:09:56', '', '2024-11-21 11:11:45');
INSERT INTO `gen_table_column` VALUES (13, 2, 'id', 'ID', 'int(11)', 'Long', 'id', '1', '1', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (14, 2, 'complaint_merchant', '商家名称', 'varchar(255)', 'String', 'complaintMerchant', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (15, 2, 'merchant_address', '商家地址', 'varchar(255)', 'String', 'merchantAddress', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (16, 2, 'merchant_info_id', '商家信息的ID', 'int(11)', 'Long', 'merchantInfoId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (17, 2, 'complainant_phone', '投诉人电话号码', 'varchar(255)', 'String', 'complainantPhone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (18, 2, 'in_charge', '处理投诉人员姓名', 'varchar(255)', 'String', 'inCharge', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (19, 2, 'in_chargephone', '处理投诉人员电话号码', 'varchar(255)', 'String', 'inChargephone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (20, 2, 'complain_comment', '投诉描述', 'varchar(255)', 'String', 'complainComment', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (21, 2, 'complain_photo', '照片', 'varchar(255)', 'String', 'complainPhoto', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 9, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (22, 2, 'response_complaint', '处理结果', 'varchar(255)', 'String', 'responseComplaint', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (23, 2, 'complain_date', '投诉日期', 'datetime', 'Date', 'complainDate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (24, 2, 'if_handle', '投诉是否已处理', 'varchar(255)', 'String', 'ifHandle', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (25, 2, 'complainant', '投诉人姓名', 'varchar(255)', 'String', 'complainant', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (26, 2, 'merchant_phone', '商家电话号码', 'varchar(255)', 'String', 'merchantPhone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (27, 2, 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (28, 2, 'district', '区域', 'varchar(255)', 'String', 'district', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2024-11-21 13:23:10', '', '2024-11-21 15:00:34');
INSERT INTO `gen_table_column` VALUES (29, 3, 'id', NULL, 'int(10)', 'Integer', 'id', '1', '1', '0', '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (30, 3, 'socialcreditcode', '社会信用代码', 'varchar(255)', 'String', 'socialcreditcode', '1', '0', '0', '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (31, 3, 'providername', '供应商名称', 'varchar(255)', 'String', 'providername', '0', '0', '0', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (32, 3, 'location', '供应商地址', 'varchar(255)', 'String', 'location', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (33, 3, 'juridicalperson', '法定代表人姓名', 'varchar(255)', 'String', 'juridicalperson', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (34, 3, 'businessscope', '经营范围', 'varchar(255)', 'String', 'businessscope', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (35, 3, 'expirationdate', '到期日期', 'varchar(255)', 'String', 'expirationdate', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (36, 3, 'photopath', '照片', 'varchar(255)', 'String', 'photopath', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'imageUpload', '', 8, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (37, 3, 'city', '城市', 'varchar(255)', 'String', 'city', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (38, 3, 'district', '区域', 'varchar(255)', 'String', 'district', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (39, 3, 'providerphone', '联系电话', 'varchar(255)', 'String', 'providerphone', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');
INSERT INTO `gen_table_column` VALUES (40, 3, 'area', '地区', 'varchar(255)', 'String', 'area', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-11-21 13:32:21', '', '2024-11-21 14:10:54');

-- ----------------------------
-- Table structure for ingredient_management
-- ----------------------------
DROP TABLE IF EXISTS `ingredient_management`;
CREATE TABLE `ingredient_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bussinessid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bussinessname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `locationdetail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `locationcity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `locationcounty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bussinesstype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `providername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foodtype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bussinessphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foodname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `innumber` int(11) NULL DEFAULT NULL,
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `bao_day` int(11) NULL DEFAULT NULL,
  `danwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `guoqi` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ingredient_management
-- ----------------------------
INSERT INTO `ingredient_management` VALUES (3, '20', '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', '南昌市', '青山湖区', '幼儿园食堂', '四川展翼农业有限公司', '调味类', '13896889151', '保宁醋', 8290, '入库', '2024-12-06 17:44:40', 200, '毫升', '2024-06-01 20:08:24');
INSERT INTO `ingredient_management` VALUES (9, '20', '南昌智能科技有限公司1', '江西省南昌市青山湖区洪都中大道789号', '南昌市', '青山湖区', '幼儿园食堂', '四川展翼农业有限公司', '粮食类', '15478923451', '米', 500, '出库', '2024-12-23 17:44:44', 365, '公斤', '2024-03-07 20:08:20');
INSERT INTO `ingredient_management` VALUES (18, '20', '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', '南昌市', '青山湖区', '热食类食品制售', '沈阳智慧科技有限公司', '蔬菜类', '13800138000', '白菜', 50, '入库', '2024-01-23 09:25:30', 100, '斤', '2024-05-02 09:25:30');
INSERT INTO `ingredient_management` VALUES (19, '20', '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', '南昌市', '青山湖区', '热食类食品制售', '沈阳智慧科技有限公司', '肉禽类', '13800138000', '鸡肉', 90, '入库', '2024-01-23 09:27:30', 100, '公斤', '2024-05-02 09:27:30');
INSERT INTO `ingredient_management` VALUES (20, '20', '南昌智能科技有限公司', '江西省南昌市青山湖区洪都中大道789号', '南昌市', '青山湖区', '热食类食品制售', '沈阳智慧科技有限公司', '辅料类', '13800138000', '大料', 9, '入库', '2024-01-23 09:29:20', 100, '公斤', '2024-05-02 09:29:20');

-- ----------------------------
-- Table structure for inspection_task
-- ----------------------------
DROP TABLE IF EXISTS `inspection_task`;
CREATE TABLE `inspection_task`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `posttime` datetime NULL DEFAULT NULL COMMENT '发布时间',
  `checktime` datetime NULL DEFAULT NULL COMMENT '抽检时间',
  `publishing_agency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布机构',
  `merchant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被检商户',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户地址',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抽检人员',
  `inspection_agency` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抽检人员所属机构',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抽检结果',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '抽检得分',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '被检商户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of inspection_task
-- ----------------------------
INSERT INTO `inspection_task` VALUES (1, '2024-01-01 12:17:09', NULL, '成都市成华区食品药品监督管理局', '味之绝美蛙鱼头火锅(科华店', '成都市锦江区中纱帽街8号成都远洋太古里东里2层2328', '赵霞', '建设路街道食品药品监督管理所', '待检查', '0', 1);
INSERT INTO `inspection_task` VALUES (2, '2024-01-21 00:42:45', '2024-01-21 00:42:49', NULL, 's', NULL, NULL, NULL, '已完成', '12', NULL);
INSERT INTO `inspection_task` VALUES (5, '2024-01-22 10:56:19', '2024-01-22 10:56:28', NULL, '1', '1', '你好', NULL, '已完成', '90分', NULL);

-- ----------------------------
-- Table structure for mailcode
-- ----------------------------
DROP TABLE IF EXISTS `mailcode`;
CREATE TABLE `mailcode`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `outtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mailcode
-- ----------------------------
INSERT INTO `mailcode` VALUES (6, 'jjm10', '1580626798@qq.com', '030404', '2024-01-17 19:07:07');
INSERT INTO `mailcode` VALUES (7, 'zzy1', '1099106756@qq.com', '935797', '2024-01-17 20:34:49');
INSERT INTO `mailcode` VALUES (8, 'jjm', '1580626798@qq.com', '575264', '2024-01-22 21:44:37');
INSERT INTO `mailcode` VALUES (9, 'jjm12', '1580626798@qq.com', '426379', '2024-01-22 21:45:12');
INSERT INTO `mailcode` VALUES (10, 'jjm11', '1580626798@qq.com', '583247', '2024-01-23 23:13:12');

-- ----------------------------
-- Table structure for meal
-- ----------------------------
DROP TABLE IF EXISTS `meal`;
CREATE TABLE `meal`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `institution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `school`(`school`) USING BTREE,
  INDEX `city`(`city`) USING BTREE,
  INDEX `area`(`area`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meal
-- ----------------------------
INSERT INTO `meal` VALUES ('邱芜1', '四川教育', '校长', '你好', '2024-01-30', 15, '彭水苗族土家族自治幼儿园', '重庆市', '彭水县', NULL);
INSERT INTO `meal` VALUES ('jjm11', '沈阳市智慧科技有限公司', '股东', '一食堂', '2024-01-22', 24, '彭水县职业教育中心', '重庆市', '彭水县', NULL);
INSERT INTO `meal` VALUES ('jjm11', '建明大学', '校长', NULL, '2024-01-23', 25, '建明大学', '成都市', '双流区', '');

-- ----------------------------
-- Table structure for merchant_dish
-- ----------------------------
DROP TABLE IF EXISTS `merchant_dish`;
CREATE TABLE `merchant_dish`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photopath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_dish
-- ----------------------------
INSERT INTO `merchant_dish` VALUES (1, '宫保鸡丁', '50', NULL, '2024-01-21 23:41:45', '段欣瑞');
INSERT INTO `merchant_dish` VALUES (3, '麻婆豆腐', '50', NULL, '2024-01-21 23:42:20', '段欣瑞');
INSERT INTO `merchant_dish` VALUES (5, '1', '1', NULL, '2024-01-22 01:19:52', '1');
INSERT INTO `merchant_dish` VALUES (7, '宫保鸡丁', '12', NULL, '2024-01-22 01:44:04', '11');
INSERT INTO `merchant_dish` VALUES (10, '宫保鸡丁', '12', NULL, '2024-01-22 01:52:45', '12');
INSERT INTO `merchant_dish` VALUES (11, '鱿鱼', '200', '', '2024-01-23 20:40:59', '你好');

-- ----------------------------
-- Table structure for merchant_disinfection
-- ----------------------------
DROP TABLE IF EXISTS `merchant_disinfection`;
CREATE TABLE `merchant_disinfection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `date` datetime NULL DEFAULT NULL COMMENT '消毒日期',
  `disinfection_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消毒方式',
  `num` int(255) NULL DEFAULT NULL COMMENT '数量',
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消毒时长',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经办人员',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商户id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of merchant_disinfection
-- ----------------------------
INSERT INTO `merchant_disinfection` VALUES (1, '2024-01-20 18:16:47', '化学消毒', 280, '60', '刘玉霞', 1, NULL);

-- ----------------------------
-- Table structure for merchant_info
-- ----------------------------
DROP TABLE IF EXISTS `merchant_info`;
CREATE TABLE `merchant_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `security_manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_license_expirationdate` date NULL DEFAULT NULL,
  `annual_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catering_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `legal_person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `register_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `levelcheck_date` datetime NULL DEFAULT NULL,
  `business_license_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `food_license_expirationdate` date NULL DEFAULT NULL,
  `food_license_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `business_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant_info
-- ----------------------------
INSERT INTO `merchant_info` VALUES (2, '杭州科技有限公司', '杜德刚', NULL, '13800138000', '120.15507', '30.274085', '浙江省杭州市西湖区古墩路555号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '幼儿园食堂', '杭州市', '西湖区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (3, '长沙新世纪科技有限公司', '杜德刚', NULL, '13800138000', '112.938814', '28.228209', '湖南省长沙市岳麓区麓谷大道9号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '幼儿园食堂', '长沙市', '岳麓区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (4, '沈阳智慧科技有限公司', '杜德刚', NULL, '13800138000', '123.429096', '41.796767', '辽宁省沈阳市沈河区和平北大街135号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '幼儿园食堂', '沈阳市', '沈河区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (5, '西安创业科技有限公司', '杜德刚', NULL, '13800138000', '108.946297', '34.347436', '陕西省西安市雁塔区丈八路9号', '2021-11-22', 'C', 'http://localhost:8088/video.mp4', '大学高校', '西安市', '雁塔区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (6, '长春新科技有限公司', '杜德刚', NULL, '13800138000', '125.323544', '43.817071', '吉林省长春市朝阳区二道街456号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '大学高校', '长春市', '朝阳区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (7, '哈尔滨先进科技有限公司', '杜德刚', NULL, '13800138000', '126.633606', '45.747198', '黑龙江省哈尔滨市南岗区红旗大街123号', '2021-11-22', 'C', 'http://localhost:8088/video.mp4', '中、小学食堂', '哈尔滨市', '南岗区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (8, '昆明创新科技有限公司', '杜德刚', NULL, '13800138000', '102.712251', '25.040609', '云南省昆明市官渡区昆明经济技术开发区', '2021-11-22', 'C', 'http://localhost:8088/video.mp4', '中、小学食堂', '昆明市', '官渡区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (9, '福州智能科技有限公司', '杜德刚', NULL, '13800138000', '119.296389', '26.074508', '福建省福州市仓山区建新镇金山工业园区', '2021-11-22', 'C', 'http://localhost:8088/video.mp4', '中、小学食堂', '福州市', '仓山区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (10, '太原新世纪科技有限公司', '杜德刚', NULL, '13800138000', '112.548879', '37.87059', '山西省太原市小店区迎新西大街303号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '中、小学食堂', '太原市', '小店区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (11, '合肥创业科技有限公司', '杜德刚', NULL, '13800138000', '117.227239', '31.820586', '安徽省合肥市包河区逍遥津西路56号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '养老院、医院、机构等单位食堂', '合肥市', '包河区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (12, '重庆智慧科技有限公司', '杜德刚', NULL, '13800138000', '106.551556', '29.563009', '重庆市渝北区龙溪街道康庄路68号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '养老院、医院、机构等单位食堂', '重庆市', '渝北区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (13, '南宁创新科技有限公司', '杜德刚', NULL, '13800138000', '108.366543', '22.817002', '广西省南宁市青秀区民族大道23号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '幼儿园食堂', '南宁市', '青秀区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (14, '太原新世纪科技有限公司', '杜德刚', NULL, '13800138000', '112.548879', '37.87059', '山西省太原市小店区迎新西大街303号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '社会餐饮', '太原市', '小店区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (15, '南京智能科技有限公司', '杜德刚', NULL, '13800138000', '118.796877', '32.060255', '江苏省南京市鼓楼区中央路100号', '2021-11-22', 'A', 'http://localhost:8088/video.mp4', '社会餐饮', '南京市', '鼓楼区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (16, '乌鲁木齐创新科技有限公司', '杜德刚', NULL, '13800138000', '87.616848', '43.825592', '新疆乌鲁木齐市天山区友谊路88号', '2021-11-22', 'C', 'http://localhost:8088/video.mp4', '社会餐饮', '乌鲁木齐市', '天山区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (17, '海口创业科技有限公司', '杜德刚', NULL, '13800138000', '110.198293', '20.044001', '海南省海口市龙华区国贸大道699号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '幼儿园食堂', '海口市', '龙华区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (18, '石家庄智慧科技有限公司', '杜德刚', NULL, '13800138000', '114.514859', '38.042307', '河北省石家庄市长安区中山东路12号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '其他', '石家庄市', '长安区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (19, '贵阳新世纪科技有限公司', '杜德刚', NULL, '13800138000', '106.630154', '26.647661', '贵州省贵阳市观山湖区舟岛大道8号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '其他', '贵阳市', '观山湖区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-22', '9150 0243 3051 2631', '热食类食品制售');
INSERT INTO `merchant_info` VALUES (20, '南昌智能科技有限公司', '杜德刚', NULL, '13800138000', '115.858198', '28.682892', '江西省南昌市青山湖区洪都中大道789号', '2021-11-22', 'B', 'http://localhost:8088/video.mp4', '其他', '南昌市', '青山湖区', NULL, '\r\n张玉梅', NULL, NULL, 'JY35 0024 3004 1299', NULL, NULL, '2021-11-23', '9150 0243 3051 2631', '热食类食品制售');

-- ----------------------------
-- Table structure for merchant_inspection
-- ----------------------------
DROP TABLE IF EXISTS `merchant_inspection`;
CREATE TABLE `merchant_inspection`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuff_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime NULL DEFAULT NULL,
  `merchant_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of merchant_inspection
-- ----------------------------

-- ----------------------------
-- Table structure for merchant_rubbish
-- ----------------------------
DROP TABLE IF EXISTS `merchant_rubbish`;
CREATE TABLE `merchant_rubbish`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `date` datetime NULL DEFAULT NULL COMMENT '处理时间',
  `processing_method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '处理方式',
  `weight` double NULL DEFAULT NULL COMMENT '处理总量',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接收人',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of merchant_rubbish
-- ----------------------------
INSERT INTO `merchant_rubbish` VALUES (3, '2024-01-23 11:14:58', '市政处理', 2, '2', '2', NULL);

-- ----------------------------
-- Table structure for merchant_self_examination
-- ----------------------------
DROP TABLE IF EXISTS `merchant_self_examination`;
CREATE TABLE `merchant_self_examination`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `date` datetime NULL DEFAULT NULL COMMENT '自查日期',
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自查得分',
  `manager` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经办人',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '所属商户id',
  `merchant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of merchant_self_examination
-- ----------------------------
INSERT INTO `merchant_self_examination` VALUES (1, '2024-01-23 16:08:31', '100', '你好', 20, NULL);
INSERT INTO `merchant_self_examination` VALUES (2, '2024-01-23 16:22:17', '1', '1', 4, '沈阳智慧科技有限公司');
INSERT INTO `merchant_self_examination` VALUES (3, '2024-01-23 16:39:27', '100', '你好', 4, '沈阳智慧科技有限公司');
INSERT INTO `merchant_self_examination` VALUES (4, '2024-01-23 20:33:03', '100', '你好', 4, '沈阳智慧科技有限公司');

-- ----------------------------
-- Table structure for merchant_stuff
-- ----------------------------
DROP TABLE IF EXISTS `merchant_stuff`;
CREATE TABLE `merchant_stuff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '所属商户的id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '从业人员',
  `licence_date` datetime NULL DEFAULT NULL COMMENT '健康证有效截止日期',
  `licence_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康证路径',
  `lilcence_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merchant_stuff
-- ----------------------------
INSERT INTO `merchant_stuff` VALUES (1, 1, '黄芳', '2020-04-01 00:00:00', NULL, NULL);
INSERT INTO `merchant_stuff` VALUES (2, 1, '康正芳', '2020-04-01 00:00:00', NULL, NULL);
INSERT INTO `merchant_stuff` VALUES (3, 1, '23123', NULL, NULL, NULL);
INSERT INTO `merchant_stuff` VALUES (4, 20, '你好', NULL, NULL, NULL);
INSERT INTO `merchant_stuff` VALUES (5, 20, 'kk', NULL, NULL, NULL);
INSERT INTO `merchant_stuff` VALUES (6, 20, '11', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for morning_check
-- ----------------------------
DROP TABLE IF EXISTS `morning_check`;
CREATE TABLE `morning_check`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `merchant_id` int(11) NULL DEFAULT NULL COMMENT '商户id',
  `merchant` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户',
  `date` datetime NULL DEFAULT NULL COMMENT '晨检日期',
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '晨检人员',
  `result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '晨检结果',
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '采取措施',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of morning_check
-- ----------------------------
INSERT INTO `morning_check` VALUES (2, 1, '彭水苗族土家族自治县幼儿园', '2024-01-22 19:41:21', '周丽', '正常', '无');
INSERT INTO `morning_check` VALUES (3, 2, '杭州', '2024-01-22 20:36:44', '1', '正常', '1');
INSERT INTO `morning_check` VALUES (4, 1, '彭水苗族土家族自治县幼儿园', '2024-01-22 19:39:52', '王立群', '发热', '请假就医');
INSERT INTO `morning_check` VALUES (5, 4, '沈阳智慧科技有限公司', '2024-01-23 17:11:26', 'q', '正常', 'q');
INSERT INTO `morning_check` VALUES (6, 4, '沈阳智慧科技有限公司', '2024-01-23 17:28:06', '你好', '正常', '无');

-- ----------------------------
-- Table structure for provider_info
-- ----------------------------
DROP TABLE IF EXISTS `provider_info`;
CREATE TABLE `provider_info`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `socialcreditcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `providername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `juridicalperson` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `businessscope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expirationdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photopath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `providerphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `socialcreditcode`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of provider_info
-- ----------------------------
INSERT INTO `provider_info` VALUES (1, '9150 0243 3051 2631 7Y', '四川展翼农业有限公司q', '成都市金牛区二环路北三段3号1层', '熊其兵', '食品经营；\r\n\r\n蔬菜、园艺作物的种植；\r\n\r\n商品批发与零售；\r\n\r\n农业技术推广服务；\r\n\r\n普通货运。', '\r\n永久', '/profile/upload/2024/11/21/llk-1_20241121142217A003.png', '四川省', '成都市', '123456', '金牛区');
INSERT INTO `provider_info` VALUES (5, '80', '1', '1', '1', '1', '1', NULL, '1', '1', '11', '1');
INSERT INTO `provider_info` VALUES (6, '1', '1', '1', '1', '1', '1', NULL, '四川省', '1', '1', '11');

-- ----------------------------
-- Table structure for public_user
-- ----------------------------
DROP TABLE IF EXISTS `public_user`;
CREATE TABLE `public_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录系统的ID单词',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID，在平台的唯一ID',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `user_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型',
  `user_role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户的角色，平台角色',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像的URL',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态，是否正常使用-normal，禁用forbidden，或者过期expire',
  `status_modify_time` datetime NULL DEFAULT NULL COMMENT '用户的状态变化的修改时间',
  `qrcode_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户二维码的URL',
  `qrcode_file_path_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户二维码所在硬盘路径',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登记者ID',
  `createor_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登记者名字，就是录入这条记录的人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '登记时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of public_user
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for risk_warning
-- ----------------------------
DROP TABLE IF EXISTS `risk_warning`;
CREATE TABLE `risk_warning`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tradername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secureadmin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depttype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expirationdate` date NULL DEFAULT NULL,
  `licensetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remind` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of risk_warning
-- ----------------------------
INSERT INTO `risk_warning` VALUES (8, '7', '7', '我挺喜欢', '不知道', '70', '7', '7', '2022-01-03', '7', '已到期', '你已经到期了！');
INSERT INTO `risk_warning` VALUES (9, '鸭舌', '成都', '金牛', '龙泉驿', 'flj', '000', '社会', '2024-01-03', 'a', '未到期', NULL);
INSERT INTO `risk_warning` VALUES (22, '麻辣香锅', '安徽省', '黄山', '22号路口', '黎宁', '12222222222', '。', '2021-12-23', '一种类型', '已到期', '到期了');
INSERT INTO `risk_warning` VALUES (23, '红烧兔头1', '成都', '双流', '川大', 'juan', '18888888888', '食堂', '2024-12-12', 'a', '已到期', '要到期了！、、、');
INSERT INTO `risk_warning` VALUES (24, '1', '1', '1', '1', '1', '1', '1', '2024-01-22', '1', '已到期', '11');

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schoolmaster` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schooltype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `incharge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schoollicense` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `validduration` date NULL DEFAULT NULL,
  `licensepath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `schoolpic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE,
  INDEX `city`(`city`) USING BTREE,
  INDEX `area`(`area`) USING BTREE,
  INDEX `location`(`location`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (1, '彭水苗族土家族自治幼儿园', '重庆市', '彭水县', '靛水街道靛水社区一组', '李琼强9', '138-9688-9156', '幼儿园', '奉贤区教育局', '1310 1207 0000 031', '2020-05-31', NULL, NULL);
INSERT INTO `school` VALUES (2, '彭水县职业教育中心', '重庆市', '彭水县', '汉葭街道文庙社区黔中大道30号', '毛庭雷', '181-8405-6699', '教育机构', '彭水县教育局', '1310 1207 0000 789', '2024-01-04', NULL, NULL);
INSERT INTO `school` VALUES (3, '飞鱼大学', '成都市', '双流区', '602c', '龙飞', '123-4566-7895', '大学', '成都市教育局', '0', '2024-12-18', NULL, NULL);
INSERT INTO `school` VALUES (10, '四川大学', '火星', '区县', '地址', '校长', '123-4566-7895', '大学', '教育部', '12345678912', '2024-01-30', NULL, NULL);
INSERT INTO `school` VALUES (29, '简明大学', '成都市', '双流区', '川大路四川大学', '你好', '123-1234-1234', '大学', '成都市教育局', '123456', '2024-01-22', NULL, NULL);
INSERT INTO `school` VALUES (30, '四川大学望双流校区', '成都市', '双流区', '川大路四川大学江安校区', 'xxx', '123-1234-1243', '高校', '成都市教育局', '123456', '2024-01-23', NULL, NULL);
INSERT INTO `school` VALUES (32, '建明大学', '成都市', '双流区', '双流区建明大学', '你好', '123456', '民办普通高中', '成都市教育局', '123456', '2024-01-23', NULL, NULL);
INSERT INTO `school` VALUES (33, '加盟大学', '成都市', '双流区', '成都市双流区加盟大学', '你好', '123-4567-8913', '民办高校', '成都市教育局', '123456', '2024-01-24', NULL, NULL);

-- ----------------------------
-- Table structure for school_stuff
-- ----------------------------
DROP TABLE IF EXISTS `school_stuff`;
CREATE TABLE `school_stuff`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `school_4`(`school`) USING BTREE,
  INDEX `city_4`(`city`) USING BTREE,
  INDEX `area_4`(`area`) USING BTREE,
  CONSTRAINT `area_4` FOREIGN KEY (`area`) REFERENCES `school` (`area`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `city_4` FOREIGN KEY (`city`) REFERENCES `school` (`city`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `school_4` FOREIGN KEY (`school`) REFERENCES `school` (`name`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_stuff
-- ----------------------------
INSERT INTO `school_stuff` VALUES (2, '黄芳', '女', '分管领导', '186-0213-6569', '彭水县职业教育中心', '重庆市', '彭水县');
INSERT INTO `school_stuff` VALUES (8, '有价', '男', '老师1', '12345611', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `school_stuff` VALUES (10, '好老师', '男', '职位', '111111n', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `school_stuff` VALUES (11, '你好', '男', '厨师', '123-4567-8912', '彭水苗族土家族自治幼儿园', '重庆市', '彭水县');
INSERT INTO `school_stuff` VALUES (12, '1', '', '1', '1', '建明大学', NULL, NULL);
INSERT INTO `school_stuff` VALUES (13, 'jjm', '', '校长', '123-4567-1238', '建明大学', NULL, NULL);
INSERT INTO `school_stuff` VALUES (14, 'jjm', '', '校长', '123456', '建明大学', NULL, NULL);
INSERT INTO `school_stuff` VALUES (15, '你好', '', '你好', '123-4567-8912', '建明大学', NULL, NULL);

-- ----------------------------
-- Table structure for suggested_management
-- ----------------------------
DROP TABLE IF EXISTS `suggested_management`;
CREATE TABLE `suggested_management`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Suggested_merchants` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `organization` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `person` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_of_proposal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `suggested_time` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of suggested_management
-- ----------------------------
INSERT INTO `suggested_management` VALUES (1, '新产品推广计划', '数码科技有限公司', '北京市朝阳区科技园1号', '数码科技有限公司', '王经理', '李小明', '饮食安全', '2024-12-15', NULL, NULL);
INSERT INTO `suggested_management` VALUES (2, '企业社会责任提案', '绿色环保集团', '上海市徐汇区绿色大道100号', '绿色环保集团', '张总裁', '赵小红', '饮食安全', '2024-12-15', NULL, NULL);
INSERT INTO `suggested_management` VALUES (3, '员工培训计划', '学习教育集团', '广州市天河区学习路88号', '学习教育集团', '陈校长', '李大志', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (4, '供应链优化提案', '物流科技有限公司', '深圳市南山区物流路55号', '物流科技有限公司', '刘总经理', '张小飞', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (5, '新建办公楼选址建议', '地产发展集团', '成都市锦江区地产路66号', '地产发展集团', '杨总裁', '刘晓晨', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (6, '智能化生产线引入', '制造业集团', '武汉市东湖区制造路77号', '制造业集团', '陈总工程师', '王小强', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (7, '社交媒体营销策略', '互联网营销公司', '西安市雁塔区互联网路33号', '互联网营销公司', '刘市场经理', '李丽丽', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (8, '员工福利优化方案', '人力资源服务有限公司', '南京市鼓楼区人才路44号', '人力资源服务有限公司', '徐人力总监', '王建华', '饮食安全', '2024-12-15', NULL, '');
INSERT INTO `suggested_management` VALUES (9, '绿色能源应用提案', '能源科技有限公司', '重庆市渝中区能源大道22号', '能源科技有限公司', '许总工程师', '陈小明', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (10, '产品包装创新设计', '设计创意工作室', '成都市青羊区创意路99号', '设计创意工作室', '林设计师', '张美丽', '饮食安全', '2024-12-15', NULL, 'http://tmp/x1slozLK1a2y945986fbb62e6cd80ce0eddca9efdbcf.jpg');
INSERT INTO `suggested_management` VALUES (11, '智慧城市建设规划', '城市规划研究院', '杭州市拱墅区规划路11号', '城市规划研究院', '王院长', '刘智慧', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (12, '健康生活方式推广', '健康生活科技公司', '广州市海珠区健康路55号', '健康生活科技公司', '李总经理', '陈健康', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (13, '创业创新支持计划', '创业孵化中心', '深圳市福田区创业街88号', '创业孵化中心', '赵创业导师', '王创业者', '饮食安全', '2024-12-15', NULL, 'http://tmp/x1slozLK1a2y945986fbb62e6cd80ce0eddca9efdbcf.jpg');
INSERT INTO `suggested_management` VALUES (14, '数字化金融服务提案', '金融科技有限公司', '上海市黄浦区金融路66号', '金融科技有限公司', '张金融总监', '陈小刚', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (15, '文化艺术推广活动', '文化艺术推广中心', '北京市东城区文化路33号', '文化艺术推广中心', '王文化总监', '李艺术家', '饮食安全', '2024-12-15', NULL, 'http://tmp/LU8ptkcK0yPq5f66bdc6fe14b6464ebbcf1034e668d1.jpg');
INSERT INTO `suggested_management` VALUES (16, '智能健身设备引入', '健身器材科技公司', '成都市武侯区健身路22号', '健身器材科技公司', '何总工程师', '刘健身', '饮食安全', '2024-12-15', NULL, 'http://tmp/OA6c9DD61tfEbb45397a5c776f54b0100a52c9e9c368.jpg');
INSERT INTO `suggested_management` VALUES (17, '网络安全防护方案', '网络安全技术公司', '武汉市洪山区网络路11号', '网络安全技术公司', '刘安全专家', '王小明', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (18, '社区环境改善计划', '社区发展协会', '西安市碑林区社区路77号', '社区发展协会', '杨主任', '张社区居民', '饮食安全', '2024-12-15', NULL, 'http://tmp/OA6c9DD61tfEbb45397a5c776f54b0100a52c9e9c368.jpg');
INSERT INTO `suggested_management` VALUES (19, '智能交通解决方案', '交通科技有限公司', '南京市建邺区交通路44号', '交通科技有限公司', '王总工程师', '张交通专家', '饮食安全', '2024-12-15', NULL, 'http://tmp/LU8ptkcK0yPq5f66bdc6fe14b6464ebbcf1034e668d1.jpg');
INSERT INTO `suggested_management` VALUES (20, '科学教育推广活动111111', '科学教育协会', '重庆市江北区科学路99号', '科学教育协会', '李会长', '王小科学家', '教育推广', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (21, '建议商户在食品安全方面做到以下几点：1. 保证食材的新鲜和质量，定期进行检查和更新；2. 做好食品的储存和保鲜工作，避免交叉污染；3. 建立健全的食品安全管理制度，包括员工培训和设备清洁消毒；4. 落实食品卫生标准，保证食品加工过程的卫生和安全；5. 关注客户反馈和建议，及时改进和完善。只有确保食品安全，才能获得顾客的信任和口碑，从而推动业务的长久发展。', '历时达有限公司', '成都市市中区肖坝路699号', '历时达集团', '欧会长', '黄小立', '饮食安全', '2024-12-15', NULL, 'http://tmp/Wk1oS8lVkjiU6c2b5028c48dd3d917e84076559c3b4c.jpg');
INSERT INTO `suggested_management` VALUES (22, '11111', '沈阳智慧科技有限公司', NULL, NULL, NULL, '你好', NULL, '2024-01-23', '123456', 'http://tmp/3m7a7na6muFNf227df162fd8189b18d8fee3da8e78d2.jpg');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-11-21 11:01:58', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-11-21 11:01:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '1', '验证码已失效', '2024-11-21 11:08:12');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 11:08:16');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 13:20:57');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '退出成功', '2024-11-21 13:58:22');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-21 13:58:25');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 13', 'Windows 10', '0', '登录成功', '2024-11-22 09:39:47');

-- ----------------------------
-- Table structure for sys_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatetime` datetime NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4991 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------
INSERT INTO `sys_logs` VALUES (2, '机构用户管理', '新增', '127.0.0.1', 'jiao1', '2024-12-01 15:29:27', '新增dsadsa用户');
INSERT INTO `sys_logs` VALUES (3, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-01 16:41:07', '登录');
INSERT INTO `sys_logs` VALUES (4, '用户组权限管理', '登录', '127.0.0.1', '1234', '2024-12-01 16:57:15', '测试u23');
INSERT INTO `sys_logs` VALUES (5, '系统日志管理', '新增', '127.0.0.1', 'jiao', '2024-12-01 16:57:15', '新增系统日志：测试u');
INSERT INTO `sys_logs` VALUES (6, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-01 17:01:41', '登录');
INSERT INTO `sys_logs` VALUES (7, '系统日志管理', '修改', '127.0.0.1', 'jiao', '2024-12-01 17:20:09', '修改系统日志：测试u2');
INSERT INTO `sys_logs` VALUES (8, '系统日志管理', '修改', '127.0.0.1', 'jiao', '2024-12-01 17:20:09', '修改系统日志：测试u2');
INSERT INTO `sys_logs` VALUES (9, '系统日志管理', '修改', '127.0.0.1', 'jiao', '2024-12-01 17:20:32', '修改系统日志：测试u2');
INSERT INTO `sys_logs` VALUES (10, '系统日志管理', '修改', '127.0.0.1', 'jiao', '2024-12-01 17:21:09', '修改系统日志：测试u23');
INSERT INTO `sys_logs` VALUES (12, '系统日志管理', '新增', '127.0.0.1', 'jiao', '2024-12-01 17:41:49', '新增系统日志：null');
INSERT INTO `sys_logs` VALUES (13, '系统日志管理', '修改', '127.0.0.1', 'jiao', '2024-12-01 17:42:24', '修改系统日志：新增dsadsa用户');
INSERT INTO `sys_logs` VALUES (14, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-01 18:07:17', '登录');
INSERT INTO `sys_logs` VALUES (15, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-01 22:35:51', '登录');
INSERT INTO `sys_logs` VALUES (16, '用户组管理', '新增', '127.0.0.1', 'jiao', '2024-12-01 22:50:57', '新增测试用户组');
INSERT INTO `sys_logs` VALUES (17, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:46:34', '登录');
INSERT INTO `sys_logs` VALUES (18, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:47:43', '登录');
INSERT INTO `sys_logs` VALUES (19, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:47:45', '登录');
INSERT INTO `sys_logs` VALUES (20, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:53:11', '登录');
INSERT INTO `sys_logs` VALUES (21, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:53:38', '登录');
INSERT INTO `sys_logs` VALUES (22, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:56:04', '登录');
INSERT INTO `sys_logs` VALUES (23, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:57:43', '登录');
INSERT INTO `sys_logs` VALUES (25, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-03 20:58:11', '登录');
INSERT INTO `sys_logs` VALUES (26, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:09:41', '登录');
INSERT INTO `sys_logs` VALUES (27, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:29:48', '登录');
INSERT INTO `sys_logs` VALUES (28, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:42:42', '登录');
INSERT INTO `sys_logs` VALUES (29, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:44:13', '登录');
INSERT INTO `sys_logs` VALUES (30, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:49:26', '登录');
INSERT INTO `sys_logs` VALUES (31, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 20:51:31', '登录');
INSERT INTO `sys_logs` VALUES (32, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:29:03', '登录');
INSERT INTO `sys_logs` VALUES (33, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:31:04', '登录');
INSERT INTO `sys_logs` VALUES (34, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:40:48', '登录');
INSERT INTO `sys_logs` VALUES (35, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:41:31', '登录');
INSERT INTO `sys_logs` VALUES (36, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:42:03', '登录');
INSERT INTO `sys_logs` VALUES (37, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:55:03', '登录');
INSERT INTO `sys_logs` VALUES (38, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 21:56:29', '登录');
INSERT INTO `sys_logs` VALUES (39, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:01:15', '登录');
INSERT INTO `sys_logs` VALUES (40, '登录', '登录', '127.0.0.1', 'jjm', '2024-12-04 22:02:30', '登录');
INSERT INTO `sys_logs` VALUES (41, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:33:25', '登录');
INSERT INTO `sys_logs` VALUES (42, '机构用户管理', '修改', '127.0.0.1', 'jiao', '2024-12-04 22:33:46', '修改jiao用户');
INSERT INTO `sys_logs` VALUES (43, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:35:57', '登录');
INSERT INTO `sys_logs` VALUES (44, '登录', '登录', '127.0.0.1', 'jjmjjm', '2024-12-04 22:39:08', '登录');
INSERT INTO `sys_logs` VALUES (45, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:40:25', '登录');
INSERT INTO `sys_logs` VALUES (46, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:40:43', '登录');
INSERT INTO `sys_logs` VALUES (47, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:44:09', '登录');
INSERT INTO `sys_logs` VALUES (48, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:48:58', '登录');
INSERT INTO `sys_logs` VALUES (49, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-04 22:49:53', '登录');
INSERT INTO `sys_logs` VALUES (50, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-05 10:13:15', '登录');
INSERT INTO `sys_logs` VALUES (51, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-05 11:52:28', '登录');
INSERT INTO `sys_logs` VALUES (52, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-05 11:58:04', '登录');
INSERT INTO `sys_logs` VALUES (53, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-11 17:16:13', '登录');
INSERT INTO `sys_logs` VALUES (54, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-11 19:47:25', '登录');
INSERT INTO `sys_logs` VALUES (55, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-11 20:40:19', '登录');
INSERT INTO `sys_logs` VALUES (56, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-11 20:54:49', '登录');
INSERT INTO `sys_logs` VALUES (57, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-11 23:44:52', '登录');
INSERT INTO `sys_logs` VALUES (58, '用户组管理', '新增', '127.0.0.1', 'jiao', '2024-12-11 23:51:23', '新增张张宇用户组');
INSERT INTO `sys_logs` VALUES (59, '注册', '注册', '127.0.0.1', 'zzy', '2024-12-11 23:52:23', '注册');
INSERT INTO `sys_logs` VALUES (60, '登录', '登录', '127.0.0.1', 'zzy', '2024-12-11 23:53:13', '登录');
INSERT INTO `sys_logs` VALUES (61, '登录', '登录', '127.0.0.1', 'zzy', '2024-12-12 11:13:51', '登录');
INSERT INTO `sys_logs` VALUES (62, '机构用户管理', '新增', '127.0.0.1', 'jiao', '2024-12-12 13:06:49', '新增null用户');
INSERT INTO `sys_logs` VALUES (63, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-12 13:15:02', '登录');
INSERT INTO `sys_logs` VALUES (64, '登录', '登录', '127.0.0.1', 'jiao', '2024-12-12 17:24:29', '登录');
INSERT INTO `sys_logs` VALUES (65, '机构用户管理', '新增', '127.0.0.1', 'jiao', '2024-12-12 17:37:55', '新增null用户');
INSERT INTO `sys_logs` VALUES (66, '天气管理模块', '新增', '127.0.0.1', 'jiao', '2024-12-12 17:42:43', '新增2024-12-12 17:42:43的天气数据');
INSERT INTO `sys_logs` VALUES (67, '注册', '注册', '127.0.0.1', 'lfy', '2024-12-12 18:01:31', '注册');
INSERT INTO `sys_logs` VALUES (68, '登录', '登录', '127.0.0.1', 'lfy', '2024-12-12 18:05:39', '登录');
INSERT INTO `sys_logs` VALUES (69, '登录', '登录', '127.0.0.1', 'lfy', '2024-12-12 18:11:44', '登录');
INSERT INTO `sys_logs` VALUES (70, '登录', '登录', '127.0.0.1', 'lfy', '2024-12-12 18:17:32', '登录');
INSERT INTO `sys_logs` VALUES (71, '登录', '登录', '127.0.0.1', 'lfy', '2024-12-12 18:20:29', '登录');
INSERT INTO `sys_logs` VALUES (72, '注册', '注册', '127.0.0.1', 'xtz', '2024-12-12 19:30:21', '注册');
INSERT INTO `sys_logs` VALUES (73, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-12 19:38:36', '登录');
INSERT INTO `sys_logs` VALUES (74, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-12 19:39:35', '登录');
INSERT INTO `sys_logs` VALUES (75, '注册', '注册', '127.0.0.1', 'jjm', '2024-12-12 19:40:57', '注册');
INSERT INTO `sys_logs` VALUES (76, '登录', '登录', '127.0.0.1', 'jjm', '2024-12-12 19:41:07', '登录');
INSERT INTO `sys_logs` VALUES (77, '登录', '登录', '127.0.0.1', 'jjm', '2024-12-12 23:18:05', '登录');
INSERT INTO `sys_logs` VALUES (78, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 10:36:31', '登录');
INSERT INTO `sys_logs` VALUES (79, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:37:36', '修改jiao用户');
INSERT INTO `sys_logs` VALUES (80, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:37:43', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (81, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 10:38:03', '登录');
INSERT INTO `sys_logs` VALUES (82, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:53:29', '修改张张宇用户组权限');
INSERT INTO `sys_logs` VALUES (83, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:54:20', '修改测试用户组权限');
INSERT INTO `sys_logs` VALUES (84, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:57:30', '修改张张宇用户组权限');
INSERT INTO `sys_logs` VALUES (85, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 10:57:37', '修改张张宇用户组权限');
INSERT INTO `sys_logs` VALUES (86, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:12:14', '新增dsadsad用户组');
INSERT INTO `sys_logs` VALUES (87, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 11:13:19', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (88, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 11:13:21', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (89, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 11:21:42', '删除null用户');
INSERT INTO `sys_logs` VALUES (90, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 11:21:57', '删除0002用户');
INSERT INTO `sys_logs` VALUES (91, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 11:21:59', '删除0001用户');
INSERT INTO `sys_logs` VALUES (92, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:20', '新增2024-12-13 11:26:20的天气数据');
INSERT INTO `sys_logs` VALUES (93, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:21', '新增2024-12-13 11:26:21的天气数据');
INSERT INTO `sys_logs` VALUES (94, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:22', '新增2024-12-13 11:26:22的天气数据');
INSERT INTO `sys_logs` VALUES (95, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:23', '新增2024-12-13 11:26:23的天气数据');
INSERT INTO `sys_logs` VALUES (96, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:24', '新增2024-12-13 11:26:24的天气数据');
INSERT INTO `sys_logs` VALUES (97, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:25', '新增2024-12-13 11:26:25的天气数据');
INSERT INTO `sys_logs` VALUES (98, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:26', '新增2024-12-13 11:26:26的天气数据');
INSERT INTO `sys_logs` VALUES (99, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:27', '新增2024-12-13 11:26:27的天气数据');
INSERT INTO `sys_logs` VALUES (100, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:28', '新增2024-12-13 11:26:28的天气数据');
INSERT INTO `sys_logs` VALUES (101, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:29', '新增2024-12-13 11:26:29的天气数据');
INSERT INTO `sys_logs` VALUES (102, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:30', '新增2024-12-13 11:26:30的天气数据');
INSERT INTO `sys_logs` VALUES (103, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:31', '新增2024-12-13 11:26:31的天气数据');
INSERT INTO `sys_logs` VALUES (104, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:32', '新增2024-12-13 11:26:32的天气数据');
INSERT INTO `sys_logs` VALUES (105, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:33', '新增2024-12-13 11:26:33的天气数据');
INSERT INTO `sys_logs` VALUES (106, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:34', '新增2024-12-13 11:26:34的天气数据');
INSERT INTO `sys_logs` VALUES (107, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:35', '新增2024-12-13 11:26:35的天气数据');
INSERT INTO `sys_logs` VALUES (108, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:36', '新增2024-12-13 11:26:36的天气数据');
INSERT INTO `sys_logs` VALUES (109, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:37', '新增2024-12-13 11:26:37的天气数据');
INSERT INTO `sys_logs` VALUES (110, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:38', '新增2024-12-13 11:26:38的天气数据');
INSERT INTO `sys_logs` VALUES (111, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:39', '新增2024-12-13 11:26:39的天气数据');
INSERT INTO `sys_logs` VALUES (112, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:40', '新增2024-12-13 11:26:40的天气数据');
INSERT INTO `sys_logs` VALUES (113, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:41', '新增2024-12-13 11:26:41的天气数据');
INSERT INTO `sys_logs` VALUES (114, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:42', '新增2024-12-13 11:26:42的天气数据');
INSERT INTO `sys_logs` VALUES (115, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:43', '新增2024-12-13 11:26:43的天气数据');
INSERT INTO `sys_logs` VALUES (116, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:44', '新增2024-12-13 11:26:44的天气数据');
INSERT INTO `sys_logs` VALUES (117, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:45', '新增2024-12-13 11:26:45的天气数据');
INSERT INTO `sys_logs` VALUES (118, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:46', '新增2024-12-13 11:26:46的天气数据');
INSERT INTO `sys_logs` VALUES (119, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:47', '新增2024-12-13 11:26:47的天气数据');
INSERT INTO `sys_logs` VALUES (120, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:48', '新增2024-12-13 11:26:48的天气数据');
INSERT INTO `sys_logs` VALUES (121, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:49', '新增2024-12-13 11:26:49的天气数据');
INSERT INTO `sys_logs` VALUES (122, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:50', '新增2024-12-13 11:26:50的天气数据');
INSERT INTO `sys_logs` VALUES (123, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:51', '新增2024-12-13 11:26:51的天气数据');
INSERT INTO `sys_logs` VALUES (124, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:52', '新增2024-12-13 11:26:52的天气数据');
INSERT INTO `sys_logs` VALUES (125, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:53', '新增2024-12-13 11:26:53的天气数据');
INSERT INTO `sys_logs` VALUES (126, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:54', '新增2024-12-13 11:26:54的天气数据');
INSERT INTO `sys_logs` VALUES (127, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:55', '新增2024-12-13 11:26:55的天气数据');
INSERT INTO `sys_logs` VALUES (128, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:56', '新增2024-12-13 11:26:56的天气数据');
INSERT INTO `sys_logs` VALUES (129, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:57', '新增2024-12-13 11:26:57的天气数据');
INSERT INTO `sys_logs` VALUES (130, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:58', '新增2024-12-13 11:26:58的天气数据');
INSERT INTO `sys_logs` VALUES (131, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:26:59', '新增2024-12-13 11:26:59的天气数据');
INSERT INTO `sys_logs` VALUES (132, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:00', '新增2024-12-13 11:27:00的天气数据');
INSERT INTO `sys_logs` VALUES (133, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:01', '新增2024-12-13 11:27:01的天气数据');
INSERT INTO `sys_logs` VALUES (134, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:02', '新增2024-12-13 11:27:02的天气数据');
INSERT INTO `sys_logs` VALUES (135, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:03', '新增2024-12-13 11:27:03的天气数据');
INSERT INTO `sys_logs` VALUES (136, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:04', '新增2024-12-13 11:27:04的天气数据');
INSERT INTO `sys_logs` VALUES (137, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:05', '新增2024-12-13 11:27:05的天气数据');
INSERT INTO `sys_logs` VALUES (138, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:06', '新增2024-12-13 11:27:06的天气数据');
INSERT INTO `sys_logs` VALUES (139, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:07', '新增2024-12-13 11:27:07的天气数据');
INSERT INTO `sys_logs` VALUES (140, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:08', '新增2024-12-13 11:27:08的天气数据');
INSERT INTO `sys_logs` VALUES (141, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:09', '新增2024-12-13 11:27:09的天气数据');
INSERT INTO `sys_logs` VALUES (142, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:10', '新增2024-12-13 11:27:10的天气数据');
INSERT INTO `sys_logs` VALUES (143, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:11', '新增2024-12-13 11:27:11的天气数据');
INSERT INTO `sys_logs` VALUES (144, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:12', '新增2024-12-13 11:27:12的天气数据');
INSERT INTO `sys_logs` VALUES (145, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:13', '新增2024-12-13 11:27:13的天气数据');
INSERT INTO `sys_logs` VALUES (146, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:14', '新增2024-12-13 11:27:14的天气数据');
INSERT INTO `sys_logs` VALUES (147, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:15', '新增2024-12-13 11:27:15的天气数据');
INSERT INTO `sys_logs` VALUES (148, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:16', '新增2024-12-13 11:27:16的天气数据');
INSERT INTO `sys_logs` VALUES (149, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:17', '新增2024-12-13 11:27:17的天气数据');
INSERT INTO `sys_logs` VALUES (150, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:18', '新增2024-12-13 11:27:18的天气数据');
INSERT INTO `sys_logs` VALUES (151, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:19', '新增2024-12-13 11:27:19的天气数据');
INSERT INTO `sys_logs` VALUES (152, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:20', '新增2024-12-13 11:27:20的天气数据');
INSERT INTO `sys_logs` VALUES (153, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:21', '新增2024-12-13 11:27:21的天气数据');
INSERT INTO `sys_logs` VALUES (154, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:22', '新增2024-12-13 11:27:22的天气数据');
INSERT INTO `sys_logs` VALUES (155, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:23', '新增2024-12-13 11:27:23的天气数据');
INSERT INTO `sys_logs` VALUES (156, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:24', '新增2024-12-13 11:27:24的天气数据');
INSERT INTO `sys_logs` VALUES (157, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:25', '新增2024-12-13 11:27:25的天气数据');
INSERT INTO `sys_logs` VALUES (158, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:26', '新增2024-12-13 11:27:26的天气数据');
INSERT INTO `sys_logs` VALUES (159, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:27', '新增2024-12-13 11:27:27的天气数据');
INSERT INTO `sys_logs` VALUES (160, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:28', '新增2024-12-13 11:27:28的天气数据');
INSERT INTO `sys_logs` VALUES (161, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:50', '新增2024-12-13 11:27:50的天气数据');
INSERT INTO `sys_logs` VALUES (162, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:51', '新增2024-12-13 11:27:51的天气数据');
INSERT INTO `sys_logs` VALUES (163, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:52', '新增2024-12-13 11:27:52的天气数据');
INSERT INTO `sys_logs` VALUES (164, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:53', '新增2024-12-13 11:27:53的天气数据');
INSERT INTO `sys_logs` VALUES (165, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:54', '新增2024-12-13 11:27:54的天气数据');
INSERT INTO `sys_logs` VALUES (166, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:55', '新增2024-12-13 11:27:55的天气数据');
INSERT INTO `sys_logs` VALUES (167, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:56', '新增2024-12-13 11:27:56的天气数据');
INSERT INTO `sys_logs` VALUES (168, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:57', '新增2024-12-13 11:27:57的天气数据');
INSERT INTO `sys_logs` VALUES (169, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:58', '新增2024-12-13 11:27:58的天气数据');
INSERT INTO `sys_logs` VALUES (170, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:27:59', '新增2024-12-13 11:27:59的天气数据');
INSERT INTO `sys_logs` VALUES (171, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:00', '新增2024-12-13 11:28:00的天气数据');
INSERT INTO `sys_logs` VALUES (172, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:01', '新增2024-12-13 11:28:01的天气数据');
INSERT INTO `sys_logs` VALUES (173, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:02', '新增2024-12-13 11:28:02的天气数据');
INSERT INTO `sys_logs` VALUES (174, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:03', '新增2024-12-13 11:28:03的天气数据');
INSERT INTO `sys_logs` VALUES (175, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:04', '新增2024-12-13 11:28:04的天气数据');
INSERT INTO `sys_logs` VALUES (176, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:05', '新增2024-12-13 11:28:05的天气数据');
INSERT INTO `sys_logs` VALUES (177, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:06', '新增2024-12-13 11:28:06的天气数据');
INSERT INTO `sys_logs` VALUES (178, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:07', '新增2024-12-13 11:28:07的天气数据');
INSERT INTO `sys_logs` VALUES (179, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:08', '新增2024-12-13 11:28:08的天气数据');
INSERT INTO `sys_logs` VALUES (180, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:09', '新增2024-12-13 11:28:09的天气数据');
INSERT INTO `sys_logs` VALUES (181, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:10', '新增2024-12-13 11:28:10的天气数据');
INSERT INTO `sys_logs` VALUES (182, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:11', '新增2024-12-13 11:28:11的天气数据');
INSERT INTO `sys_logs` VALUES (183, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:12', '新增2024-12-13 11:28:12的天气数据');
INSERT INTO `sys_logs` VALUES (184, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:13', '新增2024-12-13 11:28:13的天气数据');
INSERT INTO `sys_logs` VALUES (185, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:14', '新增2024-12-13 11:28:14的天气数据');
INSERT INTO `sys_logs` VALUES (186, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:15', '新增2024-12-13 11:28:15的天气数据');
INSERT INTO `sys_logs` VALUES (187, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:16', '新增2024-12-13 11:28:16的天气数据');
INSERT INTO `sys_logs` VALUES (188, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:17', '新增2024-12-13 11:28:17的天气数据');
INSERT INTO `sys_logs` VALUES (189, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:18', '新增2024-12-13 11:28:18的天气数据');
INSERT INTO `sys_logs` VALUES (190, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:19', '新增2024-12-13 11:28:19的天气数据');
INSERT INTO `sys_logs` VALUES (191, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:20', '新增2024-12-13 11:28:20的天气数据');
INSERT INTO `sys_logs` VALUES (192, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:21', '新增2024-12-13 11:28:21的天气数据');
INSERT INTO `sys_logs` VALUES (193, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:22', '新增2024-12-13 11:28:22的天气数据');
INSERT INTO `sys_logs` VALUES (194, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:23', '新增2024-12-13 11:28:23的天气数据');
INSERT INTO `sys_logs` VALUES (195, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:24', '新增2024-12-13 11:28:24的天气数据');
INSERT INTO `sys_logs` VALUES (196, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:25', '新增2024-12-13 11:28:25的天气数据');
INSERT INTO `sys_logs` VALUES (197, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:26', '新增2024-12-13 11:28:26的天气数据');
INSERT INTO `sys_logs` VALUES (198, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:27', '新增2024-12-13 11:28:27的天气数据');
INSERT INTO `sys_logs` VALUES (199, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:28', '新增2024-12-13 11:28:28的天气数据');
INSERT INTO `sys_logs` VALUES (200, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:29', '新增2024-12-13 11:28:29的天气数据');
INSERT INTO `sys_logs` VALUES (201, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:30', '新增2024-12-13 11:28:30的天气数据');
INSERT INTO `sys_logs` VALUES (202, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:31', '新增2024-12-13 11:28:31的天气数据');
INSERT INTO `sys_logs` VALUES (203, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:32', '新增2024-12-13 11:28:32的天气数据');
INSERT INTO `sys_logs` VALUES (204, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:33', '新增2024-12-13 11:28:33的天气数据');
INSERT INTO `sys_logs` VALUES (205, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:34', '新增2024-12-13 11:28:34的天气数据');
INSERT INTO `sys_logs` VALUES (206, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:35', '新增2024-12-13 11:28:35的天气数据');
INSERT INTO `sys_logs` VALUES (207, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:36', '新增2024-12-13 11:28:36的天气数据');
INSERT INTO `sys_logs` VALUES (208, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:37', '新增2024-12-13 11:28:37的天气数据');
INSERT INTO `sys_logs` VALUES (209, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:38', '新增2024-12-13 11:28:38的天气数据');
INSERT INTO `sys_logs` VALUES (210, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:39', '新增2024-12-13 11:28:39的天气数据');
INSERT INTO `sys_logs` VALUES (211, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:40', '新增2024-12-13 11:28:40的天气数据');
INSERT INTO `sys_logs` VALUES (212, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:41', '新增2024-12-13 11:28:41的天气数据');
INSERT INTO `sys_logs` VALUES (213, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:42', '新增2024-12-13 11:28:42的天气数据');
INSERT INTO `sys_logs` VALUES (214, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:43', '新增2024-12-13 11:28:43的天气数据');
INSERT INTO `sys_logs` VALUES (215, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:44', '新增2024-12-13 11:28:44的天气数据');
INSERT INTO `sys_logs` VALUES (216, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:45', '新增2024-12-13 11:28:45的天气数据');
INSERT INTO `sys_logs` VALUES (217, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:46', '新增2024-12-13 11:28:46的天气数据');
INSERT INTO `sys_logs` VALUES (218, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:47', '新增2024-12-13 11:28:47的天气数据');
INSERT INTO `sys_logs` VALUES (219, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:48', '新增2024-12-13 11:28:48的天气数据');
INSERT INTO `sys_logs` VALUES (220, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:49', '新增2024-12-13 11:28:49的天气数据');
INSERT INTO `sys_logs` VALUES (221, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:28:50', '新增2024-12-13 11:28:50的天气数据');
INSERT INTO `sys_logs` VALUES (222, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:16', '新增2024-12-13 11:29:16的天气数据');
INSERT INTO `sys_logs` VALUES (223, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:17', '新增2024-12-13 11:29:17的天气数据');
INSERT INTO `sys_logs` VALUES (224, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:18', '新增2024-12-13 11:29:18的天气数据');
INSERT INTO `sys_logs` VALUES (225, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:19', '新增2024-12-13 11:29:19的天气数据');
INSERT INTO `sys_logs` VALUES (226, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:20', '新增2024-12-13 11:29:20的天气数据');
INSERT INTO `sys_logs` VALUES (227, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:21', '新增2024-12-13 11:29:21的天气数据');
INSERT INTO `sys_logs` VALUES (228, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:22', '新增2024-12-13 11:29:22的天气数据');
INSERT INTO `sys_logs` VALUES (229, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:23', '新增2024-12-13 11:29:23的天气数据');
INSERT INTO `sys_logs` VALUES (230, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:24', '新增2024-12-13 11:29:24的天气数据');
INSERT INTO `sys_logs` VALUES (231, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:25', '新增2024-12-13 11:29:25的天气数据');
INSERT INTO `sys_logs` VALUES (232, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:29:31', '新增2024-12-13 11:29:31的天气数据');
INSERT INTO `sys_logs` VALUES (233, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:30:20', '新增2024-12-13 11:30:20的天气数据');
INSERT INTO `sys_logs` VALUES (234, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:31:46', '新增2024-12-13 11:31:46的天气数据');
INSERT INTO `sys_logs` VALUES (235, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:23', '新增2024-12-13 11:32:23的天气数据');
INSERT INTO `sys_logs` VALUES (236, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:28', '新增2024-12-13 11:32:28的天气数据');
INSERT INTO `sys_logs` VALUES (237, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:33', '新增2024-12-13 11:32:33的天气数据');
INSERT INTO `sys_logs` VALUES (238, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:38', '新增2024-12-13 11:32:38的天气数据');
INSERT INTO `sys_logs` VALUES (239, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:43', '新增2024-12-13 11:32:43的天气数据');
INSERT INTO `sys_logs` VALUES (240, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:48', '新增2024-12-13 11:32:48的天气数据');
INSERT INTO `sys_logs` VALUES (241, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:53', '新增2024-12-13 11:32:53的天气数据');
INSERT INTO `sys_logs` VALUES (242, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:32:58', '新增2024-12-13 11:32:58的天气数据');
INSERT INTO `sys_logs` VALUES (243, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:03', '新增2024-12-13 11:33:03的天气数据');
INSERT INTO `sys_logs` VALUES (244, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:08', '新增2024-12-13 11:33:08的天气数据');
INSERT INTO `sys_logs` VALUES (245, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:13', '新增2024-12-13 11:33:13的天气数据');
INSERT INTO `sys_logs` VALUES (246, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:18', '新增2024-12-13 11:33:18的天气数据');
INSERT INTO `sys_logs` VALUES (247, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:23', '新增2024-12-13 11:33:23的天气数据');
INSERT INTO `sys_logs` VALUES (248, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:28', '新增2024-12-13 11:33:28的天气数据');
INSERT INTO `sys_logs` VALUES (249, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:33', '新增2024-12-13 11:33:33的天气数据');
INSERT INTO `sys_logs` VALUES (250, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:38', '新增2024-12-13 11:33:38的天气数据');
INSERT INTO `sys_logs` VALUES (251, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:43', '新增2024-12-13 11:33:43的天气数据');
INSERT INTO `sys_logs` VALUES (252, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:48', '新增2024-12-13 11:33:48的天气数据');
INSERT INTO `sys_logs` VALUES (253, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:53', '新增2024-12-13 11:33:53的天气数据');
INSERT INTO `sys_logs` VALUES (254, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:33:58', '新增2024-12-13 11:33:58的天气数据');
INSERT INTO `sys_logs` VALUES (255, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:03', '新增2024-12-13 11:34:03的天气数据');
INSERT INTO `sys_logs` VALUES (256, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:08', '新增2024-12-13 11:34:08的天气数据');
INSERT INTO `sys_logs` VALUES (257, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:13', '新增2024-12-13 11:34:13的天气数据');
INSERT INTO `sys_logs` VALUES (258, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:18', '新增2024-12-13 11:34:18的天气数据');
INSERT INTO `sys_logs` VALUES (259, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:23', '新增2024-12-13 11:34:23的天气数据');
INSERT INTO `sys_logs` VALUES (260, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:28', '新增2024-12-13 11:34:28的天气数据');
INSERT INTO `sys_logs` VALUES (261, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:33', '新增2024-12-13 11:34:33的天气数据');
INSERT INTO `sys_logs` VALUES (262, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:38', '新增2024-12-13 11:34:38的天气数据');
INSERT INTO `sys_logs` VALUES (263, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:34:43', '新增2024-12-13 11:34:43的天气数据');
INSERT INTO `sys_logs` VALUES (264, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:35:25', '新增2024-12-13 11:35:25的天气数据');
INSERT INTO `sys_logs` VALUES (265, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:35:28', '新增2024-12-13 11:35:28的天气数据');
INSERT INTO `sys_logs` VALUES (266, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:44:43', '新增2024-12-13 11:44:43的天气数据');
INSERT INTO `sys_logs` VALUES (267, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:44:44', '新增2024-12-13 11:44:44的天气数据');
INSERT INTO `sys_logs` VALUES (268, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:44:45', '新增2024-12-13 11:44:45的天气数据');
INSERT INTO `sys_logs` VALUES (269, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-12-13 11:47:18', '新增2024-12-13 11:47:18的天气数据');
INSERT INTO `sys_logs` VALUES (270, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 11:49:01', '修改jiao用户');
INSERT INTO `sys_logs` VALUES (271, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 15:08:58', '登录');
INSERT INTO `sys_logs` VALUES (272, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 19:04:03', '登录');
INSERT INTO `sys_logs` VALUES (273, '注册', '注册', '127.0.0.1', 'jjm2', '2024-12-13 19:04:34', '注册');
INSERT INTO `sys_logs` VALUES (274, '登录', '登录', '127.0.0.1', 'jjm2', '2024-12-13 19:05:05', '登录');
INSERT INTO `sys_logs` VALUES (275, '机构用户管理', '修改', '127.0.0.1', 'jjm2', '2024-12-13 19:05:36', '修改jjm2用户');
INSERT INTO `sys_logs` VALUES (276, '机构用户管理', '新增', '127.0.0.1', 'jjm2', '2024-12-13 19:06:26', '新增jjm3用户');
INSERT INTO `sys_logs` VALUES (277, '用户修改密码', '修改', '127.0.0.1', 'jjm2', '2024-12-13 19:15:36', '修改jjm2用户密码');
INSERT INTO `sys_logs` VALUES (278, '登录', '登录', '127.0.0.1', 'jjm2', '2024-12-13 19:16:10', '登录');
INSERT INTO `sys_logs` VALUES (279, '机构用户管理', '新增', '127.0.0.1', 'jjm2', '2024-12-13 19:20:12', '新增你好2用户');
INSERT INTO `sys_logs` VALUES (280, '机构用户管理', '新增', '127.0.0.1', 'jjm2', '2024-12-13 19:20:12', '新增你好2用户');
INSERT INTO `sys_logs` VALUES (281, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 19:23:48', '登录');
INSERT INTO `sys_logs` VALUES (282, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 19:24:05', '新增你好2用户');
INSERT INTO `sys_logs` VALUES (283, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:27', '删除张张宇用户组');
INSERT INTO `sys_logs` VALUES (284, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:33', '删除dafdafascxzc用户组');
INSERT INTO `sys_logs` VALUES (285, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:36', '删除jjm用户组');
INSERT INTO `sys_logs` VALUES (286, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:40', '删除123用户组');
INSERT INTO `sys_logs` VALUES (287, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:47', '删除dsadsa用户组');
INSERT INTO `sys_logs` VALUES (288, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:50', '删除123用户组');
INSERT INTO `sys_logs` VALUES (289, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 19:42:52', '删除测试用户组');
INSERT INTO `sys_logs` VALUES (290, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 19:44:47', '登录');
INSERT INTO `sys_logs` VALUES (291, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 19:44:55', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (292, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 19:44:58', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (293, '用户修改密码', '修改', '127.0.0.1', 'xtz', '2024-12-13 19:45:53', '修改xtz用户密码');
INSERT INTO `sys_logs` VALUES (294, '注册', '注册', '127.0.0.1', 'jjm4', '2024-12-13 19:46:55', '注册');
INSERT INTO `sys_logs` VALUES (295, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 19:47:17', '登录');
INSERT INTO `sys_logs` VALUES (296, '机构用户管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 19:47:41', '修改jjm4用户');
INSERT INTO `sys_logs` VALUES (297, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 19:47:57', '登录');
INSERT INTO `sys_logs` VALUES (298, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 19:48:18', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (299, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 19:48:21', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (300, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 19:48:33', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (301, '用户组管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 19:49:01', '新增测试用户组');
INSERT INTO `sys_logs` VALUES (302, '用户组管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 19:49:10', '删除测试用户组');
INSERT INTO `sys_logs` VALUES (303, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 19:49:24', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (304, '机构用户管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 19:49:59', '新增你好345用户');
INSERT INTO `sys_logs` VALUES (305, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 19:51:43', '登录');
INSERT INTO `sys_logs` VALUES (306, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 19:55:11', '登录');
INSERT INTO `sys_logs` VALUES (307, '机构用户管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 19:55:25', '新增jjm5用户');
INSERT INTO `sys_logs` VALUES (308, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 19:57:01', '登录');
INSERT INTO `sys_logs` VALUES (309, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 20:01:48', '登录');
INSERT INTO `sys_logs` VALUES (310, '机构用户管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:02:00', '新增jjm6用户');
INSERT INTO `sys_logs` VALUES (311, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 20:04:35', '登录');
INSERT INTO `sys_logs` VALUES (312, '机构用户管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:04:39', '删除jjm6用户');
INSERT INTO `sys_logs` VALUES (313, '机构用户管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:04:42', '删除jjm5用户');
INSERT INTO `sys_logs` VALUES (314, '机构用户管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:04:44', '删除你好345用户');
INSERT INTO `sys_logs` VALUES (315, '机构用户管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:04:46', '删除你好2用户');
INSERT INTO `sys_logs` VALUES (316, '机构用户管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:04:48', '删除jjm3用户');
INSERT INTO `sys_logs` VALUES (317, '机构用户管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:04:59', '新增jjm5用户');
INSERT INTO `sys_logs` VALUES (318, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:11:52', '登录');
INSERT INTO `sys_logs` VALUES (319, '用户修改密码', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:12:13', '修改xtz用户密码');
INSERT INTO `sys_logs` VALUES (320, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:12:39', '登录');
INSERT INTO `sys_logs` VALUES (321, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:12:45', '删除jjm5用户');
INSERT INTO `sys_logs` VALUES (322, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 20:12:58', '新增jjm3用户');
INSERT INTO `sys_logs` VALUES (323, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:16:57', '登录');
INSERT INTO `sys_logs` VALUES (324, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 20:17:10', '新增jjm5用户');
INSERT INTO `sys_logs` VALUES (325, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:18:34', '登录');
INSERT INTO `sys_logs` VALUES (326, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 20:18:46', '新增jjm6用户');
INSERT INTO `sys_logs` VALUES (327, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:21:23', '登录');
INSERT INTO `sys_logs` VALUES (328, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:21:28', '删除jjm6用户');
INSERT INTO `sys_logs` VALUES (329, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:21:30', '删除jjm5用户');
INSERT INTO `sys_logs` VALUES (330, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:21:32', '删除jjm3用户');
INSERT INTO `sys_logs` VALUES (331, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 20:21:38', '新增jjm3用户');
INSERT INTO `sys_logs` VALUES (332, '登录', '登录', '127.0.0.1', 'jjm3', '2024-12-13 20:22:01', '登录');
INSERT INTO `sys_logs` VALUES (333, '注册', '注册', '127.0.0.1', 'jjm5', '2024-12-13 20:22:25', '注册');
INSERT INTO `sys_logs` VALUES (334, '登录', '登录', '127.0.0.1', 'jjm5', '2024-12-13 20:22:34', '登录');
INSERT INTO `sys_logs` VALUES (335, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:23:21', '登录');
INSERT INTO `sys_logs` VALUES (336, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:23:28', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (337, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:23:30', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (338, '用户修改密码', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:23:55', '修改xtz用户密码');
INSERT INTO `sys_logs` VALUES (339, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:24:04', '登录');
INSERT INTO `sys_logs` VALUES (340, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:24:20', '删除jjm3用户');
INSERT INTO `sys_logs` VALUES (341, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:24:22', '删除jjm5用户');
INSERT INTO `sys_logs` VALUES (342, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:24:39', '修改jjm4用户');
INSERT INTO `sys_logs` VALUES (343, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-12-13 20:25:22', '新增jjm6用户');
INSERT INTO `sys_logs` VALUES (344, '登录', '登录', '127.0.0.1', 'jjm6', '2024-12-13 20:25:36', '登录');
INSERT INTO `sys_logs` VALUES (345, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:26:39', '登录');
INSERT INTO `sys_logs` VALUES (346, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-12-13 20:26:53', '修改jjm4用户');
INSERT INTO `sys_logs` VALUES (347, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 20:27:22', '登录');
INSERT INTO `sys_logs` VALUES (348, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 20:29:20', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (349, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 20:29:31', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (350, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 20:29:41', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (351, '用户组管理', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:30:01', '新增测试用户组');
INSERT INTO `sys_logs` VALUES (352, '用户组管理', '删除', '127.0.0.1', 'jjm4', '2024-12-13 20:30:12', '删除测试用户组');
INSERT INTO `sys_logs` VALUES (353, '用户组管理', '修改', '127.0.0.1', 'jjm4', '2024-12-13 20:30:17', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (354, '登录', '登录', '127.0.0.1', 'jjm4', '2024-12-13 20:30:42', '登录');
INSERT INTO `sys_logs` VALUES (355, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:31:21', '新增2024-12-13 20:31:21的天气数据');
INSERT INTO `sys_logs` VALUES (356, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:31:57', '新增2024-12-13 20:31:57的天气数据');
INSERT INTO `sys_logs` VALUES (357, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:32:02', '新增2024-12-13 20:32:02的天气数据');
INSERT INTO `sys_logs` VALUES (358, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:32:08', '新增2024-12-13 20:32:08的天气数据');
INSERT INTO `sys_logs` VALUES (359, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:32:09', '新增2024-12-13 20:32:09的天气数据');
INSERT INTO `sys_logs` VALUES (360, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:32:10', '新增2024-12-13 20:32:10的天气数据');
INSERT INTO `sys_logs` VALUES (361, '天气管理模块', '新增', '127.0.0.1', 'jjm4', '2024-12-13 20:32:11', '新增2024-12-13 20:32:11的天气数据');
INSERT INTO `sys_logs` VALUES (363, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 20:35:40', '登录');
INSERT INTO `sys_logs` VALUES (365, '系统日志管理', '删除', '127.0.0.1', 'xtz', '2024-12-13 20:43:10', '删除系统日志：修改系统日志：新增2024-12-13 20:32:12的天气数据');
INSERT INTO `sys_logs` VALUES (366, '用户组权限管理', '登录', '127.0.0.1', 'jjm6', '2024-12-13 20:43:47', '登录');
INSERT INTO `sys_logs` VALUES (368, '系统日志管理', '删除', '127.0.0.1', 'jjm6', '2024-12-13 20:44:27', '删除系统日志：修改系统日志：登录');
INSERT INTO `sys_logs` VALUES (369, '登录', '登录', '127.0.0.1', 'jjm6', '2024-12-13 20:44:49', '登录');
INSERT INTO `sys_logs` VALUES (370, '系统日志管理', '新增', '127.0.0.1', 'jjm6', '2024-12-13 20:44:49', '新增系统日志：登录');
INSERT INTO `sys_logs` VALUES (371, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-13 21:05:48', '登录');
INSERT INTO `sys_logs` VALUES (372, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-16 00:51:30', '登录');
INSERT INTO `sys_logs` VALUES (373, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-16 13:24:00', '登录');
INSERT INTO `sys_logs` VALUES (374, '登录', '登录', '127.0.0.1', 'jjm', '2024-12-17 00:05:48', '登录');
INSERT INTO `sys_logs` VALUES (375, '登录', '登录', '127.0.0.1', 'xtz', '2024-12-23 18:38:52', '登录');
INSERT INTO `sys_logs` VALUES (376, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-14 13:31:33', '登录');
INSERT INTO `sys_logs` VALUES (377, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-15 15:10:46', '登录');
INSERT INTO `sys_logs` VALUES (378, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-15 17:27:57', '登录');
INSERT INTO `sys_logs` VALUES (379, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-15 17:38:27', '登录');
INSERT INTO `sys_logs` VALUES (380, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-16 10:14:44', '登录');
INSERT INTO `sys_logs` VALUES (381, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-16 13:16:01', '登录');
INSERT INTO `sys_logs` VALUES (382, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-16 15:23:00', '登录');
INSERT INTO `sys_logs` VALUES (383, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-16 16:50:46', '登录');
INSERT INTO `sys_logs` VALUES (384, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-16 17:07:16', '登录');
INSERT INTO `sys_logs` VALUES (385, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-16 17:08:35', '新增2024-01-16 17:08:35的天气数据');
INSERT INTO `sys_logs` VALUES (386, '注册', '注册', '127.0.0.1', 'jjm10', '2024-01-16 17:24:13', '注册');
INSERT INTO `sys_logs` VALUES (387, '登录', '登录', '127.0.0.1', 'jjm10', '2024-01-16 17:25:22', '登录');
INSERT INTO `sys_logs` VALUES (388, '登录', '登录', '127.0.0.1', 'jjm10', '2024-01-16 19:35:00', '登录');
INSERT INTO `sys_logs` VALUES (389, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 18:59:11', '登录');
INSERT INTO `sys_logs` VALUES (390, '用户修改密码', '修改', '127.0.0.1', 'xtz', '2024-01-17 18:59:26', '修改xtz用户密码');
INSERT INTO `sys_logs` VALUES (391, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 18:59:36', '登录');
INSERT INTO `sys_logs` VALUES (392, '登录', '登录', '127.0.0.1', 'jjm10', '2024-01-17 19:05:04', '登录');
INSERT INTO `sys_logs` VALUES (393, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 19:06:16', '登录');
INSERT INTO `sys_logs` VALUES (394, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 19:09:31', '登录');
INSERT INTO `sys_logs` VALUES (395, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 19:11:14', '登录');
INSERT INTO `sys_logs` VALUES (396, '登录', '登录', '127.0.0.1', 'jjm10', '2024-01-17 19:24:54', '登录');
INSERT INTO `sys_logs` VALUES (397, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 19:25:49', '登录');
INSERT INTO `sys_logs` VALUES (398, '登录', '登录', '127.0.0.1', 'jjm10', '2024-01-17 20:09:44', '登录');
INSERT INTO `sys_logs` VALUES (399, '机构用户管理', '删除', '127.0.0.1', 'jjm10', '2024-01-17 20:20:13', '删除jjm10用户');
INSERT INTO `sys_logs` VALUES (400, '机构用户管理', '删除', '127.0.0.1', 'jjm10', '2024-01-17 20:20:22', '删除user用户');
INSERT INTO `sys_logs` VALUES (401, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:32', '新增2024-01-17 20:20:32的天气数据');
INSERT INTO `sys_logs` VALUES (402, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (403, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (404, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (405, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (406, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (407, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (408, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (409, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (410, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (411, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (412, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (413, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (414, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (415, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (416, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (417, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (418, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (419, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (420, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (421, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (422, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (423, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (424, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (425, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (426, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (427, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (428, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (429, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (430, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (431, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (432, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (433, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (434, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (435, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (436, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (437, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (438, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (439, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (440, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (441, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (442, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (443, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (444, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (445, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (446, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (447, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (448, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (449, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (450, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (451, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (452, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (453, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (454, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (455, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (456, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (457, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (458, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (459, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (460, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (461, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (462, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (463, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (464, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (465, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (466, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (467, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (468, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (469, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (470, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (471, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (472, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (473, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (474, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (475, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (476, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (477, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (478, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (479, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (480, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (481, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (482, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (483, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (484, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (485, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (486, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (487, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (488, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (489, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (490, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (491, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (492, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (493, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (494, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (495, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (496, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (497, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (498, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (499, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (500, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (501, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (502, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (503, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (504, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (505, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (506, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (507, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (508, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (509, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (510, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (511, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (512, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (513, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (514, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (515, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (516, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (517, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (518, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (519, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (520, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (521, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (522, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (523, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (524, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (525, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (526, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (527, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (528, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (529, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (530, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (531, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (532, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (533, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (534, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (535, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (536, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (537, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (538, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (539, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (540, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (541, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (542, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (543, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (544, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (545, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (546, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (547, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (548, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (549, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (550, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (551, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (552, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (553, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (554, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (555, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (556, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (557, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (558, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (559, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (560, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (561, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (562, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (563, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (564, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (565, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (566, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (567, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (568, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (569, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (570, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (571, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (572, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (573, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (574, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (575, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:35', '新增2024-01-17 20:20:35的天气数据');
INSERT INTO `sys_logs` VALUES (576, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (577, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (578, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (579, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (580, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (581, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (582, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (583, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (584, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (585, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (586, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (587, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (588, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (589, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (590, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (591, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (592, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (593, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (594, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (595, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (596, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (597, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (598, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (599, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (600, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (601, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (602, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (603, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (604, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (605, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (606, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (607, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (608, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (609, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (610, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (611, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (612, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (613, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (614, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (615, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (616, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (617, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (618, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (619, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (620, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (621, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (622, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (623, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (624, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (625, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (626, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (627, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (628, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (629, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (630, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (631, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (632, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (633, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (634, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (635, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (636, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (637, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (638, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (639, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (640, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (641, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (642, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (643, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (644, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (645, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (646, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (647, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (648, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (649, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (650, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (651, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (652, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (653, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (654, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (655, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (656, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (657, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (658, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (659, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (660, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (661, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (662, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (663, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (664, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (665, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (666, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (667, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (668, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (669, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (670, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (671, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (672, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (673, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (674, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (675, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (676, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (677, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (678, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (679, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (680, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (681, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (682, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (683, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (684, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (685, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (686, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (687, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (688, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (689, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (690, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (691, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (692, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (693, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (694, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (695, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (696, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (697, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (698, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (699, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (700, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (701, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (702, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (703, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (704, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (705, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (706, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (707, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (708, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (709, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (710, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (711, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (712, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (713, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (714, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (715, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (716, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (717, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (718, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (719, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (720, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (721, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (722, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (723, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (724, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (725, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (726, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (727, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (728, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (729, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (730, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (731, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (732, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (733, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (734, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (735, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (736, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (737, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (738, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (739, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (740, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (741, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (742, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:36', '新增2024-01-17 20:20:36的天气数据');
INSERT INTO `sys_logs` VALUES (743, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (744, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (745, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (746, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (747, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (748, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (749, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (750, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (751, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (752, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (753, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (754, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (755, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (756, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (757, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (758, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (759, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (760, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (761, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (762, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (763, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (764, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (765, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (766, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (767, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (768, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (769, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (770, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (771, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (772, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (773, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (774, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (775, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (776, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (777, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (778, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (779, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (780, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (781, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (782, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (783, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (784, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (785, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (786, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (787, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (788, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (789, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (790, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (791, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (792, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (793, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (794, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (795, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (796, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (797, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (798, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (799, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (800, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (801, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (802, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (803, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (804, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (805, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (806, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (807, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (808, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (809, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (810, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (811, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (812, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (813, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (814, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (815, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (816, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (817, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (818, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (819, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (820, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (821, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (822, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (823, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (824, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (825, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (826, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (827, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (828, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (829, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (830, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (831, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (832, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (833, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (834, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (835, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (836, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (837, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (838, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (839, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (840, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (841, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (842, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (843, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (844, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (845, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (846, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (847, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (848, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (849, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (850, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (851, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (852, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (853, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (854, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (855, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (856, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (857, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (858, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (859, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (860, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (861, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (862, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (863, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (864, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (865, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (866, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (867, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (868, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (869, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (870, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (871, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (872, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (873, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (874, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (875, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (876, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (877, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (878, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (879, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (880, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (881, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (882, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (883, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (884, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (885, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (886, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (887, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (888, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (889, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (890, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (891, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (892, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (893, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (894, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (895, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (896, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:37', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (897, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:37的天气数据');
INSERT INTO `sys_logs` VALUES (898, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (899, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (900, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (901, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (902, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (903, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (904, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (905, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (906, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (907, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:38', '新增2024-01-17 20:20:38的天气数据');
INSERT INTO `sys_logs` VALUES (908, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:41', '新增2024-01-17 20:20:41的天气数据');
INSERT INTO `sys_logs` VALUES (909, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:46', '新增2024-01-17 20:20:46的天气数据');
INSERT INTO `sys_logs` VALUES (910, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:46', '新增2024-01-17 20:20:46的天气数据');
INSERT INTO `sys_logs` VALUES (911, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (912, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (913, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (914, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (915, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (916, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (917, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (918, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (919, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (920, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (921, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (922, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (923, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (924, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (925, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (926, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (927, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (928, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (929, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (930, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (931, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (932, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (933, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (934, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (935, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (936, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (937, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (938, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (939, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (940, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (941, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (942, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (943, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (944, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (945, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (946, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (947, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (948, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (949, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (950, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (951, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (952, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (953, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (954, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (955, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (956, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (957, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (958, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (959, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (960, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (961, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (962, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (963, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (964, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (965, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (966, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (967, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (968, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (969, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (970, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (971, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (972, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (973, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (974, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (975, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (976, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (977, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (978, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (979, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (980, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (981, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (982, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (983, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (984, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (985, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (986, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (987, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (988, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (989, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (990, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (991, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (992, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (993, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (994, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (995, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:47', '新增2024-01-17 20:20:47的天气数据');
INSERT INTO `sys_logs` VALUES (996, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (997, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (998, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (999, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1000, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1001, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1002, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1003, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1004, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1005, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1006, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1007, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1008, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1009, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1010, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1011, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1012, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1013, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1014, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1015, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1016, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1017, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1018, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1019, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1020, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1021, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1022, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1023, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1024, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1025, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1026, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1027, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1028, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1029, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1030, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1031, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1032, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1033, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1034, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1035, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1036, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1037, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1038, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1039, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1040, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1041, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1042, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1043, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1044, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1045, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1046, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1047, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1048, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1049, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1050, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1051, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1052, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1053, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1054, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1055, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1056, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1057, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1058, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1059, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1060, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1061, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1062, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1063, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1064, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1065, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1066, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1067, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1068, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1069, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1070, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1071, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1072, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1073, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1074, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1075, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1076, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1077, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1078, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1079, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1080, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1081, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1082, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1083, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:48', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1084, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:48的天气数据');
INSERT INTO `sys_logs` VALUES (1085, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1086, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1087, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1088, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1089, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1090, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1091, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1092, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1093, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1094, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1095, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1096, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1097, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1098, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1099, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1100, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1101, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1102, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1103, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1104, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1105, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1106, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1107, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1108, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1109, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1110, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1111, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1112, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1113, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1114, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1115, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1116, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1117, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1118, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1119, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1120, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1121, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1122, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1123, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1124, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1125, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1126, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1127, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1128, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1129, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1130, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1131, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1132, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1133, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1134, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1135, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1136, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1137, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1138, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1139, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1140, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1141, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1142, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1143, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1144, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1145, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1146, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1147, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1148, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1149, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1150, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1151, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1152, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1153, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1154, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:49', '新增2024-01-17 20:20:49的天气数据');
INSERT INTO `sys_logs` VALUES (1155, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1156, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1157, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1158, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1159, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1160, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1161, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1162, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1163, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1164, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1165, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1166, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1167, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1168, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:50', '新增2024-01-17 20:20:50的天气数据');
INSERT INTO `sys_logs` VALUES (1169, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:51', '新增2024-01-17 20:20:51的天气数据');
INSERT INTO `sys_logs` VALUES (1170, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:53', '新增2024-01-17 20:20:53的天气数据');
INSERT INTO `sys_logs` VALUES (1171, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:54', '新增2024-01-17 20:20:54的天气数据');
INSERT INTO `sys_logs` VALUES (1172, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:54', '新增2024-01-17 20:20:54的天气数据');
INSERT INTO `sys_logs` VALUES (1173, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:55', '新增2024-01-17 20:20:55的天气数据');
INSERT INTO `sys_logs` VALUES (1174, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:55', '新增2024-01-17 20:20:55的天气数据');
INSERT INTO `sys_logs` VALUES (1175, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:55', '新增2024-01-17 20:20:55的天气数据');
INSERT INTO `sys_logs` VALUES (1176, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:56', '新增2024-01-17 20:20:56的天气数据');
INSERT INTO `sys_logs` VALUES (1177, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:57', '新增2024-01-17 20:20:57的天气数据');
INSERT INTO `sys_logs` VALUES (1178, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:57', '新增2024-01-17 20:20:57的天气数据');
INSERT INTO `sys_logs` VALUES (1179, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:58', '新增2024-01-17 20:20:58的天气数据');
INSERT INTO `sys_logs` VALUES (1180, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:58', '新增2024-01-17 20:20:58的天气数据');
INSERT INTO `sys_logs` VALUES (1181, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:59', '新增2024-01-17 20:20:59的天气数据');
INSERT INTO `sys_logs` VALUES (1182, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:20:59', '新增2024-01-17 20:20:59的天气数据');
INSERT INTO `sys_logs` VALUES (1183, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:00', '新增2024-01-17 20:21:00的天气数据');
INSERT INTO `sys_logs` VALUES (1184, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:00', '新增2024-01-17 20:21:00的天气数据');
INSERT INTO `sys_logs` VALUES (1185, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:01', '新增2024-01-17 20:21:01的天气数据');
INSERT INTO `sys_logs` VALUES (1186, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:01', '新增2024-01-17 20:21:01的天气数据');
INSERT INTO `sys_logs` VALUES (1187, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:02', '新增2024-01-17 20:21:02的天气数据');
INSERT INTO `sys_logs` VALUES (1188, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:03', '新增2024-01-17 20:21:03的天气数据');
INSERT INTO `sys_logs` VALUES (1189, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:04', '新增2024-01-17 20:21:04的天气数据');
INSERT INTO `sys_logs` VALUES (1190, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1191, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1192, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1193, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1194, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1195, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1196, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1197, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1198, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1199, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1200, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1201, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1202, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1203, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1204, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1205, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1206, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1207, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1208, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1209, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1210, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1211, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1212, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1213, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1214, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1215, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1216, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1217, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1218, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1219, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1220, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1221, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1222, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1223, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1224, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1225, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1226, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1227, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1228, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1229, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1230, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1231, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1232, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1233, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1234, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1235, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1236, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1237, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1238, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1239, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1240, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1241, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1242, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1243, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1244, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1245, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1246, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1247, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1248, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1249, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1250, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1251, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1252, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1253, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1254, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1255, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1256, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1257, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1258, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1259, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1260, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1261, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1262, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1263, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1264, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1265, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1266, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1267, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1268, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1269, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1270, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1271, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1272, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1273, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1274, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1275, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1276, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1277, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1278, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1279, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1280, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:05', '新增2024-01-17 20:21:05的天气数据');
INSERT INTO `sys_logs` VALUES (1281, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1282, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1283, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1284, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1285, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1286, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1287, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1288, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1289, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1290, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1291, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1292, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1293, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1294, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1295, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1296, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1297, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1298, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1299, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1300, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1301, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1302, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1303, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1304, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1305, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1306, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1307, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1308, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1309, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1310, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1311, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1312, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1313, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1314, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1315, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1316, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1317, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1318, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1319, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1320, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1321, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1322, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1323, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1324, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1325, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1326, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1327, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1328, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1329, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1330, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1331, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1332, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1333, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1334, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1335, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1336, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1337, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1338, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1339, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1340, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1341, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1342, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1343, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1344, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1345, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1346, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1347, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1348, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1349, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1350, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1351, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1352, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1353, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1354, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1355, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1356, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1357, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1358, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1359, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1360, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1361, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1362, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1363, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1364, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1365, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1366, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1367, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1368, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1369, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1370, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1371, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1372, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1373, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1374, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1375, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1376, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1377, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1378, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1379, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1380, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1381, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1382, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1383, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1384, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1385, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1386, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1387, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1388, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1389, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1390, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1391, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1392, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1393, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1394, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1395, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1396, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1397, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1398, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1399, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1400, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1401, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1402, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1403, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1404, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1405, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1406, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1407, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1408, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1409, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1410, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1411, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1412, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1413, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1414, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1415, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1416, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1417, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1418, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1419, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1420, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1421, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1422, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1423, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1424, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1425, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1426, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1427, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1428, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1429, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1430, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1431, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1432, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1433, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1434, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1435, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1436, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1437, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1438, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1439, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1440, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1441, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1442, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1443, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1444, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1445, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1446, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1447, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1448, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1449, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:06', '新增2024-01-17 20:21:06的天气数据');
INSERT INTO `sys_logs` VALUES (1450, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1451, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1452, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1453, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1454, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1455, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1456, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1457, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1458, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1459, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1460, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1461, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1462, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1463, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1464, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1465, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:21:07', '新增2024-01-17 20:21:07的天气数据');
INSERT INTO `sys_logs` VALUES (1466, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1467, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1468, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1469, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1470, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1471, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1472, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1473, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1474, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1475, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1476, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1477, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1478, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1479, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1480, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1481, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1482, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1483, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1484, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1485, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1486, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1487, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1488, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1489, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1490, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1491, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1492, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1493, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1494, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1495, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1496, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1497, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1498, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1499, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1500, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1501, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1502, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1503, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1504, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1505, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1506, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1507, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1508, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1509, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1510, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1511, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1512, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1513, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1514, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1515, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1516, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1517, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1518, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1519, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1520, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1521, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1522, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1523, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1524, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1525, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1526, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1527, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1528, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1529, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1530, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1531, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1532, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1533, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1534, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1535, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1536, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1537, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1538, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1539, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1540, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1541, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1542, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1543, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1544, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1545, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1546, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1547, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1548, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1549, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1550, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1551, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1552, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1553, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1554, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1555, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1556, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1557, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1558, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1559, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1560, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1561, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1562, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1563, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1564, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1565, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1566, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1567, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1568, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1569, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1570, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1571, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1572, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1573, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1574, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1575, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1576, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1577, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1578, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1579, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1580, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1581, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1582, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1583, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1584, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1585, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1586, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1587, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1588, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1589, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1590, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1591, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1592, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1593, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1594, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1595, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1596, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1597, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1598, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1599, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1600, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1601, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1602, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1603, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1604, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1605, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1606, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1607, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1608, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1609, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1610, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1611, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1612, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1613, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1614, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1615, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1616, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1617, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1618, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1619, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1620, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1621, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1622, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1623, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1624, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1625, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1626, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1627, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1628, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1629, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1630, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1631, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1632, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1633, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1634, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1635, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1636, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1637, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1638, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1639, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1640, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1641, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1642, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1643, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1644, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1645, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1646, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1647, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1648, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1649, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1650, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1651, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1652, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1653, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1654, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:12', '新增2024-01-17 20:22:12的天气数据');
INSERT INTO `sys_logs` VALUES (1655, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1656, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1657, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1658, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1659, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1660, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1661, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1662, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1663, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1664, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1665, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1666, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1667, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1668, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1669, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1670, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1671, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1672, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1673, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1674, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1675, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1676, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1677, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1678, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1679, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1680, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1681, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1682, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1683, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1684, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1685, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1686, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1687, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1688, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1689, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1690, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1691, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1692, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1693, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1694, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1695, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1696, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1697, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1698, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1699, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1700, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1701, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1702, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1703, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1704, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1705, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1706, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1707, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1708, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1709, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1710, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1711, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1712, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1713, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1714, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1715, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1716, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1717, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1718, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1719, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1720, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1721, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1722, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1723, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1724, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1725, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1726, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1727, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1728, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1729, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1730, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1731, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1732, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1733, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1734, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1735, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1736, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1737, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1738, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1739, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1740, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1741, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1742, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1743, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1744, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1745, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1746, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1747, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1748, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1749, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1750, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1751, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1752, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1753, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1754, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1755, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1756, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1757, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1758, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1759, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1760, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1761, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1762, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1763, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1764, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1765, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1766, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1767, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1768, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1769, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1770, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1771, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1772, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1773, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1774, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1775, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1776, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1777, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1778, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1779, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1780, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1781, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1782, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1783, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1784, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1785, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1786, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1787, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1788, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1789, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1790, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1791, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1792, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1793, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1794, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1795, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1796, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1797, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1798, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1799, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1800, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1801, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1802, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1803, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1804, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1805, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1806, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1807, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1808, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1809, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1810, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1811, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1812, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1813, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1814, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1815, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1816, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1817, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1818, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1819, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1820, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1821, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1822, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1823, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1824, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:13', '新增2024-01-17 20:22:13的天气数据');
INSERT INTO `sys_logs` VALUES (1825, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1826, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1827, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1828, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1829, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1830, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1831, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1832, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1833, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1834, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1835, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1836, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1837, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1838, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1839, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1840, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1841, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1842, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1843, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1844, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1845, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1846, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1847, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1848, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1849, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1850, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1851, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1852, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1853, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1854, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1855, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1856, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1857, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1858, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1859, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1860, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1861, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1862, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1863, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1864, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1865, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1866, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1867, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1868, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1869, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1870, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1871, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1872, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1873, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1874, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1875, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1876, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1877, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1878, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1879, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1880, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1881, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1882, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1883, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1884, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1885, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1886, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1887, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1888, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1889, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1890, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1891, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1892, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1893, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1894, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1895, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1896, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1897, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1898, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1899, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1900, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1901, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1902, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1903, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1904, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1905, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1906, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1907, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1908, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1909, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1910, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1911, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1912, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1913, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1914, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1915, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1916, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1917, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1918, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1919, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1920, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1921, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1922, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1923, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1924, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1925, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:14', '新增2024-01-17 20:22:14的天气数据');
INSERT INTO `sys_logs` VALUES (1926, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1927, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1928, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1929, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1930, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1931, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1932, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1933, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1934, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1935, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1936, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1937, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1938, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1939, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1940, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1941, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1942, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1943, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1944, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1945, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1946, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1947, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1948, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1949, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1950, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1951, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1952, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1953, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1954, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1955, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1956, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1957, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1958, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1959, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1960, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1961, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1962, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1963, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1964, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1965, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1966, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1967, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1968, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1969, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1970, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1971, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1972, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1973, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1974, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1975, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1976, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1977, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1978, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1979, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1980, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1981, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1982, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1983, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1984, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1985, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1986, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1987, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1988, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1989, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1990, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1991, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1992, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1993, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1994, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1995, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1996, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1997, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1998, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (1999, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2000, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2001, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2002, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2003, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2004, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2005, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2006, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2007, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2008, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2009, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2010, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2011, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2012, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2013, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2014, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2015, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2016, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2017, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2018, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2019, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2020, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2021, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2022, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2024, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2025, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2026, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2027, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2028, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2029, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2030, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2031, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2032, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2033, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2034, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2035, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2036, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2037, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2038, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2039, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2040, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2041, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2042, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2043, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2044, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2045, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2046, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2047, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2048, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2049, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2050, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2051, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:17', '新增2024-01-17 20:22:17的天气数据');
INSERT INTO `sys_logs` VALUES (2052, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2053, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2054, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2055, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2056, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2057, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2058, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2059, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2060, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2061, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2062, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2063, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2064, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2065, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2066, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2067, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2068, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2069, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2070, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2071, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2072, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2073, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2074, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2075, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2076, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2077, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2078, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2079, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2080, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2081, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2082, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2083, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2084, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2085, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2086, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2087, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2088, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2089, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2090, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2091, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2092, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2093, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2094, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2095, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2096, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2097, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2098, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2099, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2100, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2101, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2102, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2103, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2104, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2105, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2106, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2107, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2108, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2109, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2110, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2111, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2112, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2113, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2114, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2115, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2116, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2117, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2118, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2119, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2120, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2121, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2122, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2123, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2124, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2125, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2126, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2127, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2128, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2129, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2130, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2131, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2132, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2133, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2134, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2135, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2136, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2137, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2138, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2139, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2140, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2141, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2142, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2143, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2144, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2145, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2146, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2147, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2148, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2149, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2150, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2151, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2152, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2153, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2154, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2155, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2156, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2157, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2158, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2159, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2160, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2161, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2162, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2163, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2164, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2165, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2166, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2167, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2168, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2169, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2170, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2171, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2172, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2173, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2174, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2175, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2176, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2177, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2178, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2179, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2180, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2181, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2182, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2183, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2184, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2185, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2186, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2187, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2188, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2189, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2190, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2191, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2192, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2193, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2194, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2195, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2196, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2197, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2198, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2199, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2200, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2201, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2202, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2203, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2204, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2205, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2206, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2207, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2208, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2209, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2210, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2211, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2212, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2213, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2214, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2215, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2216, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2217, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2218, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2219, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2220, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2221, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2222, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2223, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2224, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2225, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2226, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2227, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2228, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2229, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2230, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2231, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2232, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2233, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2234, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2235, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2236, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2237, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2238, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2239, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2240, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2241, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2242, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2243, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:18', '新增2024-01-17 20:22:18的天气数据');
INSERT INTO `sys_logs` VALUES (2244, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2245, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2246, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2247, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2248, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2249, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2250, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2251, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2252, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2253, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2254, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2255, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2256, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2257, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2258, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2259, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2260, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2261, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2262, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2263, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2264, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2265, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2266, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2267, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2268, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2269, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2270, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2271, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2272, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2273, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2274, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2275, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2276, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2277, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2278, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2279, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2280, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2281, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2282, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2283, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2284, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2285, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2286, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2287, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2288, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2289, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2290, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2291, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2292, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2293, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2294, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2295, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2296, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2297, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2298, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2299, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2300, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2301, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2302, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2303, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2304, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2305, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2306, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2307, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2308, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2309, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2310, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2311, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2312, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2313, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2314, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2315, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2316, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2317, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2318, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2319, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2320, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2321, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2322, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2323, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2324, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2325, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2326, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2327, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2328, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2329, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2330, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2331, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2332, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2333, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2334, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2335, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2336, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2337, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2338, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2339, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2340, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2341, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2342, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2343, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2344, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2345, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2346, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2347, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2348, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2349, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2350, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2351, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2352, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2353, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2354, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2355, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2356, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2357, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2358, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2359, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2360, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2361, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2362, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2363, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2364, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2365, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2366, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2367, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2368, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2369, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2370, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2371, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2372, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2373, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2374, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2375, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2376, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2377, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2378, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2379, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2380, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2381, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2382, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2383, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:19', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2384, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:19的天气数据');
INSERT INTO `sys_logs` VALUES (2385, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2386, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2387, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2388, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2389, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2390, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2391, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2392, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2393, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2394, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2395, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2396, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2397, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2398, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2399, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2400, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2401, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2402, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2403, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2404, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2405, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2406, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2407, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2408, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2409, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2410, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2411, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:20', '新增2024-01-17 20:22:20的天气数据');
INSERT INTO `sys_logs` VALUES (2412, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:24', '新增2024-01-17 20:22:24的天气数据');
INSERT INTO `sys_logs` VALUES (2413, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:31', '新增2024-01-17 20:22:31的天气数据');
INSERT INTO `sys_logs` VALUES (2414, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2415, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2416, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2417, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2418, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2419, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2420, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2421, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2422, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2423, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2424, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2425, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2426, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2427, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2428, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2429, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2430, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2431, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2432, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2433, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2434, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2435, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2436, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2437, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2438, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2439, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2440, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2441, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2442, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2443, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2444, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2445, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2446, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2447, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2448, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2449, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2450, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2451, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2452, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2453, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2454, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2455, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2456, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2457, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2458, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2459, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2460, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2461, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2462, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:32', '新增2024-01-17 20:22:32的天气数据');
INSERT INTO `sys_logs` VALUES (2463, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2464, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2465, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2466, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2467, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2468, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2469, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2470, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2471, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2472, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2473, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2474, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2475, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2476, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2477, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2478, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2479, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2480, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2481, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2482, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2483, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2484, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2485, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2486, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2487, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2488, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2489, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2490, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2491, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2492, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2493, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2494, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2495, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2496, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2497, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2498, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2499, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2500, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2501, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2502, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2503, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2504, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2505, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2506, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2507, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2508, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2509, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2510, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2511, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2512, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2513, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2514, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2515, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2516, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2517, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2518, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2519, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2520, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2521, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2522, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2523, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2524, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2525, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2526, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2527, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2528, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2529, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2530, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2531, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2532, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2533, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2534, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2535, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2536, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2537, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2538, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2539, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2540, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2541, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2542, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2543, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2544, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2545, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2546, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2547, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2548, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2549, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2550, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2551, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2552, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2553, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2554, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2555, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2556, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2557, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2558, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2559, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2560, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2561, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2562, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2563, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2564, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2565, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2566, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2567, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2568, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2569, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2570, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2571, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2572, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2573, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2574, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2575, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2576, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2577, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2578, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2579, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2580, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2581, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2582, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2583, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2584, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2585, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2586, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2587, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2588, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2589, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2590, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2591, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2592, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2593, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2594, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2595, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2596, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2597, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2598, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2599, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2600, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2601, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2602, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2603, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2604, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2605, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2606, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2607, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2608, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2609, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2610, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2611, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2612, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2613, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2614, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2615, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2616, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2617, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2618, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:33', '新增2024-01-17 20:22:33的天气数据');
INSERT INTO `sys_logs` VALUES (2619, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2620, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2621, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2622, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2623, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2624, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2625, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2626, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2627, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2628, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2629, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2630, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2631, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2632, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2633, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2634, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2635, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2636, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2637, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2638, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2639, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2640, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2641, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2642, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2643, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2644, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2645, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2646, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2647, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2648, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2649, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2650, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2651, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2652, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2653, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2654, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2655, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2656, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2657, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2658, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2659, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2660, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2661, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2662, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2663, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2664, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2665, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2666, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2667, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2668, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2669, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2670, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2671, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2672, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2673, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2674, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2675, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2676, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2677, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2678, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2679, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2680, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2681, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2682, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2683, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2684, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2685, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2686, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2687, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2688, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2689, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2690, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2691, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2692, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2693, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2694, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2695, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2696, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2697, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2698, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2699, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2700, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2701, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2702, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2703, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2704, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2705, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2706, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2707, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2708, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2709, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2710, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2711, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2712, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2713, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2714, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2715, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2716, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2717, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2718, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2719, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2720, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2721, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2722, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2723, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2724, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2725, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2726, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2727, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2728, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2729, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2730, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2731, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2732, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2733, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2734, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2735, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2736, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2737, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2738, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2739, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2740, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2741, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2742, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2743, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2744, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2745, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2746, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2747, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2748, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2749, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:34', '新增2024-01-17 20:22:34的天气数据');
INSERT INTO `sys_logs` VALUES (2750, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2751, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2752, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2753, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2754, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2755, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2756, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2757, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2758, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2759, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2760, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2761, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2762, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2763, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2764, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2765, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2766, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2767, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2768, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2769, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2770, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2771, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2772, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2773, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2774, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2775, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2776, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2777, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2778, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2779, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2780, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2781, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2782, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2783, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2784, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2785, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2786, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2787, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2788, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2789, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2790, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2791, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2792, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2793, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2794, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2795, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2796, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2797, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2798, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2799, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2800, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2801, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2802, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2803, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2804, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2805, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2806, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2807, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2808, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2809, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2810, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2811, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2812, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2813, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2814, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2815, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2816, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2817, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2818, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2819, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2820, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2821, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2822, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2823, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:35', '新增2024-01-17 20:22:35的天气数据');
INSERT INTO `sys_logs` VALUES (2824, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:36', '新增2024-01-17 20:22:36的天气数据');
INSERT INTO `sys_logs` VALUES (2825, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:37', '新增2024-01-17 20:22:37的天气数据');
INSERT INTO `sys_logs` VALUES (2826, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:41', '新增2024-01-17 20:22:41的天气数据');
INSERT INTO `sys_logs` VALUES (2827, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2828, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2829, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2830, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2831, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2832, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2833, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2834, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2835, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2836, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2837, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2838, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2839, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2840, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2841, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2842, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2843, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2844, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2845, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2846, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2847, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2848, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2849, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2850, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2851, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2852, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2853, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2854, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2855, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2856, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2857, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2858, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2859, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2860, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2861, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2862, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2863, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2864, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2865, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2866, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2867, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2868, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2869, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2870, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2871, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2872, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2873, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2874, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2875, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2876, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2877, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2878, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2879, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2880, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2881, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2882, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2883, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2884, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2885, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2886, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2887, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2888, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2889, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2890, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2891, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2892, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2893, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2894, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2895, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2896, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2897, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2898, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2899, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2900, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2901, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2902, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2903, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2904, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2905, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2906, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2907, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2908, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2909, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2910, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2911, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2912, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2913, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2914, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2915, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2916, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2917, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2918, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2919, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2920, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2921, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2922, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2923, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2924, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2925, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2926, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2927, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2928, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2929, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2930, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2931, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2932, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2933, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2934, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2935, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2936, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2937, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2938, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2939, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2940, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2941, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2942, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2943, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2944, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:43', '新增2024-01-17 20:22:43的天气数据');
INSERT INTO `sys_logs` VALUES (2945, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2946, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2947, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2948, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2949, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2950, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2951, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2952, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2953, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2954, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2955, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2956, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2957, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2958, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2959, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2960, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2961, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2962, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2963, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2964, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2965, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2966, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2967, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2968, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2969, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2970, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2971, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2972, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2973, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2974, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2975, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2976, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2977, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2978, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2979, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2980, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2981, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2982, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2983, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2984, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2985, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2986, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2987, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2988, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2989, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2990, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2991, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2992, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2993, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2994, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2995, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2996, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2997, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2998, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (2999, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3000, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3001, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3002, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3003, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3004, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3005, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3006, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3007, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3008, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3009, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3010, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3011, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3012, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3013, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3014, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3015, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3016, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3017, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3018, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3019, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3020, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3021, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3022, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3023, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3024, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3025, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3026, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3027, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3028, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3029, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3030, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3031, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3032, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3033, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3034, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3035, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3036, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3037, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3038, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3039, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3040, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3041, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3042, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3043, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3044, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3045, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3046, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3047, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3048, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3049, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3050, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3051, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3052, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3053, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3054, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3055, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3056, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3057, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3058, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3059, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3060, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3061, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3062, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3063, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3064, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3065, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3066, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3067, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3068, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3069, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3070, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3071, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3072, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3073, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3074, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3075, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3076, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3077, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3078, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3079, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3080, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3081, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3082, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3083, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3084, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:44', '新增2024-01-17 20:22:44的天气数据');
INSERT INTO `sys_logs` VALUES (3085, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3086, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3087, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3088, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3089, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3090, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3091, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3092, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3093, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3094, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3095, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3096, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3097, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3098, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3099, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3100, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3101, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3102, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3103, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3104, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3105, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3106, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3107, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3108, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3109, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3110, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3111, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3112, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3113, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3114, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3115, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3116, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3117, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3118, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3119, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3120, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3121, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3122, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3123, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3124, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3125, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3126, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3127, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3128, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3129, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3130, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3131, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3132, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3133, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3134, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3135, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3136, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3137, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3138, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3139, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3140, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3141, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3142, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3143, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3144, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3145, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3146, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3147, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3148, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3149, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3150, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3151, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3152, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3153, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3154, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3155, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3156, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3157, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3158, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3159, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3160, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3161, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3162, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3163, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3164, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3165, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3166, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3167, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3168, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3169, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3170, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3171, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3172, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3173, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3174, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3175, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3176, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3177, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3178, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3179, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3180, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3181, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3182, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3183, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3184, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3185, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3186, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3187, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3188, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3189, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3190, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3191, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3192, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3193, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3194, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3195, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3196, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3197, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3198, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3199, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3200, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3201, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3202, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3203, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3204, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3205, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3206, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3207, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:45', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3208, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3209, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:45的天气数据');
INSERT INTO `sys_logs` VALUES (3210, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3211, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3212, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3213, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3214, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3215, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3216, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3217, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3218, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3219, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3220, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3221, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3222, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3223, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3224, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3225, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3226, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3227, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3228, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3229, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3230, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3231, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3232, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3233, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:46', '新增2024-01-17 20:22:46的天气数据');
INSERT INTO `sys_logs` VALUES (3234, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:47', '新增2024-01-17 20:22:47的天气数据');
INSERT INTO `sys_logs` VALUES (3235, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:48', '新增2024-01-17 20:22:48的天气数据');
INSERT INTO `sys_logs` VALUES (3236, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:49', '新增2024-01-17 20:22:49的天气数据');
INSERT INTO `sys_logs` VALUES (3237, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3238, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3239, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3240, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3241, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3242, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3243, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3244, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3245, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3246, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3247, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3248, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3249, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3250, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3251, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3252, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3253, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3254, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3255, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3256, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3257, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3258, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3259, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3260, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3261, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3262, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3263, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3264, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3265, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3266, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3267, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3268, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3269, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3270, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3271, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3272, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3273, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3274, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3275, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3276, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3277, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3278, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3279, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3280, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3281, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3282, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3283, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3284, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3285, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3286, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3287, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3288, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3289, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3290, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3291, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3292, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3293, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3294, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3295, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3296, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3297, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3298, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3299, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3300, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3301, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3302, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3303, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3304, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3305, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3306, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3307, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3308, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3309, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3310, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3311, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3312, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3313, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3314, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3315, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3316, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3317, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3318, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3319, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3320, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3321, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3322, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3323, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3324, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3325, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3326, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3327, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:50', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3328, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3329, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:50的天气数据');
INSERT INTO `sys_logs` VALUES (3330, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3331, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3332, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3333, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3334, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3335, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3336, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3337, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3338, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3339, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3340, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3341, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3342, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3343, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3344, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3345, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3346, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3347, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3348, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3349, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3350, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3351, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3352, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3353, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3354, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3355, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3356, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3357, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3358, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3359, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3360, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3361, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3362, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3363, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3364, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3365, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3366, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3367, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3368, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3369, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3370, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3371, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3372, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3373, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3374, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3375, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3376, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3377, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3378, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3379, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3380, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3381, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3382, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3383, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3384, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3385, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3386, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3387, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3388, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3389, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3390, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3391, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3392, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3393, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3394, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3395, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3396, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3397, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3398, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3399, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3400, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3401, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3402, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3403, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3404, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3405, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3406, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3407, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3408, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3409, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3410, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3411, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3412, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3413, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3414, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3415, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3416, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3417, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3418, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3419, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3420, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3421, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3422, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:51', '新增2024-01-17 20:22:51的天气数据');
INSERT INTO `sys_logs` VALUES (3423, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:52', '新增2024-01-17 20:22:52的天气数据');
INSERT INTO `sys_logs` VALUES (3424, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:52', '新增2024-01-17 20:22:52的天气数据');
INSERT INTO `sys_logs` VALUES (3425, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:53', '新增2024-01-17 20:22:53的天气数据');
INSERT INTO `sys_logs` VALUES (3426, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:54', '新增2024-01-17 20:22:54的天气数据');
INSERT INTO `sys_logs` VALUES (3427, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:55', '新增2024-01-17 20:22:55的天气数据');
INSERT INTO `sys_logs` VALUES (3428, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:55', '新增2024-01-17 20:22:55的天气数据');
INSERT INTO `sys_logs` VALUES (3429, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:55', '新增2024-01-17 20:22:55的天气数据');
INSERT INTO `sys_logs` VALUES (3430, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:56', '新增2024-01-17 20:22:56的天气数据');
INSERT INTO `sys_logs` VALUES (3431, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:56', '新增2024-01-17 20:22:56的天气数据');
INSERT INTO `sys_logs` VALUES (3432, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:57', '新增2024-01-17 20:22:57的天气数据');
INSERT INTO `sys_logs` VALUES (3433, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:57', '新增2024-01-17 20:22:57的天气数据');
INSERT INTO `sys_logs` VALUES (3434, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:58', '新增2024-01-17 20:22:58的天气数据');
INSERT INTO `sys_logs` VALUES (3435, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:58', '新增2024-01-17 20:22:58的天气数据');
INSERT INTO `sys_logs` VALUES (3436, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:59', '新增2024-01-17 20:22:59的天气数据');
INSERT INTO `sys_logs` VALUES (3437, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:22:59', '新增2024-01-17 20:22:59的天气数据');
INSERT INTO `sys_logs` VALUES (3438, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:00', '新增2024-01-17 20:23:00的天气数据');
INSERT INTO `sys_logs` VALUES (3439, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:00', '新增2024-01-17 20:23:00的天气数据');
INSERT INTO `sys_logs` VALUES (3440, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:01', '新增2024-01-17 20:23:01的天气数据');
INSERT INTO `sys_logs` VALUES (3441, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:01', '新增2024-01-17 20:23:01的天气数据');
INSERT INTO `sys_logs` VALUES (3442, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:02', '新增2024-01-17 20:23:02的天气数据');
INSERT INTO `sys_logs` VALUES (3443, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:02', '新增2024-01-17 20:23:02的天气数据');
INSERT INTO `sys_logs` VALUES (3444, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:03', '新增2024-01-17 20:23:03的天气数据');
INSERT INTO `sys_logs` VALUES (3445, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:03', '新增2024-01-17 20:23:03的天气数据');
INSERT INTO `sys_logs` VALUES (3446, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:03', '新增2024-01-17 20:23:03的天气数据');
INSERT INTO `sys_logs` VALUES (3447, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:03', '新增2024-01-17 20:23:03的天气数据');
INSERT INTO `sys_logs` VALUES (3448, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:03', '新增2024-01-17 20:23:03的天气数据');
INSERT INTO `sys_logs` VALUES (3449, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:04', '新增2024-01-17 20:23:04的天气数据');
INSERT INTO `sys_logs` VALUES (3450, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:04', '新增2024-01-17 20:23:04的天气数据');
INSERT INTO `sys_logs` VALUES (3451, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:05', '新增2024-01-17 20:23:05的天气数据');
INSERT INTO `sys_logs` VALUES (3452, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:05', '新增2024-01-17 20:23:05的天气数据');
INSERT INTO `sys_logs` VALUES (3453, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3454, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3455, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3456, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3457, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3458, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3459, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3460, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3461, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3462, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3463, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3464, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3465, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3466, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3467, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3468, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3469, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3470, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3471, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3472, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3473, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3474, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3475, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3476, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3477, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3478, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3479, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3480, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3481, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3482, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3483, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3484, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3485, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3486, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3487, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3488, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3489, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3490, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3491, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3492, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3493, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3494, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3495, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3496, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3497, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3498, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3499, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3500, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3501, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3502, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3503, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3504, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3505, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3506, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3507, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3508, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3509, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3510, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3511, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3512, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:06', '新增2024-01-17 20:23:06的天气数据');
INSERT INTO `sys_logs` VALUES (3513, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3514, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3515, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3516, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3517, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3518, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3519, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3520, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3521, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3522, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3523, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3524, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3525, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3526, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3527, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3528, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3529, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3530, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3531, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3532, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3533, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3534, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3535, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3536, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3537, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3538, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3539, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3540, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3541, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3542, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3543, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3544, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3545, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3546, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3547, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3548, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3549, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3550, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3551, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3552, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3553, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3554, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3555, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3556, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3557, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3558, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3559, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3560, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3561, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3562, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3563, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3564, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3565, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3566, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3567, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3568, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3569, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3570, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3571, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3572, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3573, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3574, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3575, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3576, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3577, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3578, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3579, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3580, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3581, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3582, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3583, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3584, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3585, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3586, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3587, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3588, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3589, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3590, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3591, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3592, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3593, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3594, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3595, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3596, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3597, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3598, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3599, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3600, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3601, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3602, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3603, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3604, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3605, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3606, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3607, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3608, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3609, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3610, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3611, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3612, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3613, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3614, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3615, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3616, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3617, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3618, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3619, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3620, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3621, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3622, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3623, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3624, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3625, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3626, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3627, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3628, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3629, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3630, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3631, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3632, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3633, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3634, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3635, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3636, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3637, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3638, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3639, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3640, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3641, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3642, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3643, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3644, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3645, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3646, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3647, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3648, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3649, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3650, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3651, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3652, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3653, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3654, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3655, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3656, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3657, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3658, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3659, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3660, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3661, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3662, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3663, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3664, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3665, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3666, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:07', '新增2024-01-17 20:23:07的天气数据');
INSERT INTO `sys_logs` VALUES (3667, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3668, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3669, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3670, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3671, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3672, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3673, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3674, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3675, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3676, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3677, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3678, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3679, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3680, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3681, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3682, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3683, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3684, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3685, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3686, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3687, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3688, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3689, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3690, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3691, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3692, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3693, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3694, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3695, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3696, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3697, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3698, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3699, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3700, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3701, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3702, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3703, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3704, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3705, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3706, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3707, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3708, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3709, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3710, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3711, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3712, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3713, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3714, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3715, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3716, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3717, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3718, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3719, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3720, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3721, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3722, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3723, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3724, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3725, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3726, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3727, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3728, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3729, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3730, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3731, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3732, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3733, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3734, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3735, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3736, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3737, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3738, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3739, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3740, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3741, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3742, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3743, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3744, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3745, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3746, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3747, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3748, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3749, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3750, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3751, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3752, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3753, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3754, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3755, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3756, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3757, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3758, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3759, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3760, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3761, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3762, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3763, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3764, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3765, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3766, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3767, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3768, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3769, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3770, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3771, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3772, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3773, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3774, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3775, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3776, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3777, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3778, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3779, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3780, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3781, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3782, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3783, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3784, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3785, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3786, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3787, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3788, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3789, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3790, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3791, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3792, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3793, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3794, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3795, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3796, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3797, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3798, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3799, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3800, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3801, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:08', '新增2024-01-17 20:23:08的天气数据');
INSERT INTO `sys_logs` VALUES (3802, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3803, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3804, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3805, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3806, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3807, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3808, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3809, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3810, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3811, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3812, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3813, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3814, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3815, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3816, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3817, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3818, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3819, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3820, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3821, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3822, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3823, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3824, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3825, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3826, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3827, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3828, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3829, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3830, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3831, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3832, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3833, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:09', '新增2024-01-17 20:23:09的天气数据');
INSERT INTO `sys_logs` VALUES (3834, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:10', '新增2024-01-17 20:23:10的天气数据');
INSERT INTO `sys_logs` VALUES (3835, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:11', '新增2024-01-17 20:23:11的天气数据');
INSERT INTO `sys_logs` VALUES (3836, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:12', '新增2024-01-17 20:23:12的天气数据');
INSERT INTO `sys_logs` VALUES (3837, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3838, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3839, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3840, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3841, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3842, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3843, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3844, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3845, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3846, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3847, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3848, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3849, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3850, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3851, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3852, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3853, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3854, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3855, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3856, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3857, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3858, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3859, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3860, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3861, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3862, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3863, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:13', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3864, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:13的天气数据');
INSERT INTO `sys_logs` VALUES (3865, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3866, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3867, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3868, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3869, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3870, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3871, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3872, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3873, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3874, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3875, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3876, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3877, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3878, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3879, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3880, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3881, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3882, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3883, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3884, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3885, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3886, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3887, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3888, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3889, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3890, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3891, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3892, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3893, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3894, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3895, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3896, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3897, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3898, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3899, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3900, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3901, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3902, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3903, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3904, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3905, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3906, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3907, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3908, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3909, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3910, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3911, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3912, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3913, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3914, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3915, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3916, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3917, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3918, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3919, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3920, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3921, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3922, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3923, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3924, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3925, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3926, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3927, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3928, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3929, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3930, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3931, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3932, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3933, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3934, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3935, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:14', '新增2024-01-17 20:23:14的天气数据');
INSERT INTO `sys_logs` VALUES (3936, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:15', '新增2024-01-17 20:23:15的天气数据');
INSERT INTO `sys_logs` VALUES (3937, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:15', '新增2024-01-17 20:23:15的天气数据');
INSERT INTO `sys_logs` VALUES (3938, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:15', '新增2024-01-17 20:23:15的天气数据');
INSERT INTO `sys_logs` VALUES (3939, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:15', '新增2024-01-17 20:23:15的天气数据');
INSERT INTO `sys_logs` VALUES (3940, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:16', '新增2024-01-17 20:23:16的天气数据');
INSERT INTO `sys_logs` VALUES (3941, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:17', '新增2024-01-17 20:23:17的天气数据');
INSERT INTO `sys_logs` VALUES (3942, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:17', '新增2024-01-17 20:23:17的天气数据');
INSERT INTO `sys_logs` VALUES (3943, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:18', '新增2024-01-17 20:23:18的天气数据');
INSERT INTO `sys_logs` VALUES (3944, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:19', '新增2024-01-17 20:23:19的天气数据');
INSERT INTO `sys_logs` VALUES (3945, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:19', '新增2024-01-17 20:23:19的天气数据');
INSERT INTO `sys_logs` VALUES (3946, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:20', '新增2024-01-17 20:23:20的天气数据');
INSERT INTO `sys_logs` VALUES (3947, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:20', '新增2024-01-17 20:23:20的天气数据');
INSERT INTO `sys_logs` VALUES (3948, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:21', '新增2024-01-17 20:23:21的天气数据');
INSERT INTO `sys_logs` VALUES (3949, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:21', '新增2024-01-17 20:23:21的天气数据');
INSERT INTO `sys_logs` VALUES (3950, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:22', '新增2024-01-17 20:23:22的天气数据');
INSERT INTO `sys_logs` VALUES (3951, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:22', '新增2024-01-17 20:23:22的天气数据');
INSERT INTO `sys_logs` VALUES (3952, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:23', '新增2024-01-17 20:23:23的天气数据');
INSERT INTO `sys_logs` VALUES (3953, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:23', '新增2024-01-17 20:23:23的天气数据');
INSERT INTO `sys_logs` VALUES (3954, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:24', '新增2024-01-17 20:23:24的天气数据');
INSERT INTO `sys_logs` VALUES (3955, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:24', '新增2024-01-17 20:23:24的天气数据');
INSERT INTO `sys_logs` VALUES (3956, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:25', '新增2024-01-17 20:23:25的天气数据');
INSERT INTO `sys_logs` VALUES (3957, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:25', '新增2024-01-17 20:23:25的天气数据');
INSERT INTO `sys_logs` VALUES (3958, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:26', '新增2024-01-17 20:23:26的天气数据');
INSERT INTO `sys_logs` VALUES (3959, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:26', '新增2024-01-17 20:23:26的天气数据');
INSERT INTO `sys_logs` VALUES (3960, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:27', '新增2024-01-17 20:23:27的天气数据');
INSERT INTO `sys_logs` VALUES (3961, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:27', '新增2024-01-17 20:23:27的天气数据');
INSERT INTO `sys_logs` VALUES (3962, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:28', '新增2024-01-17 20:23:28的天气数据');
INSERT INTO `sys_logs` VALUES (3963, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:28', '新增2024-01-17 20:23:28的天气数据');
INSERT INTO `sys_logs` VALUES (3964, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:29', '新增2024-01-17 20:23:29的天气数据');
INSERT INTO `sys_logs` VALUES (3965, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:29', '新增2024-01-17 20:23:29的天气数据');
INSERT INTO `sys_logs` VALUES (3966, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:30', '新增2024-01-17 20:23:30的天气数据');
INSERT INTO `sys_logs` VALUES (3967, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:30', '新增2024-01-17 20:23:30的天气数据');
INSERT INTO `sys_logs` VALUES (3968, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:31', '新增2024-01-17 20:23:31的天气数据');
INSERT INTO `sys_logs` VALUES (3969, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:31', '新增2024-01-17 20:23:31的天气数据');
INSERT INTO `sys_logs` VALUES (3970, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:32', '新增2024-01-17 20:23:32的天气数据');
INSERT INTO `sys_logs` VALUES (3971, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:32', '新增2024-01-17 20:23:32的天气数据');
INSERT INTO `sys_logs` VALUES (3972, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:33', '新增2024-01-17 20:23:33的天气数据');
INSERT INTO `sys_logs` VALUES (3973, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:33', '新增2024-01-17 20:23:33的天气数据');
INSERT INTO `sys_logs` VALUES (3974, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:34', '新增2024-01-17 20:23:34的天气数据');
INSERT INTO `sys_logs` VALUES (3975, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:34', '新增2024-01-17 20:23:34的天气数据');
INSERT INTO `sys_logs` VALUES (3976, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3977, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3978, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3979, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3980, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3981, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3982, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3983, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3984, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3985, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3986, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3987, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3988, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3989, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3990, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3991, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3992, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3993, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3994, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3995, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3996, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3997, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3998, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (3999, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4000, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4001, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4002, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4003, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4004, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4005, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4006, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4007, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4008, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4009, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4010, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4011, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4012, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4013, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4014, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4015, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4016, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4017, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4018, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4019, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4020, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4021, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4022, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4023, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4024, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4025, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4026, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4027, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:35', '新增2024-01-17 20:23:35的天气数据');
INSERT INTO `sys_logs` VALUES (4028, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4029, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4030, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4031, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4032, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4033, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4034, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4035, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4036, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4037, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4038, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4039, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4040, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4041, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4042, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4043, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4044, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4045, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4046, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4047, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4048, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4049, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4050, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4051, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4052, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4053, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4054, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4055, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4056, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4057, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4058, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4059, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4060, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4061, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4062, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4063, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4064, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4065, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4066, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4067, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4068, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4069, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4070, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4071, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4072, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4073, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4074, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4075, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4076, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4077, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4078, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4079, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4080, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4081, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4082, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4083, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4084, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4085, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4086, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4087, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4088, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4089, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4090, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4091, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4092, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4093, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4094, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4095, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4096, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4097, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4098, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4099, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4100, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4101, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4102, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4103, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4104, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4105, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4106, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4107, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4108, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4109, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4110, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4111, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4112, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4113, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4114, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4115, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4116, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4117, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4118, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4119, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4120, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4121, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4122, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4123, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4124, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4125, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4126, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4127, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4128, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4129, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4130, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4131, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4132, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4133, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4134, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4135, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4136, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4137, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4138, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4139, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4140, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4141, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4142, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4143, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4144, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4145, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4146, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4147, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4148, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4149, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4150, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4151, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4152, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4153, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4154, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4155, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4156, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4157, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4158, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4159, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4160, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4161, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4162, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4163, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4164, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4165, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4166, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4167, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4168, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4169, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4170, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4171, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4172, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4173, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4174, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4175, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4176, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4177, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:36', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4178, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:36的天气数据');
INSERT INTO `sys_logs` VALUES (4179, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4180, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4181, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4182, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4183, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4184, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4185, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4186, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4187, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4188, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4189, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4190, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4191, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4192, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4193, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4194, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4195, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4196, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4197, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4198, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4199, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4200, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4201, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4202, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4203, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4204, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4205, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4206, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4207, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4208, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4209, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4210, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4211, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4212, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4213, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4214, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4215, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4216, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4217, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4218, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4219, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4220, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4221, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4222, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4223, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4224, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4225, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4226, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4227, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4228, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4229, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4230, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4231, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4232, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4233, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4234, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4235, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4236, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4237, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4238, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4239, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4240, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4241, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4242, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4243, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4244, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4245, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4246, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4247, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4248, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4249, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4250, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4251, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4252, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4253, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4254, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4255, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4256, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4257, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4258, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4259, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4260, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4261, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4262, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4263, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4264, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4265, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4266, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4267, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4268, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4269, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4270, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4271, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4272, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4273, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4274, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4275, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4276, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4277, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4278, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4279, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4280, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4281, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4282, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4283, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4284, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4285, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4286, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4287, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:37', '新增2024-01-17 20:23:37的天气数据');
INSERT INTO `sys_logs` VALUES (4288, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4289, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4290, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4291, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4292, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4293, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4294, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4295, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4296, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4297, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4298, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4299, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4300, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4301, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4302, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4303, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4304, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4305, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4306, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4307, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4308, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4309, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4310, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4311, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4312, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4313, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4314, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4315, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4316, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4317, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4318, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4319, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4320, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4321, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4322, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4323, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4324, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4325, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4326, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4327, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4328, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4329, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4330, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4331, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4332, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4333, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4334, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4335, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4336, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4337, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4338, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:38', '新增2024-01-17 20:23:38的天气数据');
INSERT INTO `sys_logs` VALUES (4339, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:39', '新增2024-01-17 20:23:39的天气数据');
INSERT INTO `sys_logs` VALUES (4340, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:40', '新增2024-01-17 20:23:40的天气数据');
INSERT INTO `sys_logs` VALUES (4341, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4342, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4343, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4344, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4345, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4346, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4347, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4348, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4349, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4350, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4351, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4352, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4353, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4354, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4355, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4356, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4357, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4358, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4359, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4360, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4361, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4362, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4363, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4364, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4365, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4366, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4367, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4368, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4369, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4370, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4371, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4372, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4373, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4374, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4375, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4376, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4377, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4378, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:42', '新增2024-01-17 20:23:42的天气数据');
INSERT INTO `sys_logs` VALUES (4379, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4380, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4381, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4382, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4383, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4384, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4385, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4386, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4387, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4388, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4389, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4390, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4391, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4392, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4393, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4394, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4395, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4396, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4397, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4398, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4399, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4400, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4401, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4402, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4403, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4404, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4405, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4406, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4407, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4408, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4409, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4410, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4411, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4412, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4413, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4414, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4415, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4416, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4417, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4418, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4419, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4420, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4421, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4422, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4423, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4424, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4425, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4426, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4427, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4428, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4429, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4430, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4431, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4432, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4433, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4434, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4435, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4436, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4437, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4438, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4439, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4440, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4441, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4442, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4443, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4444, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4445, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4446, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4447, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4448, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4449, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4450, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4451, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4452, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4453, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4454, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4455, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4456, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4457, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4458, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4459, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4460, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4461, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4462, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4463, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4464, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4465, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4466, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4467, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4468, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4469, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4470, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4471, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4472, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4473, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4474, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4475, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4476, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4477, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4478, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4479, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4480, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4481, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4482, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4483, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4484, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4485, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4486, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4487, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4488, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4489, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4490, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4491, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4492, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4493, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4494, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4495, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4496, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4497, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4498, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4499, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4500, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4501, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4502, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4503, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4504, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4505, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4506, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4507, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4508, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4509, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4510, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4511, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4512, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4513, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4514, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4515, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4516, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4517, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4518, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4519, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4520, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4521, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4522, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4523, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:43', '新增2024-01-17 20:23:43的天气数据');
INSERT INTO `sys_logs` VALUES (4524, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4525, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4526, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4527, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4528, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4529, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4530, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4531, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4532, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4533, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4534, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4535, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4536, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4537, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4538, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4539, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4540, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4541, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4542, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4543, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4544, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4545, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4546, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4547, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4548, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4549, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4550, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4551, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4552, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4553, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4554, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4555, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4556, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4557, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4558, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4559, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4560, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4561, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4562, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4563, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4564, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4565, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4566, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4567, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4568, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4569, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4570, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4571, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4572, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4573, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4574, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4575, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4576, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4577, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4578, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4579, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4580, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4581, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4582, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4583, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4584, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4585, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4586, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4587, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4588, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4589, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4590, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4591, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4592, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4593, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4594, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4595, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4596, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4597, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4598, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4599, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4600, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4601, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4602, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4603, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4604, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4605, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4606, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4607, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4608, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4609, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4610, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4611, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4612, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4613, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4614, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4615, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4616, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4617, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4618, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4619, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4620, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4621, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4622, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4623, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4624, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4625, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4626, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4627, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:44', '新增2024-01-17 20:23:44的天气数据');
INSERT INTO `sys_logs` VALUES (4628, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:54', '新增2024-01-17 20:23:54的天气数据');
INSERT INTO `sys_logs` VALUES (4629, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:55', '新增2024-01-17 20:23:55的天气数据');
INSERT INTO `sys_logs` VALUES (4630, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:56', '新增2024-01-17 20:23:56的天气数据');
INSERT INTO `sys_logs` VALUES (4631, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:57', '新增2024-01-17 20:23:57的天气数据');
INSERT INTO `sys_logs` VALUES (4632, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:58', '新增2024-01-17 20:23:58的天气数据');
INSERT INTO `sys_logs` VALUES (4633, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:23:59', '新增2024-01-17 20:23:59的天气数据');
INSERT INTO `sys_logs` VALUES (4634, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:00', '新增2024-01-17 20:24:00的天气数据');
INSERT INTO `sys_logs` VALUES (4635, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:01', '新增2024-01-17 20:24:01的天气数据');
INSERT INTO `sys_logs` VALUES (4636, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:02', '新增2024-01-17 20:24:02的天气数据');
INSERT INTO `sys_logs` VALUES (4637, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:03', '新增2024-01-17 20:24:03的天气数据');
INSERT INTO `sys_logs` VALUES (4638, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:04', '新增2024-01-17 20:24:04的天气数据');
INSERT INTO `sys_logs` VALUES (4639, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:05', '新增2024-01-17 20:24:05的天气数据');
INSERT INTO `sys_logs` VALUES (4640, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:06', '新增2024-01-17 20:24:06的天气数据');
INSERT INTO `sys_logs` VALUES (4641, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:07', '新增2024-01-17 20:24:07的天气数据');
INSERT INTO `sys_logs` VALUES (4642, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:08', '新增2024-01-17 20:24:08的天气数据');
INSERT INTO `sys_logs` VALUES (4643, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:09', '新增2024-01-17 20:24:09的天气数据');
INSERT INTO `sys_logs` VALUES (4644, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:10', '新增2024-01-17 20:24:10的天气数据');
INSERT INTO `sys_logs` VALUES (4645, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:11', '新增2024-01-17 20:24:11的天气数据');
INSERT INTO `sys_logs` VALUES (4646, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:12', '新增2024-01-17 20:24:12的天气数据');
INSERT INTO `sys_logs` VALUES (4647, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:13', '新增2024-01-17 20:24:13的天气数据');
INSERT INTO `sys_logs` VALUES (4648, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:14', '新增2024-01-17 20:24:14的天气数据');
INSERT INTO `sys_logs` VALUES (4649, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:15', '新增2024-01-17 20:24:15的天气数据');
INSERT INTO `sys_logs` VALUES (4650, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:16', '新增2024-01-17 20:24:16的天气数据');
INSERT INTO `sys_logs` VALUES (4651, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:17', '新增2024-01-17 20:24:17的天气数据');
INSERT INTO `sys_logs` VALUES (4652, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:18', '新增2024-01-17 20:24:18的天气数据');
INSERT INTO `sys_logs` VALUES (4653, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:19', '新增2024-01-17 20:24:19的天气数据');
INSERT INTO `sys_logs` VALUES (4654, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:20', '新增2024-01-17 20:24:20的天气数据');
INSERT INTO `sys_logs` VALUES (4655, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:21', '新增2024-01-17 20:24:21的天气数据');
INSERT INTO `sys_logs` VALUES (4656, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:22', '新增2024-01-17 20:24:22的天气数据');
INSERT INTO `sys_logs` VALUES (4657, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:23', '新增2024-01-17 20:24:23的天气数据');
INSERT INTO `sys_logs` VALUES (4658, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:24', '新增2024-01-17 20:24:24的天气数据');
INSERT INTO `sys_logs` VALUES (4659, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:25', '新增2024-01-17 20:24:25的天气数据');
INSERT INTO `sys_logs` VALUES (4660, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:26', '新增2024-01-17 20:24:26的天气数据');
INSERT INTO `sys_logs` VALUES (4661, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:27', '新增2024-01-17 20:24:27的天气数据');
INSERT INTO `sys_logs` VALUES (4662, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:28', '新增2024-01-17 20:24:28的天气数据');
INSERT INTO `sys_logs` VALUES (4663, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:29', '新增2024-01-17 20:24:29的天气数据');
INSERT INTO `sys_logs` VALUES (4664, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:30', '新增2024-01-17 20:24:30的天气数据');
INSERT INTO `sys_logs` VALUES (4665, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:31', '新增2024-01-17 20:24:31的天气数据');
INSERT INTO `sys_logs` VALUES (4666, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:32', '新增2024-01-17 20:24:32的天气数据');
INSERT INTO `sys_logs` VALUES (4667, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:33', '新增2024-01-17 20:24:33的天气数据');
INSERT INTO `sys_logs` VALUES (4668, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:34', '新增2024-01-17 20:24:34的天气数据');
INSERT INTO `sys_logs` VALUES (4669, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:35', '新增2024-01-17 20:24:35的天气数据');
INSERT INTO `sys_logs` VALUES (4670, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:36', '新增2024-01-17 20:24:36的天气数据');
INSERT INTO `sys_logs` VALUES (4671, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:37', '新增2024-01-17 20:24:37的天气数据');
INSERT INTO `sys_logs` VALUES (4672, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:38', '新增2024-01-17 20:24:38的天气数据');
INSERT INTO `sys_logs` VALUES (4673, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:39', '新增2024-01-17 20:24:39的天气数据');
INSERT INTO `sys_logs` VALUES (4674, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:40', '新增2024-01-17 20:24:40的天气数据');
INSERT INTO `sys_logs` VALUES (4675, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:41', '新增2024-01-17 20:24:41的天气数据');
INSERT INTO `sys_logs` VALUES (4676, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:42', '新增2024-01-17 20:24:42的天气数据');
INSERT INTO `sys_logs` VALUES (4677, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:43', '新增2024-01-17 20:24:43的天气数据');
INSERT INTO `sys_logs` VALUES (4678, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:44', '新增2024-01-17 20:24:44的天气数据');
INSERT INTO `sys_logs` VALUES (4679, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:45', '新增2024-01-17 20:24:45的天气数据');
INSERT INTO `sys_logs` VALUES (4680, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:46', '新增2024-01-17 20:24:46的天气数据');
INSERT INTO `sys_logs` VALUES (4681, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:47', '新增2024-01-17 20:24:47的天气数据');
INSERT INTO `sys_logs` VALUES (4682, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:48', '新增2024-01-17 20:24:48的天气数据');
INSERT INTO `sys_logs` VALUES (4683, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:49', '新增2024-01-17 20:24:49的天气数据');
INSERT INTO `sys_logs` VALUES (4684, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:50', '新增2024-01-17 20:24:50的天气数据');
INSERT INTO `sys_logs` VALUES (4685, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:51', '新增2024-01-17 20:24:51的天气数据');
INSERT INTO `sys_logs` VALUES (4686, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:52', '新增2024-01-17 20:24:52的天气数据');
INSERT INTO `sys_logs` VALUES (4687, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:53', '新增2024-01-17 20:24:53的天气数据');
INSERT INTO `sys_logs` VALUES (4688, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:54', '新增2024-01-17 20:24:54的天气数据');
INSERT INTO `sys_logs` VALUES (4689, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:55', '新增2024-01-17 20:24:55的天气数据');
INSERT INTO `sys_logs` VALUES (4690, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:56', '新增2024-01-17 20:24:56的天气数据');
INSERT INTO `sys_logs` VALUES (4691, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:57', '新增2024-01-17 20:24:57的天气数据');
INSERT INTO `sys_logs` VALUES (4692, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:58', '新增2024-01-17 20:24:58的天气数据');
INSERT INTO `sys_logs` VALUES (4693, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:24:59', '新增2024-01-17 20:24:59的天气数据');
INSERT INTO `sys_logs` VALUES (4694, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:00', '新增2024-01-17 20:25:00的天气数据');
INSERT INTO `sys_logs` VALUES (4695, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:01', '新增2024-01-17 20:25:01的天气数据');
INSERT INTO `sys_logs` VALUES (4696, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:02', '新增2024-01-17 20:25:02的天气数据');
INSERT INTO `sys_logs` VALUES (4697, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:03', '新增2024-01-17 20:25:03的天气数据');
INSERT INTO `sys_logs` VALUES (4698, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:04', '新增2024-01-17 20:25:04的天气数据');
INSERT INTO `sys_logs` VALUES (4699, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:05', '新增2024-01-17 20:25:05的天气数据');
INSERT INTO `sys_logs` VALUES (4700, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:06', '新增2024-01-17 20:25:06的天气数据');
INSERT INTO `sys_logs` VALUES (4701, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:07', '新增2024-01-17 20:25:07的天气数据');
INSERT INTO `sys_logs` VALUES (4702, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:08', '新增2024-01-17 20:25:08的天气数据');
INSERT INTO `sys_logs` VALUES (4703, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:09', '新增2024-01-17 20:25:09的天气数据');
INSERT INTO `sys_logs` VALUES (4704, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:10', '新增2024-01-17 20:25:10的天气数据');
INSERT INTO `sys_logs` VALUES (4705, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:11', '新增2024-01-17 20:25:11的天气数据');
INSERT INTO `sys_logs` VALUES (4706, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:12', '新增2024-01-17 20:25:12的天气数据');
INSERT INTO `sys_logs` VALUES (4707, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:13', '新增2024-01-17 20:25:13的天气数据');
INSERT INTO `sys_logs` VALUES (4708, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:14', '新增2024-01-17 20:25:14的天气数据');
INSERT INTO `sys_logs` VALUES (4709, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:15', '新增2024-01-17 20:25:15的天气数据');
INSERT INTO `sys_logs` VALUES (4710, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:16', '新增2024-01-17 20:25:16的天气数据');
INSERT INTO `sys_logs` VALUES (4711, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:17', '新增2024-01-17 20:25:17的天气数据');
INSERT INTO `sys_logs` VALUES (4712, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:25:39', '新增2024-01-17 20:25:39的天气数据');
INSERT INTO `sys_logs` VALUES (4713, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:27:15', '新增2024-01-17 20:27:15的天气数据');
INSERT INTO `sys_logs` VALUES (4714, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:27:16', '新增2024-01-17 20:27:16的天气数据');
INSERT INTO `sys_logs` VALUES (4715, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:27:17', '新增2024-01-17 20:27:17的天气数据');
INSERT INTO `sys_logs` VALUES (4716, '天气管理模块', '新增', '127.0.0.1', 'jjm10', '2024-01-17 20:27:18', '新增2024-01-17 20:27:18的天气数据');
INSERT INTO `sys_logs` VALUES (4717, '注册', '注册', '127.0.0.1', 'zzy1', '2024-01-17 20:29:41', '注册');
INSERT INTO `sys_logs` VALUES (4718, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 20:38:25', '登录');
INSERT INTO `sys_logs` VALUES (4719, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-17 22:34:16', '登录');
INSERT INTO `sys_logs` VALUES (4720, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-18 00:11:37', '登录');
INSERT INTO `sys_logs` VALUES (4721, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-18 22:10:16', '登录');
INSERT INTO `sys_logs` VALUES (4722, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 10:22:31', '登录');
INSERT INTO `sys_logs` VALUES (4723, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-19 10:45:39', '新增2024-01-19 10:45:39的天气数据');
INSERT INTO `sys_logs` VALUES (4724, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-19 10:45:40', '新增2024-01-19 10:45:40的天气数据');
INSERT INTO `sys_logs` VALUES (4725, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-19 10:54:20', '新增2024-01-19 10:54:20的天气数据');
INSERT INTO `sys_logs` VALUES (4726, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-19 10:54:21', '新增2024-01-19 10:54:21的天气数据');
INSERT INTO `sys_logs` VALUES (4727, '天气管理模块', '新增', '127.0.0.1', 'xtz', '2024-01-19 10:54:22', '新增2024-01-19 10:54:22的天气数据');
INSERT INTO `sys_logs` VALUES (4728, '天气管理模块', '修改', '127.0.0.1', 'xtz', '2024-01-19 11:17:38', '修改2024-01-19 10:54:22.0的天气数据');
INSERT INTO `sys_logs` VALUES (4729, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-01-19 11:41:32', '删除zzy1用户');
INSERT INTO `sys_logs` VALUES (4730, '天气管理模块', '删除', '127.0.0.1', 'xtz', '2024-01-19 11:46:46', '删除2024-01-19 10:45:40.0时间记录的天气');
INSERT INTO `sys_logs` VALUES (4731, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 12:27:37', '登录');
INSERT INTO `sys_logs` VALUES (4732, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 14:36:18', '登录');
INSERT INTO `sys_logs` VALUES (4733, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 14:44:35', '新增超级管理员用户组');
INSERT INTO `sys_logs` VALUES (4734, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 14:53:20', '修改jjm6用户');
INSERT INTO `sys_logs` VALUES (4735, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 14:54:08', '新增用户组');
INSERT INTO `sys_logs` VALUES (4736, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 14:56:42', '新增用户组');
INSERT INTO `sys_logs` VALUES (4737, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 14:59:28', '新增用户组');
INSERT INTO `sys_logs` VALUES (4738, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 15:03:19', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4739, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 15:03:28', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4740, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 15:07:32', '新增用户组');
INSERT INTO `sys_logs` VALUES (4741, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 15:08:43', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4742, '机构用户管理', '新增', '127.0.0.1', 'xtz', '2024-01-19 15:10:04', '新增jjm11用户');
INSERT INTO `sys_logs` VALUES (4743, '注册', '注册', '127.0.0.1', 'jjm12', '2024-01-19 15:35:59', '注册');
INSERT INTO `sys_logs` VALUES (4744, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 15:36:23', '登录');
INSERT INTO `sys_logs` VALUES (4745, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 15:40:49', '修改jjm12用户');
INSERT INTO `sys_logs` VALUES (4746, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 15:51:11', '修改jjm12用户');
INSERT INTO `sys_logs` VALUES (4747, '登录', '登录', '127.0.0.1', 'jjm12', '2024-01-19 15:51:24', '登录');
INSERT INTO `sys_logs` VALUES (4748, '机构用户管理', '修改', '127.0.0.1', 'jjm12', '2024-01-19 15:52:47', '修改jjm12用户');
INSERT INTO `sys_logs` VALUES (4749, '登录', '登录', '127.0.0.1', 'jjm12', '2024-01-19 15:53:02', '登录');
INSERT INTO `sys_logs` VALUES (4750, '机构用户管理', '修改', '127.0.0.1', 'jjm12', '2024-01-19 15:54:39', '修改jjm12用户');
INSERT INTO `sys_logs` VALUES (4751, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 15:55:51', '登录');
INSERT INTO `sys_logs` VALUES (4752, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 18:39:54', '登录');
INSERT INTO `sys_logs` VALUES (4753, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 20:47:23', '登录');
INSERT INTO `sys_logs` VALUES (4754, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 21:03:31', '登录');
INSERT INTO `sys_logs` VALUES (4755, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 21:09:08', '登录');
INSERT INTO `sys_logs` VALUES (4756, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 21:27:29', '登录');
INSERT INTO `sys_logs` VALUES (4757, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 21:30:57', '登录');
INSERT INTO `sys_logs` VALUES (4758, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 21:53:07', '登录');
INSERT INTO `sys_logs` VALUES (4759, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 22:01:00', '登录');
INSERT INTO `sys_logs` VALUES (4760, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:29:37', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4761, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:30:02', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4762, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:30:47', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4763, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:33:30', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4764, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:45:39', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4765, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 22:46:52', '登录');
INSERT INTO `sys_logs` VALUES (4766, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:47:16', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4767, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:47:45', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4768, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 22:49:41', '登录');
INSERT INTO `sys_logs` VALUES (4769, '机构用户管理', '修改', '127.0.0.1', 'xtz', '2024-01-19 22:49:58', '修改xtz用户');
INSERT INTO `sys_logs` VALUES (4770, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-19 22:52:18', '登录');
INSERT INTO `sys_logs` VALUES (4771, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-01-20 00:27:09', '删除jjm12用户');
INSERT INTO `sys_logs` VALUES (4772, '机构用户管理', '删除', '127.0.0.1', 'xtz', '2024-01-20 00:27:12', '删除jjm10用户');
INSERT INTO `sys_logs` VALUES (4773, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 01:04:13', '登录');
INSERT INTO `sys_logs` VALUES (4774, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 03:11:14', '登录');
INSERT INTO `sys_logs` VALUES (4775, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 04:07:05', '登录');
INSERT INTO `sys_logs` VALUES (4776, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 09:26:42', '登录');
INSERT INTO `sys_logs` VALUES (4777, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 11:32:08', '登录');
INSERT INTO `sys_logs` VALUES (4778, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 13:32:51', '登录');
INSERT INTO `sys_logs` VALUES (4779, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 15:43:34', '登录');
INSERT INTO `sys_logs` VALUES (4780, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 17:23:16', '登录');
INSERT INTO `sys_logs` VALUES (4781, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 17:25:16', '登录');
INSERT INTO `sys_logs` VALUES (4782, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 17:27:59', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4783, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 17:28:09', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4784, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 17:31:01', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (4785, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 17:32:17', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4786, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-20 17:32:40', '新增111用户组');
INSERT INTO `sys_logs` VALUES (4787, '用户组管理', '删除', '127.0.0.1', 'xtz', '2024-01-20 17:32:44', '删除111用户组');
INSERT INTO `sys_logs` VALUES (4788, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 17:33:10', '登录');
INSERT INTO `sys_logs` VALUES (4789, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 19:57:07', '登录');
INSERT INTO `sys_logs` VALUES (4790, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 20:17:14', '登录');
INSERT INTO `sys_logs` VALUES (4791, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 20:17:30', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4792, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-20 20:18:23', '登录');
INSERT INTO `sys_logs` VALUES (4793, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 20:18:40', '修改超级管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4794, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-20 20:18:46', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (4795, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-20 20:19:02', '登录');
INSERT INTO `sys_logs` VALUES (4796, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:34', '新增2024-01-20 20:34:34的天气数据');
INSERT INTO `sys_logs` VALUES (4797, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:35', '新增2024-01-20 20:34:35的天气数据');
INSERT INTO `sys_logs` VALUES (4798, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:36', '新增2024-01-20 20:34:36的天气数据');
INSERT INTO `sys_logs` VALUES (4799, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:37', '新增2024-01-20 20:34:37的天气数据');
INSERT INTO `sys_logs` VALUES (4800, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:38', '新增2024-01-20 20:34:38的天气数据');
INSERT INTO `sys_logs` VALUES (4801, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:39', '新增2024-01-20 20:34:39的天气数据');
INSERT INTO `sys_logs` VALUES (4802, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:40', '新增2024-01-20 20:34:40的天气数据');
INSERT INTO `sys_logs` VALUES (4803, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:46', '新增2024-01-20 20:34:46的天气数据');
INSERT INTO `sys_logs` VALUES (4804, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:47', '新增2024-01-20 20:34:47的天气数据');
INSERT INTO `sys_logs` VALUES (4805, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:48', '新增2024-01-20 20:34:48的天气数据');
INSERT INTO `sys_logs` VALUES (4806, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:49', '新增2024-01-20 20:34:49的天气数据');
INSERT INTO `sys_logs` VALUES (4807, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:50', '新增2024-01-20 20:34:50的天气数据');
INSERT INTO `sys_logs` VALUES (4808, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:51', '新增2024-01-20 20:34:51的天气数据');
INSERT INTO `sys_logs` VALUES (4809, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:52', '新增2024-01-20 20:34:52的天气数据');
INSERT INTO `sys_logs` VALUES (4810, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:53', '新增2024-01-20 20:34:53的天气数据');
INSERT INTO `sys_logs` VALUES (4811, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:54', '新增2024-01-20 20:34:54的天气数据');
INSERT INTO `sys_logs` VALUES (4812, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:55', '新增2024-01-20 20:34:55的天气数据');
INSERT INTO `sys_logs` VALUES (4813, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:56', '新增2024-01-20 20:34:56的天气数据');
INSERT INTO `sys_logs` VALUES (4814, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:57', '新增2024-01-20 20:34:57的天气数据');
INSERT INTO `sys_logs` VALUES (4815, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:58', '新增2024-01-20 20:34:58的天气数据');
INSERT INTO `sys_logs` VALUES (4816, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:34:59', '新增2024-01-20 20:34:59的天气数据');
INSERT INTO `sys_logs` VALUES (4817, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:00', '新增2024-01-20 20:35:00的天气数据');
INSERT INTO `sys_logs` VALUES (4818, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:01', '新增2024-01-20 20:35:01的天气数据');
INSERT INTO `sys_logs` VALUES (4819, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:02', '新增2024-01-20 20:35:02的天气数据');
INSERT INTO `sys_logs` VALUES (4820, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:03', '新增2024-01-20 20:35:03的天气数据');
INSERT INTO `sys_logs` VALUES (4821, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:04', '新增2024-01-20 20:35:04的天气数据');
INSERT INTO `sys_logs` VALUES (4822, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:05', '新增2024-01-20 20:35:05的天气数据');
INSERT INTO `sys_logs` VALUES (4823, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:06', '新增2024-01-20 20:35:06的天气数据');
INSERT INTO `sys_logs` VALUES (4824, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-20 20:35:07', '新增2024-01-20 20:35:07的天气数据');
INSERT INTO `sys_logs` VALUES (4825, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-21 11:00:30', '登录');
INSERT INTO `sys_logs` VALUES (4826, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 11:14:52', '登录');
INSERT INTO `sys_logs` VALUES (4827, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-21 14:34:25', '登录');
INSERT INTO `sys_logs` VALUES (4828, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-21 14:50:35', '登录');
INSERT INTO `sys_logs` VALUES (4829, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-21 15:14:05', '新增商户用户组');
INSERT INTO `sys_logs` VALUES (4830, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-21 15:14:39', '新增监管人员用户组');
INSERT INTO `sys_logs` VALUES (4831, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-21 15:14:56', '新增施工人员用户组');
INSERT INTO `sys_logs` VALUES (4832, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-21 15:15:08', '新增消费者用户组');
INSERT INTO `sys_logs` VALUES (4833, '用户组管理', '新增', '127.0.0.1', 'xtz', '2024-01-21 15:15:49', '新增学校用户组');
INSERT INTO `sys_logs` VALUES (4834, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 15:19:22', '登录');
INSERT INTO `sys_logs` VALUES (4835, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 15:22:48', '登录');
INSERT INTO `sys_logs` VALUES (4836, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 16:03:37', '登录');
INSERT INTO `sys_logs` VALUES (4837, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 16:26:39', '登录');
INSERT INTO `sys_logs` VALUES (4838, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-21 16:38:31', '登录');
INSERT INTO `sys_logs` VALUES (4839, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 16:43:23', '登录');
INSERT INTO `sys_logs` VALUES (4840, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-21 16:53:17', '登录');
INSERT INTO `sys_logs` VALUES (4841, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:24:32', '登录');
INSERT INTO `sys_logs` VALUES (4842, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:25:53', '登录');
INSERT INTO `sys_logs` VALUES (4843, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:27:20', '登录');
INSERT INTO `sys_logs` VALUES (4844, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:28:47', '登录');
INSERT INTO `sys_logs` VALUES (4845, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:32:08', '登录');
INSERT INTO `sys_logs` VALUES (4846, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:38:21', '登录');
INSERT INTO `sys_logs` VALUES (4847, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:40:50', '登录');
INSERT INTO `sys_logs` VALUES (4848, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:42:37', '登录');
INSERT INTO `sys_logs` VALUES (4849, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:44:23', '登录');
INSERT INTO `sys_logs` VALUES (4850, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:46:43', '登录');
INSERT INTO `sys_logs` VALUES (4851, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:51:07', '登录');
INSERT INTO `sys_logs` VALUES (4852, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 17:55:07', '登录');
INSERT INTO `sys_logs` VALUES (4853, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 18:12:40', '登录');
INSERT INTO `sys_logs` VALUES (4854, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 19:13:24', '登录');
INSERT INTO `sys_logs` VALUES (4855, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 20:09:07', '登录');
INSERT INTO `sys_logs` VALUES (4856, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:12:09', '登录');
INSERT INTO `sys_logs` VALUES (4857, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:23:16', '登录');
INSERT INTO `sys_logs` VALUES (4858, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:29:12', '登录');
INSERT INTO `sys_logs` VALUES (4859, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:33:47', '登录');
INSERT INTO `sys_logs` VALUES (4860, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:35:37', '登录');
INSERT INTO `sys_logs` VALUES (4861, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:38:01', '登录');
INSERT INTO `sys_logs` VALUES (4862, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:38:49', '登录');
INSERT INTO `sys_logs` VALUES (4863, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:39:59', '登录');
INSERT INTO `sys_logs` VALUES (4864, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:43:11', '登录');
INSERT INTO `sys_logs` VALUES (4865, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:43:32', '登录');
INSERT INTO `sys_logs` VALUES (4866, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:46:03', '登录');
INSERT INTO `sys_logs` VALUES (4867, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:47:20', '登录');
INSERT INTO `sys_logs` VALUES (4868, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:48:32', '登录');
INSERT INTO `sys_logs` VALUES (4869, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:50:06', '登录');
INSERT INTO `sys_logs` VALUES (4870, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:51:26', '登录');
INSERT INTO `sys_logs` VALUES (4871, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:52:52', '登录');
INSERT INTO `sys_logs` VALUES (4872, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:53:35', '登录');
INSERT INTO `sys_logs` VALUES (4873, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:54:03', '登录');
INSERT INTO `sys_logs` VALUES (4874, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:54:56', '登录');
INSERT INTO `sys_logs` VALUES (4875, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:55:40', '登录');
INSERT INTO `sys_logs` VALUES (4876, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:56:32', '登录');
INSERT INTO `sys_logs` VALUES (4877, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 21:57:33', '登录');
INSERT INTO `sys_logs` VALUES (4878, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 22:11:47', '登录');
INSERT INTO `sys_logs` VALUES (4879, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 22:16:01', '登录');
INSERT INTO `sys_logs` VALUES (4880, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 22:26:35', '登录');
INSERT INTO `sys_logs` VALUES (4881, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-21 22:42:46', '登录');
INSERT INTO `sys_logs` VALUES (4882, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 00:44:42', '登录');
INSERT INTO `sys_logs` VALUES (4883, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:26:03', '登录');
INSERT INTO `sys_logs` VALUES (4884, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:28:11', '登录');
INSERT INTO `sys_logs` VALUES (4885, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:29:08', '登录');
INSERT INTO `sys_logs` VALUES (4886, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:35:16', '登录');
INSERT INTO `sys_logs` VALUES (4887, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:36:24', '登录');
INSERT INTO `sys_logs` VALUES (4888, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:40:26', '登录');
INSERT INTO `sys_logs` VALUES (4889, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:55:00', '登录');
INSERT INTO `sys_logs` VALUES (4890, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 01:56:39', '登录');
INSERT INTO `sys_logs` VALUES (4891, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 10:00:30', '登录');
INSERT INTO `sys_logs` VALUES (4892, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 10:25:16', '登录');
INSERT INTO `sys_logs` VALUES (4893, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 11:27:33', '登录');
INSERT INTO `sys_logs` VALUES (4894, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 11:30:17', '登录');
INSERT INTO `sys_logs` VALUES (4895, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 13:45:40', '登录');
INSERT INTO `sys_logs` VALUES (4896, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:12:39', '登录');
INSERT INTO `sys_logs` VALUES (4897, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:13:14', '登录');
INSERT INTO `sys_logs` VALUES (4898, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:19:40', '登录');
INSERT INTO `sys_logs` VALUES (4899, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:29:58', '登录');
INSERT INTO `sys_logs` VALUES (4900, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:40:14', '登录');
INSERT INTO `sys_logs` VALUES (4901, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 14:52:52', '登录');
INSERT INTO `sys_logs` VALUES (4902, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 16:43:33', '登录');
INSERT INTO `sys_logs` VALUES (4903, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 16:48:56', '登录');
INSERT INTO `sys_logs` VALUES (4904, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 16:56:23', '登录');
INSERT INTO `sys_logs` VALUES (4905, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 17:51:13', '登录');
INSERT INTO `sys_logs` VALUES (4906, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 18:20:44', '登录');
INSERT INTO `sys_logs` VALUES (4907, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 18:30:57', '登录');
INSERT INTO `sys_logs` VALUES (4908, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 18:33:53', '登录');
INSERT INTO `sys_logs` VALUES (4909, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 19:00:30', '登录');
INSERT INTO `sys_logs` VALUES (4910, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 19:02:15', '登录');
INSERT INTO `sys_logs` VALUES (4911, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 19:18:04', '登录');
INSERT INTO `sys_logs` VALUES (4912, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-22 20:47:12', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4913, '用户组管理', '修改', '127.0.0.1', 'xtz', '2024-01-22 20:47:25', '修改普通用户用户组权限');
INSERT INTO `sys_logs` VALUES (4914, '天气管理模块', '删除', '127.0.0.1', 'xtz', '2024-01-22 20:47:47', '删除2024-01-16 17:08:35.0时间记录的天气');
INSERT INTO `sys_logs` VALUES (4915, '天气管理模块', '修改', '127.0.0.1', 'xtz', '2024-01-22 20:47:57', '修改2024-01-20 20:35:01.0的天气数据');
INSERT INTO `sys_logs` VALUES (4916, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-22 21:18:24', '登录');
INSERT INTO `sys_logs` VALUES (4917, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 21:26:39', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4918, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 21:26:45', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4919, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 21:27:01', '新增2024-01-22 21:27:01的天气数据');
INSERT INTO `sys_logs` VALUES (4920, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 21:27:07', '新增2024-01-22 21:27:07的天气数据');
INSERT INTO `sys_logs` VALUES (4921, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 21:27:08', '新增2024-01-22 21:27:08的天气数据');
INSERT INTO `sys_logs` VALUES (4922, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 21:38:04', '登录');
INSERT INTO `sys_logs` VALUES (4923, '注册', '注册', '127.0.0.1', 'jjm12', '2024-01-22 21:38:55', '注册');
INSERT INTO `sys_logs` VALUES (4924, '登录', '登录', '127.0.0.1', 'jjm12', '2024-01-22 21:39:11', '登录');
INSERT INTO `sys_logs` VALUES (4925, '登录', '登录', '127.0.0.1', 'jjm12', '2024-01-22 21:40:52', '登录');
INSERT INTO `sys_logs` VALUES (4926, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 21:54:24', '登录');
INSERT INTO `sys_logs` VALUES (4927, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 22:05:47', '登录');
INSERT INTO `sys_logs` VALUES (4928, '机构用户管理', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:07:18', '新增jjm13用户');
INSERT INTO `sys_logs` VALUES (4929, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:07:31', '修改jjm13用户');
INSERT INTO `sys_logs` VALUES (4930, '机构用户管理', '删除', '127.0.0.1', 'jjm11', '2024-01-22 22:07:41', '删除jjm12用户');
INSERT INTO `sys_logs` VALUES (4931, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:08:07', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4932, '机构用户管理', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:13:25', '新增你好用户');
INSERT INTO `sys_logs` VALUES (4933, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 22:14:03', '登录');
INSERT INTO `sys_logs` VALUES (4934, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:22', '新增2024-01-22 22:14:22的天气数据');
INSERT INTO `sys_logs` VALUES (4935, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:29', '新增2024-01-22 22:14:29的天气数据');
INSERT INTO `sys_logs` VALUES (4936, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:30', '新增2024-01-22 22:14:30的天气数据');
INSERT INTO `sys_logs` VALUES (4937, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:31', '新增2024-01-22 22:14:31的天气数据');
INSERT INTO `sys_logs` VALUES (4938, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:32', '新增2024-01-22 22:14:32的天气数据');
INSERT INTO `sys_logs` VALUES (4939, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:14:37', '新增2024-01-22 22:14:37的天气数据');
INSERT INTO `sys_logs` VALUES (4940, '天气管理模块', '删除', '127.0.0.1', 'jjm11', '2024-01-22 22:15:10', '删除2024-01-22 22:14:37.0时间记录的天气');
INSERT INTO `sys_logs` VALUES (4941, '天气管理模块', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:15:16', '修改2024-01-22 22:14:32.0的天气数据');
INSERT INTO `sys_logs` VALUES (4942, '用户组管理', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:22:14', '新增学校员工用户组');
INSERT INTO `sys_logs` VALUES (4943, '用户组管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:22:40', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4944, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 22:22:53', '登录');
INSERT INTO `sys_logs` VALUES (4945, '用户组管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:23:03', '修改管理员用户组权限');
INSERT INTO `sys_logs` VALUES (4946, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 22:23:14', '登录');
INSERT INTO `sys_logs` VALUES (4947, '用户组管理', '删除', '127.0.0.1', 'jjm11', '2024-01-22 22:23:22', '删除学校员工用户组');
INSERT INTO `sys_logs` VALUES (4948, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-22 22:39:42', '登录');
INSERT INTO `sys_logs` VALUES (4950, '机构用户管理', '删除', '127.0.0.1', 'jjm11', '2024-01-22 22:39:58', '删除系统日志：新增系统日志：登录');
INSERT INTO `sys_logs` VALUES (4951, '系统日志管理', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:40:14', '修改系统日志：删除系统日志：新增系统日志：登录');
INSERT INTO `sys_logs` VALUES (4952, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:41:10', '新增2024-01-22 22:41:10的天气数据');
INSERT INTO `sys_logs` VALUES (4953, '天气管理模块', '新增', '127.0.0.1', 'jjm11', '2024-01-22 22:41:10', '新增2024-01-22 22:41:10的天气数据');
INSERT INTO `sys_logs` VALUES (4954, '天气管理模块', '修改', '127.0.0.1', 'jjm11', '2024-01-22 22:41:24', '修改2024-01-22 22:41:10.0的天气数据');
INSERT INTO `sys_logs` VALUES (4955, '天气管理模块', '删除', '127.0.0.1', 'jjm11', '2024-01-22 22:41:41', '删除2024-01-22 22:41:10.0时间记录的天气');
INSERT INTO `sys_logs` VALUES (4956, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:18:04', '登录');
INSERT INTO `sys_logs` VALUES (4957, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 09:21:56', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4958, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:22:42', '登录');
INSERT INTO `sys_logs` VALUES (4959, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 09:23:07', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4960, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:24:42', '登录');
INSERT INTO `sys_logs` VALUES (4961, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:26:38', '登录');
INSERT INTO `sys_logs` VALUES (4962, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:26:38', '登录');
INSERT INTO `sys_logs` VALUES (4963, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:28:34', '登录');
INSERT INTO `sys_logs` VALUES (4964, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 09:32:55', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4965, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:33:03', '登录');
INSERT INTO `sys_logs` VALUES (4966, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 09:35:51', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4967, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 09:44:07', '登录');
INSERT INTO `sys_logs` VALUES (4968, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 10:01:49', '登录');
INSERT INTO `sys_logs` VALUES (4969, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 10:07:01', '登录');
INSERT INTO `sys_logs` VALUES (4970, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 10:55:19', '登录');
INSERT INTO `sys_logs` VALUES (4971, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 11:31:26', '登录');
INSERT INTO `sys_logs` VALUES (4972, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 13:10:54', '登录');
INSERT INTO `sys_logs` VALUES (4973, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 16:21:14', '登录');
INSERT INTO `sys_logs` VALUES (4974, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 16:37:11', '登录');
INSERT INTO `sys_logs` VALUES (4975, '登录', '登录', '127.0.0.1', 'xtz', '2024-01-23 17:20:12', '登录');
INSERT INTO `sys_logs` VALUES (4976, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 19:32:19', '登录');
INSERT INTO `sys_logs` VALUES (4977, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 20:14:18', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4978, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:14:26', '登录');
INSERT INTO `sys_logs` VALUES (4979, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:14:59', '登录');
INSERT INTO `sys_logs` VALUES (4980, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:18:46', '登录');
INSERT INTO `sys_logs` VALUES (4981, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:20:39', '登录');
INSERT INTO `sys_logs` VALUES (4982, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 20:28:58', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4983, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:29:11', '登录');
INSERT INTO `sys_logs` VALUES (4984, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 20:29:49', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4985, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:29:57', '登录');
INSERT INTO `sys_logs` VALUES (4986, '机构用户管理', '修改', '127.0.0.1', 'jjm11', '2024-01-23 20:32:17', '修改jjm11用户');
INSERT INTO `sys_logs` VALUES (4987, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:32:25', '登录');
INSERT INTO `sys_logs` VALUES (4988, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 20:49:18', '登录');
INSERT INTO `sys_logs` VALUES (4989, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 23:09:39', '登录');
INSERT INTO `sys_logs` VALUES (4990, '登录', '登录', '127.0.0.1', 'jjm11', '2024-01-23 23:13:27', '登录');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由名称',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2014 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-11-21 11:01:58', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-11-21 11:01:58', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-11-21 11:01:58', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2024-11-21 11:01:58', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-11-21 11:01:58', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-11-21 11:01:58', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-11-21 11:01:58', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-11-21 11:01:58', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-11-21 11:01:58', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-11-21 11:01:58', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-11-21 11:01:58', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-11-21 11:01:58', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-11-21 11:01:58', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-11-21 11:01:58', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-11-21 11:01:58', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-11-21 11:01:58', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-11-21 11:01:58', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-11-21 11:01:58', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-11-21 11:01:58', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-11-21 11:01:58', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-11-21 11:01:58', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-11-21 11:01:58', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-11-21 11:01:58', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-11-21 11:01:58', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '供应商管理', 0, 1, 'providerinfo', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'build', 'admin', '2024-11-21 13:50:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '供应商信息', 2000, 1, 'providerinfo', 'providerinfo/providerinfo/index', NULL, '', 1, 0, 'C', '0', '0', 'providerinfo:providerinfo:list', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '供应商信息菜单');
INSERT INTO `sys_menu` VALUES (2002, '供应商信息查询', 2001, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'providerinfo:providerinfo:query', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '供应商信息新增', 2001, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'providerinfo:providerinfo:add', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '供应商信息修改', 2001, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'providerinfo:providerinfo:edit', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '供应商信息删除', 2001, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'providerinfo:providerinfo:remove', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '供应商信息导出', 2001, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'providerinfo:providerinfo:export', '#', 'admin', '2024-11-21 13:51:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '投诉管理', 0, 1, 'complaints', NULL, NULL, '', 1, 0, 'M', '0', '0', NULL, 'clipboard', 'admin', '2024-11-21 15:00:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '投诉信息', 2007, 1, 'complaints', 'complaints/complaints/index', NULL, '', 1, 0, 'C', '0', '0', 'complaints:complaints:list', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '投诉信息菜单');
INSERT INTO `sys_menu` VALUES (2009, '投诉信息查询', 2008, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'complaints:complaints:query', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '投诉信息新增', 2008, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'complaints:complaints:add', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '投诉信息修改', 2008, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'complaints:complaints:edit', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '投诉信息删除', 2008, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'complaints:complaints:remove', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '投诉信息导出', 2008, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'complaints:complaints:export', '#', 'admin', '2024-11-21 15:00:52', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"risk_warning\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 11:09:56', 101);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"warning\",\"className\":\"RiskWarning\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 11:09:56\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Tradername\",\"columnId\":2,\"columnName\":\"tradername\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 11:09:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"tradername\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"City\",\"columnId\":3,\"columnName\":\"city\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 11:09:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"city\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"District\",\"columnId\":4,\"columnName\":\"district\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 11:09:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"district\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 11:11:45', 42);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"risk_warning\"}', NULL, 0, NULL, '2024-11-21 11:11:49', 371);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"complaints\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:23:10', 53);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"Complaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintMerchant\",\"columnId\":14,\"columnName\":\"complaint_merchant\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"complaintMerchant\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MerchantAddress\",\"columnId\":15,\"columnName\":\"merchant_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"merchantAddress\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MerchantInfoId\",\"columnId\":16,\"columnName\":\"merchant_info_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"merchantInfoId\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:23:37', 43);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"complaints\"}', NULL, 0, NULL, '2024-11-21 13:23:40', 223);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"provider_info\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:32:21', 35);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"providerinfo\",\"className\":\"ProviderInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Socialcreditcode\",\"columnId\":30,\"columnName\":\"socialcreditcode\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"socialcreditcode\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Providername\",\"columnId\":31,\"columnName\":\"providername\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"providername\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnId\":32,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"location\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:33:14', 28);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"provider_info\"}', NULL, 0, NULL, '2024-11-21 13:33:18', 83);
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"供应商管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"providerinfo\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:50:29', 106);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"providerinfo\",\"className\":\"ProviderInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:33:14\",\"usableColumn\":false},{\"capJavaField\":\"Socialcreditcode\",\"columnId\":30,\"columnName\":\"socialcreditcode\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"socialcreditcode\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:33:14\",\"usableColumn\":false},{\"capJavaField\":\"Providername\",\"columnId\":31,\"columnName\":\"providername\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"providername\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:33:14\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnId\":32,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 13:50:49', 64);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"provider_info\"}', NULL, 0, NULL, '2024-11-21 13:50:53', 203);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"providerinfo\",\"className\":\"ProviderInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:50:49\",\"usableColumn\":false},{\"capJavaField\":\"Socialcreditcode\",\"columnComment\":\"社会信用代码\",\"columnId\":30,\"columnName\":\"socialcreditcode\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"socialcreditcode\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:50:49\",\"usableColumn\":false},{\"capJavaField\":\"Providername\",\"columnComment\":\"供应商名称\",\"columnId\":31,\"columnName\":\"providername\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"providername\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:50:49\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnComment\":\"供应商地址\",\"columnId\":32,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:06:46', 75);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"provider_info\"}', NULL, 0, NULL, '2024-11-21 14:06:50', 200);
INSERT INTO `sys_oper_log` VALUES (114, '供应商信息', 1, 'com.ruoyi.providerinfo.controller.ProviderInfoController.add()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo', '127.0.0.1', '内网IP', '{\"area\":\"c测试\",\"businessscope\":\"c测试\",\"city\":\"c测试\",\"district\":\"c测试\",\"expirationdate\":\"2023-01-01\",\"juridicalperson\":\"c测试\",\"location\":\"c测试\",\"params\":{},\"providername\":\"c测试\",\"providerphone\":\"c测试\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'socialcreditcode\' doesn\'t have a default value\r\n### The error may exist in file [F:\\ruoyi-project\\mingchuzi\\ruoyi-admin\\target\\classes\\mapper\\providerinfo\\ProviderInfoMapper.xml]\r\n### The error may involve com.ruoyi.providerinfo.mapper.ProviderInfoMapper.insertProviderInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into provider_info          ( providername,             location,             juridicalperson,             businessscope,             expirationdate,                          city,             district,             providerphone,             area )           values ( ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'socialcreditcode\' doesn\'t have a default value\n; Field \'socialcreditcode\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'socialcreditcode\' doesn\'t have a default value', '2024-11-21 14:08:57', 54);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"providerinfo\",\"className\":\"ProviderInfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int(10)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:06:46\",\"usableColumn\":false},{\"capJavaField\":\"Socialcreditcode\",\"columnComment\":\"社会信用代码\",\"columnId\":30,\"columnName\":\"socialcreditcode\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"socialcreditcode\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:06:46\",\"usableColumn\":false},{\"capJavaField\":\"Providername\",\"columnComment\":\"供应商名称\",\"columnId\":31,\"columnName\":\"providername\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"providername\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:06:46\",\"usableColumn\":false},{\"capJavaField\":\"Location\",\"columnComment\":\"供应商地址\",\"columnId\":32,\"columnName\":\"location\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:32:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:10:54', 40);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"provider_info\"}', NULL, 0, NULL, '2024-11-21 14:10:56', 93);
INSERT INTO `sys_oper_log` VALUES (117, '供应商信息', 1, 'com.ruoyi.providerinfo.controller.ProviderInfoController.add()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo', '127.0.0.1', '内网IP', '{\"area\":\"测试\",\"businessscope\":\"测试\",\"city\":\"测试\",\"district\":\"测试\",\"expirationdate\":\"2024-11-21\",\"id\":4,\"juridicalperson\":\"测试\",\"location\":\"测试\",\"params\":{},\"photopath\":\"/profile/upload/2024/11/21/llk-1_20241121141710A001.png\",\"providername\":\"测试\",\"providerphone\":\"测试\",\"socialcreditcode\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:17:11', 5);
INSERT INTO `sys_oper_log` VALUES (118, '供应商信息', 2, 'com.ruoyi.providerinfo.controller.ProviderInfoController.edit()', 'PUT', 1, 'admin', '研发部门', '/providerinfo/providerinfo', '127.0.0.1', '内网IP', '{\"area\":\"金牛区\",\"businessscope\":\"食品经营；\\r\\n\\r\\n蔬菜、园艺作物的种植；\\r\\n\\r\\n商品批发与零售；\\r\\n\\r\\n农业技术推广服务；\\r\\n\\r\\n普通货运。\",\"city\":\"四川省\",\"district\":\"成都市\",\"expirationdate\":\"\\r\\n永久\",\"id\":1,\"juridicalperson\":\"熊其兵\",\"location\":\"成都市金牛区二环路北三段3号1层\",\"params\":{},\"photopath\":\"/profile/upload/2024/11/21/llk-1_20241121142217A003.png\",\"providername\":\"四川展翼农业有限公司q\",\"providerphone\":\"123456\",\"socialcreditcode\":\"9150 0243 3051 2631 7Y\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:22:18', 3);
INSERT INTO `sys_oper_log` VALUES (119, '供应商信息', 3, 'com.ruoyi.providerinfo.controller.ProviderInfoController.remove()', 'DELETE', 1, 'admin', '研发部门', '/providerinfo/providerinfo/4', '127.0.0.1', '内网IP', '[4]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:36:34', 11);
INSERT INTO `sys_oper_log` VALUES (120, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.export()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-21 14:37:25', 658);
INSERT INTO `sys_oper_log` VALUES (121, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.export()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-21 14:39:49', 614);
INSERT INTO `sys_oper_log` VALUES (122, '供应商信息', 1, 'com.ruoyi.providerinfo.controller.ProviderInfoController.add()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo', '127.0.0.1', '内网IP', '{\"area\":\"1\",\"businessscope\":\"1\",\"city\":\"1\",\"district\":\"1\",\"expirationdate\":\"1\",\"id\":5,\"juridicalperson\":\"1\",\"location\":\"1\",\"params\":{},\"providername\":\"1\",\"providerphone\":\"11\",\"socialcreditcode\":\"80\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:54:30', 12);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"Complaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:23:37\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintMerchant\",\"columnComment\":\"商家名称\",\"columnId\":14,\"columnName\":\"complaint_merchant\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"complaintMerchant\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:23:37\",\"usableColumn\":false},{\"capJavaField\":\"MerchantAddress\",\"columnComment\":\"商家地址\",\"columnId\":15,\"columnName\":\"merchant_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"merchantAddress\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 13:23:37\",\"usableColumn\":false},{\"capJavaField\":\"MerchantInfoId\",\"columnComment\":\"商家信息的ID\",\"columnId\":16,\"columnName\":\"merchant_info_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 14:58:40', 76);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"complaints\"}', NULL, 0, NULL, '2024-11-21 14:58:43', 252);
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '研发部门', '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"投诉管理\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":0,\"path\":\"complaints\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:00:01', 17);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"complaints\"}', NULL, 0, NULL, '2024-11-21 15:00:25', 100);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"complaints\",\"className\":\"Complaints\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"ID\",\"columnId\":13,\"columnName\":\"id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:58:40\",\"usableColumn\":false},{\"capJavaField\":\"ComplaintMerchant\",\"columnComment\":\"商家名称\",\"columnId\":14,\"columnName\":\"complaint_merchant\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"complaintMerchant\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:58:40\",\"usableColumn\":false},{\"capJavaField\":\"MerchantAddress\",\"columnComment\":\"商家地址\",\"columnId\":15,\"columnName\":\"merchant_address\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"0\",\"javaField\":\"merchantAddress\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-11-21 14:58:40\",\"usableColumn\":false},{\"capJavaField\":\"MerchantInfoId\",\"columnComment\":\"商家信息的ID\",\"columnId\":16,\"columnName\":\"merchant_info_id\",\"columnType\":\"int(11)\",\"createBy\":\"admin\",\"createTime\":\"2024-11-21 13:23:10\",\"dictType\":\"\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:00:34', 40);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"complaints\"}', NULL, 0, NULL, '2024-11-21 15:00:37', 97);
INSERT INTO `sys_oper_log` VALUES (129, '投诉信息', 1, 'com.ruoyi.complaints.controller.ComplaintsController.add()', 'POST', 1, 'admin', '研发部门', '/complaints/complaints', '127.0.0.1', '内网IP', '{\"city\":\"测试\",\"complainComment\":\"测试\",\"complainDate\":\"2024-11-21\",\"complainPhoto\":\"/profile/upload/2024/11/21/llk-1_20241121150641A001.png\",\"complainant\":\"测试\",\"complainantPhone\":\"测试\",\"complaintMerchant\":\"测试\",\"district\":\"测试\",\"id\":86,\"ifHandle\":\"测试\",\"inCharge\":\"测试\",\"inChargephone\":\"测试\",\"merchantAddress\":\"测试\",\"merchantInfoId\":12,\"merchantPhone\":\"测试\",\"params\":{},\"responseComplaint\":\"测试\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:06:53', 111);
INSERT INTO `sys_oper_log` VALUES (130, '投诉信息', 2, 'com.ruoyi.complaints.controller.ComplaintsController.edit()', 'PUT', 1, 'admin', '研发部门', '/complaints/complaints', '127.0.0.1', '内网IP', '{\"city\":\"1\",\"complainComment\":\"1\",\"complainDate\":\"2024-11-21\",\"complainPhoto\":\"/profile/upload/2024/11/21/OIP-C_20241121151402A003.jpg,/profile/upload/2024/11/21/R-C_20241121151404A004.png\",\"complainant\":\"1\",\"complainantPhone\":\"1\",\"complaintMerchant\":\"测试1\",\"district\":\"1\",\"id\":86,\"ifHandle\":\"1\",\"inCharge\":\"1\",\"inChargephone\":\"1\",\"merchantAddress\":\"1\",\"merchantInfoId\":1,\"merchantPhone\":\"1\",\"params\":{},\"responseComplaint\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:14:06', 10);
INSERT INTO `sys_oper_log` VALUES (131, '投诉信息', 2, 'com.ruoyi.complaints.controller.ComplaintsController.edit()', 'PUT', 1, 'admin', '研发部门', '/complaints/complaints', '127.0.0.1', '内网IP', '{\"city\":\"1\",\"complainComment\":\"1\",\"complainDate\":\"2024-11-21\",\"complainPhoto\":\"/profile/upload/2024/11/21/OIP-C_20241121151402A003.jpg\",\"complainant\":\"1\",\"complainantPhone\":\"1\",\"complaintMerchant\":\"测试1\",\"district\":\"1\",\"id\":86,\"ifHandle\":\"1\",\"inCharge\":\"1\",\"inChargephone\":\"1\",\"merchantAddress\":\"1\",\"merchantInfoId\":1,\"merchantPhone\":\"1\",\"params\":{},\"responseComplaint\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:14:15', 9);
INSERT INTO `sys_oper_log` VALUES (132, '投诉信息', 3, 'com.ruoyi.complaints.controller.ComplaintsController.remove()', 'DELETE', 1, 'admin', '研发部门', '/complaints/complaints/85', '127.0.0.1', '内网IP', '[85]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-21 15:14:25', 10);
INSERT INTO `sys_oper_log` VALUES (133, '投诉信息', 5, 'com.ruoyi.complaints.controller.ComplaintsController.export()', 'POST', 1, 'admin', '研发部门', '/complaints/complaints/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-21 15:32:34', 588);
INSERT INTO `sys_oper_log` VALUES (134, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"1ad9807d-5029-4d1a-afa7-e28a02820b7d_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:39:54', 355);
INSERT INTO `sys_oper_log` VALUES (135, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"df1d0a14-5d98-4cca-b6f9-de4f7ddfbce6_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:40:13', 23);
INSERT INTO `sys_oper_log` VALUES (136, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"95ffe4f2-f607-4808-8c23-75dfeacd2f50_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:40:22', 22);
INSERT INTO `sys_oper_log` VALUES (137, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"dff3e48b-e927-4fae-b30b-cb9a3a918575_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:42:20', 25);
INSERT INTO `sys_oper_log` VALUES (138, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.export()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-22 09:42:27', 663);
INSERT INTO `sys_oper_log` VALUES (139, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"04f982bd-9306-4788-956f-100cb96e71fc_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:47:04', 28);
INSERT INTO `sys_oper_log` VALUES (140, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"a8bacba6-9bde-4f0c-ae2b-f7293f641c26_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:49:25', 28);
INSERT INTO `sys_oper_log` VALUES (141, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"D:/ruoyi/uploadPath/8dbaedf1-24a6-4c0f-a568-b04cd17233da_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:53:46', 324);
INSERT INTO `sys_oper_log` VALUES (142, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"D:/ruoyi/uploadPath/bf02e485-6343-4fb9-aa4d-d23c5119dc61_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:56:34', 30);
INSERT INTO `sys_oper_log` VALUES (143, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"D:/ruoyi/uploadPath/e6f96c86-fa23-4299-9182-1e593f74101c_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 09:57:16', 29);
INSERT INTO `sys_oper_log` VALUES (144, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.export()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-22 09:57:18', 608);
INSERT INTO `sys_oper_log` VALUES (145, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', '{\"msg\":\"D:/ruoyi/uploadPath/41a5936b-b173-4218-bba1-68f8b022bf0c_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:00:14', 25);
INSERT INTO `sys_oper_log` VALUES (146, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/d962b6ba-6f4a-4dcb-9403-a93d27d1ee63_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:00:34', 25);
INSERT INTO `sys_oper_log` VALUES (147, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/02e9a8cc-c904-46db-87f8-221a4599d8b4_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:01:26', 30);
INSERT INTO `sys_oper_log` VALUES (148, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/b7de9828-4283-4887-a0ce-ead9560a9432_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:01:57', 19);
INSERT INTO `sys_oper_log` VALUES (149, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/255cb57e-4a0d-4dc7-b939-3c89cfdae449_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:02:20', 21);
INSERT INTO `sys_oper_log` VALUES (150, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/a94cd8d2-da90-4284-bad6-482ac5bddf55_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:02:58', 19);
INSERT INTO `sys_oper_log` VALUES (151, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"D:/ruoyi/uploadPath/256f9e61-e269-442c-9524-83540627b1d8_文件名称.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:04:30', 19);
INSERT INTO `sys_oper_log` VALUES (152, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"d08d0863-612e-4ffd-96da-1af5cd117d2f_供应商信息.pdf\",\"code\":200}', 0, NULL, '2024-11-22 10:09:34', 269);
INSERT INTO `sys_oper_log` VALUES (153, '供应商信息', 1, 'com.ruoyi.providerinfo.controller.ProviderInfoController.add()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo', '127.0.0.1', '内网IP', '{\"area\":\"11\",\"businessscope\":\"1\",\"city\":\"四川省\",\"district\":\"1\",\"expirationdate\":\"1\",\"id\":6,\"juridicalperson\":\"1\",\"location\":\"1\",\"params\":{},\"providername\":\"1\",\"providerphone\":\"1\",\"socialcreditcode\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-11-22 11:19:46', 108);
INSERT INTO `sys_oper_log` VALUES (154, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.exportPdf()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/exportPdf', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"70d9b761-dcbe-4c12-ae4c-d9b0efb47320_供应商信息.pdf\",\"code\":200}', 0, NULL, '2024-11-22 11:21:03', 297);
INSERT INTO `sys_oper_log` VALUES (155, '供应商信息', 5, 'com.ruoyi.providerinfo.controller.ProviderInfoController.export()', 'POST', 1, 'admin', '研发部门', '/providerinfo/providerinfo/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-11-22 11:21:11', 729);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-11-21 11:01:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-11-21 11:01:58', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-22 09:39:47', 'admin', '2024-11-21 11:01:58', '', '2024-11-22 09:39:46', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-11-21 11:01:58', 'admin', '2024-11-21 11:01:58', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for todo
-- ----------------------------
DROP TABLE IF EXISTS `todo`;
CREATE TABLE `todo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代办事项内容',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否完成',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of todo
-- ----------------------------
INSERT INTO `todo` VALUES (2, '完成代码', '已完成', 'jiao');
INSERT INTO `todo` VALUES (4, '31512', '未完成', '');
INSERT INTO `todo` VALUES (5, '手动阀', '已完成', 'jiao');
INSERT INTO `todo` VALUES (6, '史蒂夫', '未完成', 'jiao');
INSERT INTO `todo` VALUES (7, '吃饭', '未完成', 'xtz');
INSERT INTO `todo` VALUES (9, '写作业', '未完成', 'jjm11');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `identificationgroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mapsearch` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monitor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complaints` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `livebroadcast` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantedit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `licence` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `licenceedit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantstuff` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantstuffedit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `historyaccident` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantvideo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantvideodownload` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `historyaccidentedit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantvideodelete` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complaintshandle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `touping` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passwdchange` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `institutionmanage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usermanage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usergroup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datapermission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `syslog` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monitorguard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `complaintsguard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `usergroupguard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES (1, '管理员', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `user_group` VALUES (2, '普通用户', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '1', '1', '1', '1', '0');
INSERT INTO `user_group` VALUES (3, '超级管理员', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `user_group` VALUES (5, '商户', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `user_group` VALUES (6, '监管人员', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `user_group` VALUES (7, '施工人员', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `user_group` VALUES (8, '消费者', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `user_group` VALUES (9, '学校', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for video_record
-- ----------------------------
DROP TABLE IF EXISTS `video_record`;
CREATE TABLE `video_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recordtime` datetime NULL DEFAULT NULL,
  `videourl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `businessid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `recordpersonid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `merchantname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cateringtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `videoname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `download` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video_record
-- ----------------------------
INSERT INTO `video_record` VALUES (3, '2024-01-22 21:07:39', 'http://localhost:8087/file/preview/video.mp4', '1', '1', '成都市', '成都市大件路', '建明科技有限公司', '幼儿园食堂', '食品监控', NULL);

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adcode` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weather` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `temperature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_direction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wind_power` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `humidity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `report_time` date NULL DEFAULT NULL,
  `creater` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4546 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of weather
-- ----------------------------
INSERT INTO `weather` VALUES (1, '四川', '成都市', '510100', '晴', '13', '北', '≤3', '64', '2024-12-12', '焦', '2024-12-12 17:41:46');
INSERT INTO `weather` VALUES (2, '四川', '成都市', '510100', '晴', '13', '北', '≤3', '64', '2024-12-12', '焦', '2024-12-12 17:42:43');
INSERT INTO `weather` VALUES (3, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:20');
INSERT INTO `weather` VALUES (4, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:21');
INSERT INTO `weather` VALUES (5, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:22');
INSERT INTO `weather` VALUES (6, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:23');
INSERT INTO `weather` VALUES (7, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:24');
INSERT INTO `weather` VALUES (8, '四川', '成都市', '510100', '晴', '20', '北', '≤3', '71', '2024-12-10', '徐桐洲', '2024-12-13 11:26:25');
INSERT INTO `weather` VALUES (9, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:26');
INSERT INTO `weather` VALUES (10, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:27');
INSERT INTO `weather` VALUES (11, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:28');
INSERT INTO `weather` VALUES (12, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:29');
INSERT INTO `weather` VALUES (13, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:30');
INSERT INTO `weather` VALUES (14, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:31');
INSERT INTO `weather` VALUES (15, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-11-30', '徐桐洲', '2024-12-13 11:26:32');
INSERT INTO `weather` VALUES (16, '四川', '成都市', '510100', '晴', '17', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:33');
INSERT INTO `weather` VALUES (17, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:34');
INSERT INTO `weather` VALUES (18, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:35');
INSERT INTO `weather` VALUES (19, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:36');
INSERT INTO `weather` VALUES (20, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:37');
INSERT INTO `weather` VALUES (21, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:38');
INSERT INTO `weather` VALUES (22, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:39');
INSERT INTO `weather` VALUES (23, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:40');
INSERT INTO `weather` VALUES (24, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:41');
INSERT INTO `weather` VALUES (25, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:42');
INSERT INTO `weather` VALUES (26, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:43');
INSERT INTO `weather` VALUES (27, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:44');
INSERT INTO `weather` VALUES (28, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:45');
INSERT INTO `weather` VALUES (29, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:46');
INSERT INTO `weather` VALUES (30, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:47');
INSERT INTO `weather` VALUES (31, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:48');
INSERT INTO `weather` VALUES (32, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:49');
INSERT INTO `weather` VALUES (33, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:50');
INSERT INTO `weather` VALUES (34, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:51');
INSERT INTO `weather` VALUES (35, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:52');
INSERT INTO `weather` VALUES (36, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:53');
INSERT INTO `weather` VALUES (37, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:54');
INSERT INTO `weather` VALUES (38, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:55');
INSERT INTO `weather` VALUES (39, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:56');
INSERT INTO `weather` VALUES (40, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:57');
INSERT INTO `weather` VALUES (41, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:58');
INSERT INTO `weather` VALUES (42, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:26:59');
INSERT INTO `weather` VALUES (43, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:00');
INSERT INTO `weather` VALUES (44, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:01');
INSERT INTO `weather` VALUES (45, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:02');
INSERT INTO `weather` VALUES (46, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:03');
INSERT INTO `weather` VALUES (47, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:04');
INSERT INTO `weather` VALUES (48, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:05');
INSERT INTO `weather` VALUES (49, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:06');
INSERT INTO `weather` VALUES (50, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:07');
INSERT INTO `weather` VALUES (51, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:08');
INSERT INTO `weather` VALUES (52, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:09');
INSERT INTO `weather` VALUES (53, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:10');
INSERT INTO `weather` VALUES (54, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:11');
INSERT INTO `weather` VALUES (55, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:12');
INSERT INTO `weather` VALUES (56, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:13');
INSERT INTO `weather` VALUES (57, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:14');
INSERT INTO `weather` VALUES (58, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:15');
INSERT INTO `weather` VALUES (59, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:16');
INSERT INTO `weather` VALUES (60, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:17');
INSERT INTO `weather` VALUES (61, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:18');
INSERT INTO `weather` VALUES (62, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:19');
INSERT INTO `weather` VALUES (63, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:20');
INSERT INTO `weather` VALUES (64, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:21');
INSERT INTO `weather` VALUES (65, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:22');
INSERT INTO `weather` VALUES (66, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:23');
INSERT INTO `weather` VALUES (67, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:24');
INSERT INTO `weather` VALUES (68, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:25');
INSERT INTO `weather` VALUES (69, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:26');
INSERT INTO `weather` VALUES (70, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:27');
INSERT INTO `weather` VALUES (71, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:28');
INSERT INTO `weather` VALUES (72, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:50');
INSERT INTO `weather` VALUES (73, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:51');
INSERT INTO `weather` VALUES (74, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:52');
INSERT INTO `weather` VALUES (75, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:53');
INSERT INTO `weather` VALUES (76, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:54');
INSERT INTO `weather` VALUES (77, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:55');
INSERT INTO `weather` VALUES (78, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:56');
INSERT INTO `weather` VALUES (79, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:57');
INSERT INTO `weather` VALUES (80, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:58');
INSERT INTO `weather` VALUES (81, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:27:59');
INSERT INTO `weather` VALUES (82, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:00');
INSERT INTO `weather` VALUES (83, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:01');
INSERT INTO `weather` VALUES (84, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:02');
INSERT INTO `weather` VALUES (85, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:03');
INSERT INTO `weather` VALUES (86, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:04');
INSERT INTO `weather` VALUES (87, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:05');
INSERT INTO `weather` VALUES (88, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:06');
INSERT INTO `weather` VALUES (89, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:07');
INSERT INTO `weather` VALUES (90, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:08');
INSERT INTO `weather` VALUES (91, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:09');
INSERT INTO `weather` VALUES (92, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:10');
INSERT INTO `weather` VALUES (93, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:11');
INSERT INTO `weather` VALUES (94, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:12');
INSERT INTO `weather` VALUES (95, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:13');
INSERT INTO `weather` VALUES (96, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:14');
INSERT INTO `weather` VALUES (97, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:15');
INSERT INTO `weather` VALUES (98, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:16');
INSERT INTO `weather` VALUES (99, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:17');
INSERT INTO `weather` VALUES (100, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:18');
INSERT INTO `weather` VALUES (101, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:19');
INSERT INTO `weather` VALUES (102, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:20');
INSERT INTO `weather` VALUES (103, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:21');
INSERT INTO `weather` VALUES (104, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:22');
INSERT INTO `weather` VALUES (105, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:23');
INSERT INTO `weather` VALUES (106, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:24');
INSERT INTO `weather` VALUES (107, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:25');
INSERT INTO `weather` VALUES (108, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:26');
INSERT INTO `weather` VALUES (109, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:27');
INSERT INTO `weather` VALUES (110, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:28');
INSERT INTO `weather` VALUES (111, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:29');
INSERT INTO `weather` VALUES (112, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:30');
INSERT INTO `weather` VALUES (113, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:31');
INSERT INTO `weather` VALUES (114, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:32');
INSERT INTO `weather` VALUES (115, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:33');
INSERT INTO `weather` VALUES (116, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:34');
INSERT INTO `weather` VALUES (117, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:35');
INSERT INTO `weather` VALUES (118, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:36');
INSERT INTO `weather` VALUES (119, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:37');
INSERT INTO `weather` VALUES (120, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:38');
INSERT INTO `weather` VALUES (121, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:39');
INSERT INTO `weather` VALUES (122, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:40');
INSERT INTO `weather` VALUES (123, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:41');
INSERT INTO `weather` VALUES (124, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:42');
INSERT INTO `weather` VALUES (125, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:43');
INSERT INTO `weather` VALUES (126, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:44');
INSERT INTO `weather` VALUES (127, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:45');
INSERT INTO `weather` VALUES (128, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:46');
INSERT INTO `weather` VALUES (129, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:47');
INSERT INTO `weather` VALUES (130, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:48');
INSERT INTO `weather` VALUES (131, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:49');
INSERT INTO `weather` VALUES (132, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:28:50');
INSERT INTO `weather` VALUES (133, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:16');
INSERT INTO `weather` VALUES (134, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:17');
INSERT INTO `weather` VALUES (135, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:18');
INSERT INTO `weather` VALUES (136, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:19');
INSERT INTO `weather` VALUES (137, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:20');
INSERT INTO `weather` VALUES (138, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:21');
INSERT INTO `weather` VALUES (139, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:22');
INSERT INTO `weather` VALUES (140, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:23');
INSERT INTO `weather` VALUES (141, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:24');
INSERT INTO `weather` VALUES (142, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:25');
INSERT INTO `weather` VALUES (143, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:29:31');
INSERT INTO `weather` VALUES (144, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:30:20');
INSERT INTO `weather` VALUES (145, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:31:46');
INSERT INTO `weather` VALUES (146, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:23');
INSERT INTO `weather` VALUES (147, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:28');
INSERT INTO `weather` VALUES (148, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:33');
INSERT INTO `weather` VALUES (149, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:38');
INSERT INTO `weather` VALUES (150, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:43');
INSERT INTO `weather` VALUES (151, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:48');
INSERT INTO `weather` VALUES (152, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:53');
INSERT INTO `weather` VALUES (153, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:32:58');
INSERT INTO `weather` VALUES (154, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:03');
INSERT INTO `weather` VALUES (155, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:08');
INSERT INTO `weather` VALUES (156, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:13');
INSERT INTO `weather` VALUES (157, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:18');
INSERT INTO `weather` VALUES (158, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:23');
INSERT INTO `weather` VALUES (159, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:28');
INSERT INTO `weather` VALUES (160, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:33');
INSERT INTO `weather` VALUES (161, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:38');
INSERT INTO `weather` VALUES (162, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:43');
INSERT INTO `weather` VALUES (163, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:48');
INSERT INTO `weather` VALUES (164, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:53');
INSERT INTO `weather` VALUES (165, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:33:58');
INSERT INTO `weather` VALUES (166, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:03');
INSERT INTO `weather` VALUES (167, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:08');
INSERT INTO `weather` VALUES (168, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:13');
INSERT INTO `weather` VALUES (169, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:18');
INSERT INTO `weather` VALUES (170, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:23');
INSERT INTO `weather` VALUES (171, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:28');
INSERT INTO `weather` VALUES (172, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:33');
INSERT INTO `weather` VALUES (173, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:38');
INSERT INTO `weather` VALUES (174, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:34:43');
INSERT INTO `weather` VALUES (175, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:35:25');
INSERT INTO `weather` VALUES (176, '四川', '成都市', '510100', '晴', '12', '北', '≤3', '71', '2024-12-13', '徐桐洲', '2024-12-13 11:35:28');
INSERT INTO `weather` VALUES (177, '四川', '成都市', '510100', '晴', '12', '东北', '≤3', '66', '2024-12-13', '徐桐洲', '2024-12-13 11:44:43');
INSERT INTO `weather` VALUES (178, '四川', '成都市', '510100', '晴', '12', '东北', '≤3', '66', '2024-12-13', '徐桐洲', '2024-12-13 11:44:44');
INSERT INTO `weather` VALUES (179, '四川', '成都市', '510100', '晴', '12', '东北', '≤3', '66', '2024-12-13', '徐桐洲', '2024-12-13 11:44:45');
INSERT INTO `weather` VALUES (180, '四川', '成都市', '510100', '晴', '12', '东北', '≤3', '66', '2024-12-13', '徐桐洲', '2024-12-13 11:47:18');
INSERT INTO `weather` VALUES (181, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:31:21');
INSERT INTO `weather` VALUES (182, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:31:57');
INSERT INTO `weather` VALUES (183, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:02');
INSERT INTO `weather` VALUES (184, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:08');
INSERT INTO `weather` VALUES (185, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:09');
INSERT INTO `weather` VALUES (186, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:10');
INSERT INTO `weather` VALUES (187, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:11');
INSERT INTO `weather` VALUES (188, '四川', '成都市', '510100', '多云', '12', '北', '≤3', '76', '2024-12-13', '你好132456', '2024-12-13 20:32:12');
INSERT INTO `weather` VALUES (4506, '北京', '北京市', '110000', '阴', '-1', '东南', '≤3', '46', '2024-01-19', '徐桐洲', '2024-01-19 10:45:39');
INSERT INTO `weather` VALUES (4507, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:34');
INSERT INTO `weather` VALUES (4508, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:35');
INSERT INTO `weather` VALUES (4509, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:36');
INSERT INTO `weather` VALUES (4510, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:37');
INSERT INTO `weather` VALUES (4511, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:38');
INSERT INTO `weather` VALUES (4512, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:39');
INSERT INTO `weather` VALUES (4513, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:40');
INSERT INTO `weather` VALUES (4514, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:46');
INSERT INTO `weather` VALUES (4515, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:47');
INSERT INTO `weather` VALUES (4516, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:48');
INSERT INTO `weather` VALUES (4517, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:49');
INSERT INTO `weather` VALUES (4518, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:50');
INSERT INTO `weather` VALUES (4519, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:51');
INSERT INTO `weather` VALUES (4520, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:52');
INSERT INTO `weather` VALUES (4521, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:53');
INSERT INTO `weather` VALUES (4522, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:54');
INSERT INTO `weather` VALUES (4523, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:55');
INSERT INTO `weather` VALUES (4524, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:56');
INSERT INTO `weather` VALUES (4525, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:57');
INSERT INTO `weather` VALUES (4526, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:58');
INSERT INTO `weather` VALUES (4527, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:34:59');
INSERT INTO `weather` VALUES (4528, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:00');
INSERT INTO `weather` VALUES (4529, '北京', '北京市', '110000', '晴', '-12', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:01');
INSERT INTO `weather` VALUES (4530, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:02');
INSERT INTO `weather` VALUES (4531, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:03');
INSERT INTO `weather` VALUES (4532, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:04');
INSERT INTO `weather` VALUES (4533, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:05');
INSERT INTO `weather` VALUES (4534, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:06');
INSERT INTO `weather` VALUES (4535, '北京', '北京市', '110000', '晴', '-1', '北', '≤3', '48', '2024-01-20', 'jjm11', '2024-01-20 20:35:07');
INSERT INTO `weather` VALUES (4536, '北京', '北京市', '110000', '晴', '-7', '北', '≤3', '25', '2024-01-22', 'jjm11', '2024-01-22 21:27:01');
INSERT INTO `weather` VALUES (4537, '北京', '北京市', '110000', '晴', '-7', '北', '≤3', '25', '2024-01-22', 'jjm11', '2024-01-22 21:27:07');
INSERT INTO `weather` VALUES (4538, '北京', '北京市', '110000', '晴', '-7', '北', '≤3', '25', '2024-01-22', 'jjm11', '2024-01-22 21:27:08');
INSERT INTO `weather` VALUES (4539, '北京', '北京市', '110000', '晴', '-7', '西北', '4', '26', '2024-01-22', 'jjm11', '2024-01-22 22:14:22');
INSERT INTO `weather` VALUES (4540, '北京', '北京市', '110000', '晴', '-7', '西北', '4', '26', '2024-01-22', 'jjm11', '2024-01-22 22:14:29');
INSERT INTO `weather` VALUES (4541, '北京', '北京市', '110000', '晴', '-7', '西北', '4', '26', '2024-01-22', 'jjm11', '2024-01-22 22:14:30');
INSERT INTO `weather` VALUES (4542, '北京', '北京市', '110000', '晴', '-7', '西北', '4', '26', '2024-01-22', 'jjm11', '2024-01-22 22:14:31');
INSERT INTO `weather` VALUES (4543, '北京', '北京市', '110000', '晴', '-20', '西北', '4', '26', '2024-01-22', 'jjm11', '2024-01-22 22:14:32');
INSERT INTO `weather` VALUES (4545, '北京', '北京市', '110000', '晴', '-7', '西', '≤3', '26', '2024-01-22', 'jjm11', '2024-01-22 22:41:10');

SET FOREIGN_KEY_CHECKS = 1;
