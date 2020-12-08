/*
Navicat MySQL Data Transfer

Source Server         : 集享家服务器
Source Server Version : 50731
Source Host           : 49.233.36.209:3306
Source Database       : febs_dian

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-11-20 15:30:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_authenticate
-- ----------------------------
DROP TABLE IF EXISTS `t_authenticate`;
CREATE TABLE `t_authenticate` (
  `AUTHENTICATE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '鉴定表ID',
  `COMPANY` varchar(255) DEFAULT NULL COMMENT '委托j鉴定单位',
  `START_TIME` datetime DEFAULT NULL COMMENT '委托时间',
  `NAME_ONE` varchar(10) DEFAULT NULL COMMENT '送检人姓名',
  `ID_CARD_ONE` varchar(30) DEFAULT NULL COMMENT '送检人身份证',
  `JOB_ONE` varchar(10) DEFAULT NULL COMMENT '送检人职务',
  `NAME_TWO` varchar(10) DEFAULT NULL COMMENT '送检人姓名',
  `ID_CARE_TWO` varchar(30) DEFAULT NULL COMMENT '送检人身份证',
  `JOB_TWO` varchar(10) DEFAULT NULL COMMENT '职务',
  `URL` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `URL_NUM` varchar(20) DEFAULT NULL COMMENT '邮编',
  `PHONE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `EMAIL_PHONE` varchar(20) DEFAULT NULL COMMENT '传真号码',
  `TO_COMPANY` varchar(255) DEFAULT NULL COMMENT '鉴定机构名称',
  `CASE_NAME` varchar(255) DEFAULT NULL COMMENT '案事件名称',
  `CASE_NUM` varchar(50) DEFAULT NULL COMMENT '案事件编号',
  `PARTIES_NAME` varchar(10) DEFAULT NULL COMMENT '当事人名称',
  `PARTIES_AGE` int(3) DEFAULT NULL COMMENT '当事人年龄 ',
  `PARTIES_SEX` int(1) DEFAULT NULL COMMENT '当事人性别 0男1女',
  `PARTIES_PHONE` varchar(20) DEFAULT NULL COMMENT '当事人手机号',
  `PARTIES_COM` varchar(20) DEFAULT NULL COMMENT '当事人单位',
  `PARTIES_HOME` varchar(30) DEFAULT NULL COMMENT '当事人住址',
  `ABSTRACT` varchar(255) DEFAULT NULL COMMENT '案件摘要',
  `RESULT` varchar(255) DEFAULT NULL COMMENT '原鉴定情况',
  `SAMPLE` varchar(255) DEFAULT NULL COMMENT '送检的检材和样本等情况',
  `REQUIRE` varchar(255) DEFAULT NULL COMMENT '鉴定要求',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`AUTHENTICATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_authenticate
-- ----------------------------

-- ----------------------------
-- Table structure for t_case
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `CASE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '案件ID',
  `COMPANY` varchar(255) DEFAULT NULL COMMENT '申请单位',
  `NAME_ONE` varchar(10) DEFAULT NULL COMMENT '申请人1',
  `NAME_TWO` varchar(10) DEFAULT NULL COMMENT '申请人2',
  `CASE_NAME` varchar(255) DEFAULT NULL COMMENT '案件名称',
  `CASE_NUM` varchar(50) DEFAULT NULL COMMENT '案件编号',
  `CASE_TIME` datetime DEFAULT NULL COMMENT '案件发生时间',
  `CASE_WHERE_NUM` varchar(50) DEFAULT NULL COMMENT '现场勘验检查号',
  `CASE_WHERE` varchar(255) DEFAULT NULL COMMENT '案件发生地点',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`CASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `CATEGORY_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '类别ID',
  `CATEGORY_NAME` varchar(10) DEFAULT NULL COMMENT '鉴定类别',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------

-- ----------------------------
-- Table structure for t_data_permission_test
-- ----------------------------
DROP TABLE IF EXISTS `t_data_permission_test`;
CREATE TABLE `t_data_permission_test` (
  `FIELD1` varchar(20) NOT NULL,
  `FIELD2` varchar(20) NOT NULL,
  `FIELD3` varchar(20) NOT NULL,
  `FIELD4` varchar(20) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限测试';

-- ----------------------------
-- Records of t_data_permission_test
-- ----------------------------
INSERT INTO `t_data_permission_test` VALUES ('小米', '小米10Pro', '4999', '珍珠白', '1', '2020-04-14 15:00:38', '1');
INSERT INTO `t_data_permission_test` VALUES ('腾讯', '黑鲨游戏手机3', '3799', '铠甲灰', '2', '2020-04-14 15:01:36', '2');
INSERT INTO `t_data_permission_test` VALUES ('华为', '华为P30', '3299', '天空之境', '1', '2020-04-14 15:03:11', '3');
INSERT INTO `t_data_permission_test` VALUES ('华为', '华为P40Pro', '6488', '亮黑色', '3', '2020-04-14 15:04:31', '4');
INSERT INTO `t_data_permission_test` VALUES ('vivo', 'Vivo iQOO 3', '3998', '拉力橙', '4', '2020-04-14 15:05:55', '5');
INSERT INTO `t_data_permission_test` VALUES ('一加', '一加7T', '3199', '冰际蓝', '5', '2020-04-14 15:06:53', '6');
INSERT INTO `t_data_permission_test` VALUES ('三星', '三星Galaxy S10', '4098', '浩玉白', '6', '2020-04-14 15:08:25', '7');
INSERT INTO `t_data_permission_test` VALUES ('苹果', 'iPhone 11 pro max', '9198', '暗夜绿', '4', '2020-04-14 15:09:20', '8');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) NOT NULL COMMENT '部门名称',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`),
  KEY `t_dept_parent_id` (`PARENT_ID`) USING BTREE,
  KEY `t_dept_dept_name` (`DEPT_NAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '0', '开发部', '1', '2019-06-14 20:56:41', null);
INSERT INTO `t_dept` VALUES ('2', '1', '开发一部', '1', '2019-06-14 20:58:46', null);
INSERT INTO `t_dept` VALUES ('3', '1', '开发二部', '2', '2019-06-14 20:58:56', null);
INSERT INTO `t_dept` VALUES ('12', '2', '开发小部', null, '2020-11-03 15:43:55', null);

-- ----------------------------
-- Table structure for t_evidence
-- ----------------------------
DROP TABLE IF EXISTS `t_evidence`;
CREATE TABLE `t_evidence` (
  `EVIDENCE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '物证ID',
  `CASE_ID` bigint(20) NOT NULL COMMENT '案件ID',
  `STATE_ID` bigint(20) DEFAULT NULL,
  `EVIDENCE_NO` int(11) DEFAULT NULL COMMENT '序号',
  `EVIDENCE_NAME` varchar(20) DEFAULT NULL COMMENT '物证名称',
  `EVIDENCE_NUM` int(11) DEFAULT NULL COMMENT '数量',
  `EVIDENCE_UNIT` varchar(10) DEFAULT NULL COMMENT '单位',
  `IS_VERIFICATION` int(1) DEFAULT NULL COMMENT '是否核验',
  `VERIFICATION_NUM` varchar(50) DEFAULT NULL COMMENT '核验编号',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`EVIDENCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_evidence
-- ----------------------------

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport` (
  `FIELD1` varchar(20) NOT NULL COMMENT '字段1',
  `FIELD2` int(11) NOT NULL COMMENT '字段2',
  `FIELD3` varchar(100) NOT NULL COMMENT '字段3',
  `CREATE_TIME` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Excel导入导出测试';

-- ----------------------------
-- Records of t_eximport
-- ----------------------------
INSERT INTO `t_eximport` VALUES ('字段1', '1', 'mrbird0@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '2', 'mrbird1@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '3', 'mrbird2@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '4', 'mrbird3@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '5', 'mrbird4@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '6', 'mrbird5@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '7', 'mrbird6@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '8', 'mrbird7@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '9', 'mrbird8@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '10', 'mrbird9@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '11', 'mrbird10@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '12', 'mrbird11@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '13', 'mrbird12@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '14', 'mrbird13@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '15', 'mrbird14@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '16', 'mrbird15@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '17', 'mrbird16@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '18', 'mrbird17@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '19', 'mrbird18@gmail.com', '2019-06-13 03:14:06');
INSERT INTO `t_eximport` VALUES ('字段1', '20', 'mrbird19@gmail.com', '2019-06-13 03:14:06');

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config` (
  `id` int(11) NOT NULL COMMENT '主键',
  `author` varchar(20) NOT NULL COMMENT '作者',
  `base_package` varchar(50) NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成配置表';

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES ('1', 'weizihao', 'cc.mrbird.febs.system', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_gg
-- ----------------------------
DROP TABLE IF EXISTS `t_gg`;
CREATE TABLE `t_gg` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `A2` double(10,3) DEFAULT NULL COMMENT '铁心柱净截面积cm2',
  `G3` double(10,2) DEFAULT NULL COMMENT '角重',
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gg
-- ----------------------------
INSERT INTO `t_gg` VALUES ('1', '32.300', '3.12', null, null);
INSERT INTO `t_gg` VALUES ('2', '37.620', '4.29', null, null);
INSERT INTO `t_gg` VALUES ('3', '42.085', '4.73', null, null);
INSERT INTO `t_gg` VALUES ('4', '47.690', '6.19', null, null);
INSERT INTO `t_gg` VALUES ('5', '53.010', '6.80', null, null);
INSERT INTO `t_gg` VALUES ('6', '60.800', '8.92', null, null);
INSERT INTO `t_gg` VALUES ('7', '66.880', '9.70', null, null);
INSERT INTO `t_gg` VALUES ('8', '75.050', '12.27', null, null);
INSERT INTO `t_gg` VALUES ('9', '82.080', '13.27', null, null);
INSERT INTO `t_gg` VALUES ('10', '89.395', '16.03', null, null);
INSERT INTO `t_gg` VALUES ('11', '96.995', '17.23', null, null);
INSERT INTO `t_gg` VALUES ('12', '106.210', '20.86', null, null);

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `JOB_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `BEAN_NAME` varchar(50) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(50) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(50) DEFAULT NULL COMMENT '参数',
  `CRON_EXPRESSION` varchar(20) NOT NULL COMMENT 'cron表达式',
  `STATUS` char(2) NOT NULL COMMENT '任务状态  0：正常  1：暂停',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`JOB_ID`),
  KEY `t_job_create_time` (`CREATE_TIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='定时任务表';

-- ----------------------------
-- Records of t_job
-- ----------------------------

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS `t_job_log`;
CREATE TABLE `t_job_log` (
  `LOG_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `JOB_ID` bigint(20) NOT NULL COMMENT '任务id',
  `BEAN_NAME` varchar(100) NOT NULL COMMENT 'spring bean名称',
  `METHOD_NAME` varchar(100) NOT NULL COMMENT '方法名',
  `PARAMS` varchar(200) DEFAULT NULL COMMENT '参数',
  `STATUS` char(2) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `ERROR` text COMMENT '失败信息',
  `TIMES` decimal(11,0) DEFAULT NULL COMMENT '耗时(单位：毫秒)',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`LOG_ID`),
  KEY `t_job_log_create_time` (`CREATE_TIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2562 DEFAULT CHARSET=utf8 COMMENT='调度日志表';

-- ----------------------------
-- Records of t_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text COMMENT '操作内容',
  `TIME` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `METHOD` text COMMENT '操作方法',
  `PARAMS` text COMMENT '方法参数',
  `IP` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`),
  KEY `t_log_create_time` (`CREATE_TIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1151 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES ('1136', 'MrBird', '新增角色', '39', 'cc.mrbird.febs.system.controller.RoleController.addRole()', ' role: \"Role(roleId=83, roleName=电力, remark=, createTime=Thu Nov 19 17:13:29 CST 2020, modifyTime=null, menuIds=179,181,182,183,184,185,180,186,187,188,189)\"', '49.233.36.209', '2020-11-19 17:13:29', '中国|华北|北京市|北京市|0');
INSERT INTO `t_log` VALUES ('1137', 'MrBird', '修改用户', '35', 'cc.mrbird.febs.system.controller.UserController.updateUser()', ' user: \"User(userId=9, username=null, password=null, deptId=1, email=, mobile=, status=1, createTime=null, modifyTime=Thu Nov 19 17:13:37 CST 2020, lastLoginTime=null, sex=2, avatar=null, theme=null, isTab=null, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=83, roleName=null, deptIds=)\"', '49.233.36.209', '2020-11-19 17:13:38', '中国|华北|北京市|北京市|0');
INSERT INTO `t_log` VALUES ('1138', 'MrBird', '修改角色', '758', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=83, roleName=电力, remark=, createTime=null, modifyTime=Fri Nov 20 08:57:07 CST 2020, menuIds=1,3,11,12,13,160,179,181,182,183,184,185,180,186,187,188,189)\"', '192.168.3.82', '2020-11-20 08:57:09', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1139', 'MrBird', '新增用户', '329', 'cc.mrbird.febs.system.controller.UserController.addUser()', ' user: \"User(userId=10, username=dian, password=c7e14fe620ffc8fef17c98e69779fc86, deptId=null, email=null, mobile=null, status=1, createTime=Fri Nov 20 09:09:31 CST 2020, modifyTime=null, lastLoginTime=null, sex=0, avatar=default.jpg, theme=black, isTab=1, description=, deptName=null, createTimeFrom=null, createTimeTo=null, roleId=83, roleName=null, deptIds=null)\"', '192.168.3.82', '2020-11-20 09:09:32', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1140', 'MrBird', '修改菜单/按钮', '574', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=179, parentId=0, menuName=电抗器, url=, perms=, icon=layui-icon-right-circle, type=0, orderNum=2, createTime=null, modifyTime=Fri Nov 20 09:14:25 CST 2020)\"', '192.168.3.82', '2020-11-20 09:14:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1141', 'MrBird', '修改菜单/按钮', '518', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=2, parentId=0, menuName=系统监控, url=, perms=, icon=layui-icon-alert, type=0, orderNum=3, createTime=null, modifyTime=Fri Nov 20 09:14:45 CST 2020)\"', '192.168.3.82', '2020-11-20 09:14:46', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1142', 'MrBird', '修改菜单/按钮', '556', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=1, parentId=0, menuName=系统管理, url=, perms=, icon=layui-icon-setting, type=0, orderNum=3, createTime=null, modifyTime=Fri Nov 20 09:15:00 CST 2020)\"', '192.168.3.82', '2020-11-20 09:15:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1143', 'MrBird', '修改菜单/按钮', '207', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=180, parentId=0, menuName=变压器, url=, perms=, icon=layui-icon-left-circle, type=0, orderNum=1, createTime=null, modifyTime=Fri Nov 20 09:15:11 CST 2020)\"', '192.168.3.82', '2020-11-20 09:15:12', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1144', 'MrBird', '修改菜单/按钮', '175', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=182, parentId=179, menuName=铁芯直径, url=/diankangqi/tiexinzhijing, perms=, icon=, type=0, orderNum=1, createTime=null, modifyTime=Fri Nov 20 09:17:37 CST 2020)\"', '192.168.3.82', '2020-11-20 09:17:37', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1145', 'MrBird', '修改菜单/按钮', '167', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=183, parentId=179, menuName=主电抗, url=/diankangqi/zhudiankang, perms=, icon=, type=0, orderNum=2, createTime=null, modifyTime=Fri Nov 20 09:17:51 CST 2020)\"', '192.168.3.82', '2020-11-20 09:17:52', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1146', 'MrBird', '修改菜单/按钮', '475', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=181, parentId=179, menuName=分接电抗, url=/diankangqi/fenjiedian, perms=, icon=, type=0, orderNum=3, createTime=null, modifyTime=Fri Nov 20 09:18:00 CST 2020)\"', '192.168.3.82', '2020-11-20 09:18:01', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1147', 'MrBird', '修改菜单/按钮', '163', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=184, parentId=179, menuName=绕组温升, url=/diankangqi/shaobeishengwenzu, perms=, icon=, type=0, orderNum=4, createTime=null, modifyTime=Fri Nov 20 09:18:16 CST 2020)\"', '192.168.3.82', '2020-11-20 09:18:17', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1148', 'MrBird', '修改菜单/按钮', '178', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=185, parentId=179, menuName=电抗数值, url=/diankangqi/diankangshuzhi, perms=, icon=, type=0, orderNum=5, createTime=null, modifyTime=Fri Nov 20 09:18:25 CST 2020)\"', '192.168.3.82', '2020-11-20 09:18:26', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1149', 'MrBird', '修改菜单/按钮', '199', 'cc.mrbird.febs.system.controller.MenuController.updateMenu()', ' menu: \"Menu(menuId=189, parentId=180, menuName=绕组温升, url=/bianyaqi/shaozuwensheng, perms=, icon=, type=0, orderNum=null, createTime=null, modifyTime=Fri Nov 20 09:19:03 CST 2020)\"', '192.168.3.82', '2020-11-20 09:19:04', '内网IP|0|0|内网IP|内网IP');
INSERT INTO `t_log` VALUES ('1150', 'MrBird', '修改角色', '954', 'cc.mrbird.febs.system.controller.RoleController.updateRole()', ' role: \"Role(roleId=83, roleName=电力, remark=, createTime=null, modifyTime=Fri Nov 20 10:28:59 CST 2020, menuIds=180,186,187,188,189,179,182,183,181,184,185,1,3,11,12,13,160,161,4,14,15,16,162)\"', '192.168.3.82', '2020-11-20 10:29:00', '内网IP|0|0|内网IP|内网IP');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`),
  KEY `t_login_log_login_time` (`LOGIN_TIME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COMMENT='登录日志表';

-- ----------------------------
-- Records of t_login_log
-- ----------------------------
INSERT INTO `t_login_log` VALUES ('213', 'MrBird', '2020-11-19 17:12:44', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('214', 'ceshi', '2020-11-19 17:13:53', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('215', 'MrBird', '2020-11-19 17:24:19', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('216', 'ceshi', '2020-11-19 17:28:40', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('217', 'MrBird', '2020-11-19 17:32:00', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('218', 'ceshi', '2020-11-19 22:34:57', '中国|华南|广东省|广州市|电信', '14.24.197.243', 'Linux', 'Chrome 76');
INSERT INTO `t_login_log` VALUES ('219', 'ceshi', '2020-11-19 22:48:42', '中国|华南|广东省|广州市|电信', '59.42.129.217', 'Windows ', 'Chrome 78');
INSERT INTO `t_login_log` VALUES ('220', 'MrBird', '2020-11-20 08:30:58', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('221', 'MrBird', '2020-11-20 08:43:56', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('222', 'MrBird', '2020-11-20 08:45:13', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('223', 'MrBird', '2020-11-20 08:49:30', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('224', 'MrBird', '2020-11-20 08:56:52', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('225', 'MrBird', '2020-11-20 09:01:22', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('226', 'MrBird', '2020-11-20 09:46:55', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('227', 'dian', '2020-11-20 10:29:39', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('228', 'dian', '2020-11-20 10:39:19', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('229', 'MrBird', '2020-11-20 10:39:23', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('230', 'MrBird', '2020-11-20 11:13:10', '内网IP|0|0|内网IP|内网IP', '192.168.3.82', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('231', 'MrBird', '2020-11-20 11:30:38', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('232', 'ceshi', '2020-11-20 11:35:41', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('233', 'ceshi', '2020-11-20 11:38:24', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('234', 'ceshi', '2020-11-20 11:40:45', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('235', 'ceshi', '2020-11-20 11:42:12', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('236', 'ceshi', '2020-11-20 13:29:21', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 87');
INSERT INTO `t_login_log` VALUES ('237', 'MrBird', '2020-11-20 14:57:21', '中国|华东|山东省|临沂市|电信', '144.255.146.33', 'Windows 10', 'Chrome 85');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单/按钮名称',
  `URL` varchar(50) DEFAULT NULL COMMENT '菜单URL',
  `PERMS` text COMMENT '权限标识',
  `ICON` varchar(50) DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` bigint(20) DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`),
  KEY `t_menu_parent_id` (`PARENT_ID`) USING BTREE,
  KEY `t_menu_menu_id` (`MENU_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', '', '', 'layui-icon-setting', '0', '3', '2017-12-27 16:39:07', '2020-11-20 09:15:01');
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '', '', 'layui-icon-alert', '0', '3', '2017-12-27 16:45:51', '2020-11-20 09:14:46');
INSERT INTO `t_menu` VALUES ('3', '1', '用户管理', '/system/user', 'user:view', '', '0', '1', '2017-12-27 16:47:13', '2019-12-04 16:46:50');
INSERT INTO `t_menu` VALUES ('4', '1', '角色管理', '/system/role', 'role:view', '', '0', '2', '2017-12-27 16:48:09', '2019-06-13 08:57:19');
INSERT INTO `t_menu` VALUES ('5', '1', '菜单管理', '/system/menu', 'menu:view', '', '0', '3', '2017-12-27 16:48:57', '2019-06-13 08:57:34');
INSERT INTO `t_menu` VALUES ('6', '1', '部门管理', '/system/dept', 'dept:view', '', '0', '4', '2017-12-27 16:57:33', '2019-06-14 19:56:00');
INSERT INTO `t_menu` VALUES ('8', '2', '在线用户', '/monitor/online', 'online:view', '', '0', '1', '2017-12-27 16:59:33', '2019-06-13 14:30:31');
INSERT INTO `t_menu` VALUES ('10', '2', '系统日志', '/monitor/log', 'log:view', '', '0', '2', '2017-12-27 17:00:50', '2019-06-13 14:30:37');
INSERT INTO `t_menu` VALUES ('11', '3', '新增用户', null, 'user:add', null, '1', null, '2017-12-27 17:02:58', null);
INSERT INTO `t_menu` VALUES ('12', '3', '修改用户', null, 'user:update', null, '1', null, '2017-12-27 17:04:07', null);
INSERT INTO `t_menu` VALUES ('13', '3', '删除用户', null, 'user:delete', null, '1', null, '2017-12-27 17:04:58', null);
INSERT INTO `t_menu` VALUES ('14', '4', '新增角色', null, 'role:add', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('15', '4', '修改角色', null, 'role:update', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('16', '4', '删除角色', null, 'role:delete', null, '1', null, '2017-12-27 17:06:38', null);
INSERT INTO `t_menu` VALUES ('17', '5', '新增菜单', null, 'menu:add', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('18', '5', '修改菜单', null, 'menu:update', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('19', '5', '删除菜单', null, 'menu:delete', null, '1', null, '2017-12-27 17:08:02', null);
INSERT INTO `t_menu` VALUES ('20', '6', '新增部门', null, 'dept:add', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('21', '6', '修改部门', null, 'dept:update', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('22', '6', '删除部门', null, 'dept:delete', null, '1', null, '2017-12-27 17:09:24', null);
INSERT INTO `t_menu` VALUES ('23', '8', '踢出用户', null, 'user:kickout', null, '1', null, '2017-12-27 17:11:13', null);
INSERT INTO `t_menu` VALUES ('24', '10', '删除日志', null, 'log:delete', null, '1', null, '2017-12-27 17:11:45', '2019-06-06 05:56:40');
INSERT INTO `t_menu` VALUES ('127', '2', '请求追踪', '/monitor/httptrace', 'httptrace:view', '', '0', '6', '2019-05-27 19:06:38', '2019-06-13 14:36:43');
INSERT INTO `t_menu` VALUES ('128', '2', '系统信息', null, null, null, '0', '7', '2019-05-27 19:08:23', null);
INSERT INTO `t_menu` VALUES ('129', '128', 'JVM信息', '/monitor/jvm', 'jvm:view', '', '0', '1', '2019-05-27 19:08:50', '2019-06-13 14:36:51');
INSERT INTO `t_menu` VALUES ('131', '128', '服务器信息', '/monitor/server', 'server:view', '', '0', '3', '2019-05-27 19:10:07', '2019-06-13 14:37:04');
INSERT INTO `t_menu` VALUES ('136', '2', '登录日志', '/monitor/loginlog', 'loginlog:view', '', '0', '3', '2019-05-29 15:56:15', '2019-06-13 14:35:56');
INSERT INTO `t_menu` VALUES ('160', '3', '密码重置', null, 'user:password:reset', null, '1', null, '2019-06-13 08:40:13', null);
INSERT INTO `t_menu` VALUES ('161', '3', '导出Excel', null, 'user:export', null, '1', null, '2019-06-13 08:40:34', null);
INSERT INTO `t_menu` VALUES ('162', '4', '导出Excel', null, 'role:export', null, '1', null, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES ('163', '5', '导出Excel', null, 'menu:export', null, '1', null, '2019-06-13 14:29:32', null);
INSERT INTO `t_menu` VALUES ('164', '6', '导出Excel', null, 'dept:export', null, '1', null, '2019-06-13 14:29:59', null);
INSERT INTO `t_menu` VALUES ('170', '10', '导出Excel', null, 'log:export', null, '1', null, '2019-06-13 14:34:55', null);
INSERT INTO `t_menu` VALUES ('171', '136', '删除日志', null, 'loginlog:delete', null, '1', null, '2019-06-13 14:35:27', '2019-06-13 14:36:08');
INSERT INTO `t_menu` VALUES ('172', '136', '导出Excel', null, 'loginlog:export', null, '1', null, '2019-06-13 14:36:26', null);
INSERT INTO `t_menu` VALUES ('175', '2', 'Swagger文档', '/monitor/swagger', 'swagger:view', '', '0', '8', '2019-08-18 17:25:36', '2019-08-18 17:25:59');
INSERT INTO `t_menu` VALUES ('179', '0', '电抗器', '', '', 'layui-icon-right-circle', '0', '2', '2020-11-16 13:49:42', '2020-11-20 09:14:25');
INSERT INTO `t_menu` VALUES ('180', '0', '变压器', '', '', 'layui-icon-left-circle', '0', '1', '2020-11-16 13:50:34', '2020-11-20 09:15:12');
INSERT INTO `t_menu` VALUES ('181', '179', '分接电抗', '/diankangqi/fenjiedian', '', '', '0', '3', '2020-11-17 10:16:57', '2020-11-20 09:18:01');
INSERT INTO `t_menu` VALUES ('182', '179', '铁芯直径', '/diankangqi/tiexinzhijing', '', '', '0', '1', '2020-11-17 14:27:05', '2020-11-20 09:17:37');
INSERT INTO `t_menu` VALUES ('183', '179', '主电抗', '/diankangqi/zhudiankang', '', '', '0', '2', '2020-11-17 16:33:07', '2020-11-20 09:17:52');
INSERT INTO `t_menu` VALUES ('184', '179', '绕组温升', '/diankangqi/shaobeishengwenzu', '', '', '0', '4', '2020-11-17 17:13:14', '2020-11-20 09:18:17');
INSERT INTO `t_menu` VALUES ('185', '179', '电抗数值', '/diankangqi/diankangshuzhi', '', '', '0', '5', '2020-11-19 09:57:01', '2020-11-20 09:18:26');
INSERT INTO `t_menu` VALUES ('186', '180', '铁芯直径', '/bianyaqi/tiexinzhijing', '', '', '0', null, '2020-11-19 12:05:18', null);
INSERT INTO `t_menu` VALUES ('187', '180', '铁芯重量', '/bianyaqi/tiexinzhongliang', '', '', '0', null, '2020-11-19 12:05:38', null);
INSERT INTO `t_menu` VALUES ('188', '180', '电阻损耗', '/bianyaqi/dianzusunhao', '', '', '0', null, '2020-11-19 14:08:59', null);
INSERT INTO `t_menu` VALUES ('189', '180', '绕组温升', '/bianyaqi/shaozuwensheng', '', '', '0', null, '2020-11-19 14:17:47', '2020-11-20 09:19:04');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(100) NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', '系统管理员，拥有所有操作权限 ^_^', '2019-06-14 16:23:11', '2020-11-19 14:17:54');
INSERT INTO `t_role` VALUES ('83', '电力', '', '2020-11-19 17:13:29', '2020-11-20 10:28:59');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  `MENU_ID` bigint(20) NOT NULL COMMENT '菜单/按钮ID',
  KEY `t_role_menu_menu_id` (`MENU_ID`) USING BTREE,
  KEY `t_role_menu_role_id` (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES ('77', '2');
INSERT INTO `t_role_menu` VALUES ('78', '2');
INSERT INTO `t_role_menu` VALUES ('78', '8');
INSERT INTO `t_role_menu` VALUES ('78', '23');
INSERT INTO `t_role_menu` VALUES ('78', '10');
INSERT INTO `t_role_menu` VALUES ('78', '24');
INSERT INTO `t_role_menu` VALUES ('78', '170');
INSERT INTO `t_role_menu` VALUES ('78', '136');
INSERT INTO `t_role_menu` VALUES ('78', '171');
INSERT INTO `t_role_menu` VALUES ('78', '172');
INSERT INTO `t_role_menu` VALUES ('78', '127');
INSERT INTO `t_role_menu` VALUES ('78', '128');
INSERT INTO `t_role_menu` VALUES ('78', '129');
INSERT INTO `t_role_menu` VALUES ('78', '131');
INSERT INTO `t_role_menu` VALUES ('2', '1');
INSERT INTO `t_role_menu` VALUES ('2', '3');
INSERT INTO `t_role_menu` VALUES ('2', '161');
INSERT INTO `t_role_menu` VALUES ('2', '4');
INSERT INTO `t_role_menu` VALUES ('2', '14');
INSERT INTO `t_role_menu` VALUES ('2', '162');
INSERT INTO `t_role_menu` VALUES ('2', '5');
INSERT INTO `t_role_menu` VALUES ('2', '17');
INSERT INTO `t_role_menu` VALUES ('2', '163');
INSERT INTO `t_role_menu` VALUES ('2', '6');
INSERT INTO `t_role_menu` VALUES ('2', '20');
INSERT INTO `t_role_menu` VALUES ('2', '164');
INSERT INTO `t_role_menu` VALUES ('2', '2');
INSERT INTO `t_role_menu` VALUES ('2', '8');
INSERT INTO `t_role_menu` VALUES ('2', '10');
INSERT INTO `t_role_menu` VALUES ('2', '170');
INSERT INTO `t_role_menu` VALUES ('2', '136');
INSERT INTO `t_role_menu` VALUES ('2', '172');
INSERT INTO `t_role_menu` VALUES ('2', '127');
INSERT INTO `t_role_menu` VALUES ('2', '128');
INSERT INTO `t_role_menu` VALUES ('2', '129');
INSERT INTO `t_role_menu` VALUES ('2', '131');
INSERT INTO `t_role_menu` VALUES ('2', '175');
INSERT INTO `t_role_menu` VALUES ('1', '1');
INSERT INTO `t_role_menu` VALUES ('1', '3');
INSERT INTO `t_role_menu` VALUES ('1', '11');
INSERT INTO `t_role_menu` VALUES ('1', '12');
INSERT INTO `t_role_menu` VALUES ('1', '13');
INSERT INTO `t_role_menu` VALUES ('1', '160');
INSERT INTO `t_role_menu` VALUES ('1', '161');
INSERT INTO `t_role_menu` VALUES ('1', '4');
INSERT INTO `t_role_menu` VALUES ('1', '14');
INSERT INTO `t_role_menu` VALUES ('1', '15');
INSERT INTO `t_role_menu` VALUES ('1', '16');
INSERT INTO `t_role_menu` VALUES ('1', '162');
INSERT INTO `t_role_menu` VALUES ('1', '5');
INSERT INTO `t_role_menu` VALUES ('1', '17');
INSERT INTO `t_role_menu` VALUES ('1', '18');
INSERT INTO `t_role_menu` VALUES ('1', '19');
INSERT INTO `t_role_menu` VALUES ('1', '163');
INSERT INTO `t_role_menu` VALUES ('1', '6');
INSERT INTO `t_role_menu` VALUES ('1', '20');
INSERT INTO `t_role_menu` VALUES ('1', '21');
INSERT INTO `t_role_menu` VALUES ('1', '22');
INSERT INTO `t_role_menu` VALUES ('1', '164');
INSERT INTO `t_role_menu` VALUES ('1', '179');
INSERT INTO `t_role_menu` VALUES ('1', '181');
INSERT INTO `t_role_menu` VALUES ('1', '182');
INSERT INTO `t_role_menu` VALUES ('1', '183');
INSERT INTO `t_role_menu` VALUES ('1', '184');
INSERT INTO `t_role_menu` VALUES ('1', '185');
INSERT INTO `t_role_menu` VALUES ('1', '180');
INSERT INTO `t_role_menu` VALUES ('1', '186');
INSERT INTO `t_role_menu` VALUES ('1', '187');
INSERT INTO `t_role_menu` VALUES ('1', '188');
INSERT INTO `t_role_menu` VALUES ('1', '189');
INSERT INTO `t_role_menu` VALUES ('1', '2');
INSERT INTO `t_role_menu` VALUES ('1', '8');
INSERT INTO `t_role_menu` VALUES ('1', '23');
INSERT INTO `t_role_menu` VALUES ('1', '10');
INSERT INTO `t_role_menu` VALUES ('1', '24');
INSERT INTO `t_role_menu` VALUES ('1', '170');
INSERT INTO `t_role_menu` VALUES ('1', '136');
INSERT INTO `t_role_menu` VALUES ('1', '171');
INSERT INTO `t_role_menu` VALUES ('1', '172');
INSERT INTO `t_role_menu` VALUES ('1', '127');
INSERT INTO `t_role_menu` VALUES ('1', '128');
INSERT INTO `t_role_menu` VALUES ('1', '129');
INSERT INTO `t_role_menu` VALUES ('1', '131');
INSERT INTO `t_role_menu` VALUES ('1', '175');
INSERT INTO `t_role_menu` VALUES ('83', '180');
INSERT INTO `t_role_menu` VALUES ('83', '186');
INSERT INTO `t_role_menu` VALUES ('83', '187');
INSERT INTO `t_role_menu` VALUES ('83', '188');
INSERT INTO `t_role_menu` VALUES ('83', '189');
INSERT INTO `t_role_menu` VALUES ('83', '179');
INSERT INTO `t_role_menu` VALUES ('83', '182');
INSERT INTO `t_role_menu` VALUES ('83', '183');
INSERT INTO `t_role_menu` VALUES ('83', '181');
INSERT INTO `t_role_menu` VALUES ('83', '184');
INSERT INTO `t_role_menu` VALUES ('83', '185');
INSERT INTO `t_role_menu` VALUES ('83', '1');
INSERT INTO `t_role_menu` VALUES ('83', '3');
INSERT INTO `t_role_menu` VALUES ('83', '11');
INSERT INTO `t_role_menu` VALUES ('83', '12');
INSERT INTO `t_role_menu` VALUES ('83', '13');
INSERT INTO `t_role_menu` VALUES ('83', '160');
INSERT INTO `t_role_menu` VALUES ('83', '161');
INSERT INTO `t_role_menu` VALUES ('83', '4');
INSERT INTO `t_role_menu` VALUES ('83', '14');
INSERT INTO `t_role_menu` VALUES ('83', '15');
INSERT INTO `t_role_menu` VALUES ('83', '16');
INSERT INTO `t_role_menu` VALUES ('83', '162');

-- ----------------------------
-- Table structure for t_shop_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_shop_menu`;
CREATE TABLE `t_shop_menu` (
  `SHOP_ID` bigint(20) NOT NULL COMMENT 'id',
  `NAME` varchar(255) DEFAULT NULL COMMENT '商品名',
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `NUM` int(11) DEFAULT NULL COMMENT '商品数量',
  `END` varchar(255) DEFAULT NULL COMMENT '保质期',
  `OPEN` date DEFAULT NULL COMMENT '生产日期',
  `HOW` int(11) DEFAULT NULL COMMENT '1.面膜 2.水精华面霜 3.生活用品 4.零食',
  PRIMARY KEY (`SHOP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_shop_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_state
-- ----------------------------
DROP TABLE IF EXISTS `t_state`;
CREATE TABLE `t_state` (
  `STATE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '状态ID',
  `STATE_NAME` varchar(10) DEFAULT NULL COMMENT '状态名称',
  `STATE_REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`STATE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_state
-- ----------------------------
INSERT INTO `t_state` VALUES ('1', '待审批', null, '2020-11-09 16:47:24', '2020-11-09 16:47:27');
INSERT INTO `t_state` VALUES ('2', '已退回', null, '2020-11-09 16:47:38', '2020-11-09 16:47:42');
INSERT INTO `t_state` VALUES ('3', '已入库', null, '2020-11-09 16:47:51', '2020-11-09 16:47:54');
INSERT INTO `t_state` VALUES ('4', '不批准', null, '2020-11-09 16:48:18', '2020-11-09 16:48:22');
INSERT INTO `t_state` VALUES ('5', '待入库', null, '2020-11-09 16:48:46', '2020-11-09 16:48:50');
INSERT INTO `t_state` VALUES ('6', '待调用', null, '2020-11-09 16:49:06', '2020-11-09 16:49:10');
INSERT INTO `t_state` VALUES ('7', '待归还', null, '2020-11-09 16:49:19', '2020-11-09 16:49:22');
INSERT INTO `t_state` VALUES ('8', '待移送', null, '2020-11-09 16:49:42', '2020-11-09 16:49:44');
INSERT INTO `t_state` VALUES ('9', '待销毁', null, '2020-11-09 16:49:55', '2020-11-09 16:49:58');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`),
  KEY `t_user_username` (`USERNAME`) USING BTREE,
  KEY `t_user_mobile` (`MOBILE`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'MrBird', 'cb62ad1497597283961545d608f80241', '1', 'mrbird@qq.com', '17753921535', '1', '2019-06-14 20:39:22', '2020-10-16 21:46:50', '2020-11-20 14:57:23', '0', '1', 'black', 'cnrhVkzwxjPwAaCfPbdc.png', '我是帅比作者。');
INSERT INTO `t_user` VALUES ('9', 'ceshi', 'ecbea9ec1e83793adde305b6457e145f', '1', '', '', '1', '2020-10-30 11:42:46', '2020-11-19 17:13:38', '2020-11-20 13:29:22', '2', '1', 'black', 'default.jpg', '');
INSERT INTO `t_user` VALUES ('10', 'dian', 'c7e14fe620ffc8fef17c98e69779fc86', null, null, null, '1', '2020-11-20 09:09:32', null, '2020-11-20 10:29:40', '0', '1', 'black', 'default.jpg', '');

-- ----------------------------
-- Table structure for t_user_data_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_user_data_permission`;
CREATE TABLE `t_user_data_permission` (
  `USER_ID` bigint(20) NOT NULL,
  `DEPT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`USER_ID`,`DEPT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户数据权限关联表';

-- ----------------------------
-- Records of t_user_data_permission
-- ----------------------------
INSERT INTO `t_user_data_permission` VALUES ('1', '1');
INSERT INTO `t_user_data_permission` VALUES ('1', '2');
INSERT INTO `t_user_data_permission` VALUES ('1', '3');
INSERT INTO `t_user_data_permission` VALUES ('1', '4');
INSERT INTO `t_user_data_permission` VALUES ('1', '5');
INSERT INTO `t_user_data_permission` VALUES ('1', '6');
INSERT INTO `t_user_data_permission` VALUES ('2', '1');
INSERT INTO `t_user_data_permission` VALUES ('2', '2');
INSERT INTO `t_user_data_permission` VALUES ('3', '4');
INSERT INTO `t_user_data_permission` VALUES ('4', '5');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID',
  KEY `t_user_role_user_id` (`USER_ID`) USING BTREE,
  KEY `t_user_role_role_id` (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2');
INSERT INTO `t_user_role` VALUES ('3', '77');
INSERT INTO `t_user_role` VALUES ('4', '78');
INSERT INTO `t_user_role` VALUES ('5', '79');
INSERT INTO `t_user_role` VALUES ('6', '80');
INSERT INTO `t_user_role` VALUES ('7', '78');
INSERT INTO `t_user_role` VALUES ('7', '79');
INSERT INTO `t_user_role` VALUES ('7', '80');
INSERT INTO `t_user_role` VALUES ('9', '83');
INSERT INTO `t_user_role` VALUES ('10', '83');

-- ----------------------------
-- Table structure for t_vi
-- ----------------------------
DROP TABLE IF EXISTS `t_vi`;
CREATE TABLE `t_vi` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `HERE` varchar(20) DEFAULT NULL COMMENT '位置',
  `VOLTAGE` varchar(10) DEFAULT NULL COMMENT '电压',
  `ELECTRICITY` double(10,2) DEFAULT NULL COMMENT '电流',
  `ENERGY` varchar(10) DEFAULT NULL COMMENT '损耗',
  `REACTOR` double(10,2) DEFAULT NULL COMMENT '实测电抗',
  `CREATE_TIME` datetime DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_vi
-- ----------------------------
INSERT INTO `t_vi` VALUES ('1', 'A2-A3', '3470', '219.40', '7614', '15.82', '2020-11-19 09:05:03', '2020-11-19 09:05:05');
INSERT INTO `t_vi` VALUES ('2', 'A3-A4', '3567', '236.10', '7860', '15.11', '2020-11-19 09:06:10', '2020-11-19 09:06:13');
INSERT INTO `t_vi` VALUES ('3', 'A4-A5', '3527', '245.00', '8900', '14.40', '2020-11-19 09:09:03', '2020-11-19 09:09:16');
INSERT INTO `t_vi` VALUES ('4', 'A5-A6', '3583', '261.80', '9379', '13.69', '2020-11-19 09:09:06', '2020-11-19 09:09:18');
INSERT INTO `t_vi` VALUES ('5', 'A6-A7', '3593', '276.20', '9110', '13.01', '2020-11-19 09:09:09', '2020-11-19 09:09:19');
INSERT INTO `t_vi` VALUES ('6', 'A7-A8', '3563', '288.70', '9620', '12.34', '2020-11-19 09:09:11', '2020-11-19 09:09:21');
INSERT INTO `t_vi` VALUES ('7', 'A8-A9', '3488', '298.20', '10399', '11.70', '2020-11-19 09:09:14', '2020-11-19 09:09:23');
