/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : lablog

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-29 11:14:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pic` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_title_unique` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '1', '哎呦，法国5:2大破冰岛', '北京时间7月4日凌晨3时，东道主法国队坐镇法兰西体育场与冰岛争夺最后一张欧洲杯四强门票。格列兹曼两传一射，吉鲁两射一传，帕耶传射建功，博格巴头球破门，西格索尔松和比亚纳松分别进球，洛里奉献神扑。最终，法国5-2大胜冰岛，搭上四强末班车，法国将在半决赛对阵德国。', '1', '2016-07-04 09:37:15', '2016-07-04 09:37:15', 'a8461d50bd2d7cb4031d7c995bcc621a.jpg');
INSERT INTO `article` VALUES ('2', '3', '1', '如何编写批处理文件', '步骤\r\n注意:Linux 系统下的解决方案为 shell 脚本，而非批处理文件。想要了解如何在 Linux 系统下编写 shell 脚本，请参阅这份指南。\r\n\r\n1\r\n打开记事本程序。记事本程序可用来以文本文件格式编写代码，并将写好的代码以批处理文件格式保存。单击“开始”→“应用程序”→“记事本”，或在运行对话框中输入 notepad 打开程序。\r\n广告\r\n2\r\n学习一些基本的批处理命令。批处理文件需要运行一系列 DOS 命令，因此批处理文件的命令与 DOS 命令较为相似。以下是一些较为重要的命令：\r\nECHO - 隐藏通常显示的文字\r\n', '2', '2016-07-05 04:01:36', '2016-07-05 05:33:48', '');
INSERT INTO `article` VALUES ('5', '3', '1', '细述Web技术与Native App共存的这10年', '如果说以前的微信公众号还是一个媒体化的平台，那么2016年的公众号会有一种新的形态，叫应用号。应用号预示着比公众号更强大的功能、更优质的体验以及更丰富的服务。应用号的出现是微信产品的一次重大升级，无论是为了体现用户价值观？还是追求产品商业化？作为一名技术人员，我不想过多讨论，而是更愿意从技术的角度来分析一些其中Web技术的发展。\r\n\r\n微信做为一款超级App，有着巨大的入口流量，需要不断的产生动态的内容，Web技术在微信中一直发挥中重要的作用。如果说公众号还是标准Web技术＋简单桥接扩展，那么在应用号中，Web技术将依靠更强大的Web执行容器在微信中发挥更大的作用。我们可以来看看在微信中Web与Native技术的结合过程，从嵌入系统Webview, 到X5增强浏览器引擎，到功能扩展的JS-SDK，再到刚刚发布的weUI，再到应用号。微信团队一直推进着Web技术在Native App中融合与发展。\r\n\r\n随着移动设备的快速更新换代，以HTML5为代表的Web技术在Native App中有了越来越多的应用场景。一方面是Native App开发团队在保证功能和性能的同时，需要提高开发效率，降低运营成本；另一方面是App用户在满足需求和体验的同时，需要更快的获取动态的内容；这些都需要Web技术在App开发中发挥越来越多的作用和价值。但这种价值绝对不能称为脱离或颠覆。在今天，更多的是“融合”！\r\n\r\n我从06年开始做了10年浏览器引擎和跨平台App引擎。见证了这10年来，Web技术在Native App中不断的应用和发展。从功能机到智能机，从k-java到移动App，从WebBrowser到Webkit，我们可以将Web技术在Native App中的发展分为5个阶段，内置、嵌入、桥接、混合、融合。', '4,5', '2016-07-05 13:52:18', '2016-07-05 13:52:18', '');
INSERT INTO `article` VALUES ('6', '3', '2', 'Laravel 五岁了', '五年前（2011年6月11日）的今天，Taylor Otwell 将 Laravel 带到了这个世界！\r\n\r\n下面摘抄了部分原文：点这里看完整的原文\r\n\r\nI\'ve been working on this framework for about 7 months. I\'ve worked really hard to make it powerful, yet accessible. I set out to launch with documentation as good as CodeIgniter from day one, and I think we did. The syntax is intuitive and expressive.\r\n从此，Laravel 的时代降临了！\r\n\r\n正如所有新生儿一样，Laravel 起初也是很简单的，把所有源码翻一遍也就一顿饭功夫。:)\r\n\r\n初次相见\r\n\r\n2012 年中旬左右，为了帮朋友做一个网站后台，我希望找一个能够利用 PHP5 新特性的 PHP 框架，这时遇到了 Laravel 。其实在这之前其实还研究过 Kohana，不幸的是，Kohana 背后的创始人和团队没有能够一直坚持下来。\r\n\r\n一边做项目，一边翻 Laravel 的源码，项目进展很快，Laravel 的源码也被翻了个烂熟。那时 Laravel 还是 3.x 版本。\r\n\r\n时间很快到了十月份，项目完成了。不过回想用 Laravel 开发的这段时间，遇到的很多问题找不到英文资料，更别提中文资料了。\r\n\r\ngoLaravel 诞生\r\n\r\nLaravel 中文资料少，就连官方文档也没有中文翻译，遂决定将 Laravel 文档翻译成中文，把好东西与大家分享。\r\n\r\n由于当时 Laravel 很小，文档少，因此也没花太多时间就将文档翻译完了。\r\n\r\n接下来需要做一个网站来存放文档，还需要一个域名让大家能够访问啊。网站好做，在 Laravel 官网的基础上改了改，域名该用什么有点犯难了。\r\n\r\n当时对 cn 域名很不喜欢，就想注册一个 com 的。说来也巧，有一天洗头的时候不经意看到有一瓶多芬的沐浴乳，上面的广告语是“go fresh“，好！就搞个“go laravel” 吧！于是，golaravel.com 就诞生了。\r\n\r\n生日快乐，Happy Birthday！\r\n\r\n时间总是过得很快，转眼 Laravel 五岁了，而我也已经接触 Laravel 有四个年头了，golaravel.com 到今年十月份也要四岁了。\r\n\r\n祝福 Laravel 下一个五年能够做得更好！', '6,7', '2016-07-06 15:54:48', '2016-07-06 15:54:48', '3fcafd9a67a3884c8cd266ba755e9ed0.jpg');

-- ----------------------------
-- Table structure for `article_status`
-- ----------------------------
DROP TABLE IF EXISTS `article_status`;
CREATE TABLE `article_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `art_id` int(11) NOT NULL,
  `view_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of article_status
-- ----------------------------
INSERT INTO `article_status` VALUES ('1', '1', '13');
INSERT INTO `article_status` VALUES ('2', '2', '2');
INSERT INTO `article_status` VALUES ('4', '5', '1');
INSERT INTO `article_status` VALUES ('5', '6', '1');

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `as_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_cate_name_unique` (`cate_name`),
  UNIQUE KEY `category_as_name_unique` (`as_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '体育', 'bl_sport', '0', '体育', '体育', '不错哦', '2016-07-04 09:35:28', '2016-07-04 09:35:28');
INSERT INTO `category` VALUES ('2', '娱乐', 'bl_ent', '0', '娱乐', '娱乐', '娱乐', '2016-07-04 09:35:45', '2016-07-04 09:35:45');
INSERT INTO `category` VALUES ('3', '技术', 'bl_it', '0', '技术', '技术', '技术', '2016-07-05 04:00:48', '2016-07-05 04:00:48');

-- ----------------------------
-- Table structure for `links`
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of links
-- ----------------------------

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_16_082647_create_category_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_16_083845_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_26_102905_create_article_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_26_102914_create_article_status_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_27_025551_remove_article_field_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_27_025700_create_tags_table', '1');
INSERT INTO `migrations` VALUES ('2015_04_03_150623_create_systems_table', '1');
INSERT INTO `migrations` VALUES ('2015_05_13_093653_add_pic_article_table', '1');
INSERT INTO `migrations` VALUES ('2015_05_25_062537_add_info_users_table', '1');
INSERT INTO `migrations` VALUES ('2015_06_11_080023_create_comments_table', '1');
INSERT INTO `migrations` VALUES ('2015_07_07_113118_edit_comments_table', '1');
INSERT INTO `migrations` VALUES ('2015_07_13_075347_edit_user_table', '1');
INSERT INTO `migrations` VALUES ('2015_07_18_082904_create_navigation_table', '1');
INSERT INTO `migrations` VALUES ('2015_09_03_165339_delete_comments_table', '1');
INSERT INTO `migrations` VALUES ('2015_09_03_165509_edit_article_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_12_145600_edit_navigation_table', '1');
INSERT INTO `migrations` VALUES ('2015_11_13_023030_create_links_table', '1');

-- ----------------------------
-- Table structure for `navigation`
-- ----------------------------
DROP TABLE IF EXISTS `navigation`;
CREATE TABLE `navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sequence` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of navigation
-- ----------------------------

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `systems`
-- ----------------------------
DROP TABLE IF EXISTS `systems`;
CREATE TABLE `systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate` int(11) NOT NULL DEFAULT '0',
  `system_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `systems_system_name_unique` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of systems
-- ----------------------------
INSERT INTO `systems` VALUES ('1', '1', 'title', '网站标题');
INSERT INTO `systems` VALUES ('2', '1', 'subheading', '副标题');
INSERT INTO `systems` VALUES ('3', '1', 'put_on_record', '国安 00009');
INSERT INTO `systems` VALUES ('4', '1', 'all_ow_access', '1');
INSERT INTO `systems` VALUES ('5', '1', 'allow_comments', '1');
INSERT INTO `systems` VALUES ('6', '1', 'seo_key', 'seo 关键字');
INSERT INTO `systems` VALUES ('7', '1', 'seo_desc', 'seo 描述');
INSERT INTO `systems` VALUES ('8', '1', 'copyright', '版权申明');

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', '欧洲杯', '1');
INSERT INTO `tags` VALUES ('2', '批处理', '2');
INSERT INTO `tags` VALUES ('3', '测试新闻', '4');
INSERT INTO `tags` VALUES ('4', 'web', '1');
INSERT INTO `tags` VALUES ('5', 'app', '1');
INSERT INTO `tags` VALUES ('6', 'Laravel', '1');
INSERT INTO `tags` VALUES ('7', 'php', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `desc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'admin@admin.com', '$2y$10$5Zu5k9iidglW0SV3/vEXUOF6Ig23Ewkaojq4aokm8stWCuWmqE6wG', 'SwibJ0hV4lPmneaRAhGccXjtM4lFfG3livJ6h52ltzbkBm2MwivpYi4JzqyW', '2016-07-04 08:50:31', '2016-07-04 09:48:43', '6d8c9b0783873c750f188174f6c168a3.jpeg', '管理员');
INSERT INTO `users` VALUES ('2', 'zxx123', 'zxx123@qq.com', '$2y$10$JFF/w0WBjkvvjmc4S72X5OogYpz6gofV1EtLY5FhCFyGs5Dpk5tha', '2iDzoQUkrG1nmNbXBptjYbc0UI20LygMzM5VJCVIIxg5rOWrcXqhWm7yiJbX', '2016-07-04 09:25:11', '2016-07-11 11:54:28', '3a870cfe92920c33e4e3a23840205e1d.jpg', 'test user sddddd');
