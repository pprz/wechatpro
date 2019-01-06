/*
Navicat MySQL Data Transfer

Source Server         : neo
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : zerg

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2019-01-07 00:06:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL COMMENT '文章名称',
  `publish_time` int(11) DEFAULT NULL COMMENT '发布时间',
  `article_content` text NOT NULL COMMENT '文章内容',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '测试文章标题1', '1545557142', '新时代全军军以下部队新营区建设的标准是什么？近日，军委后勤保障部出台军以下部队营区基地化标准化建设技术《指南》（试行），为全军正在进行的新营房建设试点提供基本遵循，军委后勤保障部军事设施建设局负责人表示，《指南》旨在打造军事功能完备、规划部署集中、保障弹性适度、管理规范高效，适应我军由大向强跨越式发展的新型部队营区，推动军事设施建管模式创新，全面提升军事设施实战化保障能力、保障效能和资源配置标准化程度，为建设世界一流军队提供可靠坚实支撑。</p><p style=\"text-indent: 2em;text-align: justify;margin-top: 15px;line-height: 1.75em;\">营区基地化标准化建设，是世界各国营区发展的新趋向，是适应联合作战和军队力量编成改革的必然要求，是推进粗放建设、自我保障向体系建设、集约保障转变的基本途径，是聚焦备战打赢、实现强军目标的科学选择。为加强营区基地化标准化建设试点工作业务指导，军委后勤保障部军事设施建设局围绕推动营区建设由住用保障向战备保障、由分散布置向集中部署，由单一功能向综合集成、由简单粗放向精准高效的方式转化，总结传承我军营区营房建设发展实践经验，集中探索新时代营区建设特点规律，在专家座谈研讨、明确任务分工、现地专题调研、并行研编撰写、集中统稿汇总、广泛征求意见基础上，出台技术《指南》。</p><p style=\"text-indent: 2em;text-align: justify;margin-top: 15px;line-height: 1.75em;\">《指南》聚焦新时代强军目标，着力校准营区建设新理念新方法，满足联合作战、联合训练、联合保障要求，适应部队模块化、合成化编成特点。在军事功能完备方面，配套完善作战支撑、训练试验、勤务保障、办公住用、安全防护、军事职业教育和军营文化等设施，推动营区建设由保障住用向保障战备方式转变；在规划部署集中方面，适应我军&nbsp;战略布局调整和部队移防换防需要，聚力收缩保障摊子和优化营区布局体系，推动营区建设由分散布置向集中部署方式转变；在保障弹性适度方面，拓展营区保障弹性，预留发展用地、整合归并同类设施、共建共享保障资源、采用先进结构形式，做到营区容量动态兼容、功能集成弹性适度，推动营区建设由单一功能向综合集成方式转变；在管理规范高效方面，坚持勤俭建设，强化按标准抓建，创新建管模式，推动营区建设由简单粗放向精准高效方式转变。</p><p style=\"text-indent: 2em;text-align: justify;margin-top: 15px;line-height: 1.75em;\">《指南》提出了按照“能力+任务”统需求、“分区+组团”搞规划、“标准+幅度”定规模、“固定+移动”搞建设、“刚性+柔性”推试点的原则要求，明确了营区规划和建设方案论证技术要点，为营区基地化标准化试点工作提供了技术解决方案。下一步，军委后勤保障部军事设施建设局还将开展宣贯培训和转化应用，分类制定建设方案，统筹搞好营区规划，强化项目全过程管理，深化特点规律研究，探索可复制可推广的样板经验，完善修订后推广全军，为全面推进营区基地化标准化建设厚植理论基础。</p><p><br></p>', null, '3', '/articles/articles1.jpg', '1', null, null, null, '13');
INSERT INTO `article` VALUES ('3', '测试文章标题3', null, '测试文章内容3', null, '2', '/articles/articles2.jpg', '1', null, null, null, '10');
INSERT INTO `article` VALUES ('4', '测试文章标题4', null, '测试文章内容4', null, '7', '/articles/articles3.jpg', '1', null, null, null, '31');
INSERT INTO `article` VALUES ('5', '测试文章标题5', null, '测试文章内容5', null, '6', '/articles/articles4.jpg', '1', null, null, null, '32');
INSERT INTO `article` VALUES ('6', '测试文章标题6', null, '测试文章内容6', null, '2', '/articles/articles5.jpg', '1', null, null, null, '33');
INSERT INTO `article` VALUES ('7', '测试文章标题7', null, '测试文章内容7', null, '5', '/articles/articles6.jpg', '1', null, null, null, '53');
INSERT INTO `article` VALUES ('8', '测试文章标题8', null, '测试文章内容8', null, '3', '/articles/articles7.jpg', '1', null, null, null, '68');
INSERT INTO `article` VALUES ('9', '测试文章标题9', null, '测试文章内容9', null, '2', '/articles/articles8.jpg', '1', null, null, null, '36');
INSERT INTO `article` VALUES ('10', '测试文章标题10', null, '测试文章内容10', null, '2', '/articles/articles9.jpg', '1', null, null, null, '37');
INSERT INTO `article` VALUES ('11', '测试文章标题11', null, '测试文章内容11', null, '2', '/articles/articles10.jpg', '1', null, null, null, '38');
INSERT INTO `article` VALUES ('12', '测试文章标题12', null, '测试文章内容12', null, '2', '/articles/articles11.jpg', '1', null, null, null, '39');
INSERT INTO `article` VALUES ('13', '测试文章标题13', null, '测试文章内容13', null, '2', '/articles/articles12.jpg', '1', null, null, null, '40');
INSERT INTO `article` VALUES ('14', '测试文章标题14', null, '测试文章内容14', null, '7', '/articles/articles13.png', '1', null, null, null, '41');
INSERT INTO `article` VALUES ('15', '测试文章标题15', null, '测试文章内容15', null, '7', '/articles/articles14.jpg', '1', null, null, null, '42');
INSERT INTO `article` VALUES ('16', '测试文章标题16', null, '测试文章内容16', null, '7', '/articles/articles15.jpg', '1', null, null, null, '43');
INSERT INTO `article` VALUES ('17', '测试文章标题17', null, '测试文章内容17', null, '3', '/product-vg@3.png', '1', null, null, null, '69');
INSERT INTO `article` VALUES ('18', '测试文章标题18', null, '测试文章内容18', null, '4', '/product-fry@1.png', '1', null, null, null, '44');
INSERT INTO `article` VALUES ('19', '测试文章标题19', null, '测试文章内容19', null, '4', '/product-fry@2.png', '1', null, null, null, '45');
INSERT INTO `article` VALUES ('20', '测试文章标题20', null, '测试文章内容20', null, '4', '/product-fry@3.png', '1', null, null, null, '46');
INSERT INTO `article` VALUES ('21', '测试文章标题21', null, '测试文章内容21', null, '6', '/product-tea@2.png', '1', null, null, null, '47');
INSERT INTO `article` VALUES ('22', '测试文章标题22', null, '测试文章内容22', null, '6', '/product-tea@3.png', '1', null, null, null, '48');
INSERT INTO `article` VALUES ('23', '测试文章标题23', null, '测试文章内容23', null, '5', '/product-cake-a@3.png', '1', null, null, null, '54');
INSERT INTO `article` VALUES ('24', '测试文章标题24', null, '测试文章内容24', null, '5', '/product-cake-a@4.png', '1', null, null, null, '55');
INSERT INTO `article` VALUES ('25', '测试文章标题25', null, '测试文章内容25', null, '5', '/product-cake@1.png', '1', null, null, null, '52');
INSERT INTO `article` VALUES ('26', '测试文章标题26', null, '测试文章内容26', null, '2', '/product-dryfruit@8.png', '1', null, null, null, '56');
INSERT INTO `article` VALUES ('27', '测试文章标题27', null, '测试文章内容27', null, '4', '/product-fry@4.png', '1', null, null, null, '57');
INSERT INTO `article` VALUES ('28', '测试文章标题28', null, '测试文章内容28', null, '4', '/product-fry@5.png', '1', null, null, null, '58');
INSERT INTO `article` VALUES ('29', '测试文章标题29', null, '测试文章内容29', null, '7', '/product-rice@5.png', '1', null, null, null, '59');
INSERT INTO `article` VALUES ('30', '测试文章标题30', null, '测试文章内容30', null, '7', '/product-rice@6.png', '1', null, null, null, '14');
INSERT INTO `article` VALUES ('31', '测试文章标题31', null, '测试文章内容31', null, '7', '/product-rice@7.png', '1', null, null, null, '60');
INSERT INTO `article` VALUES ('32', '测试文章标题32', null, '测试文章内容32', null, '3', '/product-vg@4.png', '1', null, null, null, '66');
INSERT INTO `article` VALUES ('33', '测试文章标题33', null, '测试文章内容33', null, '3', '/product-vg@5.png', '1', null, null, null, '67');

-- ----------------------------
-- Table structure for article_image
-- ----------------------------
DROP TABLE IF EXISTS `article_image`;
CREATE TABLE `article_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '图片排序序号',
  `article_id` int(11) NOT NULL COMMENT '文章id，外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_image
-- ----------------------------
INSERT INTO `article_image` VALUES ('20', '19', null, '1', '11');
INSERT INTO `article_image` VALUES ('21', '20', null, '2', '11');
INSERT INTO `article_image` VALUES ('22', '21', null, '3', '11');
INSERT INTO `article_image` VALUES ('23', '22', null, '4', '11');
INSERT INTO `article_image` VALUES ('24', '23', null, '5', '11');
INSERT INTO `article_image` VALUES ('25', '24', null, '6', '11');
INSERT INTO `article_image` VALUES ('26', '25', null, '7', '11');
INSERT INTO `article_image` VALUES ('27', '26', null, '8', '11');
INSERT INTO `article_image` VALUES ('28', '27', null, '9', '11');
INSERT INTO `article_image` VALUES ('29', '28', null, '11', '11');
INSERT INTO `article_image` VALUES ('30', '29', null, '10', '11');
INSERT INTO `article_image` VALUES ('31', '62', null, '12', '11');
INSERT INTO `article_image` VALUES ('32', '63', null, '13', '11');

-- ----------------------------
-- Table structure for article_property
-- ----------------------------
DROP TABLE IF EXISTS `article_property`;
CREATE TABLE `article_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) NOT NULL COMMENT '详情属性',
  `article_id` int(11) NOT NULL COMMENT '文章id，外键',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_property
-- ----------------------------
INSERT INTO `article_property` VALUES ('9', '作者', '杨梅', '11', null, null);
INSERT INTO `article_property` VALUES ('10', '标签', '青梅味 雪梨味 黄桃味 菠萝味', '11', null, null);
INSERT INTO `article_property` VALUES ('11', '出处', '火星', '11', null, null);
INSERT INTO `article_property` VALUES ('12', '作者', '测试作者1', '1', null, null);
INSERT INTO `article_property` VALUES ('13', '标签', '测试标签', '1', null, null);
INSERT INTO `article_property` VALUES ('14', '出处', '测试出处', '1', null, null);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT 'Banner名称，通常作为标识',
  `description` varchar(255) DEFAULT NULL COMMENT 'Banner描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='banner管理表';

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '首页置顶', '首页轮播图', null, null);

-- ----------------------------
-- Table structure for banner_item
-- ----------------------------
DROP TABLE IF EXISTS `banner_item`;
CREATE TABLE `banner_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联image表',
  `key_word` varchar(100) NOT NULL COMMENT '执行关键字，根据不同的type含义不同',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '跳转类型，可能导向商品，可能导向专题，可能导向其他。0，无导向；1：导向商品;2:导向专题',
  `delete_time` int(11) DEFAULT NULL,
  `banner_id` int(11) NOT NULL COMMENT '外键，关联banner表',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='banner子项表';

-- ----------------------------
-- Records of banner_item
-- ----------------------------
INSERT INTO `banner_item` VALUES ('1', '65', '6', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('2', '2', '25', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('3', '3', '11', '1', null, '1', null);
INSERT INTO `banner_item` VALUES ('5', '1', '10', '1', null, '1', null);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `topic_img_id` int(11) DEFAULT NULL COMMENT '外键，关联image表',
  `delete_time` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='商品类目';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('2', '果味', '6', null, null, null);
INSERT INTO `category` VALUES ('3', '蔬菜', '5', null, null, null);
INSERT INTO `category` VALUES ('4', '炒货', '7', null, null, null);
INSERT INTO `category` VALUES ('5', '点心', '4', null, null, null);
INSERT INTO `category` VALUES ('6', '粗茶', '8', null, null, null);
INSERT INTO `category` VALUES ('7', '淡饭', '9', null, null, null);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL COMMENT '图片路径',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 来自本地，2 来自公网',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COMMENT='图片总表';

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('1', '/banner/banner-1a.jpg', '1', null, null);
INSERT INTO `image` VALUES ('2', '/banner/banner-2a.jpg', '1', null, null);
INSERT INTO `image` VALUES ('3', '/banner/banner-3a.jpg', '1', null, null);
INSERT INTO `image` VALUES ('4', '/category-cake.png', '1', null, null);
INSERT INTO `image` VALUES ('5', '/category-vg.png', '1', null, null);
INSERT INTO `image` VALUES ('6', '/category-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('7', '/category-fry-a.png', '1', null, null);
INSERT INTO `image` VALUES ('8', '/category-tea.png', '1', null, null);
INSERT INTO `image` VALUES ('9', '/category-rice.png', '1', null, null);
INSERT INTO `image` VALUES ('10', '/articles/articles2.jpg', '1', null, null);
INSERT INTO `image` VALUES ('13', '/articles/articles1.jpg', '1', null, null);
INSERT INTO `image` VALUES ('14', '/product-rice@6.png', '1', null, null);
INSERT INTO `image` VALUES ('16', '/theme/1@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('17', '/theme/2@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('18', '/theme/3@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('19', '/detail-1@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('20', '/detail-2@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('21', '/detail-3@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('22', '/detail-4@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('23', '/detail-5@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('24', '/detail-6@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('25', '/detail-7@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('26', '/detail-8@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('27', '/detail-9@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('28', '/detail-11@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('29', '/detail-10@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('31', '/articles/articles3.jpg', '1', null, null);
INSERT INTO `image` VALUES ('32', '/articles/articles4.jpg', '1', null, null);
INSERT INTO `image` VALUES ('33', '/articles/articles5.jpg', '1', null, null);
INSERT INTO `image` VALUES ('36', '/articles/articles8.jpg', '1', null, null);
INSERT INTO `image` VALUES ('37', '/articles/articles9.jpg', '1', null, null);
INSERT INTO `image` VALUES ('38', '/articles/articles10.jpg', '1', null, null);
INSERT INTO `image` VALUES ('39', '/articles/articles11.jpg', '1', null, null);
INSERT INTO `image` VALUES ('40', '/articles/articles12.jpg', '1', null, null);
INSERT INTO `image` VALUES ('41', '/articles/articles13.png', '1', null, null);
INSERT INTO `image` VALUES ('42', '/articles/articles14.jpg', '1', null, null);
INSERT INTO `image` VALUES ('43', '/articles/articles15.jpg', '1', null, null);
INSERT INTO `image` VALUES ('44', '/product-fry@1.png', '1', null, null);
INSERT INTO `image` VALUES ('45', '/product-fry@2.png', '1', null, null);
INSERT INTO `image` VALUES ('46', '/product-fry@3.png', '1', null, null);
INSERT INTO `image` VALUES ('47', '/product-tea@2.png', '1', null, null);
INSERT INTO `image` VALUES ('48', '/product-tea@3.png', '1', null, null);
INSERT INTO `image` VALUES ('49', '/theme/1@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('50', '/theme/2@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('51', '/theme/3@theme.jpg', '1', null, null);
INSERT INTO `image` VALUES ('52', '/product-cake@1.png', '1', null, null);
INSERT INTO `image` VALUES ('53', '/products/product6.jpg', '1', null, null);
INSERT INTO `image` VALUES ('54', '/product-cake-a@3.png', '1', null, null);
INSERT INTO `image` VALUES ('55', '/product-cake-a@4.png', '1', null, null);
INSERT INTO `image` VALUES ('56', '/product-dryfruit@8.png', '1', null, null);
INSERT INTO `image` VALUES ('57', '/product-fry@4.png', '1', null, null);
INSERT INTO `image` VALUES ('58', '/product-fry@5.png', '1', null, null);
INSERT INTO `image` VALUES ('59', '/product-rice@5.png', '1', null, null);
INSERT INTO `image` VALUES ('60', '/product-rice@7.png', '1', null, null);
INSERT INTO `image` VALUES ('62', '/detail-12@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('63', '/detail-13@1-dryfruit.png', '1', null, null);
INSERT INTO `image` VALUES ('65', '/banner/banner-4a.jpg', '1', null, null);
INSERT INTO `image` VALUES ('66', '/product-vg@4.png', '1', null, null);
INSERT INTO `image` VALUES ('67', '/product-vg@5.png', '1', null, null);
INSERT INTO `image` VALUES ('68', '/articles/articles7.jpg', '1', null, null);
INSERT INTO `image` VALUES ('69', '/product-vg@3.png', '1', null, null);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL COMMENT '外键，用户id，注意并不是openid',
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `total_price` decimal(6,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:未支付， 2：已支付，3：已发货 , 4: 已支付，但库存不足',
  `snap_img` varchar(255) DEFAULT NULL COMMENT '订单快照图片',
  `snap_name` varchar(80) DEFAULT NULL COMMENT '订单快照名称',
  `total_count` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) DEFAULT NULL,
  `snap_items` text COMMENT '订单其他信息快照（json)',
  `snap_address` varchar(500) DEFAULT NULL COMMENT '地址快照',
  `prepay_id` varchar(100) DEFAULT NULL COMMENT '订单微信支付的预订单id（用于发送模板消息）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL COMMENT '联合主键，订单id',
  `product_id` int(11) NOT NULL COMMENT '联合主键，商品id',
  `count` int(11) NOT NULL COMMENT '商品数量',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_product
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL COMMENT '商品名称',
  `price` decimal(6,2) NOT NULL COMMENT '价格,单位：分',
  `stock` int(11) NOT NULL DEFAULT '0' COMMENT '库存量',
  `delete_time` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '图片来自 1 本地 ，2公网',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL,
  `summary` varchar(50) DEFAULT NULL COMMENT '摘要',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '芹菜 半斤', '0.01', '998', null, '3', '/product-vg@1.png', '1', null, null, null, '13');
INSERT INTO `product` VALUES ('2', '梨花带雨 3个', '0.01', '984', null, '2', '/product-dryfruit@1.png', '1', null, null, null, '10');
INSERT INTO `product` VALUES ('3', '素米 327克', '0.01', '996', null, '7', '/product-rice@1.png', '1', null, null, null, '31');
INSERT INTO `product` VALUES ('4', '红袖枸杞 6克*3袋', '0.01', '998', null, '6', '/product-tea@1.png', '1', null, null, null, '32');
INSERT INTO `product` VALUES ('5', '春生龙眼 500克', '0.01', '995', null, '2', '/product-dryfruit@2.png', '1', null, null, null, '33');
INSERT INTO `product` VALUES ('6', '小红的猪耳朵 120克', '0.01', '997', null, '5', '/product-cake@2.png', '1', null, null, null, '53');
INSERT INTO `product` VALUES ('7', '泥蒿 半斤', '0.01', '998', null, '3', '/product-vg@2.png', '1', null, null, null, '68');
INSERT INTO `product` VALUES ('8', '夏日芒果 3个', '0.01', '995', null, '2', '/product-dryfruit@3.png', '1', null, null, null, '36');
INSERT INTO `product` VALUES ('9', '冬木红枣 500克', '0.01', '996', null, '2', '/product-dryfruit@4.png', '1', null, null, null, '37');
INSERT INTO `product` VALUES ('10', '万紫千凤梨 300克', '0.01', '996', null, '2', '/product-dryfruit@5.png', '1', null, null, null, '38');
INSERT INTO `product` VALUES ('11', '贵妃笑 100克', '0.01', '994', null, '2', '/product-dryfruit-a@6.png', '1', null, null, null, '39');
INSERT INTO `product` VALUES ('12', '珍奇异果 3个', '0.01', '999', null, '2', '/product-dryfruit@7.png', '1', null, null, null, '40');
INSERT INTO `product` VALUES ('13', '绿豆 125克', '0.01', '999', null, '7', '/product-rice@2.png', '1', null, null, null, '41');
INSERT INTO `product` VALUES ('14', '芝麻 50克', '0.01', '999', null, '7', '/product-rice@3.png', '1', null, null, null, '42');
INSERT INTO `product` VALUES ('15', '猴头菇 370克', '0.01', '999', null, '7', '/product-rice@4.png', '1', null, null, null, '43');
INSERT INTO `product` VALUES ('16', '西红柿 1斤', '0.01', '999', null, '3', '/product-vg@3.png', '1', null, null, null, '69');
INSERT INTO `product` VALUES ('17', '油炸花生 300克', '0.01', '999', null, '4', '/product-fry@1.png', '1', null, null, null, '44');
INSERT INTO `product` VALUES ('18', '春泥西瓜子 128克', '0.01', '997', null, '4', '/product-fry@2.png', '1', null, null, null, '45');
INSERT INTO `product` VALUES ('19', '碧水葵花籽 128克', '0.01', '999', null, '4', '/product-fry@3.png', '1', null, null, null, '46');
INSERT INTO `product` VALUES ('20', '碧螺春 12克*3袋', '0.01', '999', null, '6', '/product-tea@2.png', '1', null, null, null, '47');
INSERT INTO `product` VALUES ('21', '西湖龙井 8克*3袋', '0.01', '998', null, '6', '/product-tea@3.png', '1', null, null, null, '48');
INSERT INTO `product` VALUES ('22', '梅兰清花糕 1个', '0.01', '997', null, '5', '/product-cake-a@3.png', '1', null, null, null, '54');
INSERT INTO `product` VALUES ('23', '清凉薄荷糕 1个', '0.01', '998', null, '5', '/product-cake-a@4.png', '1', null, null, null, '55');
INSERT INTO `product` VALUES ('25', '小明的妙脆角 120克', '0.01', '999', null, '5', '/product-cake@1.png', '1', null, null, null, '52');
INSERT INTO `product` VALUES ('26', '红衣青瓜 混搭160克', '0.01', '999', null, '2', '/product-dryfruit@8.png', '1', null, null, null, '56');
INSERT INTO `product` VALUES ('27', '锈色瓜子 100克', '0.01', '998', null, '4', '/product-fry@4.png', '1', null, null, null, '57');
INSERT INTO `product` VALUES ('28', '春泥花生 200克', '0.01', '999', null, '4', '/product-fry@5.png', '1', null, null, null, '58');
INSERT INTO `product` VALUES ('29', '冰心鸡蛋 2个', '0.01', '999', null, '7', '/product-rice@5.png', '1', null, null, null, '59');
INSERT INTO `product` VALUES ('30', '八宝莲子 200克', '0.01', '999', null, '7', '/product-rice@6.png', '1', null, null, null, '14');
INSERT INTO `product` VALUES ('31', '深涧木耳 78克', '0.01', '999', null, '7', '/product-rice@7.png', '1', null, null, null, '60');
INSERT INTO `product` VALUES ('32', '土豆 半斤', '0.01', '999', null, '3', '/product-vg@4.png', '1', null, null, null, '66');
INSERT INTO `product` VALUES ('33', '青椒 半斤', '0.01', '999', null, '3', '/product-vg@5.png', '1', null, null, null, '67');

-- ----------------------------
-- Table structure for product_image
-- ----------------------------
DROP TABLE IF EXISTS `product_image`;
CREATE TABLE `product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_id` int(11) NOT NULL COMMENT '外键，关联图片表',
  `delete_time` int(11) DEFAULT NULL COMMENT '状态，主要表示是否删除，也可以扩展其他状态',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '图片排序序号',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_image
-- ----------------------------
INSERT INTO `product_image` VALUES ('4', '19', null, '1', '11');
INSERT INTO `product_image` VALUES ('5', '20', null, '2', '11');
INSERT INTO `product_image` VALUES ('6', '21', null, '3', '11');
INSERT INTO `product_image` VALUES ('7', '22', null, '4', '11');
INSERT INTO `product_image` VALUES ('8', '23', null, '5', '11');
INSERT INTO `product_image` VALUES ('9', '24', null, '6', '11');
INSERT INTO `product_image` VALUES ('10', '25', null, '7', '11');
INSERT INTO `product_image` VALUES ('11', '26', null, '8', '11');
INSERT INTO `product_image` VALUES ('12', '27', null, '9', '11');
INSERT INTO `product_image` VALUES ('13', '28', null, '11', '11');
INSERT INTO `product_image` VALUES ('14', '29', null, '10', '11');
INSERT INTO `product_image` VALUES ('18', '62', null, '12', '11');
INSERT INTO `product_image` VALUES ('19', '63', null, '13', '11');
INSERT INTO `product_image` VALUES ('20', '19', null, '1', '11');
INSERT INTO `product_image` VALUES ('21', '20', null, '2', '11');
INSERT INTO `product_image` VALUES ('22', '21', null, '3', '11');
INSERT INTO `product_image` VALUES ('23', '22', null, '4', '11');
INSERT INTO `product_image` VALUES ('24', '23', null, '5', '11');
INSERT INTO `product_image` VALUES ('25', '24', null, '6', '11');
INSERT INTO `product_image` VALUES ('26', '25', null, '7', '11');
INSERT INTO `product_image` VALUES ('27', '26', null, '8', '11');
INSERT INTO `product_image` VALUES ('28', '27', null, '9', '11');
INSERT INTO `product_image` VALUES ('29', '28', null, '11', '11');
INSERT INTO `product_image` VALUES ('30', '29', null, '10', '11');
INSERT INTO `product_image` VALUES ('31', '62', null, '12', '11');
INSERT INTO `product_image` VALUES ('32', '63', null, '13', '11');
INSERT INTO `product_image` VALUES ('33', '19', null, '1', '11');
INSERT INTO `product_image` VALUES ('34', '20', null, '2', '11');
INSERT INTO `product_image` VALUES ('35', '21', null, '3', '11');
INSERT INTO `product_image` VALUES ('36', '22', null, '4', '11');
INSERT INTO `product_image` VALUES ('37', '23', null, '5', '11');
INSERT INTO `product_image` VALUES ('38', '24', null, '6', '11');
INSERT INTO `product_image` VALUES ('39', '25', null, '7', '11');
INSERT INTO `product_image` VALUES ('40', '26', null, '8', '11');
INSERT INTO `product_image` VALUES ('41', '27', null, '9', '11');
INSERT INTO `product_image` VALUES ('42', '28', null, '11', '11');
INSERT INTO `product_image` VALUES ('43', '29', null, '10', '11');
INSERT INTO `product_image` VALUES ('44', '62', null, '12', '11');
INSERT INTO `product_image` VALUES ('45', '63', null, '13', '11');

-- ----------------------------
-- Table structure for product_property
-- ----------------------------
DROP TABLE IF EXISTS `product_property`;
CREATE TABLE `product_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT '' COMMENT '详情属性名称',
  `detail` varchar(255) NOT NULL COMMENT '详情属性',
  `product_id` int(11) NOT NULL COMMENT '商品id，外键',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of product_property
-- ----------------------------
INSERT INTO `product_property` VALUES ('1', '品名', '杨梅', '11', null, null);
INSERT INTO `product_property` VALUES ('2', '口味', '青梅味 雪梨味 黄桃味 菠萝味', '11', null, null);
INSERT INTO `product_property` VALUES ('3', '产地', '火星', '11', null, null);
INSERT INTO `product_property` VALUES ('4', '保质期', '180天', '11', null, null);
INSERT INTO `product_property` VALUES ('5', '品名', '梨子', '2', null, null);
INSERT INTO `product_property` VALUES ('6', '产地', '金星', '2', null, null);
INSERT INTO `product_property` VALUES ('7', '净含量', '100g', '2', null, null);
INSERT INTO `product_property` VALUES ('8', '保质期', '10天', '2', null, null);

-- ----------------------------
-- Table structure for theme
-- ----------------------------
DROP TABLE IF EXISTS `theme`;
CREATE TABLE `theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '专题名称',
  `description` varchar(255) DEFAULT NULL COMMENT '专题描述',
  `topic_img_id` int(11) NOT NULL COMMENT '主题图，外键',
  `delete_time` int(11) DEFAULT NULL,
  `head_img_id` int(11) NOT NULL COMMENT '专题列表页，头图',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='主题信息表';

-- ----------------------------
-- Records of theme
-- ----------------------------
INSERT INTO `theme` VALUES ('1', '便民服务', '测试专题1', '16', null, '49', null);
INSERT INTO `theme` VALUES ('2', '强军风采', '测试专题2', '17', null, '50', null);
INSERT INTO `theme` VALUES ('3', '应征指南', '测试专题3', '18', null, '18', null);

-- ----------------------------
-- Table structure for theme_article
-- ----------------------------
DROP TABLE IF EXISTS `theme_article`;
CREATE TABLE `theme_article` (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `article_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主题所包含的商品';

-- ----------------------------
-- Records of theme_article
-- ----------------------------
INSERT INTO `theme_article` VALUES ('1', '2');
INSERT INTO `theme_article` VALUES ('1', '5');
INSERT INTO `theme_article` VALUES ('1', '8');
INSERT INTO `theme_article` VALUES ('1', '10');
INSERT INTO `theme_article` VALUES ('1', '12');
INSERT INTO `theme_article` VALUES ('2', '1');
INSERT INTO `theme_article` VALUES ('2', '2');
INSERT INTO `theme_article` VALUES ('2', '3');
INSERT INTO `theme_article` VALUES ('2', '5');
INSERT INTO `theme_article` VALUES ('2', '6');
INSERT INTO `theme_article` VALUES ('2', '16');
INSERT INTO `theme_article` VALUES ('3', '15');

-- ----------------------------
-- Table structure for theme_product
-- ----------------------------
DROP TABLE IF EXISTS `theme_product`;
CREATE TABLE `theme_product` (
  `theme_id` int(11) NOT NULL COMMENT '主题外键',
  `product_id` int(11) NOT NULL COMMENT '商品外键',
  PRIMARY KEY (`theme_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='主题所包含的商品';

-- ----------------------------
-- Records of theme_product
-- ----------------------------
INSERT INTO `theme_product` VALUES ('1', '2');
INSERT INTO `theme_product` VALUES ('1', '5');
INSERT INTO `theme_product` VALUES ('1', '8');
INSERT INTO `theme_product` VALUES ('1', '10');
INSERT INTO `theme_product` VALUES ('1', '12');
INSERT INTO `theme_product` VALUES ('2', '1');
INSERT INTO `theme_product` VALUES ('2', '2');
INSERT INTO `theme_product` VALUES ('2', '3');
INSERT INTO `theme_product` VALUES ('2', '5');
INSERT INTO `theme_product` VALUES ('2', '6');
INSERT INTO `theme_product` VALUES ('2', '16');
INSERT INTO `theme_product` VALUES ('2', '33');
INSERT INTO `theme_product` VALUES ('3', '15');
INSERT INTO `theme_product` VALUES ('3', '18');
INSERT INTO `theme_product` VALUES ('3', '19');
INSERT INTO `theme_product` VALUES ('3', '27');
INSERT INTO `theme_product` VALUES ('3', '30');
INSERT INTO `theme_product` VALUES ('3', '31');

-- ----------------------------
-- Table structure for third_app
-- ----------------------------
DROP TABLE IF EXISTS `third_app`;
CREATE TABLE `third_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(64) NOT NULL COMMENT '应用app_id',
  `app_secret` varchar(64) NOT NULL COMMENT '应用secret',
  `app_description` varchar(100) DEFAULT NULL COMMENT '应用程序描述',
  `scope` varchar(20) NOT NULL COMMENT '应用权限',
  `scope_description` varchar(100) DEFAULT NULL COMMENT '权限描述',
  `delete_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='访问API的各应用账号密码表';

-- ----------------------------
-- Records of third_app
-- ----------------------------
INSERT INTO `third_app` VALUES ('1', 'starcraft', '777*777', 'CMS', '32', 'Super', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `extend` varchar(255) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'ohhED0dGLjceozS7JgqguUTX_2hI', null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'otcYr5LxtHZzpogBfO3FdAB8JWkw', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_address
-- ----------------------------
DROP TABLE IF EXISTS `user_address`;
CREATE TABLE `user_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(20) DEFAULT NULL COMMENT '市',
  `country` varchar(20) DEFAULT NULL COMMENT '区',
  `detail` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `delete_time` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_address
-- ----------------------------
INSERT INTO `user_address` VALUES ('4', 'neo', '13940922123', '辽宁省', '大连市', '椒金山', 'xxx小区', null, '7', null);

-- ----------------------------
-- Table structure for user_sign
-- ----------------------------
DROP TABLE IF EXISTS `user_sign`;
CREATE TABLE `user_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL COMMENT '姓名',
  `sex` varchar(5) NOT NULL COMMENT '性别',
  `age` varchar(5) NOT NULL COMMENT '年龄',
  `status` varchar(10) NOT NULL COMMENT '政治面貌',
  `race` varchar(10) NOT NULL COMMENT '民族',
  `marriage` varchar(5) NOT NULL COMMENT '婚姻状况',
  `mobile` varchar(20) NOT NULL COMMENT '手机号',
  `province` varchar(20) NOT NULL COMMENT '省',
  `city` varchar(20) NOT NULL COMMENT '市',
  `country` varchar(20) NOT NULL COMMENT '区',
  `detail` varchar(100) NOT NULL COMMENT '详细地址',
  `main_img_url` varchar(255) DEFAULT NULL COMMENT '主图ID号，这是一个反范式设计，有一定的冗余',
  `img_id` int(11) DEFAULT NULL COMMENT '图片外键',
  `summary` varchar(300) DEFAULT NULL COMMENT '个人简历',
  `delete_time` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_sign
-- ----------------------------
INSERT INTO `user_sign` VALUES ('1', '张三', '男', '30', '团员', '汉', '已婚', '13842633575', '辽宁省', '大连市', '甘井子区', '椒金山xx小区', '/2b36d19340e02ee35e169244f9868010.jpg', null, '个人履历', null, '7', null);

-- ----------------------------
-- Table structure for user_vocation
-- ----------------------------
DROP TABLE IF EXISTS `user_vocation`;
CREATE TABLE `user_vocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '收获人姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `section` varchar(30) DEFAULT NULL COMMENT '部门',
  `reason` varchar(300) DEFAULT NULL COMMENT '请假原因',
  `asignee` varchar(20) DEFAULT NULL COMMENT '批准人',
  `days` varchar(10) DEFAULT NULL COMMENT '请假天数',
  `delete_time` int(11) DEFAULT NULL COMMENT '销假日期',
  `user_id` int(11) DEFAULT NULL COMMENT '外键',
  `update_time` int(11) DEFAULT NULL COMMENT '请假日期',
  `delete_flag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_vocation
-- ----------------------------
INSERT INTO `user_vocation` VALUES ('1', 'neo1', '13940922123', 'xx部门', '事假', null, '3', '1545962046', '7', '1545912046', '1');
INSERT INTO `user_vocation` VALUES ('2', 'neo2', '13940922123', 'xx部门', '事假', '批准', '3', '1545962046', '7', '1545912046', '1');
INSERT INTO `user_vocation` VALUES ('3', 'neo3', '13940922123', 'xx部门', '事假', '批准', '3', '1545962046', '7', '1545912046', null);
INSERT INTO `user_vocation` VALUES ('4', 'neo3', '13940922123', 'xx部门', '事假', null, '3', '1545962046', '7', '1545912046', null);
INSERT INTO `user_vocation` VALUES ('5', '宁新冉', '13952833765', '信息部门', '123', null, '2', '2147483647', '7', '2147483647', null);
INSERT INTO `user_vocation` VALUES ('6', '宁新冉', '13952812345', '信息部门', '123', null, '2', '2147483647', '7', '2147483647', '1');
SET FOREIGN_KEY_CHECKS=1;
