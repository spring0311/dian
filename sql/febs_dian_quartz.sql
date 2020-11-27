/*
Navicat MySQL Data Transfer

Source Server         : 集享家服务器
Source Server Version : 50731
Source Host           : 49.233.36.209:3306
Source Database       : febs_dian_quartz

Target Server Type    : MYSQL
Target Server Version : 50731
File Encoding         : 65001

Date: 2020-11-20 15:30:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('FEBS_Scheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('FEBS_Scheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('FEBS_Scheduler', 'WIN-Q1HG35PIK3A1605505267471', '1605505345975', '15000');

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '0', '开发部', '1', '2019-06-14 20:56:41', null);
INSERT INTO `t_dept` VALUES ('2', '1', '开发一部', '1', '2019-06-14 20:58:46', null);
INSERT INTO `t_dept` VALUES ('3', '1', '开发二部', '2', '2019-06-14 20:58:56', null);
INSERT INTO `t_dept` VALUES ('4', '0', '采购部', '2', '2019-06-14 20:59:56', null);
INSERT INTO `t_dept` VALUES ('5', '0', '财务部', '3', '2019-06-14 21:00:08', null);
INSERT INTO `t_dept` VALUES ('6', '0', '销售部', '4', '2019-06-14 21:00:15', null);
INSERT INTO `t_dept` VALUES ('7', '0', '工程部', '5', '2019-06-14 21:00:42', null);
INSERT INTO `t_dept` VALUES ('8', '0', '行政部', '6', '2019-06-14 21:00:49', null);
INSERT INTO `t_dept` VALUES ('9', '0', '人力资源部', '8', '2019-06-14 21:01:14', '2019-06-14 21:01:34');
INSERT INTO `t_dept` VALUES ('10', '0', '系统部', '7', '2019-06-14 21:01:31', null);

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
INSERT INTO `t_generator_config` VALUES ('1', 'MrBird', 'cc.mrbird.febs.gen', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

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
INSERT INTO `t_job` VALUES ('1', 'testTask', 'test', 'mrbird', '0/1 * * * * ?', '1', '有参任务调度测试~~', '2018-02-24 16:26:14');
INSERT INTO `t_job` VALUES ('2', 'testTask', 'test1', null, '0/10 * * * * ?', '1', '无参任务调度测试', '2018-02-24 17:06:23');
INSERT INTO `t_job` VALUES ('3', 'testTask', 'test', 'hello world', '0/1 * * * * ?', '1', '有参任务调度测试,每隔一秒触发', '2018-02-26 09:28:26');
INSERT INTO `t_job` VALUES ('11', 'testTask', 'test2', null, '0/5 * * * * ?', '1', '测试异常', '2018-02-26 11:15:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of t_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='登录日志表';

-- ----------------------------
-- Records of t_login_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '0', '系统管理', null, null, 'layui-icon-setting', '0', '1', '2017-12-27 16:39:07', null);
INSERT INTO `t_menu` VALUES ('2', '0', '系统监控', '', '', 'layui-icon-alert', '0', '2', '2017-12-27 16:45:51', '2019-06-13 11:20:40');
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
INSERT INTO `t_menu` VALUES ('101', '0', '任务调度', null, null, 'layui-icon-time-circle', '0', '3', '2018-02-24 15:52:57', null);
INSERT INTO `t_menu` VALUES ('102', '101', '定时任务', '/job/job', 'job:view', '', '0', '1', '2018-02-24 15:53:53', '2018-04-25 09:05:12');
INSERT INTO `t_menu` VALUES ('103', '102', '新增任务', null, 'job:add', null, '1', null, '2018-02-24 15:55:10', null);
INSERT INTO `t_menu` VALUES ('104', '102', '修改任务', null, 'job:update', null, '1', null, '2018-02-24 15:55:53', null);
INSERT INTO `t_menu` VALUES ('105', '102', '删除任务', null, 'job:delete', null, '1', null, '2018-02-24 15:56:18', null);
INSERT INTO `t_menu` VALUES ('106', '102', '暂停任务', null, 'job:pause', null, '1', null, '2018-02-24 15:57:08', null);
INSERT INTO `t_menu` VALUES ('107', '102', '恢复任务', null, 'job:resume', null, '1', null, '2018-02-24 15:58:21', null);
INSERT INTO `t_menu` VALUES ('108', '102', '立即执行任务', null, 'job:run', null, '1', null, '2018-02-24 15:59:45', null);
INSERT INTO `t_menu` VALUES ('109', '101', '调度日志', '/job/log', 'job:log:view', '', '0', '2', '2018-02-24 16:00:45', '2019-06-09 02:48:19');
INSERT INTO `t_menu` VALUES ('110', '109', '删除日志', null, 'job:log:delete', null, '1', null, '2018-02-24 16:01:21', null);
INSERT INTO `t_menu` VALUES ('115', '0', '其他模块', null, null, 'layui-icon-gift', '0', '5', '2019-05-27 10:18:07', null);
INSERT INTO `t_menu` VALUES ('116', '115', 'Apex图表', '', '', null, '0', '2', '2019-05-27 10:21:35', null);
INSERT INTO `t_menu` VALUES ('117', '116', '线性图表', '/others/apex/line', 'apex:line:view', null, '0', '1', '2019-05-27 10:24:49', null);
INSERT INTO `t_menu` VALUES ('118', '115', '高德地图', '/others/map', 'map:view', '', '0', '3', '2019-05-27 17:13:12', '2019-06-12 15:33:00');
INSERT INTO `t_menu` VALUES ('119', '116', '面积图表', '/others/apex/area', 'apex:area:view', null, '0', '2', '2019-05-27 18:49:22', null);
INSERT INTO `t_menu` VALUES ('120', '116', '柱形图表', '/others/apex/column', 'apex:column:view', null, '0', '3', '2019-05-27 18:51:33', null);
INSERT INTO `t_menu` VALUES ('121', '116', '雷达图表', '/others/apex/radar', 'apex:radar:view', null, '0', '4', '2019-05-27 18:56:05', null);
INSERT INTO `t_menu` VALUES ('122', '116', '条形图表', '/others/apex/bar', 'apex:bar:view', null, '0', '5', '2019-05-27 18:57:02', null);
INSERT INTO `t_menu` VALUES ('123', '116', '混合图表', '/others/apex/mix', 'apex:mix:view', '', '0', '6', '2019-05-27 18:58:04', '2019-06-06 02:55:23');
INSERT INTO `t_menu` VALUES ('125', '115', '导入导出', '/others/eximport', 'others:eximport:view', '', '0', '4', '2019-05-27 19:01:57', '2019-06-13 01:20:14');
INSERT INTO `t_menu` VALUES ('126', '132', '系统图标', '/others/febs/icon', 'febs:icons:view', '', '0', '4', '2019-05-27 19:03:18', '2019-06-06 03:05:26');
INSERT INTO `t_menu` VALUES ('127', '2', '请求追踪', '/monitor/httptrace', 'httptrace:view', '', '0', '6', '2019-05-27 19:06:38', '2019-06-13 14:36:43');
INSERT INTO `t_menu` VALUES ('128', '2', '系统信息', null, null, null, '0', '7', '2019-05-27 19:08:23', null);
INSERT INTO `t_menu` VALUES ('129', '128', 'JVM信息', '/monitor/jvm', 'jvm:view', '', '0', '1', '2019-05-27 19:08:50', '2019-06-13 14:36:51');
INSERT INTO `t_menu` VALUES ('131', '128', '服务器信息', '/monitor/server', 'server:view', '', '0', '3', '2019-05-27 19:10:07', '2019-06-13 14:37:04');
INSERT INTO `t_menu` VALUES ('132', '115', 'FEBS组件', '', '', null, '0', '1', '2019-05-27 19:13:54', null);
INSERT INTO `t_menu` VALUES ('133', '132', '表单组件', '/others/febs/form', 'febs:form:view', null, '0', '1', '2019-05-27 19:14:45', null);
INSERT INTO `t_menu` VALUES ('134', '132', 'FEBS工具', '/others/febs/tools', 'febs:tools:view', '', '0', '3', '2019-05-29 10:11:22', '2019-06-12 13:21:27');
INSERT INTO `t_menu` VALUES ('135', '132', '表单组合', '/others/febs/form/group', 'febs:formgroup:view', null, '0', '2', '2019-05-29 10:16:19', null);
INSERT INTO `t_menu` VALUES ('136', '2', '登录日志', '/monitor/loginlog', 'loginlog:view', '', '0', '3', '2019-05-29 15:56:15', '2019-06-13 14:35:56');
INSERT INTO `t_menu` VALUES ('137', '0', '代码生成', '', null, 'layui-icon-verticalright', '0', '4', '2019-06-03 15:35:58', null);
INSERT INTO `t_menu` VALUES ('138', '137', '生成配置', '/generator/configure', 'generator:configure:view', null, '0', '1', '2019-06-03 15:38:36', null);
INSERT INTO `t_menu` VALUES ('139', '137', '代码生成', '/generator/generator', 'generator:view', '', '0', '2', '2019-06-03 15:39:15', '2019-06-13 14:31:38');
INSERT INTO `t_menu` VALUES ('159', '132', '其他组件', '/others/febs/others', 'others:febs:others', '', '0', '5', '2019-06-12 07:51:08', '2019-06-12 07:51:40');
INSERT INTO `t_menu` VALUES ('160', '3', '密码重置', null, 'user:password:reset', null, '1', null, '2019-06-13 08:40:13', null);
INSERT INTO `t_menu` VALUES ('161', '3', '导出Excel', null, 'user:export', null, '1', null, '2019-06-13 08:40:34', null);
INSERT INTO `t_menu` VALUES ('162', '4', '导出Excel', null, 'role:export', null, '1', null, '2019-06-13 14:29:00', '2019-06-13 14:29:11');
INSERT INTO `t_menu` VALUES ('163', '5', '导出Excel', null, 'menu:export', null, '1', null, '2019-06-13 14:29:32', null);
INSERT INTO `t_menu` VALUES ('164', '6', '导出Excel', null, 'dept:export', null, '1', null, '2019-06-13 14:29:59', null);
INSERT INTO `t_menu` VALUES ('165', '138', '修改配置', null, 'generator:configure:update', null, '1', null, '2019-06-13 14:32:09', '2019-06-13 14:32:20');
INSERT INTO `t_menu` VALUES ('166', '139', '生成代码', null, 'generator:generate', null, '1', null, '2019-06-13 14:32:51', null);
INSERT INTO `t_menu` VALUES ('167', '125', '模板下载', null, 'eximport:template', null, '1', null, '2019-06-13 14:33:37', null);
INSERT INTO `t_menu` VALUES ('168', '125', '导出Excel', null, 'eximport:export', null, '1', null, '2019-06-13 14:33:57', null);
INSERT INTO `t_menu` VALUES ('169', '125', '导入Excel', null, 'eximport:import', null, '1', null, '2019-06-13 14:34:19', null);
INSERT INTO `t_menu` VALUES ('170', '10', '导出Excel', null, 'log:export', null, '1', null, '2019-06-13 14:34:55', null);
INSERT INTO `t_menu` VALUES ('171', '136', '删除日志', null, 'loginlog:delete', null, '1', null, '2019-06-13 14:35:27', '2019-06-13 14:36:08');
INSERT INTO `t_menu` VALUES ('172', '136', '导出Excel', null, 'loginlog:export', null, '1', null, '2019-06-13 14:36:26', null);
INSERT INTO `t_menu` VALUES ('173', '102', '导出Excel', null, 'job:export', null, '1', null, '2019-06-13 14:37:25', null);
INSERT INTO `t_menu` VALUES ('174', '109', '导出Excel', null, 'job:log:export', null, '1', null, '2019-06-13 14:37:46', '2019-06-13 14:38:02');
INSERT INTO `t_menu` VALUES ('175', '2', 'Swagger文档', '/monitor/swagger', 'swagger:view', '', '0', '8', '2019-08-18 17:25:36', '2019-08-18 17:25:59');
INSERT INTO `t_menu` VALUES ('178', '115', '数据权限', '/others/datapermission', 'others:datapermission', '', '0', '5', '2020-04-29 09:34:25', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '系统管理员', '系统管理员，拥有所有操作权限 ^_^', '2019-06-14 16:23:11', '2019-08-18 17:26:19');
INSERT INTO `t_role` VALUES ('2', '注册账户', '注册账户，拥有查看，新增权限（新增用户除外）和导出Excel权限', '2019-06-14 16:00:15', '2019-08-18 17:36:02');
INSERT INTO `t_role` VALUES ('77', 'Redis监控员', '负责Redis模块', '2019-06-14 20:49:22', null);
INSERT INTO `t_role` VALUES ('78', '系统监控员', '负责整个系统监控模块', '2019-06-14 20:50:07', null);
INSERT INTO `t_role` VALUES ('79', '跑批人员', '负责任务调度跑批模块', '2019-06-14 20:51:02', null);
INSERT INTO `t_role` VALUES ('80', '开发人员', '拥有代码生成模块的权限', '2019-06-14 20:51:26', null);

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
INSERT INTO `t_role_menu` VALUES ('79', '101');
INSERT INTO `t_role_menu` VALUES ('79', '102');
INSERT INTO `t_role_menu` VALUES ('79', '103');
INSERT INTO `t_role_menu` VALUES ('79', '104');
INSERT INTO `t_role_menu` VALUES ('79', '105');
INSERT INTO `t_role_menu` VALUES ('79', '106');
INSERT INTO `t_role_menu` VALUES ('79', '107');
INSERT INTO `t_role_menu` VALUES ('79', '108');
INSERT INTO `t_role_menu` VALUES ('79', '173');
INSERT INTO `t_role_menu` VALUES ('79', '109');
INSERT INTO `t_role_menu` VALUES ('79', '110');
INSERT INTO `t_role_menu` VALUES ('79', '174');
INSERT INTO `t_role_menu` VALUES ('80', '137');
INSERT INTO `t_role_menu` VALUES ('80', '138');
INSERT INTO `t_role_menu` VALUES ('80', '165');
INSERT INTO `t_role_menu` VALUES ('80', '139');
INSERT INTO `t_role_menu` VALUES ('80', '166');
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
INSERT INTO `t_role_menu` VALUES ('1', '101');
INSERT INTO `t_role_menu` VALUES ('1', '102');
INSERT INTO `t_role_menu` VALUES ('1', '103');
INSERT INTO `t_role_menu` VALUES ('1', '104');
INSERT INTO `t_role_menu` VALUES ('1', '105');
INSERT INTO `t_role_menu` VALUES ('1', '106');
INSERT INTO `t_role_menu` VALUES ('1', '107');
INSERT INTO `t_role_menu` VALUES ('1', '108');
INSERT INTO `t_role_menu` VALUES ('1', '173');
INSERT INTO `t_role_menu` VALUES ('1', '109');
INSERT INTO `t_role_menu` VALUES ('1', '110');
INSERT INTO `t_role_menu` VALUES ('1', '174');
INSERT INTO `t_role_menu` VALUES ('1', '137');
INSERT INTO `t_role_menu` VALUES ('1', '138');
INSERT INTO `t_role_menu` VALUES ('1', '165');
INSERT INTO `t_role_menu` VALUES ('1', '139');
INSERT INTO `t_role_menu` VALUES ('1', '166');
INSERT INTO `t_role_menu` VALUES ('1', '115');
INSERT INTO `t_role_menu` VALUES ('1', '132');
INSERT INTO `t_role_menu` VALUES ('1', '133');
INSERT INTO `t_role_menu` VALUES ('1', '135');
INSERT INTO `t_role_menu` VALUES ('1', '134');
INSERT INTO `t_role_menu` VALUES ('1', '126');
INSERT INTO `t_role_menu` VALUES ('1', '159');
INSERT INTO `t_role_menu` VALUES ('1', '116');
INSERT INTO `t_role_menu` VALUES ('1', '117');
INSERT INTO `t_role_menu` VALUES ('1', '119');
INSERT INTO `t_role_menu` VALUES ('1', '120');
INSERT INTO `t_role_menu` VALUES ('1', '121');
INSERT INTO `t_role_menu` VALUES ('1', '122');
INSERT INTO `t_role_menu` VALUES ('1', '123');
INSERT INTO `t_role_menu` VALUES ('1', '118');
INSERT INTO `t_role_menu` VALUES ('1', '125');
INSERT INTO `t_role_menu` VALUES ('1', '167');
INSERT INTO `t_role_menu` VALUES ('1', '168');
INSERT INTO `t_role_menu` VALUES ('1', '169');
INSERT INTO `t_role_menu` VALUES ('1', '178');
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
INSERT INTO `t_role_menu` VALUES ('2', '101');
INSERT INTO `t_role_menu` VALUES ('2', '102');
INSERT INTO `t_role_menu` VALUES ('2', '173');
INSERT INTO `t_role_menu` VALUES ('2', '109');
INSERT INTO `t_role_menu` VALUES ('2', '174');
INSERT INTO `t_role_menu` VALUES ('2', '137');
INSERT INTO `t_role_menu` VALUES ('2', '138');
INSERT INTO `t_role_menu` VALUES ('2', '139');
INSERT INTO `t_role_menu` VALUES ('2', '115');
INSERT INTO `t_role_menu` VALUES ('2', '132');
INSERT INTO `t_role_menu` VALUES ('2', '133');
INSERT INTO `t_role_menu` VALUES ('2', '135');
INSERT INTO `t_role_menu` VALUES ('2', '134');
INSERT INTO `t_role_menu` VALUES ('2', '126');
INSERT INTO `t_role_menu` VALUES ('2', '159');
INSERT INTO `t_role_menu` VALUES ('2', '116');
INSERT INTO `t_role_menu` VALUES ('2', '117');
INSERT INTO `t_role_menu` VALUES ('2', '119');
INSERT INTO `t_role_menu` VALUES ('2', '120');
INSERT INTO `t_role_menu` VALUES ('2', '121');
INSERT INTO `t_role_menu` VALUES ('2', '122');
INSERT INTO `t_role_menu` VALUES ('2', '123');
INSERT INTO `t_role_menu` VALUES ('2', '118');
INSERT INTO `t_role_menu` VALUES ('2', '125');
INSERT INTO `t_role_menu` VALUES ('2', '167');
INSERT INTO `t_role_menu` VALUES ('2', '168');
INSERT INTO `t_role_menu` VALUES ('2', '169');
INSERT INTO `t_role_menu` VALUES ('2', '178');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'MrBird', 'cb62ad1497597283961545d608f80241', '1', 'mrbird@qq.com', '17788888888', '1', '2019-06-14 20:39:22', '2019-12-04 16:47:11', '2019-12-04 16:48:10', '0', '1', 'black', 'cnrhVkzwxjPwAaCfPbdc.png', '我是帅比作者。');
INSERT INTO `t_user` VALUES ('2', 'Scott', '1d685729d113cfd03872f154939bee1c', '10', 'scott@gmail.com', '17722222222', '1', '2019-06-14 20:55:53', '2019-06-14 21:05:43', '2019-08-18 17:36:18', '0', '1', 'black', 'gaOngJwsRYRaVAuXXcmB.png', '我是scott。');
INSERT INTO `t_user` VALUES ('3', 'Reina', '1461afff857c02afbfb768aa3771503d', '4', 'Reina@hotmail.com', '17711111111', '0', '2019-06-14 21:07:38', '2019-06-14 21:09:06', '2019-06-14 21:08:26', '1', '1', 'black', '5997fedcc7bd4cffbd350b40d1b5b987.jpg', '由于公款私用，已被封禁。');
INSERT INTO `t_user` VALUES ('4', 'Micaela', '9f2daa2c7bed6870fcbb5b9a51d6300e', '10', 'Micaela@163.com', '17733333333', '1', '2019-06-14 21:10:13', '2019-06-14 21:11:26', '2019-06-14 21:10:37', '0', '0', 'white', '20180414165909.jpg', '我叫米克拉');
INSERT INTO `t_user` VALUES ('5', 'Jana', '176679b77b3c3e352bd3b30ddc81083e', '8', 'Jana@126.com', '17744444444', '1', '2019-06-14 21:12:16', '2019-06-14 21:12:52', '2019-06-14 21:12:32', '1', '1', 'white', '20180414165821.jpg', '大家好，我叫简娜');
INSERT INTO `t_user` VALUES ('6', 'Georgie', 'dffc683378cdaa015a0ee9554c532225', '3', 'Georgie@qq.com', '17766666666', '0', '2019-06-14 21:15:09', '2019-06-14 21:16:25', '2019-06-14 21:16:11', '2', '0', 'black', 'BiazfanxmamNRoxxVxka.png', '生产执行rm -rf *，账号封禁T T');
INSERT INTO `t_user` VALUES ('7', 'Margot', '31379841b9f4bfde22b8b40471e9a6ce', '9', 'Margot@qq.com', '13444444444', '1', '2019-06-14 21:17:53', '2019-06-14 21:18:59', '2019-06-14 21:18:07', '1', '1', 'white', '20180414165834.jpg', '大家好我叫玛戈');

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
