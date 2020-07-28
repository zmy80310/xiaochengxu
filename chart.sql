-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2020-03-05 06:50:11
-- 服务器版本： 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chart`
--

-- --------------------------------------------------------

--
-- 表的结构 `gouwu`
--

CREATE TABLE `gouwu` (
  `src` mediumtext NOT NULL COMMENT '商品图片',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(100) NOT NULL COMMENT '商品价格',
  `number` varchar(100) NOT NULL COMMENT '商品数量',
  `tel` varchar(100) NOT NULL COMMENT '用户',
  `id` varchar(50) NOT NULL COMMENT '商品id',
  `text` varchar(1000) NOT NULL COMMENT '商品介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

--
-- 转存表中的数据 `gouwu`
--

INSERT INTO `gouwu` (`src`, `name`, `price`, `number`, `tel`, `id`, `text`) VALUES
('https://image7.wbiao.co/shop/6a7ac7e3fe744d89832cdd7c047e9e35.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '赫柏林', '4999', '4', '17730662312', '1583204669000', '法国国民腕表品牌：Michel Herbelin赫柏林-City都市系列-雅士 1669/07GO.FR 男士自动机械表'),
('https://image7.wbiao.co/shop/b6299499fee0401b96ac637595eabc1b.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '赫柏林', '3280', '3', '17730662312', '1583313819679', '【2019新品】法国优雅时尚腕表品牌：赫柏林Michel Herbelin-EPSILON系列 17116/B15 女士石英表');

-- --------------------------------------------------------

--
-- 表的结构 `home`
--

CREATE TABLE `home` (
  `id` varchar(50) NOT NULL COMMENT 'ID账号',
  `type` varchar(50) NOT NULL COMMENT '类型',
  `src` mediumtext NOT NULL COMMENT '图片路径',
  `text` varchar(2000) NOT NULL COMMENT '商品描述',
  `name` varchar(100) NOT NULL COMMENT '商品名称',
  `price` varchar(50) NOT NULL COMMENT '商品价格',
  `number` varchar(100) NOT NULL COMMENT '商品数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

--
-- 转存表中的数据 `home`
--

INSERT INTO `home` (`id`, `type`, `src`, `text`, `name`, `price`, `number`) VALUES
('1582860961', 'swiper', 'https://image7.wbiao.co/mall/0fe31840e5f04b82a6877366c216caff.jpg', '0', '0', '0', '0'),
('1582860995', 'swiper', 'https://image7.wbiao.co/mall/d44caef4a88e4b179c624cc1041a1478.jpg', '0', '0', '0', '0'),
('1582861014', 'swiper', 'https://image7.wbiao.co/mall/ccbafc45996c4b75bd8caf2a21c230ad.jpg', '0', '0', '0', '0'),
('1582861029', 'swiper', 'https://image7.wbiao.co/mall/fe9a0d6d285346febb1043760b2c26a5.jpg', '0', '0', '0', '0'),
('1582861050', 'swiper', 'https://image7.wbiao.co/mall/35d1232ab965403db70bb2ff6332a03a.jpg', '0', '0', '0', '0'),
('1582861067', 'swiper', 'https://image7.wbiao.co/mall/142d5fac05fd433a86c57d27d6b130cc.jpg', '0', '0', '0', '0'),
('1582861081', 'swiper', 'https://image7.wbiao.co/mall/df42006e8ac14188ae39d3eb9f0fb892.jpg', '0', '0', '0', '0'),
('1582861106', 'swiper', 'https://image7.wbiao.co/mall/234ccb12a8474fd981d99c6fdd948c52.jpg', '0', '0', '0', '0'),
('1582861181', 'banner', 'https://image7.wbiao.co/mall/aabb7e25c7b043afaff7b7df2facb45d.png', '0', '男表', '0', '0'),
('1582861203', 'banner', 'https://image7.wbiao.co/mall/1fcc75ae2a3744d69db1bb3da119f124.png', '0', '女表', '0', '0'),
('1582861222', 'banner', 'https://image7.wbiao.co/mall/84069628ddc648b9af685cc0a445601a.gif', '0', '严选活动', '0', '0'),
('1582861240', 'banner', 'https://image7.wbiao.co/mall/61890c5d85ae42a8b8b71ee9a2e9abeb.png', '0', '秒杀', '0', '0'),
('1582861265', 'banner', 'https://image7.wbiao.co/mall/5871be6dd9dc40f09dcc195001bd6016.jpg', '0', '一折抢拍', '0', '0'),
('1582861287', 'banner', 'https://image7.wbiao.co/mall/b260a73ac73f439fac25532758fc7c4a.png', '0', '维修保养', '0', '0'),
('1582861305', 'banner', 'https://image7.wbiao.co/mall/6cb84a2bb29e43b6892af48be636a1b7.png', '0', '二手特卖', '0', '0'),
('1582861330', 'banner', 'https://image7.wbiao.co/mall/a04ebebeeb244eb9b43fbcc6e8b8914e.png', '0', '高价回收', '0', '0'),
('1582861372', 'day', 'https://image7.wbiao.co/mall/257aa2c928b14cc09a172ef3352a2782.png', '0', '0', '0', '0'),
('1582861452', 'swiper2', 'https://image7.wbiao.co/mall/0c342a4635094a1791516ec0157f1895.jpg', '0', '0', '0', '0'),
('1582861482', 'swiper2', 'https://image7.wbiao.co/mall/20dab10ef7934041a649f261e1960a93.jpg', '0', '0', '0', '0'),
('1582861529', 'banner2', 'https://image7.wbiao.co/mall/1efcc26a9e554a3eb8610e8297f72aa3.jpg', '0', '0', '0', '0'),
('1582861545', 'banner2', 'https://image7.wbiao.co/mall/1b7652ab3abb42edb216745c75e5bf2e.jpg', '0', '0', '0', '0'),
('1582861560', 'banner2', 'https://image7.wbiao.co/mall/de3248ceb8154c21ac4acd0f601bde01.jpg', '0', '0', '0', '0'),
('1582861576', 'banner2', 'https://image7.wbiao.co/mall/9eaed93cc0ae4cc1988aaa6cc1842edb.jpg', '0', '0', '0', '0'),
('1582861590', 'banner2', 'https://image7.wbiao.co/mall/1ce844f6bec44ce6b4465d3acf933bb4.jpg', '0', '0', '0', '0'),
('1582861604', 'banner2', 'https://image7.wbiao.co/mall/2330eb463cc643ae97a6d8383c26a0ef.jpg', '0', '0', '0', '0'),
('1582861619', 'banner2', 'https://image7.wbiao.co/mall/f6d6016699004b18b087c9ce7ad0fd9e.jpg', '0', '0', '0', '0'),
('1582861632', 'banner2', 'https://image7.wbiao.co/mall/f29f35b484304f078940032b45796103.jpg', '0', '0', '0', '0'),
('1582861658', 'banner2', 'https://image7.wbiao.co/mall/783d43e697684320b9c54412d5e5a487.jpg', '0', '0', '0', '0'),
('1582861914', 'home', 'https://image7.wbiao.co/shop/d5f66e5fef0247f099b76840941958e1.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Emotion情感系列 罗马假期-雪白版 3390.152.20.10.30 机械男表', '爱宝时', '6580', '100'),
('1582861960', 'home', 'https://image7.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', '天梭', '3910', '100'),
('1582862031', 'home', 'https://image7.wbiao.co/shop/23ba86255c5245dc88d3cc116b127c2c.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '纯正瑞士品牌 迪沃斯DAVOSA-Diving 潜水系列 Ternos 特诺斯潜行者 墨玉绿 16155570 自动机械男表 ', '迪沃斯', '5760', '100'),
('1582871029', 'home', 'https://image7.wbiao.co/shop/b1276261f397498f83c1d64904cd1e09.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '[瑞士原装正品，全球联保]欧米茄Omega-碟飞系列 424.10.37.20.02.001 机械男表', '欧米茄', '25000', '100'),
('1582871087', 'home', 'https://image7.wbiao.co/shop/6a7ac7e3fe744d89832cdd7c047e9e35.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '法国国民腕表品牌：Michel Herbelin赫柏林-City都市系列-雅士 1669/07GO.FR 男士自动机械表', '赫柏林', '4999', '100'),
('1582871131', 'home', 'https://image7.wbiao.co/shop/4f3abdf707cd4390beabd94c0e46a156.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '浪琴longines-名匠系列 L2.628.4.78.3 机械男表', '浪琴', '13500', '100'),
('1582871283', 'home', 'https://image7.wbiao.co/shop/f342fb49e3804aa8a41f1055a2d932e3.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Oeuvre d‘art艺术系列 逆转时光 3435.313.24.15.25 机械男表', '爱宝时', '13200', '100'),
('1582871332', 'home', 'https://image7.wbiao.co/shop/ef28ecbd40b44777b03f29398adb396c.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '【2019年新款】瑞士库尔沃CYS-VUELO 飞行系列 飞行家 Rosillo限量纪念款 3205.1K 男士机械表人类飞翔历史上一段拉丁文化传奇 ', '库尔沃', '22400', '100'),
('1582871394', 'home', 'https://image7.wbiao.co/shop/b786c00fe3794f11b82d8e27c15af7a6.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '帝舵（TUDOR）-骏珏系列星期日历型 56003-68063香槟色10钻 自动机械男表', '帝舵', '29400', '100'),
('1582871441', 'home', 'https://image7.wbiao.co/shop/530a2b99a3db40d9bfd2237b3e5c5c2d.jpg?x-oss-process=image/resize,m_pad,w_480,h_480,color_ffffff', '瑞士艺术制表大师爱宝时（EPOS）-Sportive运动系列海兽克拉肯3441.131.99.52.52 机械男表', '爱宝时', '7920', '100'),
('1582960266', 'classify', 'https://image7.wbiao.co/mall/e10aaee14770422b94e06111dabeb266.png', '0', '商务', '0', '0'),
('1582960289', 'classify', 'https://image7.wbiao.co/mall/dfbd58c60a2b4ad39628e9e762491a12.png', '0', '时尚简约', '0', '100'),
('1582960314', 'classify', 'https://image7.wbiao.co/mall/f21cd6efe48b4cc7a3fb53f3e625162d.png', '0', '运动', '0', '100'),
('1582960342', 'classify', 'https://image7.wbiao.co/mall/1e06b306dbd64e509c82dddb8f500a0f.png', '0', '计时', '0', '100'),
('1582960377', 'classify', 'https://image7.wbiao.co/mall/61876ab5849946fd8616e8bb31f2ff29.png', '0', '月相款', '0', '100'),
('1582960399', 'classify', 'https://image7.wbiao.co/mall/f3610fb91bac42babf33091153019c80.png', '0', '经典女款', '0', '0'),
('1582960427', 'classify', 'https://image7.wbiao.co/mall/eecd3ae9388247c691b17355ee5abe7d.png', '0', '经典男款', '0', '0'),
('1582960446', 'classify', 'https://image7.wbiao.co/mall/be96e8cf1f9543fb8a5c34dc2e3208f1.png', '0', '个性时尚', '0', '0'),
('1582960463', 'classify', 'https://image7.wbiao.co/mall/7d01cee4eaf045b8abc889847f3a4c42.png', '0', '艺术', '0', '0'),
('1582961650', '商务', 'https://image7.wbiao.co/shop/2ecb141b2df44f9ea15af13298e87044.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '美度MIDO-贝伦赛丽系列 M8600.4.26.8 机械男表', '美度', '4760', '100'),
('1582961705', '商务', 'https://image7.wbiao.co/shop/08d404bbe1f24060830707b7ca5a966a.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '西铁城Citizen-机械男表系列 NH8350-08BB 男士自动机械表', '西铁城', '1160', '100'),
('1582961779', '商务', 'https://image7.wbiao.co/shop/824dd16ad6444e9f8b124c04a563f30a.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '爆款！纯正瑞士品牌 迪沃斯DAVOSA-Heritage传统系列 Classic 经典机械 绅士蓝影 16145615 自动机械商务休闲男表', '迪沃斯', '4520', '100'),
('1582961833', '商务', 'https://image7.wbiao.co/shop/174b825c83bc4ac3bdc4e5a7d90db9a6.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列 T006.407.16.033.00 自动机械男表', '天梭', '3750', '100'),
('1582961878', '商务', 'https://image7.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', '天梭', '3910', '100'),
('1582961925', '商务', 'https://image7.wbiao.co/shop/2c88548ea2be4b148c46753d87eb3e31.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '天梭TISSOT-俊雅系列 T063.610.36.037.00 石英男表', '天梭', '2167', '100'),
('1582961980', '商务', 'https://image7.wbiao.co/shop/7f0b6a1b9d404892858c0f5c39fdc3e2.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '奥地利时尚腕表- 雅克利曼-LA PASSION系列 LP-113C 石英表', '雅克利曼', '1160', '100'),
('1582962026', '时尚简约', 'https://image7.wbiao.co/shop/139e4e35adcc45b4875c5564e4fa1ccb.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', 'CK（Calvin Klein）-女士Ladies系列手表 K7L2314T 石英女表', 'ck', '2380', '100'),
('1582962109', '时尚简约', 'https://image7.wbiao.co/shop/b970c3e4da87419ab5f66e4560872964.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '法国优雅时尚腕表品牌：Michel Herbelin赫柏林-Kyudo系列-天鹅湖 17471/B05 女士石英表', '赫柏林', '2880', '100'),
('1582962174', '时尚简约', 'https://image7.wbiao.co/shop/b6299499fee0401b96ac637595eabc1b.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【2019新品】法国优雅时尚腕表品牌：赫柏林Michel Herbelin-EPSILON系列 17116/B15 女士石英表', '赫柏林', '3280', '100'),
('1582962228', '时尚简约', 'https://image7.wbiao.co/shop/e497ffe2447a4a909a7f2a3d96e38a69.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【2019新品】法国优雅时尚腕表品牌：赫柏林Michel Herbelin-EPSILON系列 17116/B11女士石英表', '赫柏林', '3280', '100'),
('1582962274', '时尚简约', 'https://image7.wbiao.co/shop/ccf00f4fdf7f49a3a0d6c3e868a42efd.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【2019新品】法国国民腕表品牌：赫柏林Michel Herbelin-EPSILON 系列 19416/B15 男士石英表', '赫柏林', '3280', '100'),
('1582962330', '时尚简约', 'https://image7.wbiao.co/shop/0fc13b3a82834ab58e5fc47826211f9a.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【2019新品】法国国民腕表品牌：赫柏林Michel Herbelin-Epsilon灵动系列 19416/B11 男士石英表', '赫柏林', '3280', '100'),
('1582962383', '时尚简约', 'https://image7.wbiao.co/shop/26a793f6922142c18d5ecda2fdb8e03b.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【2019新品】法国优雅时尚腕表品牌：赫柏林Michel Herbelin-Epsilon系列 17106/89BL 女士石英表', '赫柏林', '3820', '100'),
('1582962429', '时尚简约', 'https://image7.wbiao.co/shop/e4ed4fcfa9634264b499781c93034543.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '威利默克Welly Merck-Fighter系列 WM003-RWB-MR-30 石英女表', '威力莫克', '760', '100'),
('1582962467', '时尚简约', 'https://image7.wbiao.co/shop/e825161948cf446aa7ecdaf6d9dea344.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '威利默克Welly Merck-Classic Washington B系列 WM002-BBW-MB-42 石英男表', '威力莫克', '1020', '100'),
('1582962526', '时尚简约', 'https://image7.wbiao.co/shop/7f0b6a1b9d404892858c0f5c39fdc3e2.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '奥地利时尚腕表- 雅克利曼-LA PASSION系列 LP-113C 石英表', '雅克利曼', '1160', '100'),
('1582962583', '运动', 'https://image7.wbiao.co/shop/b8018b2101b641f0816bd1bda15003ce.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '瑞士艺术制表大师爱宝时（EPOS）-Sportive运动系列 海神波塞冬3438.131.96.16.30机械男表', '爱宝时', '5220', '100'),
('1582962643', '运动', 'https://image7.wbiao.co/shop/723c6121ac3d46589aab30c7381aaf7d.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '艺术制表大师爱宝时（EPOS）-Sportive运动系列  海神波塞冬 3438.131.20.15.30 机械男表', '爱宝时', '5520', '100'),
('1582962718', '计时', 'https://image7.wbiao.co/shop/3ee21afec60848f496b77335c05e8fdd.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '西铁城CITIZEN-光动能系列 AT2140-55E 男士光动能表', '西铁城', '3150', '100'),
('1582962821', '计时', 'https://image7.wbiao.co/shop/b5a4dbc24dd1458d98951666ffb87e43.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '三宅一生ISSEY MIYAKE-C系列 NYAD008Y 石英男表', '三宅一生', '4680', '100'),
('1582962874', '计时', 'https://image7.wbiao.co/shop/6d647e6a73e148948f62d5249bc89cd3.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '纯正瑞士品牌 迪沃斯DAVOSA-Executive行政系列 Vireo Chrono 商务精英 计时版 白盘全钢 41mm 16348115 轻便男士商务休闲石英表', '迪沃斯', '2800', '100'),
('1582962917', '计时', 'https://image7.wbiao.co/shop/c7fe11add1b24475b1d582b053687469.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '阿玛尼-LUIGI系列 AR1970 石英男表', '阿玛尼', '2120', '100'),
('1582962972', '计时', 'https://image7.wbiao.co/shop/eb5ccbc9f6fc47e5bb71a42e12f0bd1e.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '三宅一生ISSEY MIYAKE-W系列 NY0Y003 石英男表', '三宅一生', '5180', '100'),
('1582963035', '月相款', 'https://image7.wbiao.co/shop/b842d69962d242ec89da612a6c10d22a.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '瑞士独立制表品牌 艾美达（Armand Nicolet）-AL3系列 A882AAA-AK-P882LV8  石英、镶钻女表', '艾美达', '7600', '100'),
('1582963122', '经典女款', 'https://image7.wbiao.co/shop/2afb1974a4534233bdb8194807b1f0c1.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列 T41.1.183.33 机械女表', '天梭', '4450', '100'),
('1582963169', '经典女款', 'https://image7.wbiao.co/shop/8fe365c84f3b42079fdd5c43eb6750a7.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '法国优雅时尚腕表品牌：Michel Herbelin赫柏林  Perles珍珠系列  珍珠恋人  16873/B08  女士石英表', '赫柏林', '5500', '100'),
('1582963223', '经典女款', 'https://image7.wbiao.co/shop/4ac0441990a74397acfe979e1dfa9f07.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '阿玛尼 GIANNI T-B系列 满天星 镶钻星空  AR1926 石英女表', '阿玛尼', '3990', '100'),
('1582963272', '经典女款', 'https://image7.wbiao.co/shop/c3655cb9461d4725b3d6d9f5d0db3fcf.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【明星同款】法国优雅时尚腕表品牌：Michel Herbelin赫柏林 Antarès恒星系列  吉普赛女郎  COF.17048/01L  女士石英表  ', '赫柏林', '3200', '100'),
('1582963341', '经典男款', 'https://image7.wbiao.co/shop/c7b1285ee380485f9b9743f3495c07c7.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【天梭原装正品，全球联保两年】天梭TISSOT-力洛克系列T006.407.11.033.00 自动机械男表', '天梭', '4600', '100'),
('1582963385', '经典男款', 'https://image7.wbiao.co/shop/00027ee065b1490abbabb2d21642afe5.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【天梭原装正品，全球联保两年】 天梭TISSOT-力洛克系列 T006.407.11.053.00 机械男表', '天梭', '3910', '100'),
('1582963480', '经典男款', 'https://image7.wbiao.co/shop/ad1aa6db15af455f9b99e177dfef8ef3.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '美度MIDO-贝伦赛丽 BARONCELLI系列 M8600.4.21.4 机械男表', '美度', '5600', '100'),
('1582963619', '经典男款', 'https://image7.wbiao.co/shop/8a453703f2ce4386a446c3adbd10ecba.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '美度MIDO-舵手MULTIFORT系列 M005.430.16.031.80 机械男表', '美度', '5900', '100'),
('1582963670', '个性时尚', 'https://image7.wbiao.co/shop/1fee5b19be004382a23bac0f53da1f2e.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '玛莎拉蒂- TRIMARONA 帆船系列 R8821108025 中国风限量版 机械男表', '玛莎拉蒂', '5680', '100'),
('1582963710', '个性时尚', 'https://image7.wbiao.co/shop/83aa224a47c24b199bf83fa075594234.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '西铁城citizen-机械男表系列 NP1010-01A  男士机械表', '西铁城', '3400', '100'),
('1582963744', '个性时尚', 'https://image7.wbiao.co/shop/201611_18_SILAP002_94704.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '三宅一生ISSEY MIYAKE-TWELVE系列 SILAP002 石英男表', '三宅一生', '3780', '100'),
('1582963786', '个性时尚', 'https://image7.wbiao.co/shop/eb5ccbc9f6fc47e5bb71a42e12f0bd1e.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '三宅一生ISSEY MIYAKE-W系列 NY0Y003 石英男表', '三宅一生', '5180', '100'),
('1582963825', '个性时尚', 'https://image7.wbiao.co/shop/cf77d5359ab14f49b07db591ef8e0708.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '漫威（MARVEL）-美国队长系列 M-9019BBB 男士石英表', '漫威', '858', '100'),
('1582963878', '艺术', 'https://image7.wbiao.co/shop/d97a5b6251a44f8995122f8f3b0416ca.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '瑞士柏高Paul Picot -Atelier 美学家系列  “迦南美地” P0482.SG.1022.2001 世界时机械男表（限量300枚）', '柏高', '78500', '100'),
('1582963919', '艺术', 'https://image7.wbiao.co/shop/afdce84c096746eeba69f5c2291f4a49.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '【限量88枚】 瑞士柏高Paul Picot -Atelier 美学家系列  “迦南美地”P0482.RG.1021.2000 机械男表', '柏高', '248000', '100'),
('1582963954', '艺术', 'https://image7.wbiao.co/shop/3dc58c438add4e5d8760406e52787b67.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '瑞士柏高Paul Picot -Atelier 美学家系列  “乌托邦” P0482.SG.1022.1002 世界时 机械男表（限量300枚）', '柏高', '70500', '100'),
('1582963988', '艺术', 'https://image7.wbiao.co/shop/c76d7535c0e3433eaf211a9843a38904.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '瑞士柏高Paul Picot -Atelier 美学家系列  P3351.RG.1021.1001 “蓝爵士”珐琅机械男表（瑞士柏高CEO同款，18K玫瑰金打造，全球限量88枚）', '柏高', '248000', '100'),
('1582964051', '艺术', 'https://image7.wbiao.co/shop/96194b5309014d11b44303fb513a3637.jpg?x-oss-process=image/resize,m_pad,w_520,color_ffffff/quality,q_90', '罗蒂诗蔓（Lotusman）-凯旋系列 珐琅表 7009GS 机械表', '罗蒂诗蔓', '58000', '100');

-- --------------------------------------------------------

--
-- 表的结构 `site`
--

CREATE TABLE `site` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `tel` varchar(100) NOT NULL COMMENT '用户',
  `name` varchar(100) NOT NULL COMMENT '名字',
  `cell` varchar(100) NOT NULL COMMENT '手机号',
  `address` varchar(100) NOT NULL COMMENT '详细信息',
  `city` varchar(100) NOT NULL COMMENT '省市区',
  `sex` varchar(50) NOT NULL COMMENT '默认地址下标'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地址表';

--
-- 转存表中的数据 `site`
--

INSERT INTO `site` (`id`, `tel`, `name`, `cell`, `address`, `city`, `sex`) VALUES
('1583386416', '17730662312', '赵梦毓', '17730662313', '阿 dasds', '北京市 北京市 东城区', 'true');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` varchar(100) NOT NULL COMMENT 'ID账号',
  `tel` varchar(100) NOT NULL COMMENT '手机号',
  `pwo` varchar(100) NOT NULL COMMENT '密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `tel`, `pwo`) VALUES
('1582968806', '17730662313', 'asd123'),
('1583132215', '17730662312', 'asd123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gouwu`
--
ALTER TABLE `gouwu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
