/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : studywebssm

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-27 17:46:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `artext` varchar(2000) DEFAULT NULL,
  `refrenceid` char(32) NOT NULL COMMENT '主键',
  `uid` char(32) DEFAULT NULL,
  `arqasupport` int(11) DEFAULT NULL,
  `artime` datetime DEFAULT NULL,
  `artitle` varchar(50) DEFAULT NULL,
  `artag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('  对应不少初学前端知识的小伙伴来说，如果实现前后端的数据交互，脑袋里很模糊，现在给大家介绍一个简单的案例帮助大家理解。 首先，我们来制作一个登录框，用来输入帐号和密码loginspa...', '0C0EC4C1BEBE4426AB9231FDADEF86F8', '1', '19', '2016-06-24 00:00:00', '一个小时搞懂前后端是如何交互的', 'java');
INSERT INTO `article` VALUES ('我当初学编程的时候也是一点基础也没有,不过只要有恒心有毅力终会能成功. \r\n不要怕,我提几点建议给你: \r\n1.java里面基础的语法跟c/c++一样,所以你想学java的话,先把c语言的基础语法看一遍,自己找点题目编一下,编程思想很重要,因为java不涉及到指针问题,所以c里面指针就不用看了,如果觉得语法能够过关了,那就开始java吧 \r\n2.在初学java的同时,面向对象的思想很重要,因为c/语言是面向过程的,这时候选择一本好点的参考书很重要,我推荐一本<<java全方位学习>>朱仲杰编的.参考书不在多,在于精,有了一定的java基础之后,你可以去看<<java编程思想>>,这本书在你成为程序员之后都是很有帮助. \r\n3.刚开始学的时候代码不会写很正常,但是应该要模仿着写,该背的还是要背,有些模式得背得很熟,当然是不是死记硬背是要理解了背,最后自己找点题目练练,多敲敲代码. \r\n一家之言,希望对你有帮助!', '60EFE859A2B9482C877200313B244CC0', '1', '12', '2016-06-24 00:00:00', '怎么快速学好javaweb', 'java');
INSERT INTO `article` VALUES ('通过几天的学习，让我深刻感受到自已的不足，由于讲课的课件中有部分是英文或是英文的缩写，对于基本没有英文水平的我来说就无法理解这些英文或英文缩写所表示的意思，只能集中精力听老师的讲解，才能勉强理解。', '98C32C3720A34B8688CE8152FC0E718D', '1', '11', '2016-06-24 00:00:00', 'C#工程师求职方向', 'C#');
INSERT INTO `article` VALUES ('养成自觉学习的习惯，学习各方面的知识，只有通过全面的学习，才能快速提高自身的知识水平和整体素质，才能实现自己的职业规划及适应新形势下公司高速发展的需要，为建设“百年伊泰”贡献自己的力量。', 'E0730DCCFDC64CF3A31B8683A4C3A957', '1', '4', '2016-06-24 00:00:00', '888', 'C#');
INSERT INTO `article` VALUES ('通过几天的学习，让我深刻感受到自已的不足，由于讲课的课件中有部分是英文或是英文的缩写，对于基本没有英文水平的我来说就无法理解这些英文或英文缩写所表示的意思，只能集中精力听老师的讲解，才能勉强理解。', 'E162ACEDC9AA458F97F349D0317476A2', '1', '5', '2016-06-24 00:00:00', 'lsj', 'C#');
INSERT INTO `article` VALUES ('Java的应用可以说是无处不在，从桌面办公应用到网络数据库等应用，从PC到嵌入式移动平台，从Java小应用程序（Applet）到架构庞大的J2EE企业级解决方案，处处都有Java的身影，就连美国大型太空项目当中，也使用了Java来开发控制系统和相关软件。用途如此之广的Java造就了Java工程师的辉煌，使其在软件工程师的领域里独占鳌头！Java软件工程师运用Java这个开发工具去完成软件产品的软件程序设计、开发、测试、维护升级等工作。', 'F6AD3082C3DA4840A306DADCF1A09629', '2', '8', '2016-06-24 00:00:00', 'java工程师求职方向', 'java');

-- ----------------------------
-- Table structure for `articleuser`
-- ----------------------------
DROP TABLE IF EXISTS `articleuser`;
CREATE TABLE `articleuser` (
  `refrenceid` char(32) NOT NULL,
  `arid` varchar(32) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articleuser
-- ----------------------------

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `refrenceid` char(32) NOT NULL,
  `coursename` varchar(100) DEFAULT NULL,
  `courselevel` varchar(20) DEFAULT NULL,
  `coursefield` varchar(20) DEFAULT NULL,
  `courseintroduce` varchar(200) DEFAULT NULL,
  `coursesrc` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('10', '移动', '初级', '移动开发', '很好的一门课', null, null);
INSERT INTO `course` VALUES ('11', '数据库', '初级', '前端开发', '很好的一门课', null, null);
INSERT INTO `course` VALUES ('12', 'top', '精华', '前端开发', '很好的课程', null, null);
INSERT INTO `course` VALUES ('13', 'java', '精华', '后端开发', '很好的课程', null, '1011');
INSERT INTO `course` VALUES ('14', 'PHP', '精华', '后端开发', '很好的课程', null, '499');
INSERT INTO `course` VALUES ('15', 'Python', '精华', '后端开发', '很好的课程', null, '501');
INSERT INTO `course` VALUES ('16', 'C++', '精华', '后端开发', '很好的课程', null, '500');
INSERT INTO `course` VALUES ('17', 'Linux', '精华', '后端开发', '很好的课程', null, '600');
INSERT INTO `course` VALUES ('18', 'C语言', '初级', '后端开发', '很好的一门课', null, '600');
INSERT INTO `course` VALUES ('19', 'Go语言', '初级', '后端开发', '很好的一门课', null, '499');
INSERT INTO `course` VALUES ('20', 'C#', '初级', '后端开发', '很好的一门课', null, '510');
INSERT INTO `course` VALUES ('8', '前端', '初级', '移动开发', '很好的一门课', null, null);
INSERT INTO `course` VALUES ('9', '后端', '中级', '移动开发', '很好的一门课', null, null);

-- ----------------------------
-- Table structure for `courseforum`
-- ----------------------------
DROP TABLE IF EXISTS `courseforum`;
CREATE TABLE `courseforum` (
  `refrenceid` char(32) NOT NULL,
  `cf_title` varchar(100) DEFAULT NULL,
  `cf_context` varchar(800) DEFAULT NULL,
  `cf_course` char(32) DEFAULT NULL,
  `cf_tags` varchar(40) DEFAULT NULL,
  `cf_view` int(11) DEFAULT NULL,
  `cf_count` int(11) DEFAULT NULL,
  `cf_time` datetime DEFAULT NULL,
  `cf_userid` char(32) DEFAULT NULL,
  `cf_top` int(4) DEFAULT NULL,
  `cf_idtj` int(4) DEFAULT NULL,
  `cf_stat` int(2) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseforum
-- ----------------------------
INSERT INTO `courseforum` VALUES ('1', '终于学会了', '这个视频讲的很生动，也讲的很到位，很适合我们初学者去学习', 'B49452BC8D3D43079C8C81AF0E2211FF', null, null, '14', '2016-06-16 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('10', null, '阿发三发', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-11-21 00:00:00', '3', null, null, null);
INSERT INTO `courseforum` VALUES ('11', null, '放松放松的', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-11-21 00:00:00', '3', null, null, null);
INSERT INTO `courseforum` VALUES ('2', '终于学会了', '看了这个视频和跟着看过这个视频的同学学习之后，真的学到好多好多', 'B49452BC8D3D43079C8C81AF0E2211FF', null, null, '8', '2016-06-18 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('3', '终于学会了', '我觉得这个老师有些地方还是没有讲明白，不过看了其他用户推荐的视频后我彻底弄懂了，哈哈，谢谢老师', 'B49452BC8D3D43079C8C81AF0E2211FF', null, null, '6', '2016-06-18 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('4', '终于学会了', '终于明天了计算机系统的数位与进制了，太爽了', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-06-19 00:00:00', '2', null, null, null);
INSERT INTO `courseforum` VALUES ('5', '终于学会了', '学了这个视频和一些相关与推荐的视频之后，使我明白了很多以前没有弄懂的东西，很赞的一个视频', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-07-11 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('6', '终于学会了', '很好的一个视频，值的大家去学习。尤其在看了一些推荐出来的视频后我真的学到太多太多了', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-07-14 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('7', null, 'waoncoijasojcosjdc', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-07-15 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('8', null, 'wofsdkfskdlflasf;fd', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-07-17 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('895D76D7684342A4A3AA4FF8E82712B3', null, '11111111', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2017-05-21 09:24:18', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('9', null, '你好', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2016-07-26 00:00:00', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('A59F5351977E4F488DA80A3529A35DAD', null, '1010010', '17B85290E5D44146A4061834476D2B7B', null, null, null, '2017-05-21 09:11:39', '1', null, null, null);
INSERT INTO `courseforum` VALUES ('CC31BE3431934928ADF96105F7E5F718', null, '1111222333', '3FB1502F2EDA4AD9BD8AFD4EF7DC008E', null, null, null, '2017-05-21 09:44:09', '1', null, null, null);

-- ----------------------------
-- Table structure for `db_user`
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user` (
  `refrenceid` char(32) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `user_password` varchar(32) DEFAULT NULL,
  `user_truename` varchar(32) DEFAULT NULL,
  `user_email` varchar(32) DEFAULT NULL,
  `user_status` tinyint(1) DEFAULT NULL,
  `user_activationCode` varchar(32) DEFAULT NULL,
  `user_idcard` varchar(32) DEFAULT NULL,
  `user_tel` varchar(32) DEFAULT NULL,
  `user_qq` varchar(32) DEFAULT NULL,
  `user_setbacks` varchar(32) DEFAULT NULL,
  `uuser_way` varchar(32) DEFAULT NULL,
  `user_class` varchar(32) DEFAULT NULL,
  `user_points` int(11) DEFAULT NULL,
  `user_data` datetime DEFAULT NULL,
  `user_job` varchar(32) DEFAULT NULL,
  `user_level` varchar(32) DEFAULT NULL,
  `user_imgsrc` varchar(100) DEFAULT NULL,
  `mark` int(6) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES ('1', 'geektest', 'geektest', '长沙学院', '11111@qq.vom', null, null, null, '18888888888', null, 'java', null, 'Java编程基础知识入门', '106', null, null, null, 'user_img/2017052020103020161124131324_ccsu.jpg', '1');
INSERT INTO `db_user` VALUES ('10', '铁扇公主', 'cs03100505', null, '333', null, null, null, '222', null, null, null, null, '10', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_15.jpg', '7');
INSERT INTO `db_user` VALUES ('11', '牛魔王', 'www', null, '332', null, null, null, '333', null, null, null, null, '55', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_16.jpg', '8');
INSERT INTO `db_user` VALUES ('12', '钢铁侠', '111', null, '1111', null, null, null, '111', null, null, null, null, '58', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_17.jpg', '9');
INSERT INTO `db_user` VALUES ('13', '孙悟空', '111', null, '11111111', null, null, null, '1111', null, null, null, null, '77', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_18.jpg', '10');
INSERT INTO `db_user` VALUES ('14', 'wangxiaoer', '1111', null, '1111@qq.com', null, null, null, '1111', null, null, null, null, '20', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', '11');
INSERT INTO `db_user` VALUES ('15', '15700797297', '123456', null, '123456789@qq.com', null, null, null, '18900986785', null, null, null, null, null, null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', null);
INSERT INTO `db_user` VALUES ('16', '18390954926', '123456', null, '17876765433@qq.com', null, null, null, '17876765433', null, null, null, null, null, null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', null);
INSERT INTO `db_user` VALUES ('17', 'admin1', '111111', null, '123131231', null, null, null, '1223344', null, null, null, null, null, null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', null);
INSERT INTO `db_user` VALUES ('2', '女王', 'syj', 'sss', '1046@qq.com', null, null, null, null, null, 'java', null, 'Java编程基础知识入门', '13', null, null, null, 'user_img/26413C60AE2246B5A477E4CBA9C9315B_17.jpg', '2');
INSERT INTO `db_user` VALUES ('22F0D2605FAC46A3B633801B9ADFBA0D', 'syj111', '111111', null, '121212121', null, null, null, '1112221', null, null, null, null, null, null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', null);
INSERT INTO `db_user` VALUES ('3', 'admin', '1111', 'admin', null, null, null, null, null, null, null, null, null, '98', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_11.jpg', '3');
INSERT INTO `db_user` VALUES ('5F2658165BBF44B18753C157157EDEE2', 'lsj111', '111111', null, '111222333', null, null, null, '111111', null, null, null, null, null, null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_88.jpg', null);
INSERT INTO `db_user` VALUES ('7', '张三', '1111', null, '1102242469283@qq.com', null, null, null, '000', null, null, null, null, '10', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_12.jpg', '4');
INSERT INTO `db_user` VALUES ('8', '李四', '999', null, '1029242469283@qq.com', null, null, null, '987', null, null, null, null, '10', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_13.jpg', '5');
INSERT INTO `db_user` VALUES ('9', '王五', '1111', null, '111', null, null, null, '111', null, null, null, null, '10', null, null, null, 'user_img/1344DB9849FE44B8A663E9E2CAE8BF77_14.jpg', '6');

-- ----------------------------
-- Table structure for `err_subject`
-- ----------------------------
DROP TABLE IF EXISTS `err_subject`;
CREATE TABLE `err_subject` (
  `subject_ID` char(32) DEFAULT '0',
  `user_id` char(32) DEFAULT '0',
  `test_time` datetime DEFAULT NULL,
  `err_from` varchar(32) DEFAULT NULL,
  `user_answer` varchar(32) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `refrenceid` char(32) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of err_subject
-- ----------------------------
INSERT INTO `err_subject` VALUES ('5', '1', '2016-06-16 18:24:58', 'java', 'B', null, '');
INSERT INTO `err_subject` VALUES ('5', '1', '2016-06-16 18:25:27', 'java', 'B', null, '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:04:17', 'java', 'B', '1', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:04:17', 'java', 'B', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:04:17', 'java', 'B', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:04:17', 'java', 'B', '4', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:04:17', 'java', 'B', '5', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:06:23', 'java', 'B', '4', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 06:06:23', 'java', 'B', '5', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 14:51:24', 'java', 'D', '1', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 14:51:24', 'java', 'C', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 14:51:24', 'java', 'B', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-13 14:51:24', 'java', 'C', '5', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-15 15:55:13', 'java', 'B', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-15 15:55:13', 'java', 'B', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-17 09:54:16', 'java', 'B', '5', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-26 19:24:19', 'java', 'B', '1', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-26 19:24:19', 'java', 'B', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-26 19:24:19', 'java', '', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-07-26 19:24:19', 'java', 'B', '4', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-08-23 09:35:09', 'java', 'B', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-08-23 09:35:09', 'java', 'B', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-08-23 09:35:09', 'java', 'C', '4', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-08-23 09:35:09', 'java', 'B', '5', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-08-23 20:40:47', 'java', '', '1', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-11-24 13:13:05', 'java', 'B', '1', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-11-24 13:13:05', 'java', 'B', '2', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-11-24 13:13:05', 'java', 'B', '3', '');
INSERT INTO `err_subject` VALUES ('0', '1', '2016-11-24 13:13:05', 'java', 'B', '4', '');

-- ----------------------------
-- Table structure for `exam_score`
-- ----------------------------
DROP TABLE IF EXISTS `exam_score`;
CREATE TABLE `exam_score` (
  `refrenceid` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `exam_time` datetime DEFAULT NULL,
  `exam_score` varchar(10) DEFAULT NULL,
  `exam_grade` varchar(10) DEFAULT NULL,
  `exam_zhishidian` varchar(20) DEFAULT NULL,
  `exam_xueke` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_score
-- ----------------------------
INSERT INTO `exam_score` VALUES ('1', '1', '2016-05-14 12:41:43', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('10', '2', '2016-05-14 22:58:41', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('11', '1', '2016-05-14 22:59:48', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('12', '1', '2016-05-14 23:16:58', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('13', '1', '2016-05-15 14:52:32', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('14', '1', '2016-05-15 14:53:17', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('15', '1', '2016-05-17 08:41:24', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('16', '2', '2016-05-17 09:29:23', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('17', '1', '2016-05-19 22:31:36', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('18', '1', '2016-05-20 09:15:24', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('19', '2', '2016-05-24 21:35:25', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('2', '1', '2016-05-14 12:42:47', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('20', '1', '2016-05-26 21:05:04', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('21', '1', '2016-05-26 21:29:16', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('22', '1', '2016-05-26 21:31:35', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('23', '1', '2016-05-26 21:32:56', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('24', '1', '2016-05-28 11:56:55', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('25', '1', '2016-06-01 12:04:24', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('26', '3', '2016-06-16 18:24:58', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('27', '3', '2016-06-16 18:25:27', '50', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('28', '1', '2016-07-13 06:04:17', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('29', '1', '2016-07-13 06:06:24', '60', '及格', null, null);
INSERT INTO `exam_score` VALUES ('3', '1', '2016-05-14 12:43:26', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('30', '1', '2016-07-13 06:17:02', '100', '优秀', '1', 'java');
INSERT INTO `exam_score` VALUES ('31', '1', '2016-07-13 14:51:25', '20', '不及格', '1', 'java');
INSERT INTO `exam_score` VALUES ('32', '1', '2016-07-15 15:55:13', '60', '及格', '1', 'java');
INSERT INTO `exam_score` VALUES ('33', '1', '2016-07-17 09:54:18', '80', '良好', '1', 'java');
INSERT INTO `exam_score` VALUES ('34', '1', '2016-07-26 19:24:19', '20', '不及格', '1', 'java');
INSERT INTO `exam_score` VALUES ('35', '1', '2016-08-01 18:55:46', '100', '优秀', '1', 'java');
INSERT INTO `exam_score` VALUES ('36', '1', '2016-08-23 09:35:10', '20', '������', '1', 'java');
INSERT INTO `exam_score` VALUES ('37', '1', '2016-08-24 16:15:19', '100', '����', '1', 'java');
INSERT INTO `exam_score` VALUES ('38', '3', '2016-11-20 21:31:20', '100', '优秀', '1', 'java');
INSERT INTO `exam_score` VALUES ('39', '1', '2016-11-24 13:13:05', '20', '不及格', '1', 'java');
INSERT INTO `exam_score` VALUES ('4', '1', '2016-05-14 12:43:59', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('5', '1', '2016-05-14 12:44:11', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('6', '2', '2016-05-14 12:55:52', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('7', '1', '2016-05-14 12:57:11', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('8', '1', '2016-05-14 12:58:10', '100', '优秀', null, null);
INSERT INTO `exam_score` VALUES ('9', '1', '2016-05-14 15:33:27', '0', '不及格', null, null);
INSERT INTO `exam_score` VALUES ('FF8A8A576B634BA4AD0B030ACDA5F66F', '5F2658165BBF44B18753C157157EDEE2', '2017-02-03 20:15:39', '100', '优秀', '1', 'java');

-- ----------------------------
-- Table structure for `forumreply`
-- ----------------------------
DROP TABLE IF EXISTS `forumreply`;
CREATE TABLE `forumreply` (
  `refrenceid` char(32) NOT NULL,
  `cf_id` int(11) DEFAULT NULL,
  `cf_userid` int(11) DEFAULT NULL,
  `fr_context` varchar(500) DEFAULT NULL,
  `fr_user` varchar(20) DEFAULT NULL,
  `fr_time` datetime DEFAULT NULL,
  `fr_stat` int(4) DEFAULT NULL,
  `fr_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forumreply
-- ----------------------------
INSERT INTO `forumreply` VALUES ('1', '1', '1', '对的', 'lsj', '2016-06-16 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('10', '1', '1', 'zzzzzzzzzzzzzzzzzz', 'syj', '2016-06-18 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('11', '1', '2', 'ds', 'syj', '2016-06-18 22:25:15', null, null);
INSERT INTO `forumreply` VALUES ('12', '1', '2', 'sd', 'lsj', '2016-06-18 22:25:25', null, null);
INSERT INTO `forumreply` VALUES ('13', '1', '2', '我操', 'lsj', '2016-06-19 16:51:00', null, null);
INSERT INTO `forumreply` VALUES ('14', '2', '2', 'shide', 'lsj', '2016-06-19 19:02:49', null, null);
INSERT INTO `forumreply` VALUES ('15', '2', '1', 'malegebi', 'syj', '2016-06-19 19:03:16', null, null);
INSERT INTO `forumreply` VALUES ('16', '1', '1', 'wo', 'syj', '2016-06-21 15:39:28', null, null);
INSERT INTO `forumreply` VALUES ('2', '1', '1', '是的', 'lsj', '2016-06-16 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('3', '1', '2', '不时地', 'lsj', '2016-06-16 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('4', '1', '1', '就是得', 'syj', '2016-06-16 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('5', '1', '1', 'ss', 'syj', '2016-06-18 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('6', '1', '2', 'sadasdasdasdas', 'lsj', '2016-06-18 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('7', '1', '2', 'dddddddddddddddddddddd', 'syj', '2016-06-18 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('8', '1', '2', 'sssa', 'syj', '2016-06-18 00:00:00', null, null);
INSERT INTO `forumreply` VALUES ('9', '1', '1', 'kkk', 'syj', '2016-06-18 00:00:00', null, null);

-- ----------------------------
-- Table structure for `fullcalendar`
-- ----------------------------
DROP TABLE IF EXISTS `fullcalendar`;
CREATE TABLE `fullcalendar` (
  `refrenceid` char(32) NOT NULL,
  `vid` char(32) DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fullcalendar
-- ----------------------------
INSERT INTO `fullcalendar` VALUES ('0C8BEA3974BC4DE18E2EDB76CA4B71B2', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:03:20', null);
INSERT INTO `fullcalendar` VALUES ('0D4FEE29420342628895287F9F65AEBC', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 17:49:13', null);
INSERT INTO `fullcalendar` VALUES ('1', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-21 13:38:40', null);
INSERT INTO `fullcalendar` VALUES ('10', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 16:19:46', null);
INSERT INTO `fullcalendar` VALUES ('11', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 19:27:29', null);
INSERT INTO `fullcalendar` VALUES ('12', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 20:32:27', null);
INSERT INTO `fullcalendar` VALUES ('13', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 20:34:38', null);
INSERT INTO `fullcalendar` VALUES ('14', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 20:47:00', null);
INSERT INTO `fullcalendar` VALUES ('15', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 20:48:26', null);
INSERT INTO `fullcalendar` VALUES ('16', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-24 09:17:58', null);
INSERT INTO `fullcalendar` VALUES ('17', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-24 15:06:42', null);
INSERT INTO `fullcalendar` VALUES ('18', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-24 16:12:00', null);
INSERT INTO `fullcalendar` VALUES ('19', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-24 20:03:01', null);
INSERT INTO `fullcalendar` VALUES ('1AF7D44F103D421D9BFB55916C81C720', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-02-02 19:18:43', null);
INSERT INTO `fullcalendar` VALUES ('1E8A1E5DCFE94CE5A359730A104B54B1', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 18:07:22', null);
INSERT INTO `fullcalendar` VALUES ('2', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-21 13:39:20', null);
INSERT INTO `fullcalendar` VALUES ('20', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 15:50:46', null);
INSERT INTO `fullcalendar` VALUES ('21', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:22:31', null);
INSERT INTO `fullcalendar` VALUES ('22', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:26:29', null);
INSERT INTO `fullcalendar` VALUES ('23', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:27:02', null);
INSERT INTO `fullcalendar` VALUES ('24', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:27:35', null);
INSERT INTO `fullcalendar` VALUES ('25', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:28:11', null);
INSERT INTO `fullcalendar` VALUES ('26', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:33:01', null);
INSERT INTO `fullcalendar` VALUES ('27', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:33:16', null);
INSERT INTO `fullcalendar` VALUES ('28', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 17:42:37', null);
INSERT INTO `fullcalendar` VALUES ('29', '17B85290E5D44146A4061834476D2B7B', '14', '2016-08-25 17:44:37', null);
INSERT INTO `fullcalendar` VALUES ('3', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-21 13:41:50', null);
INSERT INTO `fullcalendar` VALUES ('30', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 20:41:54', null);
INSERT INTO `fullcalendar` VALUES ('31', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 22:52:22', null);
INSERT INTO `fullcalendar` VALUES ('32', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-25 23:19:55', null);
INSERT INTO `fullcalendar` VALUES ('33', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 12:35:12', null);
INSERT INTO `fullcalendar` VALUES ('34', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 12:40:48', null);
INSERT INTO `fullcalendar` VALUES ('35', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 12:52:28', null);
INSERT INTO `fullcalendar` VALUES ('36', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 17:43:51', null);
INSERT INTO `fullcalendar` VALUES ('36E2F0EEB1F9453DBBB67C8E603F10A2', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:03:13', null);
INSERT INTO `fullcalendar` VALUES ('37', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 17:48:47', null);
INSERT INTO `fullcalendar` VALUES ('38', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-26 18:08:01', null);
INSERT INTO `fullcalendar` VALUES ('39', '17B85290E5D44146A4061834476D2B7B', '14', '2016-08-26 19:38:10', null);
INSERT INTO `fullcalendar` VALUES ('3C150638339F4A1D80E59DDAB911A519', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:02:12', null);
INSERT INTO `fullcalendar` VALUES ('4', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-21 13:43:32', null);
INSERT INTO `fullcalendar` VALUES ('40', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-27 09:45:40', null);
INSERT INTO `fullcalendar` VALUES ('41', '17B85290E5D44146A4061834476D2B7B', '2', '2016-08-27 09:56:05', null);
INSERT INTO `fullcalendar` VALUES ('42', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-27 10:01:15', null);
INSERT INTO `fullcalendar` VALUES ('43', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-27 10:15:18', null);
INSERT INTO `fullcalendar` VALUES ('44', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-20 21:12:41', null);
INSERT INTO `fullcalendar` VALUES ('45', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-20 21:16:17', null);
INSERT INTO `fullcalendar` VALUES ('46', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:07:58', null);
INSERT INTO `fullcalendar` VALUES ('47', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:09:14', null);
INSERT INTO `fullcalendar` VALUES ('48', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:10:07', null);
INSERT INTO `fullcalendar` VALUES ('49', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:13:42', null);
INSERT INTO `fullcalendar` VALUES ('4BCDBCBE0B4248F99FF28F48EC9571E7', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 21:56:27', null);
INSERT INTO `fullcalendar` VALUES ('5', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-22 11:56:10', null);
INSERT INTO `fullcalendar` VALUES ('50', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:15:58', null);
INSERT INTO `fullcalendar` VALUES ('501D090498D942CAA7BB368817FD34B9', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 10:51:11', null);
INSERT INTO `fullcalendar` VALUES ('51', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 12:16:33', null);
INSERT INTO `fullcalendar` VALUES ('52', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 14:22:11', null);
INSERT INTO `fullcalendar` VALUES ('53', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 14:22:36', null);
INSERT INTO `fullcalendar` VALUES ('54', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 14:27:35', null);
INSERT INTO `fullcalendar` VALUES ('55', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 14:39:51', null);
INSERT INTO `fullcalendar` VALUES ('56', '17B85290E5D44146A4061834476D2B7B', '3', '2016-11-21 14:41:10', null);
INSERT INTO `fullcalendar` VALUES ('57', '17B85290E5D44146A4061834476D2B7B', '1', '2016-11-24 13:11:57', null);
INSERT INTO `fullcalendar` VALUES ('5B9943775E314D4A83EE12163D89B951', '17B85290E5D44146A4061834476D2B7B', '1', '2017-05-21 11:04:39', null);
INSERT INTO `fullcalendar` VALUES ('6', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-22 19:03:39', null);
INSERT INTO `fullcalendar` VALUES ('6BF36CBB61FB45B38DBB5CCCAB439BAF', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 17:57:16', null);
INSERT INTO `fullcalendar` VALUES ('6FF1474BF4F84BB4B6C576985B98E5E6', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 18:01:38', null);
INSERT INTO `fullcalendar` VALUES ('7', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 09:25:18', null);
INSERT INTO `fullcalendar` VALUES ('730FE4C1E67C4F71859E499B748AB5F3', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 22:00:26', null);
INSERT INTO `fullcalendar` VALUES ('77AF7AC51FB54A02B2BF0ADC26275D81', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:08:39', null);
INSERT INTO `fullcalendar` VALUES ('7A909DB4151A4FE5BEAC64EE8E67CAF3', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:05:38', null);
INSERT INTO `fullcalendar` VALUES ('8', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 09:28:33', null);
INSERT INTO `fullcalendar` VALUES ('83BC8839AFB84289967B5C113A2FEAB0', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 17:57:37', null);
INSERT INTO `fullcalendar` VALUES ('8642351A575142B7A71F6A80DB36824E', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 17:50:26', null);
INSERT INTO `fullcalendar` VALUES ('9', '17B85290E5D44146A4061834476D2B7B', '1', '2016-08-23 14:23:54', null);
INSERT INTO `fullcalendar` VALUES ('A3E1E29E1FAF4BAAA81CE6097E87A84A', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:05:30', null);
INSERT INTO `fullcalendar` VALUES ('BB0DF4CBF1B442EF9BF114139F73988B', '17B85290E5D44146A4061834476D2B7B', '1', '2017-05-21 09:42:10', null);
INSERT INTO `fullcalendar` VALUES ('BFA76EA9491A46D88411E14C4E1C986B', '17B85290E5D44146A4061834476D2B7B', '1', '2017-05-21 11:05:15', null);
INSERT INTO `fullcalendar` VALUES ('CB1F5001CE9942C5AADB616A51583A4B', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:05:22', null);
INSERT INTO `fullcalendar` VALUES ('D56F9BD6AAA74C78A4F1529111B99D77', '17B85290E5D44146A4061834476D2B7B', '1', '2017-05-21 11:02:29', null);
INSERT INTO `fullcalendar` VALUES ('FB28C259922A43B39937919D35ECDAC1', '17B85290E5D44146A4061834476D2B7B', '1', '2017-01-31 22:02:28', null);
INSERT INTO `fullcalendar` VALUES ('FF5B543EF1624503BDC69866947D17C5', '17B85290E5D44146A4061834476D2B7B', '5F2658165BBF44B18753C157157EDEE2', '2017-01-31 17:55:24', null);

-- ----------------------------
-- Table structure for `knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `refrenceid` char(32) NOT NULL,
  `knowledgename` varchar(100) DEFAULT NULL,
  `upknowledge` varchar(100) DEFAULT NULL,
  `nextknowledge` varchar(100) DEFAULT NULL,
  `incourseid` int(11) DEFAULT NULL,
  `knowledgeweight` int(11) DEFAULT NULL,
  `knowledgelevel` varchar(20) DEFAULT NULL,
  `knowledgeintroduce` varchar(200) DEFAULT NULL,
  `knowledgeimgsrc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('1', 'java初级知识点1', '', 'java初级知识点2', '8', '0', '初级', '这是java的学习资源', 'knowdgeimg/java.jpg');
INSERT INTO `knowledge` VALUES ('10', 'Java语言进阶', '', '', '9', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('11', 'Java中加密算法的编程使用', '', '', '13', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('12', '工程结构管理', '', '', '10', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('13', '网络通信', '', '', '12', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('14', '界面设计', '', '', '13', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('2', 'java初级知识点2', 'java初级知识点1', 'java初级知识点3', '9', '0', '初级', '这是java的学习资源', 'knowdgeimg/php.jpg');
INSERT INTO `knowledge` VALUES ('3', 'java初级知识点3', 'java初级知识点2', 'java初级知识点4', '10', '0', '初级', '这是java的学习资源', 'knowdgeimg/ccc.jpg');
INSERT INTO `knowledge` VALUES ('4', 'java初级知识点4', 'java初级知识点3', 'java初级知识点5', '11', '0', '初级', '这是java的学习资源', 'knowdgeimg/pyhton.jpg');
INSERT INTO `knowledge` VALUES ('5', 'java初级知识点5', 'java初级知识点4', 'java初级知识点6', '8', '0', '初级', '这是java的学习资源', 'knowdgeimg/qianduan.jpg');
INSERT INTO `knowledge` VALUES ('6', 'java初级知识点6', 'java初级知识点5', '', '12', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('7', '开发环境搭建', '', '', '11', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('8', 'Java语言基础', '', '', '13', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');
INSERT INTO `knowledge` VALUES ('9', 'Java面向对象', '', '', '13', '0', '初级', '这是java的学习资源', 'knowdgeimg/shuju.jpg');

-- ----------------------------
-- Table structure for `learn_route`
-- ----------------------------
DROP TABLE IF EXISTS `learn_route`;
CREATE TABLE `learn_route` (
  `refrenceid` char(32) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `KnowledgeId` int(11) DEFAULT NULL,
  `lr_state` int(2) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `number` int(8) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of learn_route
-- ----------------------------
INSERT INTO `learn_route` VALUES ('1', '1', '1', '0', '2016-05-25 15:22:56', null, '57');
INSERT INTO `learn_route` VALUES ('2', '1', '2', '0', '2016-05-25 16:20:17', null, '8');
INSERT INTO `learn_route` VALUES ('3', '2', '1', '0', '2016-05-25 21:42:14', null, '3');
INSERT INTO `learn_route` VALUES ('4', '2', '2', '0', '2016-05-25 21:52:49', null, '3');
INSERT INTO `learn_route` VALUES ('5', '1', '3', '0', '2016-05-27 17:05:47', null, '2');
INSERT INTO `learn_route` VALUES ('6', '3', '1', '0', '2016-06-16 18:10:16', null, '5');

-- ----------------------------
-- Table structure for `mycourse`
-- ----------------------------
DROP TABLE IF EXISTS `mycourse`;
CREATE TABLE `mycourse` (
  `refrenceid` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `courseid` char(32) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mycourse
-- ----------------------------
INSERT INTO `mycourse` VALUES ('24', '2', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('25', '7', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('26', '10', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('27', '11', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('28', '13', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('29', '14', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('30', '15', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('31', '8', '13', '2016-08-27 00:00:00');
INSERT INTO `mycourse` VALUES ('35', '3', '13', '2016-11-20 00:00:00');

-- ----------------------------
-- Table structure for `mysubject`
-- ----------------------------
DROP TABLE IF EXISTS `mysubject`;
CREATE TABLE `mysubject` (
  `refrenceid` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `subjectID` char(32) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mysubject
-- ----------------------------

-- ----------------------------
-- Table structure for `plan`
-- ----------------------------
DROP TABLE IF EXISTS `plan`;
CREATE TABLE `plan` (
  `refrenceid` char(32) NOT NULL,
  `plantext` varchar(100) DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `progress` int(4) unsigned zerofill DEFAULT '0000',
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `blongid` char(32) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of plan
-- ----------------------------
INSERT INTO `plan` VALUES ('1', '学习java', '1', '0050', '2016-09-01 00:00:00', '2016-09-18 00:00:00', '0');
INSERT INTO `plan` VALUES ('10', 'www', '1', '0010', '2016-10-10 00:00:00', '2016-11-10 00:00:00', '2');
INSERT INTO `plan` VALUES ('2', 'java考试', '1', '0040', '2016-09-20 00:00:00', '2016-10-21 00:00:00', '0');
INSERT INTO `plan` VALUES ('3', 'java第二阶段', '1', '0030', '2016-09-22 00:00:00', '2016-09-25 00:00:00', '0');
INSERT INTO `plan` VALUES ('350F680CE33D46E9BE6DEEE41063D255', '11111111111', '1', '0000', '1999-04-22 00:00:00', '1999-04-23 00:00:00', '1');
INSERT INTO `plan` VALUES ('4', 'java第三阶段', '1', '0010', '2016-09-26 00:00:00', '2016-09-28 00:00:00', '0');
INSERT INTO `plan` VALUES ('5', '学习第一章', '1', '0005', '2016-09-01 00:00:00', '2016-09-06 00:00:00', '1');
INSERT INTO `plan` VALUES ('6', 'java第四阶段', '1', '0030', '2016-09-28 00:00:00', '2016-09-30 00:00:00', '0');
INSERT INTO `plan` VALUES ('7', '学习第一天', '1', '0005', '2016-09-01 00:00:00', '2016-09-03 00:00:00', '5');
INSERT INTO `plan` VALUES ('8', '学习第二天', '1', '0030', '2016-09-04 00:00:00', '2016-09-06 00:00:00', '5');
INSERT INTO `plan` VALUES ('9', '学习第二章', '1', '0040', '2016-09-07 00:00:00', '2016-09-18 00:00:00', '1');

-- ----------------------------
-- Table structure for `quesanswer`
-- ----------------------------
DROP TABLE IF EXISTS `quesanswer`;
CREATE TABLE `quesanswer` (
  `refrenceid` char(32) NOT NULL,
  `quid` char(32) DEFAULT NULL,
  `qatext` varchar(500) DEFAULT NULL,
  `qatime` datetime DEFAULT NULL,
  `qasupport` int(11) DEFAULT '0',
  `qaopposition` int(11) DEFAULT '0',
  `uid` char(32) DEFAULT NULL,
  `isno` int(2) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quesanswer
-- ----------------------------
INSERT INTO `quesanswer` VALUES ('3AA08E35D36644B38B90078CC800C9B4', null, 'www', '2016-08-25 00:00:00', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('4606DF29CA864053B23E4CA38DD421C4', '52F55EA790C544889B541BCA68BBC20D', '9999999999999999999', '2016-06-26 00:00:00', '1', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('52D49C2E0FE1427F90EC485539DE6092', '52F55EA790C544889B541BCA68BBC20D', '0000000000000', '2016-06-26 00:00:00', '1', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('52F55EA790C544889B541BCA68BBC20E', '52F55EA790C544889B541BCA68BBC20D', 'DDDDD', null, '1', '0', '2', null);
INSERT INTO `quesanswer` VALUES ('52F55EA790C544889B541BCA68BBC20F', '52F55EA790C544889B541BCA68BBC20D', 'lsjjlsjslsd', null, '0', '0', '2', null);
INSERT INTO `quesanswer` VALUES ('80407D8FDB6C4A7783E7E282A3DF9089', '07FC4AF8AFF54A9CB045B3A88D491996', '很好的，慢慢来', '2016-08-27 00:00:00', '5', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('8EC2B2E663254CEC9E8BADD7D6993E8F', '07FC4AF8AFF54A9CB045B3A88D491996', '111111', '2017-05-21 11:01:06', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('A34D0E6BC93749DA85D5672220320287', '3CFA750CA0DA4731AA0A7CFDA9ECAE41', '真的吗？', '2016-06-30 00:00:00', '0', '0', '2', null);
INSERT INTO `quesanswer` VALUES ('AD862EA2FED84EE195111809DC8C8E6E', '3CFA750CA0DA4731AA0A7CFDA9ECAE41', '我是谁？', '2016-06-30 00:00:00', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('E0DDBE5329994C41901F5B9557734CA7', null, '23', '2016-08-25 00:00:00', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('E265A1BEC8D340DABA1154CE94BF73C8', null, 'sssssss', '2016-08-25 00:00:00', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('EBA778D1F1554208A9D55F7581C27CDA', null, 'eee', '2016-08-25 00:00:00', '0', '0', '1', null);
INSERT INTO `quesanswer` VALUES ('F82DFBEFB3574E988504F3B004631780', '1EF1D325846640D1B370D94676927845', '11111', '2017-05-20 23:44:59', '0', '0', '1', null);

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `refrenceid` char(32) NOT NULL,
  `qutitle` varchar(50) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `uid` char(32) DEFAULT NULL,
  `qutime` datetime DEFAULT NULL,
  `quadoptid` varchar(32) DEFAULT NULL,
  `qutag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('07FC4AF8AFF54A9CB045B3A88D491996', '5年项目开发经验谈java入门', '最初是在小公司工作，三年转到阿里，作为一个有5年项目经验的开发人员，我觉得作为想要入手，又想追求年薪3K+的基础上，还应该\r\n                                打好基础...', '1', '2016-06-25 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('1EF1D325846640D1B370D94676927845', '深入浅出到底正不正确', '我也不知道到底对不对其实生命是都要你自己是学习和认识', '1', '2016-06-25 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('2586B311CF7D40D5873BD9C61E1A1B1B', '为什么java那么难学？', '学了java', '1', '2016-07-14 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('3CFA750CA0DA4731AA0A7CFDA9ECAE41', '求问各方大神！！！', '求问各方大神！！！我不是，你朝佛啊世界佛教四大佛教的书法家', '1', '2016-06-25 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('3E1500FF3D8A4D449D6F1A6DF61EEE4E', '理路线？', '理路线？程序员是如何做到凌晨四点还在写代码的。程序员是如何做到凌晨四点还在写代码的。程序员是如何做到凌晨四点还在写代码的。程序员是如何做到凌晨四点还在写代码的。', '1', '2016-06-25 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('405489F6C2CC45D78BAE4571B6134FFE', '请问', '企鹅', '1', '2016-06-25 00:00:00', null, null);
INSERT INTO `question` VALUES ('52F55EA790C544889B541BCA68BBC20D', '收拾收拾吗？', '收拾收拾就可每年都放到手机', '1', '2016-06-25 00:00:00', '10', 'java');
INSERT INTO `question` VALUES ('70ABFD9FA5724D1CBA5F6B43B854CA50', '我要学java', '怎么学java?', '1', '2016-07-14 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('8BF20330AFED49F0958FE75744AEFA88', '好好学习', '天天向上', '1', '2016-07-14 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('9CE775DAEFFF481C81F7B68C9242253A', '说说', '说说', '1', '2016-06-25 00:00:00', null, null);
INSERT INTO `question` VALUES ('A124651455204F06BD437055A3806089', '阿三', '阿德', '1', '2016-11-22 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('A384AF1D92DC420D89F8BDF77088AC7A', '我要好好学习了', '请大神叫我', '1', '2016-07-14 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('C8223E9D3440445DBFC05D555CD810DF', '我要去学JAVA', '我真的想学java', '1', '2016-07-14 00:00:00', null, 'java');
INSERT INTO `question` VALUES ('C991E544990041CFA53EB493D0EF2C8F', 'qqq', 'wwww', '1', '2017-01-27 10:45:06', null, 'java');
INSERT INTO `question` VALUES ('F2DD598696DA4A6D987A3FC2CCD9E881', '11111', '222222', '1', '2016-06-25 00:00:00', null, null);
INSERT INTO `question` VALUES ('FE7218CD97F84F65851BCD07BDEC6EAC', '速度', '速度', '1', '2016-06-25 00:00:00', null, null);
INSERT INTO `question` VALUES ('FE91B3F1CFA6457AAB9BE0F3E9D9D548', '2222', '22222', '1', '2016-06-25 00:00:00', null, null);

-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `refrenceid` char(32) NOT NULL,
  `restitle` varchar(50) DEFAULT NULL,
  `restext` varchar(500) DEFAULT NULL,
  `rescategory` varchar(10) DEFAULT NULL,
  `reskonwge` varchar(50) DEFAULT NULL,
  `rescourse` varchar(10) DEFAULT NULL,
  `filesrc` varchar(100) DEFAULT NULL,
  `fileimgsrc` varchar(100) DEFAULT NULL,
  `uploadauthor` varchar(20) DEFAULT NULL,
  `uploadtime` datetime DEFAULT NULL,
  `downnum` int(8) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('0C13DDFE32254FB0B7E4C57B454CD709', '112', '12', '文档', '12', 'java', 'resources/20170521002842Capture001.png', 'resourcesimg/wendang.png', null, '2017-05-21 00:28:42', '1');
INSERT INTO `resources` VALUES ('4A3B77AAC220442290D0E685F4EB0CCC', 'sss', 'sss', '文档', 'ssss', 'java', 'resources/20170521002538Capture001.png', null, 'geektest', '2017-05-21 00:25:56', '0');

-- ----------------------------
-- Table structure for `tb_subject`
-- ----------------------------
DROP TABLE IF EXISTS `tb_subject`;
CREATE TABLE `tb_subject` (
  `refrenceid` char(32) NOT NULL,
  `subjectTitle` varchar(255) DEFAULT NULL,
  `subjectnandu` varchar(255) DEFAULT NULL,
  `subjectxueke` varchar(255) DEFAULT NULL,
  `subjectzhishidian` varchar(255) DEFAULT NULL,
  `subjectOptionA` varchar(50) DEFAULT NULL,
  `subjectOptionB` varchar(50) DEFAULT NULL,
  `subjectOptionC` varchar(50) DEFAULT NULL,
  `subjectOptionD` varchar(50) DEFAULT NULL,
  `subjectAnswer` varchar(1) DEFAULT NULL,
  `subjectParse` text COMMENT '试题解析',
  `answer1` varchar(10) DEFAULT NULL,
  `answer2` varchar(10) DEFAULT NULL,
  `answer3` varchar(10) DEFAULT NULL,
  `answer4` varchar(10) DEFAULT NULL,
  `mark` int(4) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_subject
-- ----------------------------
INSERT INTO `tb_subject` VALUES ('1', '这是问题1？', '难', 'java', 'java初级知识点1', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难1', 'A', '', '', '', null);
INSERT INTO `tb_subject` VALUES ('2', '这是问题2？', '难', 'java', 'java初级知识点1', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难2', 'A', '', '', '', null);
INSERT INTO `tb_subject` VALUES ('3', '这是问题3？', '难', 'java', 'java初级知识点1', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难3', '', '', '', 'D', null);
INSERT INTO `tb_subject` VALUES ('4', '这是问题4？', '一般', 'java', 'java初级知识点2', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难4', 'A', '', '', '', null);
INSERT INTO `tb_subject` VALUES ('5', '这是问题5？', '简单', 'java', 'java初级知识点2', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难5', '', '', 'C', '', null);
INSERT INTO `tb_subject` VALUES ('6', '这是问题6？', '难', 'dd', 'java初级知识点3', 'shide', 'bushide', 'buzhidao', 'liangzhong', 'A', '这个题目很难6', '', 'B', '', '', null);

-- ----------------------------
-- Table structure for `useranswer`
-- ----------------------------
DROP TABLE IF EXISTS `useranswer`;
CREATE TABLE `useranswer` (
  `refrenceid` char(32) NOT NULL,
  `qaid` varchar(32) DEFAULT NULL COMMENT '答案ID',
  `uid` char(32) DEFAULT NULL COMMENT '支持人ID',
  `mark` int(2) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useranswer
-- ----------------------------
INSERT INTO `useranswer` VALUES ('08B69E7AD1014AA4B1166904F893ABFD', '52D49C2E0FE1427F90EC485539DE6092', '1', '1');
INSERT INTO `useranswer` VALUES ('199F7AFEE2B546C5B9B8FD0F74AC0BD5', '45AAF8917E2A47A39450B010A8296601', '1', '1');
INSERT INTO `useranswer` VALUES ('23879BC209A54FF4B1676A9C70E9607C', '4D5DFA612A5C4025852896D045233283', '1', '1');
INSERT INTO `useranswer` VALUES ('48E5D9D2477C4E19A40B9CE3C2A6470B', '52F55EA790C544889B541BCA68BBC20F', '1', '1');
INSERT INTO `useranswer` VALUES ('4AF997CEB217408C917CCD7301E09499', 'EBD9F57225E345CB8AD0DD288DA7A017', '1', '1');
INSERT INTO `useranswer` VALUES ('5732B5A0D74F40AA89BDCF29BB36BC83', 'F36BD8B14010486FB459BD5B977C8653', '1', '1');
INSERT INTO `useranswer` VALUES ('70BC4A38715B4D4B8197C9B3AF643CA9', '4606DF29CA864053B23E4CA38DD421C4', '1', '1');
INSERT INTO `useranswer` VALUES ('73479F3FCB0849828EEAAFCD7BA3F049', 'FC9B77B09F4F4A2AA007F0023F699FA0', '1', '1');
INSERT INTO `useranswer` VALUES ('77C8FBA41FDE4DD2BBA261A5C974B982', '45AAF8917E2A47A39450B010A8296601', '5F2658165BBF44B18753C157157EDEE2', '1');
INSERT INTO `useranswer` VALUES ('90D07B7085B843E79A30BD3809A888A6', '45CFF15E85AD40688A72EE227AE57182', '1', '0');
INSERT INTO `useranswer` VALUES ('950664694F24444A954703FEB32A5F3F', '1FE6CF1E91EA49E5AF2F8B3D91A78AE5', '5F2658165BBF44B18753C157157EDEE2', '1');
INSERT INTO `useranswer` VALUES ('99E49CFB68E94954A9620F887626C8CC', '80407D8FDB6C4A7783E7E282A3DF9089', '1', '1');
INSERT INTO `useranswer` VALUES ('C904A11366394140A87B85A54583B912', '52F55EA790C544889B541BCA68BBC20E', '1', '1');
INSERT INTO `useranswer` VALUES ('D22B9EEA83814452843715B562770E4A', '1FE6CF1E91EA49E5AF2F8B3D91A78AE5', '1', '1');
INSERT INTO `useranswer` VALUES ('D53DC7042AF6440FA5F873E6B2253514', 'F36BD8B14010486FB459BD5B977C8653', '2', '0');
INSERT INTO `useranswer` VALUES ('FB13F1742DEC462AB24FBCC461842214', '2B39D0D383DD41A4AE394B900993CD25', '5F2658165BBF44B18753C157157EDEE2', '1');

-- ----------------------------
-- Table structure for `usercontach`
-- ----------------------------
DROP TABLE IF EXISTS `usercontach`;
CREATE TABLE `usercontach` (
  `refrenceid` char(32) NOT NULL,
  `user_id` char(32) DEFAULT NULL,
  `videoid` char(32) DEFAULT NULL,
  `stadynum` int(11) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercontach
-- ----------------------------
INSERT INTO `usercontach` VALUES ('1', '1', '17B85290E5D44146A4061834476D2B7B', '93');
INSERT INTO `usercontach` VALUES ('2', '1', '3FB1502F2EDA4AD9BD8AFD4EF7DC008E', '5');
INSERT INTO `usercontach` VALUES ('3', '1', '037E9EF62077448FAA69453325DF4B8D', '1');
INSERT INTO `usercontach` VALUES ('4', '1', '3CD3545D9E6F4F969A7AC2CD81C4DF01', '1');
INSERT INTO `usercontach` VALUES ('5', '14', '17B85290E5D44146A4061834476D2B7B', '2');
INSERT INTO `usercontach` VALUES ('6', '2', '17B85290E5D44146A4061834476D2B7B', '1');
INSERT INTO `usercontach` VALUES ('7', '3', '17B85290E5D44146A4061834476D2B7B', '13');
INSERT INTO `usercontach` VALUES ('FDECDB526F74469CB17A65884DEDAE1F', '5F2658165BBF44B18753C157157EDEE2', '17B85290E5D44146A4061834476D2B7B', '13');

-- ----------------------------
-- Table structure for `userforum`
-- ----------------------------
DROP TABLE IF EXISTS `userforum`;
CREATE TABLE `userforum` (
  `refrenceid` char(32) NOT NULL,
  `cf_id` char(32) DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userforum
-- ----------------------------
INSERT INTO `userforum` VALUES ('10E724C05A3B4ED8BEEA249DD99DD807', '5', '1');
INSERT INTO `userforum` VALUES ('22466A1F949841988DEB457FBBE28197', '4', '1');
INSERT INTO `userforum` VALUES ('565F518FB0E8437C88B5034E5CA7B690', '4', '3');
INSERT INTO `userforum` VALUES ('65287E3E7ECB4931AC0F8634CECAF180', '1', '2');
INSERT INTO `userforum` VALUES ('89BFB97C079D412B95F40BCCB2595D51', '5', '3');
INSERT INTO `userforum` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF834', '2', '1');

-- ----------------------------
-- Table structure for `userfriend`
-- ----------------------------
DROP TABLE IF EXISTS `userfriend`;
CREATE TABLE `userfriend` (
  `refrenceid` char(32) NOT NULL,
  `uuid` char(32) DEFAULT NULL COMMENT '朋友的id',
  `user_id` char(32) DEFAULT NULL COMMENT '自己的ID',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userfriend
-- ----------------------------
INSERT INTO `userfriend` VALUES ('1BDF6373FCEC4837ADD7FCD3B2659E6D', '13', '1', '2017-05-21 11:05:45');
INSERT INTO `userfriend` VALUES ('20FB0F739032493BBDDABE88159C69EA', '14', '1', '2017-02-04 10:27:33');
INSERT INTO `userfriend` VALUES ('33', '1', '7', '2016-08-26 12:38:32');
INSERT INTO `userfriend` VALUES ('34', '1', '9', '2016-08-26 12:52:54');
INSERT INTO `userfriend` VALUES ('36', '2', '1', '2016-08-27 09:56:27');
INSERT INTO `userfriend` VALUES ('38', '10', '1', '2016-08-27 09:57:37');
INSERT INTO `userfriend` VALUES ('39', '11', '1', '2016-08-27 09:57:59');
INSERT INTO `userfriend` VALUES ('47', '1', '2', '2016-11-22 21:35:45');
INSERT INTO `userfriend` VALUES ('48', '1', '13', '2016-11-24 13:16:45');

-- ----------------------------
-- Table structure for `userknowdge`
-- ----------------------------
DROP TABLE IF EXISTS `userknowdge`;
CREATE TABLE `userknowdge` (
  `refrenceid` char(32) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `knowledgeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userknowdge
-- ----------------------------
INSERT INTO `userknowdge` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF839', '1', '2');
INSERT INTO `userknowdge` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF844', '1', '3');

-- ----------------------------
-- Table structure for `uservideo`
-- ----------------------------
DROP TABLE IF EXISTS `uservideo`;
CREATE TABLE `uservideo` (
  `refrenceid` char(32) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `vid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uservideo
-- ----------------------------
INSERT INTO `uservideo` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF777', '1', 'B49452BC8D3D43079C8C81AF0E2211FF');
INSERT INTO `uservideo` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF889', '1', '9766BCB3605E455BB7699FC316BB7895');
INSERT INTO `uservideo` VALUES ('A6CA05B9D40D49A1BD82A2D6F53DF999', '1', '3CD3545D9E6F4F969A7AC2CD81C4DF01');

-- ----------------------------
-- Table structure for `video`
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `refrenceid` char(32) NOT NULL,
  `zhishidianID` varchar(20) DEFAULT NULL,
  `xueke` varchar(32) DEFAULT NULL,
  `videoName` varchar(50) DEFAULT NULL,
  `videoSrc` varchar(100) DEFAULT NULL,
  `videoImgsrc` varchar(100) DEFAULT NULL,
  `videoUptime` datetime DEFAULT NULL,
  `videoUpwriter` varchar(50) DEFAULT NULL,
  `videoIntegral` varchar(20) DEFAULT NULL,
  `videoText` varchar(400) DEFAULT NULL,
  `stadynum` int(8) DEFAULT NULL,
  `mark` int(6) DEFAULT NULL,
  PRIMARY KEY (`refrenceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('00997F9B3EBD44B0A184075BCD16F050', null, null, null, null, null, '2017-02-05 21:20:38', 'geektest', null, null, '0', null);
INSERT INTO `video` VALUES ('037E9EF62077448FAA69453325DF4B8D', 'java初级知识点1', 'java', 'java基础1', 'video/B02F632D4CA0407CB122FDAD10540688_5.mp4', 'video_image/853CD321DC9B4E23AFA3AAAD7AAC0B48_51.jpg', '2016-06-30 15:50:26', 'admin', '88', 'good', '4', '1');
INSERT INTO `video` VALUES ('0E1BE668569A401C9C6A99A2FCFD8BF4', 'java多线程', 'java', 'java精华视频', 'video/EBA0E6866CC04577B0BE008E3FB351F7_2.mp4', 'video_image/513554F15D524CDBA60632DD63C61218_28.jpg', '2016-07-14 00:40:48', 'lsj', 'easy', '很好的一个课程，我们都必须要学习', '1', '2');
INSERT INTO `video` VALUES ('1390E7CB39E04EF295F5C01606137E2D', 'java初级知识点2', '后端', '后端开发基础', 'video/C586E740735C4B79ACFB3EA0FC364E58_2-2.mp4', 'video_image/9C347D21829E47E8B22F646EBEE9D614_12.jpg', '2016-07-17 14:57:58', 'lsj', 'easy', '这是后端开发的基础知识', '0', '3');
INSERT INTO `video` VALUES ('17B85290E5D44146A4061834476D2B7B', 'java初级', 'java', 'Java编程基础知识入门', 'video/D8C56D2DB0044420B9B5C43582592AC9_2.mp4', 'video_image/1ED43B4AF78440DBA86C2FDC79F137C8_16.jpg', '2016-06-30 15:49:51', 'admin', '88', '这是学习计算机进制的很好的一门课程，该课程从最基础的的进制转化开始讲解，很适合初学者来学习。', '251', '4');
INSERT INTO `video` VALUES ('30ABDC36BD1F4DA995B50D1C3623A8E1', 'java初级知识点1', '前端', 'java前端基础知识', 'video/1E25EF866D284981B9C690AC4F7D390E_2-2.mp4', 'video_image/035D62B65AC346418F517084E52319E7_30.jpg', '2016-07-17 14:53:08', 'lsj', 'easy', '这是学习java前端的重要的也是基本的知识点', '0', '5');
INSERT INTO `video` VALUES ('3CD3545D9E6F4F969A7AC2CD81C4DF01', 'JSP与servlet', 'java', 'java基础3', 'video/7DDE784C79124DE3A8653C5778387AE3_5.mp4', 'video_image/D00F50F81D954F73AFDFB7AADB2CAA74_10.jpg', '2016-06-28 14:14:17', 'lsj', '4', '5', '23', '6');
INSERT INTO `video` VALUES ('3E90F6A18B6D43E4BB9E02882A1173D4', 'java初级知识点2', '后端', '后端开发进阶', 'video/3DD4E3FE390C491C81CCAD7B2F0903E3_2-2.mp4', 'video_image/09DD073FC7F9444686C12CB138CD0887_11.jpg', '2016-07-17 14:59:24', 'lsj', 'easy', '很好的一个学习视频', '0', '7');
INSERT INTO `video` VALUES ('3FB1502F2EDA4AD9BD8AFD4EF7DC008E', 'java面向对象', 'java', 'java基础4', 'video/2D329BD788D744F09529F796E3EBE31E_5.mp4', 'video_image/5DEB8235630F417CB9D0A7F5D7E9ECD8_67.jpg', '2016-06-30 15:51:33', 'admin', '88', 'sundapao', '17', '8');
INSERT INTO `video` VALUES ('4E8FE918D4D445078C0264CF62A8561A', 'java初级知识点2', 'java', 'java初级的视频', 'video/CF79059E9D194E98AC610DDB0CF73AE5_2.mp4', 'video_image/D3CCE0541B0F46B38B09BDDF57D604CB_27.jpg', '2016-07-14 00:23:28', 'lsj', 'easy', 'ttttrrrrrr', '0', '9');
INSERT INTO `video` VALUES ('5D7AFAEA723C4E4D9E54E8311CB33046', 'java初级知识点1', '前端', 'Ajax交互', 'video/24D45B75AFD147D59F7614B2985907A1_2-2.mp4', 'video_image/D0294192AFC94ABBBA903142820F4817_37.jpg', '2016-07-17 14:54:35', 'lsj', 'easy', '这是交互中间一个很重要的知识点', '0', '10');
INSERT INTO `video` VALUES ('67E7DD6AF93645DF98FC3383F773CED7', 'pppp', '前端', 'pppp', 'video/20161117213029_1111.jpg', 'video_image/20161117213029_1111.jpg', '2016-11-17 21:30:29', null, '容易', 'pppp', '0', '0');
INSERT INTO `video` VALUES ('9766BCB3605E455BB7699FC316BB7895', 'java初级知识点3', 'java', 'java基础5', 'video/4B35202FD2A54D6FB17C4F689DD5F941_2.mp4', 'video_image/699342D352AD4FAAA62E84FAB53402F4_6.jpg', '2016-06-28 14:12:59', 'admin', '2', '2', '294', '11');
INSERT INTO `video` VALUES ('B13DC06D85B64005ABC45986F7D16C26', 'java初级知识点5', 'java', 'java基础6', 'video/8D199F41EA7A41A3A8909D550147A923_5.mp4', 'video_image/7DA2EC003D71490DA0F76458260FEC91_54.jpg', '2016-06-30 15:49:16', 'admin', '88', '很好', '1', '12');
INSERT INTO `video` VALUES ('B49452BC8D3D43079C8C81AF0E2211FF', 'java初级知识点4', 'java', 'java基础7', 'video/C0A835B017BF4CB6822782B38ED9CE1F_5.mp4', 'video_image/2F502C87C5714DDBB3431FD2F09E0A7F_26.jpg', '2016-06-28 14:15:11', 'admin', '3', '3', '0', '13');
INSERT INTO `video` VALUES ('D1D29FB74E794103AA911E0887B9773A', null, null, null, 'video/20170205212636互联网+.jpg', 'video_image/201702052126362.jpg', '2017-02-05 21:26:37', 'geektest', null, null, '0', null);
INSERT INTO `video` VALUES ('DE71AA4F8C934A2285BE408AC1EE5EE7', '移动', '移动', '移动开发基础', 'video/C4CC0B74A8844E29997FAD2A86AC524D_2-2.mp4', 'video_image/6391ED1AC72944A2BD7DBE552E9123EA_22.jpg', '2016-07-17 14:56:30', 'lsj', 'easy', '这是移动开发的基础知识', '0', '14');
INSERT INTO `video` VALUES ('EB7EA5BAADF246F88339E2190517B39C', 'java初级知识点1', '前端', '前端基础入门', 'video/9621D910CD684FCB9AAB1A8ABAAB1E11_2.mp4', 'video_image/3C78E69E120541858FA1ED84CC3EF936_8.jpg', '2016-07-15 21:48:27', 'lsj', 'easy', '搜索', '0', '15');
INSERT INTO `video` VALUES ('EF4D6BEE6E4D4A3DB00AF637F55E073C', 'java初级知识点2', '后端', 'java后端', 'video/EE58E6046F8A46FEBF4DB8DB8FB73D31_2-2.mp4', 'video_image/1C90B81761844B19A0E9829DF5F2CB99_24.jpg', '2016-07-17 15:18:26', 'lsj', 'easy', '很好的一个视频', '0', '16');
