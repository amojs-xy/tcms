/*
 Navicat Premium Data Transfer

 Source Server         : localhost_sql
 Source Server Type    : MySQL
 Source Server Version : 80037
 Source Host           : localhost:3306
 Source Schema         : tcms

 Target Server Type    : MySQL
 Target Server Version : 80037
 File Encoding         : 65001

 Date: 03/08/2024 09:53:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tcms_medicine
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine`;
CREATE TABLE `tcms_medicine`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cid` bigint NOT NULL DEFAULT 0 COMMENT '药品大类目',
  `scid` bigint NOT NULL DEFAULT 0 COMMENT '药品子类目',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品名称',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品拼音名称',
  `abbr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '药品拼音简写',
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药品别名',
  `character_id` bigint NOT NULL DEFAULT 0 COMMENT '药性，如温、寒等',
  `tasting_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药味集合',
  `attribution_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药品属性集合，如肝、胆等',
  `effect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '无' COMMENT '药效',
  `toxic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '药品有无毒性',
  `unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '斤' COMMENT '药品进货单位',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '药品进货价格',
  `create_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_tcms_medicine_name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine
-- ----------------------------
INSERT INTO `tcms_medicine` VALUES (3, 17, 17, '薏苡仁', 'yiyiren', 'yy,yr,yyr', '薏仁,薏米,草珠子,回回米,六谷子,尿珠子', 5, '2,6', '3,4,6', '利水渗湿、健脾止泻、除痹、排脓、解毒散结', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (4, 15, 31, '桂圆', 'guiyuan,longyan,longyanrou', 'gy,ly,lyr', '龙眼,龙眼肉', 5, '2', '2,3', '减轻疲劳、安心宁神、补血养气', 0, '斤', 70.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (5, 15, 31, '莲子', 'lianzi,shuizhidan,lianshi,lianmi,lianpeng,lianpengzi', 'lz,szd,ls,lp,lpz,lm', '水芝丹,莲实,莲蓬子,莲米', 9, '2,7', '2,3,5', '补脾止泻、固肾涩精、养心安神', 0, '斤', 90.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (6, 15, 30, '百合', 'baihe,baibaihe', 'bh,bbh', '白百合', 1, '2', '2,4', '养阴润肺，清心安神', 0, '斤', 150.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (7, 15, 33, '芡实', 'qianshi,shuijitou,jitoushi,jitouzi', 'qs,sjt,jts,jtz', '水鸡头、鸡头实、鸡头子', 9, '2,7', '3,5', '益肾固精、补脾止泻、除湿止带', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (8, 15, 29, '生甘草', 'shenggancao,gancao,guolao,meicao,tiancaogen,fencao,wulaergancao', 'sgc,gc,gl,mc,tcg,fc,wlegc', '国老、美草、甜草根、粉草、乌拉尔甘草', 9, '2', '2,3,4,6', '益气补中，祛痰止咳，解毒，缓急止痛', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (9, 17, 14, '茯苓', 'fuling,futu,songshu,songling', 'fl,ft,ss,sl', '茯菟、茯灵、松薯、松苓', 9, '2,6', '2,3,4,6', '利水渗湿，健脾，宁心安神', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (10, 1, 2, '葛根', 'gegen,gange,fenge,getiaogen', 'gg,fg,gtg', '甘葛、干葛、粉葛、葛条根', 3, '1,2', '3,6', '解肌退热、生津，透疹，升阳止泻', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (11, 15, 29, '红参', 'hongshen,renshen,jilinshen,hongrenshen', 'hs,rs,jls,hrs', '人参、吉林参、红人参', 6, '2,3', '2,3,4', '大补元气、复脉固脱、益气摄血', 0, '斤', 450.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (12, 15, 29, '西洋参', 'xiyangshen,xiyangrenshen,yangshen,meiguorenshen,huaqishen,guangdongshen', 'xys,xyrs,ys,mgrs,hqs,gds', '西洋人参、洋参、美国人参、花旗参、广东参', 3, '2,3', '2,3,5', '补气养阴、清热生津', 0, '斤', 500.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (13, 15, 29, '淮山药', 'huaishanyao,shanyu', 'hsy,sy', '山芋、山药', 9, '2', '3,4,5', '健脾益胃、益肺止咳、润肠通便', 0, '斤', 70.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (14, 15, 29, '黄芪', 'huangqi,mianhuangqi,dugen,errentai', 'hq,mhq,dg,ert', '绵黄芪、独根、二人抬', 6, '2', '3,4', '补气升阳、益卫固表、利水消肿、生津养血', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (15, 15, 30, '益智仁', 'yizhiren,yizhizi,zhaidingzi', 'yzr,yzz,zdz', '益智子、摘艼子', 5, '1', '3,5', '温脾止泻摄涎、暖肾缩尿固精', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (16, 15, 32, '麦冬', 'maidong,cundong,jiuyemaidong,maimendong,cunmaidong', 'md,cd,jymd,mmd,cmd', '寸冬、韭叶麦冬、麦门冬、寸麦冬', 2, '2,3', '2,4,6', '润肺养阴、益胃生津、清心除烦', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (17, 2, 5, '金银花', 'jinyinhua,rendonghua,yinhua,shuanghua,erbaohua', 'jyh,yh,rdh,sh,ebh', '忍冬花、银花、双花、二宝花', 1, '2', '2,4,6', '清热解毒、疏散风热', 0, '斤', 160.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (18, 1, 2, '菊花', 'juhua,ganju,jinrui,zhenju,yaoju', 'jh,gj,jr,zj,yj', '甘菊、金蕊、真菊、药菊', 2, '2,3', '1,4', '疏散风热，平抑肝阳，清肝明目', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (19, 2, 3, '决明子', 'juemingzi,caojueming,matijueming,qianliguang,jialvdou', 'jmz,cjm,mtjm,qlg,jld', '草决明、马蹄决明、千里光、假绿豆', 2, '2,3,5', '1,5,7', '清热明目、润肠通便', 0, '斤', 20.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (20, 2, 3, '蒲公英', 'pugongying,pugongcao,huanghuadiding,huanghuacao,pugongding', 'pgy,pgc,hhdd,hhc,pgd', '蒲公草、黄花地丁、黄花草、蒲公丁', 1, '2,3', '1,6', '清热解毒、利尿通淋', 0, '斤', 35.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (21, 7, 0, '金桔', 'jinju,luju,shanju,geikecheng,jindan,luofu', 'jj,lj,sj,gkc,jd,lf', '卢橘、山橘、给客橙、金蛋、罗浮', 5, '1,2,4', '1,3,4', '开胃生津、美容护肤', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (22, 7, 0, '陈皮', 'chenpi,jupi,juzipi,guangjupi,hongpi', 'cp,jp,jzp,gjp,hp', '橘皮、橘子皮、广橘皮、红皮', 5, '1,3', '3,4', '理气健脾，燥湿化痰', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (23, 2, 6, '荷叶', 'heye,lianye,ouye', 'hy,ly,oy', '莲叶、藕叶', 1, '1,3,7', '1,2,3', '清热解暑、止血、利尿排毒', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (24, 3, 8, '大黄', 'dahuang,jiangjun,jinwen,jinwendahuang,chuanjun', 'dh,jj,jw,jwdh,cj', '将军、锦纹、锦纹大黄、川军', 1, '3', '1,3,6,7,12', '泻下攻积、清热泻火、凉血解毒、逐瘀通经', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (25, 3, 8, '芒硝', 'mangxiao,mayaxiao,tuxiao,penxiao', 'mx,myx,tx,px', '马牙硝、土硝、盆硝', 1, '3,5', '6,7', '泻下通便、润燥软坚、清火消肿', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (26, 13, 34, '茯神木', 'fushenmu,huangsongjie,songjie,fushenxin,fushenxinmu', 'fs,fsm,hsj,sj,fsx,fsxm', '黄松节、松节、茯神心、茯神心木', 9, '2,6', '1,2', '宁心、安神、利水', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (27, 1, 2, '薄荷', 'bohe,fanhecai,tubohe,nanbohe,rendancao,yebohe', 'bh,fhc,tbh,nbh,rdc,ybh', '蕃荷菜、土薄荷、南薄荷、人丹草、野薄荷', 3, '1', '1,4', '疏散风热，清利头目，利咽，透疹，疏肝行气', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (28, 8, 0, '山楂', 'shanzha,shuzha,tangqiuzi,chiguashi,shanlihongguo', 'sz,tqz,czs,slhg', '鼠查、棠球子、赤爪实、山里红果', 6, '2,4', '1,3,6', '健胃消食、行气散瘀、化浊降脂', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (29, 15, 29, '大枣', 'dazao,hongzao,ganzao,liangzao', 'dz,hz,gz,lz', '红枣、干枣、良枣', 5, '2', '3,6', '补益脾胃、益气生津', 0, '斤', 15.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (30, 1, 2, '牛蒡根', 'niubanggen,eshigen,shuniangen,niucai', 'nbg,esg,sng,nc', '恶实根、鼠粘根、牛菜', 3, '2,3', '2,4', '清热解毒、消肿止痛、助排便', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (31, 15, 33, '覆盆子', 'fupenzi,fupen,wubiaozi,xiaotuopan,rongmaoxuangouzi,fupenmei,yemei,mumei,lezhezi,shanpao,shuwopao,maipao', 'fpz,wbz,xtp,rmxgz,fpm,ym,mm,lzz,sp,swp,mp', '覆盆、乌藨子、小托盘、绒毛悬钩子、覆盆莓、野莓、木莓、竻蔗子、山泡、树倭泡、麦泡', 5, '2,4', '1,5,8', '益肾固精缩尿、养肝明目', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (32, 1, 2, '桑叶', 'sangye,tieshanzi,canye', 'sy,tsz,cy', '铁扇子、蚕叶', 1, '1,3', '4,6', '疏散风热、清肺润燥、平抑肝阳、清肝明目', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (33, 2, 3, '夏枯草', 'xiakucao,tiesecao,bangzhutouhua,langtoucao,bangchuicao,niukucao', 'xkc,tsc,bzth,ltc,bcc,nkc', '铁色草、棒柱头花、榔头草、棒槌草、牛枯草', 1, '1,3', '1,9', '清肝泻火、明目、散结消肿', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (34, 11, 28, '罗汉果', 'luohanguo,jiakugua,guangguomubie,lahanguo', 'lhg,jkg,ggmb,lhg', '假苦瓜、光果木鳖、拉汉果', 1, '1,3', '4,7', '清热润肺，利咽开音，滑肠通便', 0, '个', 2.50, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (35, 13, 0, '天麻', 'tianma,chijianzhi,duyaozhi,limu,chijian,mingtianma', 'tm,cjz,dyz,lm,cj,mtm', '赤箭芝、独摇芝、离母、赤箭、明天麻', 9, '2', '1', '息风止痉、平抑肝阳、祛风通络', 0, '斤', 300.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (36, 9, 19, '三七', 'sanqi,jinbuhuan,shensanqi,tiansanqi,tianqi', 'sq,jbh,ssq,tsq,tq', '山漆、金不换、参三七、田三七、田七', 5, '2,3', '1,6', '散瘀止血、消肿定痛', 0, '斤', 260.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (37, 15, 32, '黄精', 'huangjin,longxie,baiji,tuzhu,chuizhu,jige,mifu', 'hj,lx,bj,tz,cz,jg,mf', '龙衔、白及、兔竹、垂珠、鸡格、米脯', 9, '2', '3,4,5', '补气养阴，健脾，润肺，益肾', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (38, 10, 22, '川芎', 'chuanxiong,xixiong,shanjuqiong,xiangguo,xiaoyechuanxiong', 'cx,xx,sjq,xg,xycx', '西芎、山鞠穷、香果、小叶川芎', 5, '1', '1,9,12', '活血行气、祛风止痛', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (39, 15, 32, '枸杞', 'gouqi,gouqizi,ganqizi,gouqiguo,qiguo,qizi,gangouqi', 'gq,gqz,gqz,gqg,qg,qz,ggz', '枸杞子、甘杞子、枸杞果、杞果、杞子、甘枸杞', 9, '2', '1,4,5', '滋补肝肾、益精明目', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (40, 13, 34, '灵芝', 'lingzhi,sanzhi,mulingzhi,lingzhicao,junlingzhi', 'lz,sz,mlz,lzc,jlz', '三芝、木灵芝、灵芝草、菌灵芝', 5, '3,6', '2', '软化血管、镇静安神、平压降糖', 0, '斤', 280.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (41, 17, 16, '金钱草', 'jinqiancao,shenxianduizuocao,wugongcao,huangdancao', 'jqc,sxdzc,wgc,hdc', '神仙对坐草、蜈蚣草、黄疸草', 2, '2,5', '1,5,8,9', '利湿退黄、利尿通淋、解毒消肿', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (42, 15, 30, '桑葚', 'sangshen', 'ss', '葚、乌椹、文武实、黑椹、桑枣、桑葚子、桑粒、桑果', 1, '2,4', '1,5', '降脂降压、健脾养胃、乌发美容', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (43, 11, 27, '平贝母', 'pingbeimu,pingbei,beimu', 'pbm,bm,pb', '坪贝、贝母、平贝', 2, '2,3', '2,4', '清热润肺、化痰止咳', 0, '斤', 300.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (44, 15, 29, '党参', 'dangshen,huangshen,shitoushen,zhonglingcao', 'ds,hs,sts,zlc', '黄参、狮头参、中灵草', 5, '2,3', '3,6', '健脾益肺、养血生津', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (45, 10, 23, '丹参', 'danshen,shanshen,honggen,zidanshen,chidanshen,xueshenggen,xueshen', 'ds,ss,hg,zds,cds,xsg,xs', '山参、红根、紫丹参、赤丹参、血生根、血参', 2, '3', '1,2', '活血祛瘀、通经止痛、清心除烦、凉血消痈', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (46, 7, 0, '茉莉花', 'molihua,moli,xiaonanqiang,naihua,manhua,mulihua', 'ml,mlh,xnq,nh,mh,mlh', '小南强、柰花、鬘华、木梨花', 1, '1,2', '1,3,6', '清肝明目、延缓衰老', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (47, 7, 0, '黑苦荞', 'heikuqiao,kuqiao,qiaoyeqi,yelanqiao,wannianqiao,bomai', 'hkq,kq,qyq,ylq,wnq,bm', '乔叶七,野兰荞,万年乔,波麦', 1, '3', '3,6,7', '调节血糖、辅助护肝', 0, '斤', 20.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (48, 15, 32, '黑枸杞', 'heigouqi,gouqizi,ganqizi,gouqiguo,qiguo,qizi,gangouqi', 'hgqgq,gqz,gqz,gqg,qg,qz,ggz', '枸杞子、甘杞子、枸杞果、杞果、杞子、甘枸杞', 9, '2', '1,4,5', '滋补肝肾、益精明目', 0, '斤', 120.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (49, 15, 32, '铁皮石斛', 'tiepishihu,shihu,linlan,dulan,qiannianzhu,huangcao', 'tpsh,sh,ll,dl,qnz,hc', '林兰、杜兰、千年竹、黄草', 2, '2', '5,6', '益胃生津、滋阴清热', 0, '斤', 300.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (50, 1, 2, '白菊花', 'baijuhua,juhua,ganju,jinrui,zhenju,yaoju', 'bjh,jh,gj,jr,zj,yj', '甘菊、金蕊、真菊、药菊', 2, '2,3', '1,4', '疏散风热，平抑肝阳，清肝明目', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (51, 1, 2, '胎菊米', 'taijumi,taiju,ganju,xiaotaihuang,xiaobaiju', 'tjm,tj,gj,xth,xbj', '甘菊,小胎皇,小白菊', 2, '2,3', '1,4', '疏散风热、平肝明目、清热解毒', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (52, 1, 2, '金丝皇菊', 'jinsihuangju,huangju,jinju,jinsilianhuaju,yinbianman,fenmohua', 'jshj,hj,jj,jslhj,ybm,fmh', '黄菊、金菊、金丝莲花菊、银鞭蔓、粉末花', 2, '2,3', '1,4', '疏散风热，平抑肝阳，清肝明目', 0, '斤', 175.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (53, 15, 29, '绞股蓝', 'jiaogulan,qiyedan,gongluoguodi', 'jgl,qyd,glgd', '七叶胆、公罗锅底', 1, '2,3', '3,4,5', '益气健脾、化痰止咳、养心安神', 0, '斤', 80.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (54, 2, 5, '苦瓜', 'kugua,lianggua,laigua,jinlizhi,hongguniang,hongyang,laiputao', 'kg,lg,jlz,hgn,hy,lpt', '凉瓜、癞瓜、锦荔枝、红姑娘、红羊、癞葡萄', 1, '3', '2,3,4', '降低血糖、促进食欲、美容', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (55, 7, 0, '金边玫瑰', 'jianbianmeigui,meigui,paihuaihua,bitouhua,huhua,cimeihua,cimeiju', 'jbmg,mg,phh,bth,hh,cmh,cmj', '徘徊花、笔头花、湖花、刺玫花、刺玫菊', 5, '2,3', '1,3', '行气解郁、活血化瘀、美容养颜', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (56, 11, 28, '千日红', 'qianrihong,bairihong,qianribai,qiannianhong,qingtinghong', 'qrh,brh,qrb,qnh,qth', '百日红、千日白、千年红、蜻蜓红', 9, '2,5', '1,4', '止咳定喘、平肝明目、解毒', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (57, 7, 0, '洛神花', 'luoshenhua,meiguijia,hongjinmei,hongmeiguo,luojikui,luoshenkui', 'lsh,mgj,hjm,hmg,ljk,lsk', '玫瑰茄、红金梅、红梅果、洛济葵、洛神葵', 1, '2,3', '1,3', '清热解毒、补血活血、利尿', 0, '斤', 65.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (58, 15, 29, '白扁豆', 'baibiandou,huoqianbiandou,emeidou,biandouzi,chadou', 'bbd,bd,hqbd,emd,bdz,cd', '火镰扁豆、峨眉豆,扁豆子、茶豆', 6, '2', '3,6', '健脾化湿、和中消暑', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (59, 7, 0, '赤小豆', 'chixiaodou,xiaodou,chidou,hongdou,hongxiaodou,zhuganchi,duchidou,zhuchidou', 'cxd,xd,cd,hd,hxd,zgc,dcd,zcd', '小豆、赤豆、红豆、红小豆、猪肝赤、杜赤豆、朱赤豆', 9, '2,4', '2,11', '消水肿、通乳汁、通便减肥', 0, '斤', 25.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (60, 2, 5, '鹰嘴豆', 'yingzuidou,taoerdou,jidou,jixindou', 'yzd,ted,jd,jxd', '桃尔豆、鸡豆、鸡心豆', 5, '2', '3,4,5', '调节激素、促进发育、润肠通便', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (61, 7, 0, '南瓜籽', 'nanguazi,nangua,nanguaren,baiguazi,jinguami,woguazi,woguazi', 'ngz,ng,ngr,bgz,jgm,wgz,wgz', '南瓜仁、白瓜子、金瓜米、窝瓜子、倭瓜子', 9, '2', '6,7', '健脑提神、降压镇痛、驱虫', 0, '斤', 40.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (62, 15, 29, '黑豆', 'heidong,wudou,heidadou,dongdouzi,dadou', 'hd,wd,hdd,ddz,dd', '乌豆、黑大豆、冬豆子、大豆', 9, '2', '3,5', '益气补肾、预防贫血、保护血管', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (63, 15, 32, '通江银耳', 'tongjianyiner,yiner,baimuer,baier,sange,wudingzhi,baierzi', 'tjye,tjyr,ye,yr,bme,be,se,wdz,bez', '白木耳、白耳、桑鹅、五鼎芝、白耳子', 9, '2,6', '4,5,6', '清热健胃、美容祛斑、减肥', 0, '斤', 340.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (64, 15, 32, '端木银耳', 'duanmuyiner,yiner,baimuer,baier,sange,wudingzhi,baierzi', 'dmye,dmyr,ye,yr,bme,be,se,wdz,bez', '白木耳、白耳、桑鹅、五鼎芝、白耳子', 9, '2,6', '4,5,6', '清热健胃、美容祛斑、减肥', 0, '斤', 120.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (65, 15, 30, '玛卡', 'maka,makaduxingcai,maga,bilurenshen', 'mk,mkdxc,mg,blrs', '玛卡独行菜、玛咖、秘鲁人参', 5, '1,2', '1,3,5', '降血脂、抗疲劳、抗肿瘤', 0, '斤', 60.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (66, 7, 0, '乌梅', 'wumei,suanmei,huangzai,hehanmei,ganzhimei,meishi,heimei,xunmei,jumeirou', 'wm,sm,hz,hhm,gzm,ms,hm,xm,jmr', '酸梅、黄仔、合汉梅、干枝梅、梅实、黑梅、熏梅、桔梅肉', 9, '4,7', '1,3,4,7', '缓解呕吐、涩肠止泻、止咳止渴', 0, '斤', 50.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (67, 7, 0, '墨红玫瑰', 'mohongmeigui,meigui,paihuaihua,bitouhua,huhua,cimeihua,cimeiju', 'mhmg,mg,phh,bth,hh,cmh,cmj', '徘徊花、笔头花、湖花、刺玫花、刺玫菊', 5, '2,3', '1,3', '行气解郁、活血化瘀、美容养颜', 0, '斤', 150.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (68, 7, 0, '平阴玫瑰', 'pingyinmeigui,meigui', 'pymg,mg,phh,bth,hh,cmh,cmj', '徘徊花、笔头花、湖花、刺玫花、刺玫菊', 5, '2,3', '1,3', '行气解郁、活血化瘀、美容养颜', 0, '斤', 180.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (69, 7, 0, '柠檬', 'ningmeng,limengzi,yaoguo,mengzi,ningguo', 'nm,lmz,yg,mz,ng', '黎檬子、药果、檬子、柠果', 9, '3,4', '4,6', '促进消化、生津止渴', 0, '斤', 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `tcms_medicine` VALUES (70, 7, 0, '辣木籽', 'lamuzi,kulianzi,kulianziren,guchuishuzi', 'lmz,klz,klzr,gcsz', '苦楝子、苦楝子仁、鼓槌树籽', 5, '1', '2,4,6', '保护肝脏、减轻疲劳', 0, '斤', 60.00, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tcms_medicine_attribution
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_attribution`;
CREATE TABLE `tcms_medicine_attribution`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_attribution
-- ----------------------------
INSERT INTO `tcms_medicine_attribution` VALUES (1, '肝');
INSERT INTO `tcms_medicine_attribution` VALUES (2, '心');
INSERT INTO `tcms_medicine_attribution` VALUES (3, '脾');
INSERT INTO `tcms_medicine_attribution` VALUES (4, '肺');
INSERT INTO `tcms_medicine_attribution` VALUES (5, '肾');
INSERT INTO `tcms_medicine_attribution` VALUES (6, '胃');
INSERT INTO `tcms_medicine_attribution` VALUES (7, '大肠');
INSERT INTO `tcms_medicine_attribution` VALUES (8, '膀胱');
INSERT INTO `tcms_medicine_attribution` VALUES (9, '胆');
INSERT INTO `tcms_medicine_attribution` VALUES (10, '三焦');
INSERT INTO `tcms_medicine_attribution` VALUES (11, '小肠');
INSERT INTO `tcms_medicine_attribution` VALUES (12, '心包');

-- ----------------------------
-- Table structure for tcms_medicine_category
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_category`;
CREATE TABLE `tcms_medicine_category`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_category
-- ----------------------------
INSERT INTO `tcms_medicine_category` VALUES (1, '解表类');
INSERT INTO `tcms_medicine_category` VALUES (2, '泻火类');
INSERT INTO `tcms_medicine_category` VALUES (3, '泻下类');
INSERT INTO `tcms_medicine_category` VALUES (4, '祛风湿类');
INSERT INTO `tcms_medicine_category` VALUES (5, '化湿类');
INSERT INTO `tcms_medicine_category` VALUES (6, '温里类');
INSERT INTO `tcms_medicine_category` VALUES (7, '理气类');
INSERT INTO `tcms_medicine_category` VALUES (8, '消食类');
INSERT INTO `tcms_medicine_category` VALUES (9, '止血类');
INSERT INTO `tcms_medicine_category` VALUES (10, '活血化瘀类');
INSERT INTO `tcms_medicine_category` VALUES (11, '化痰止咳平喘类');
INSERT INTO `tcms_medicine_category` VALUES (12, '安神类');
INSERT INTO `tcms_medicine_category` VALUES (13, '平肝熄风类');
INSERT INTO `tcms_medicine_category` VALUES (14, '开窍类');
INSERT INTO `tcms_medicine_category` VALUES (15, '补虚类');
INSERT INTO `tcms_medicine_category` VALUES (16, '收涩类');
INSERT INTO `tcms_medicine_category` VALUES (17, '利水利湿类');
INSERT INTO `tcms_medicine_category` VALUES (18, '驱虫类');

-- ----------------------------
-- Table structure for tcms_medicine_character
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_character`;
CREATE TABLE `tcms_medicine_character`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_character
-- ----------------------------
INSERT INTO `tcms_medicine_character` VALUES (1, '寒性');
INSERT INTO `tcms_medicine_character` VALUES (2, '微寒性');
INSERT INTO `tcms_medicine_character` VALUES (3, '凉性');
INSERT INTO `tcms_medicine_character` VALUES (4, '微凉性');
INSERT INTO `tcms_medicine_character` VALUES (5, '温性');
INSERT INTO `tcms_medicine_character` VALUES (6, '微温性');
INSERT INTO `tcms_medicine_character` VALUES (7, '热性');
INSERT INTO `tcms_medicine_character` VALUES (8, '微热性');
INSERT INTO `tcms_medicine_character` VALUES (9, '平性');

-- ----------------------------
-- Table structure for tcms_medicine_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_subcategory`;
CREATE TABLE `tcms_medicine_subcategory`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_subcategory
-- ----------------------------
INSERT INTO `tcms_medicine_subcategory` VALUES (1, 1, '发散风寒药');
INSERT INTO `tcms_medicine_subcategory` VALUES (2, 1, '发散风热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (3, 2, '清热泻火药');
INSERT INTO `tcms_medicine_subcategory` VALUES (4, 2, '清热燥湿药');
INSERT INTO `tcms_medicine_subcategory` VALUES (5, 2, '清热泻火药');
INSERT INTO `tcms_medicine_subcategory` VALUES (6, 2, '清热凉血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (7, 2, '清虚热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (8, 3, '攻下药');
INSERT INTO `tcms_medicine_subcategory` VALUES (9, 3, '润下药');
INSERT INTO `tcms_medicine_subcategory` VALUES (10, 3, '峻下逐水药');
INSERT INTO `tcms_medicine_subcategory` VALUES (11, 4, '祛风散寒药');
INSERT INTO `tcms_medicine_subcategory` VALUES (12, 4, '祛风湿清热药');
INSERT INTO `tcms_medicine_subcategory` VALUES (13, 4, '祛风湿强筋骨药');
INSERT INTO `tcms_medicine_subcategory` VALUES (14, 17, '利水消肿药');
INSERT INTO `tcms_medicine_subcategory` VALUES (15, 17, '利水通淋药');
INSERT INTO `tcms_medicine_subcategory` VALUES (16, 17, '利湿退黄药');
INSERT INTO `tcms_medicine_subcategory` VALUES (17, 18, '驱虫药');
INSERT INTO `tcms_medicine_subcategory` VALUES (18, 9, '凉血止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (19, 9, '化瘀止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (20, 9, '收敛止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (21, 9, '温经止血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (22, 10, '活血止痛药');
INSERT INTO `tcms_medicine_subcategory` VALUES (23, 10, '活血调经药');
INSERT INTO `tcms_medicine_subcategory` VALUES (24, 10, '活血疗伤药');
INSERT INTO `tcms_medicine_subcategory` VALUES (25, 10, '破血消癥');
INSERT INTO `tcms_medicine_subcategory` VALUES (26, 11, '温化寒痰药');
INSERT INTO `tcms_medicine_subcategory` VALUES (27, 11, '清热化痰药');
INSERT INTO `tcms_medicine_subcategory` VALUES (28, 11, '止咳平喘药');
INSERT INTO `tcms_medicine_subcategory` VALUES (29, 15, '补气药');
INSERT INTO `tcms_medicine_subcategory` VALUES (30, 15, '补阳药');
INSERT INTO `tcms_medicine_subcategory` VALUES (31, 15, '补血药');
INSERT INTO `tcms_medicine_subcategory` VALUES (32, 15, '补阴药');
INSERT INTO `tcms_medicine_subcategory` VALUES (33, 15, '收涩药');
INSERT INTO `tcms_medicine_subcategory` VALUES (34, 13, '安神药');

-- ----------------------------
-- Table structure for tcms_medicine_tasting
-- ----------------------------
DROP TABLE IF EXISTS `tcms_medicine_tasting`;
CREATE TABLE `tcms_medicine_tasting`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tcms_medicine_tasting
-- ----------------------------
INSERT INTO `tcms_medicine_tasting` VALUES (1, '辛');
INSERT INTO `tcms_medicine_tasting` VALUES (2, '甘');
INSERT INTO `tcms_medicine_tasting` VALUES (3, '苦');
INSERT INTO `tcms_medicine_tasting` VALUES (4, '酸');
INSERT INTO `tcms_medicine_tasting` VALUES (5, '咸');
INSERT INTO `tcms_medicine_tasting` VALUES (6, '淡');
INSERT INTO `tcms_medicine_tasting` VALUES (7, '涩');

-- ----------------------------
-- Table structure for tcms_user
-- ----------------------------
DROP TABLE IF EXISTS `tcms_user`;
CREATE TABLE `tcms_user`  (
  `create_at` datetime(3) NULL DEFAULT NULL,
  `updated_at` datetime(3) NULL DEFAULT NULL,
  `deleted_at` datetime(3) NULL DEFAULT NULL,
  `is_deleted` tinyint(1) NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `mobile_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nickname` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` tinyint(1) NULL DEFAULT 0 COMMENT '0 for male, 1 for female',
  `role` tinyint(1) NULL DEFAULT 1 COMMENT '0 for banned-user, 1 for common-user, 2 for administrator',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uni_tcms_user_mobile_number`(`mobile_number` ASC) USING BTREE,
  UNIQUE INDEX `uni_tcms_user_nickname`(`nickname` ASC) USING BTREE,
  INDEX `idx_mobile_number`(`mobile_number` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tcms_user
-- ----------------------------
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 1, '13800000000', 'user-00', '$pbkdf2-sha512$TCUvwcYPUB44lJPg$6bf3121232574a5c344e66f070009d651dfd8021f9a33143b0eed942db892368', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 2, '13800000001', 'user-01', '$pbkdf2-sha512$Uc9h26RV8gTPDn0i$6697ad58b1cc68e4ce8b14e80dfc23f1bea0bb1e46de2cd877886d0ccd6529db', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 3, '13800000002', 'user-02', '$pbkdf2-sha512$12B8HJp7cUQtAfUf$abe82560bd7910ab5fde032a2f15d0d2f8f3cda275f4de046794ec4db795dcbd', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 4, '13800000003', 'user-03', '$pbkdf2-sha512$n81RuoPYAjd5MGtX$3e3071ae8042ae060f535a4da32ebf69c4cd95bd2e143aeb4d0e4dc1ac844fee', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 5, '13800000004', 'user-04', '$pbkdf2-sha512$9sFdkh2zRzL2OLS1$1855ad60fd97c2c79ee8b31268a1901ee4cc8fa80549d3802eb35bdc36f9912d', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 6, '13800000005', 'user-05', '$pbkdf2-sha512$Rd0kkDIZchr6VCbP$5f19adb21464083d629fb73a8aae9e0bea30698e04c1096e467e38685da46232', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 7, '13800000006', 'user-06', '$pbkdf2-sha512$6o6EMkFWc4fBX4oq$d168b33964470965dd4347d1c2e20cfa5a1ec2790fbc52e20606eeb74d9b6daf', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 8, '13800000007', 'user-07', '$pbkdf2-sha512$opYWC9FEtOrQNzBJ$34c1cb3fd6bc586255c93dcb1366faaf739ae2508317a4553784ef40368cfe24', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 9, '13800000008', 'user-08', '$pbkdf2-sha512$76O640O0mOjzMbvR$81d402d090587f7139265018fbfb0373dc4199361dd3dc59a7fb6a43b1c3b2c0', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 10, '13800000009', 'user-09', '$pbkdf2-sha512$kO3LrA65aiHg3zmI$367ad79c8453e02f1b3177ea235bac6a33135b850302458d88c2c8be0db3a9df', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 11, '13800000010', 'user-10', '$pbkdf2-sha512$PAarF8nt1GTF9z5o$c4b9494551c703b2b5183c91b8d9efe453cea12dc6c95ba71ff65bad106a82a9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 12, '13800000011', 'user-11', '$pbkdf2-sha512$xxfAvroiFxoMLWck$ecf769a3369077204d6386e190a482560cfbf8e4c083505e6040858d51a0ffd9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 13, '13800000012', 'user-12', '$pbkdf2-sha512$4g4q37TZsHMktMus$22bad276e18b760fc09728461c1d0c4540e5cba3fa414cd6ccb19e554e7aa00e', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 14, '13800000013', 'user-13', '$pbkdf2-sha512$w07A4OBQQmCQenSq$158fa13e0f857b4c8bf33759450f17360d87facaab4e09e658511dfd4eede34b', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 15, '13800000014', 'user-14', '$pbkdf2-sha512$KwQwp7fqOopAeXpk$d2e4846465d88c49e04cd26167ad37608a3d899d224dd4990724df5fc143ed22', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 16, '13800000015', 'user-15', '$pbkdf2-sha512$Y6lx38QOCbV5R4WQ$7d76d2f16c5d09b4d3a33c7bfe986c6f0f764ee2ac36a24fc1c3f06de7526655', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 17, '13800000016', 'user-16', '$pbkdf2-sha512$CoulLRSjBZ0aFlA3$798265caa433b7a2a20cb9cb5ac6760da97ce6bc4bd82fbd57ce555dd917f1d9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 18, '13800000017', 'user-17', '$pbkdf2-sha512$hoZKzgCUpDx5k4fz$abbb2cb6904242b5cd9eff98bc76a156cbd849a2e5d345f6dce11f07d0878e27', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 19, '13800000018', 'user-18', '$pbkdf2-sha512$5Akg4Zw5WMJYevYm$19aaec9f42b62ee15093ecc06c5a52a64bf9502bb7828414be8b3543a6f0860b', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 20, '13800000019', 'user-19', '$pbkdf2-sha512$23kNWz1dnSzdvmwR$ea39ae100a12e088351e4bd7d919feb0173fb6748bf4689958c3065e2639c2ff', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 21, '13800000020', 'user-20', '$pbkdf2-sha512$LWL7QXeKn65wMhFo$0580333fa7ccfd1f79a1024bda50083e7523d50fb9c009aa153ca60797f08962', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 22, '13800000021', 'user-21', '$pbkdf2-sha512$RSX1Z3Mol57CjwGj$2db6d602ab55f0124d001663218a1f71156d09652e6499a11828eea9fab51111', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 23, '13800000022', 'user-22', '$pbkdf2-sha512$6tQFG7bV4SxbGVKE$024710591155b8bfe2fef522f82c8e87584f58d25a1464db62b21456e4fb39ac', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 24, '13800000023', 'user-23', '$pbkdf2-sha512$4BumjbsjCK3AXX9x$91c7bf84f3bab05cda2dad97bb9d259a1bd28da9bd977a3e1d62f38ef81121a9', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 25, '13800000024', 'user-24', '$pbkdf2-sha512$61tpum3EZooZPc0f$42d81c1a28d443d044cc2109f6b4494375b6af801b24a73a0bc5541b726a0937', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 26, '13800000025', 'user-25', '$pbkdf2-sha512$4fWLdKkOwS3dziEz$00835edbf45a48f73f03b5d020d8859f51909d89bb63014a37a0fdc0aa8507ef', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 27, '13800000026', 'user-26', '$pbkdf2-sha512$gew3CRJPg9faDTb2$3f10363962e78d95bdcf8a9ebc9ab07e4da26485fc414aac68e06520acdf0ba4', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 28, '13800000027', 'user-27', '$pbkdf2-sha512$70ilZyXl5xtyITel$90637daf21554e89e1d5b0e9e284f70ef3bf0e80527c73736c67bb33b3d1f5d3', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 29, '13800000028', 'user-28', '$pbkdf2-sha512$irTucX1P3rPI2ILO$2f213ed2e4da61bd1ca6bff669336b7dcfabb4bc1843babd6278dfc5f8cef8ca', 0, 1);
INSERT INTO `tcms_user` VALUES (NULL, NULL, NULL, 0, 30, '13800000029', 'user-29', '$pbkdf2-sha512$1D04TZM7MUoPCOZh$2d44cc33477554b824349fec8b1eb074b9b5891d414118d1d610b3083d2d3739', 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
