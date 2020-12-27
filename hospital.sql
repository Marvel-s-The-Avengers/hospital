/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : hospital

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2020-12-27 15:52:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `hospital_clinic`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_clinic`;
CREATE TABLE `hospital_clinic` (
  `clinicNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `clinicName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '诊室名',
  `clinicAddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '诊室地址',
  `clinicDoc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '负责医生',
  `clinicIntroduce` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '诊室介绍',
  PRIMARY KEY (`clinicNo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hospital_clinic
-- ----------------------------
INSERT INTO `hospital_clinic` VALUES ('1', '内科诊室', '1号楼202', '周杰伦', '负责治疗内科');
INSERT INTO `hospital_clinic` VALUES ('2', '外科诊室', '2号楼101', '陈冠希', null);
INSERT INTO `hospital_clinic` VALUES ('3', '妇科诊室', '二楼三零一', '关之琳', null);
INSERT INTO `hospital_clinic` VALUES ('4', '皮肤科诊室', '二号楼一零六', '张大炮', '');
INSERT INTO `hospital_clinic` VALUES ('5', '儿科诊室', '二号楼一零七', '孙耀威', '');

-- ----------------------------
-- Table structure for `hospital_doctor`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_doctor`;
CREATE TABLE `hospital_doctor` (
  `doctorNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '涓婚敭ID',
  `doctorName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '鍖荤敓濮撳悕',
  `doctorSex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '鍖荤敓鎬у埆',
  `doctorTel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '鍖荤敓鐢佃瘽',
  `doctorBel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '鍖荤敓灞炰簬璇婂',
  `doctorPassword` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '鍖荤敓瀵嗙爜',
  PRIMARY KEY (`doctorNo`),
  KEY `doctorName` (`doctorName`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hospital_doctor
-- ----------------------------
INSERT INTO `hospital_doctor` VALUES ('1', '周杰伦', '男', '13333333333', '内科诊室', '111');
INSERT INTO `hospital_doctor` VALUES ('2', '陈冠希', '男', '18133333333', '外科诊室', '222222');
INSERT INTO `hospital_doctor` VALUES ('3', '关之琳', '女', '13577777777', '妇科诊室', '333333');
INSERT INTO `hospital_doctor` VALUES ('10', '张大炮', '女', '13577777477', '皮肤科诊室', '333333');
INSERT INTO `hospital_doctor` VALUES ('11', '孙耀威', '男', '13819713022', '儿科诊室', '123456');

-- ----------------------------
-- Table structure for `hospital_history`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_history`;
CREATE TABLE `hospital_history` (
  `historyNo` bigint(20) NOT NULL AUTO_INCREMENT,
  `patientName` varchar(20) DEFAULT NULL,
  `historyDate` varchar(40) DEFAULT NULL,
  `historyDiagnosis` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`historyNo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hospital_history
-- ----------------------------
INSERT INTO `hospital_history` VALUES ('7', '张三', '2020-12-20 20:13:00', '黄连素片一天三次一次两粒');
INSERT INTO `hospital_history` VALUES ('8', '佩奇', 'Fri Jan 01 19:07:00 CST 2021', '复方醋酸地塞米松乳膏一天三次一次一粒');
INSERT INTO `hospital_history` VALUES ('9', '杨过', 'Mon Jul 20 17:22:22 CST 2020', '地西泮片一天一次一次两粒');
INSERT INTO `hospital_history` VALUES ('10', '林俊杰', 'Thu Jul 23 20:33:33 CST 2020', '阿莫西林片一天三次一次一粒');

-- ----------------------------
-- Table structure for `hospital_medicine`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_medicine`;
CREATE TABLE `hospital_medicine` (
  `medicineNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `medicineName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '药名',
  `medicineDisease` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '适用病',
  `medicineDoses` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '适用量',
  PRIMARY KEY (`medicineNo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hospital_medicine
-- ----------------------------
INSERT INTO `hospital_medicine` VALUES ('1', '阿莫西林片', '治疗细菌性的感染', '一天一次，一次一片');
INSERT INTO `hospital_medicine` VALUES ('2', '利巴韦林胶囊', '抗病毒药', '一天三次，一次一颗');
INSERT INTO `hospital_medicine` VALUES ('3', '尼可刹米胶囊', '治疗呼吸抑制疾病', '一天三次，一次三颗');
INSERT INTO `hospital_medicine` VALUES ('4', '地西泮片', '抗癫痫、惊厥类疾病', '一天三次，一次三片');
INSERT INTO `hospital_medicine` VALUES ('6', '复方醋酸地塞米松乳膏', '适应症为用于局限性搔痒症', '一天三次');

-- ----------------------------
-- Table structure for `hospital_patient`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_patient`;
CREATE TABLE `hospital_patient` (
  `patientNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `patientName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病人姓名',
  `patientSex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病人性别',
  `patientAge` smallint(6) DEFAULT NULL COMMENT '病人年龄',
  `patientAddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病人地址',
  `patientTel` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病人联系电话',
  `appDate` datetime DEFAULT NULL COMMENT '病人病往史',
  PRIMARY KEY (`patientNo`),
  KEY `patientName` (`patientName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hospital_patient
-- ----------------------------
INSERT INTO `hospital_patient` VALUES ('1', '张三', '男', '30', '北京市海淀区成府路207号', '13133333333', null);
INSERT INTO `hospital_patient` VALUES ('2', '杨过', '男', '30', '北京市海淀区成府路207号', '13950505050', null);
INSERT INTO `hospital_patient` VALUES ('3', '林俊杰', '男', '36', '北京市东城区前门东大街9号', '18170707070', null);
INSERT INTO `hospital_patient` VALUES ('9', '江苹果', '女', '32', '北京市朝阳区北辰中心12号', '17830305030', '2020-07-20 09:22:22');
INSERT INTO `hospital_patient` VALUES ('14', '佩奇', '男', '12', '四川省成都市成华区成华建设北路三段496号', '13819713022', '2021-01-07 00:00:00');
INSERT INTO `hospital_patient` VALUES ('15', '赖昌星', '男', '32', '四川省成都市成华区成华建设北路三段496号', '13819713022', '2020-12-27 00:00:00');

-- ----------------------------
-- Table structure for `hospital_registration`
-- ----------------------------
DROP TABLE IF EXISTS `hospital_registration`;
CREATE TABLE `hospital_registration` (
  `regNo` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `regPatientName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '挂号病人姓名',
  `regPatientSymptoms` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '挂号病人病症',
  `regClinicName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '挂号诊室名',
  `regDoctorName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '挂号医生姓名',
  `remaining` int(11) DEFAULT NULL COMMENT '前方剩余人数',
  `regDate` datetime DEFAULT NULL COMMENT '就诊日期',
  `diagnosis` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '诊治信息',
  PRIMARY KEY (`regNo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hospital_registration
-- ----------------------------
INSERT INTO `hospital_registration` VALUES ('1', '张三', '咳嗽', '内科诊室', '周杰伦', '0', '2020-07-13 14:22:22', '阿莫西林片一天一次一次一粒');
INSERT INTO `hospital_registration` VALUES ('2', '杨过', '断臂', '外科诊室', '陈冠希', '1', '2020-07-20 09:22:22', '地西泮片一天一次一次两粒');
INSERT INTO `hospital_registration` VALUES ('3', '林俊杰', '肝疼', '内科诊室', '周杰伦', '2', '2020-07-23 12:33:33', '阿莫西林片一天三次一次一粒');
INSERT INTO `hospital_registration` VALUES ('5', '张三', '肚子疼', '外科诊室', '陈冠希', null, '2020-12-20 20:13:00', '利巴韦林胶囊一天三次一次两粒');
INSERT INTO `hospital_registration` VALUES ('8', '佩奇', '起疹子', '皮肤科诊室', '张大炮', null, '2021-01-01 11:07:00', '复方醋酸地塞米松乳膏一天三次一次一粒');
INSERT INTO `hospital_registration` VALUES ('9', '赖昌星', '请输入症状', '皮肤科诊室', '张大炮', null, '2020-12-27 14:23:00', null);
