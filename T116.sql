/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t116`;
CREATE DATABASE IF NOT EXISTS `t116` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t116`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot9n107/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot9n107/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot9n107/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussxinwenxinxi`;
CREATE TABLE IF NOT EXISTS `discussxinwenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息评论表';

DELETE FROM `discussxinwenxinxi`;
INSERT INTO `discussxinwenxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(71, '2021-05-12 12:57:24', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(72, '2021-05-12 12:57:24', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(73, '2021-05-12 12:57:24', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(74, '2021-05-12 12:57:24', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(75, '2021-05-12 12:57:24', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(76, '2021-05-12 12:57:24', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `jizhe`;
CREATE TABLE IF NOT EXISTS `jizhe` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='记者';

DELETE FROM `jizhe`;
INSERT INTO `jizhe` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `touxiang`, `youxiang`, `shouji`, `sfsh`, `shhf`) VALUES
	(21, '2021-05-12 12:57:24', '记者1', '123456', '姓名1', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang1.jpg', '773890001@qq.com', '13823888881', '是', ''),
	(22, '2021-05-12 12:57:24', '记者2', '123456', '姓名2', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang2.jpg', '773890002@qq.com', '13823888882', '是', ''),
	(23, '2021-05-12 12:57:24', '记者3', '123456', '姓名3', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang3.jpg', '773890003@qq.com', '13823888883', '是', ''),
	(24, '2021-05-12 12:57:24', '记者4', '123456', '姓名4', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang4.jpg', '773890004@qq.com', '13823888884', '是', ''),
	(25, '2021-05-12 12:57:24', '记者5', '123456', '姓名5', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang5.jpg', '773890005@qq.com', '13823888885', '是', ''),
	(26, '2021-05-12 12:57:24', '记者6', '123456', '姓名6', '男', 'http://localhost:8080/springboot9n107/upload/jizhe_touxiang6.jpg', '773890006@qq.com', '13823888886', '是', '');

DROP TABLE IF EXISTS `shenpiyuan`;
CREATE TABLE IF NOT EXISTS `shenpiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='审批员';

DELETE FROM `shenpiyuan`;
INSERT INTO `shenpiyuan` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `touxiang`, `youxiang`, `dianhua`) VALUES
	(31, '2021-05-12 12:57:24', '审批员1', '123456', '姓名1', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang1.jpg', '773890001@qq.com', '13823888881'),
	(32, '2021-05-12 12:57:24', '审批员2', '123456', '姓名2', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang2.jpg', '773890002@qq.com', '13823888882'),
	(33, '2021-05-12 12:57:24', '审批员3', '123456', '姓名3', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang3.jpg', '773890003@qq.com', '13823888883'),
	(34, '2021-05-12 12:57:24', '审批员4', '123456', '姓名4', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang4.jpg', '773890004@qq.com', '13823888884'),
	(35, '2021-05-12 12:57:24', '审批员5', '123456', '姓名5', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang5.jpg', '773890005@qq.com', '13823888885'),
	(36, '2021-05-12 12:57:24', '审批员6', '123456', '姓名6', '男', 'http://localhost:8080/springboot9n107/upload/shenpiyuan_touxiang6.jpg', '773890006@qq.com', '13823888886');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1712191892390 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1712191580141, '2024-04-04 00:46:19', 11, 54, 'xinwenxinxi', '新闻标题4', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian4.jpg'),
	(1712191882186, '2024-04-04 00:51:21', 11, 56, 'xinwenxinxi', '新闻标题6', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian6.jpg'),
	(1712191892389, '2024-04-04 00:51:32', 11, 52, 'xinwenxinxi', '新闻标题2', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian2.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(2, 1, 'admin', 'users', '管理员', 'tseq0xxubf2gwb8249dofswnr0etom2n', '2024-04-04 00:43:59', '2024-04-04 02:07:04'),
	(3, 11, '用户1', 'yonghu', '用户', 'lagkyyzh46xilo7nb1e4c17v8j4xbji3', '2024-04-04 00:46:02', '2024-04-04 01:46:03'),
	(4, 21, '记者1', 'jizhe', '记者', 'orpcgcw7t04njdn0xc7f56w9p2tlt8ga', '2024-04-04 00:50:40', '2024-04-04 01:50:41'),
	(5, 31, '审批员1', 'shenpiyuan', '审批员', 'lwjvs8olit6n3wzs82erhustm7nd6xmg', '2024-04-04 00:51:01', '2024-04-04 01:51:01');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-12 12:57:24');

DROP TABLE IF EXISTS `xinwenfenlei`;
CREATE TABLE IF NOT EXISTS `xinwenfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='新闻分类';

DELETE FROM `xinwenfenlei`;
INSERT INTO `xinwenfenlei` (`id`, `addtime`, `xinwenfenlei`) VALUES
	(41, '2021-05-12 12:57:24', '新闻分类1'),
	(42, '2021-05-12 12:57:24', '新闻分类2'),
	(43, '2021-05-12 12:57:24', '新闻分类3'),
	(44, '2021-05-12 12:57:24', '新闻分类4'),
	(45, '2021-05-12 12:57:24', '新闻分类5'),
	(46, '2021-05-12 12:57:24', '新闻分类6');

DROP TABLE IF EXISTS `xinwenxinxi`;
CREATE TABLE IF NOT EXISTS `xinwenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenbiaoti` varchar(200) NOT NULL COMMENT '新闻标题',
  `xinwenfenlei` varchar(200) NOT NULL COMMENT '新闻分类',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `xinwenshipin` varchar(200) DEFAULT NULL COMMENT '新闻视频',
  `sucailaiyuan` varchar(200) DEFAULT NULL COMMENT '素材来源',
  `faburiqi` datetime DEFAULT NULL COMMENT '发布日期',
  `xinwenneirong` longtext COMMENT '新闻内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `xinwenxinxi`;
INSERT INTO `xinwenxinxi` (`id`, `addtime`, `xinwenbiaoti`, `xinwenfenlei`, `fengmian`, `xinwenshipin`, `sucailaiyuan`, `faburiqi`, `xinwenneirong`, `zhanghao`, `xingming`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicknum`) VALUES
	(51, '2021-05-12 12:57:24', '新闻标题1', '新闻分类1', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian1.jpg', '', '素材来源1', '2021-05-12 20:57:24', '新闻内容1', '账号1', '姓名1', '是', '', 1, 1, 2),
	(52, '2021-05-12 12:57:24', '新闻标题2', '新闻分类2', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian2.jpg', '', '素材来源2', '2021-05-12 20:57:24', '新闻内容2', '账号2', '姓名2', '是', '', 2, 2, 5),
	(53, '2021-05-12 12:57:24', '新闻标题3', '新闻分类3', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian3.jpg', '', '素材来源3', '2021-05-12 20:57:24', '新闻内容3', '账号3', '姓名3', '是', '', 3, 3, 5),
	(54, '2021-05-12 12:57:24', '新闻标题4', '新闻分类4', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian4.jpg', '', '素材来源4', '2021-05-12 20:57:24', '新闻内容4', '账号4', '姓名4', '是', '', 4, 4, 7),
	(55, '2021-05-12 12:57:24', '新闻标题5', '新闻分类5', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian5.jpg', '', '素材来源5', '2021-05-12 20:57:24', '新闻内容5', '账号5', '姓名5', '是', '', 5, 5, 5),
	(56, '2021-05-12 12:57:24', '新闻标题6', '新闻分类6', 'http://localhost:8080/springboot9n107/upload/xinwenxinxi_fengmian6.jpg', '', '素材来源6', '2021-05-12 20:57:24', '新闻内容6', '账号6', '姓名6', '是', '', 6, 6, 8);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `xingbie`, `touxiang`, `youxiang`, `shouji`) VALUES
	(11, '2021-05-12 12:57:24', '用户1', '123456', '姓名1', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang1.jpg', '773890001@qq.com', '13823888881'),
	(12, '2021-05-12 12:57:24', '用户2', '123456', '姓名2', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang2.jpg', '773890002@qq.com', '13823888882'),
	(13, '2021-05-12 12:57:24', '用户3', '123456', '姓名3', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang3.jpg', '773890003@qq.com', '13823888883'),
	(14, '2021-05-12 12:57:24', '用户4', '123456', '姓名4', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang4.jpg', '773890004@qq.com', '13823888884'),
	(15, '2021-05-12 12:57:24', '用户5', '123456', '姓名5', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang5.jpg', '773890005@qq.com', '13823888885'),
	(16, '2021-05-12 12:57:24', '用户6', '123456', '姓名6', '男', 'http://localhost:8080/springboot9n107/upload/yonghu_touxiang6.jpg', '773890006@qq.com', '13823888886');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
