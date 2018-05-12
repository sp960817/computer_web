/*
MySQL Backup
Source Server Version: 5.7.21
Source Database: computer
Date: 2018/5/12 22:43:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `AdminName` varchar(50) NOT NULL,
  `AdminPassword` varchar(50) NOT NULL,
  `AdminRealName` varchar(50) NOT NULL,
  PRIMARY KEY (`AdminName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `gapfilling`
-- ----------------------------
DROP TABLE IF EXISTS `gapfilling`;
CREATE TABLE `gapfilling` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `testID` varchar(255) NOT NULL,
  `studentID` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gapfilling` int(11) NOT NULL,
  `judge` int(11) NOT NULL,
  `only_choose` int(11) NOT NULL,
  `many_choose` int(11) NOT NULL,
  `grade` int(20) NOT NULL,
  PRIMARY KEY (`testID`),
  KEY `studentID` (`studentID`,`name`),
  CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`studentID`, `name`) REFERENCES `student` (`studentID`, `name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `judge`
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `many_choose`
-- ----------------------------
DROP TABLE IF EXISTS `many_choose`;
CREATE TABLE `many_choose` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `only_choose`
-- ----------------------------
DROP TABLE IF EXISTS `only_choose`;
CREATE TABLE `only_choose` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL,
  `A` varchar(50) NOT NULL,
  `B` varchar(50) NOT NULL,
  `C` varchar(50) NOT NULL,
  `D` varchar(50) NOT NULL,
  `answer` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentID` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `class` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`studentID`),
  KEY `studentID` (`studentID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- ----------------------------
--  Table structure for `test_number`
-- ----------------------------
DROP TABLE IF EXISTS `test_number`;
CREATE TABLE `test_number` (
  `id` int(255) NOT NULL,
  `only_choose` int(255) NOT NULL,
  `many_choose` int(255) NOT NULL,
  `judge` int(255) NOT NULL,
  `gapfilling` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('lc','E10ADC3949BA59ABBE56E057F20F883E','刘畅');
INSERT INTO `gapfilling` VALUES ('1','按住鼠标左键,并拖动幻灯片到其他位置是进行幻灯片的 ______ 操作。','移动'), ('2','在幻灯片正在放映时,按键盘上的 Esc 键,可 _____。','结束放映'), ('3','保存 PowerPoint 2010演示文稿,系统默认的文件夹为 _____。','我的文档'), ('4','同一个演示文稿中的幻灯片,只能使用 _____个模板。','1'), ('5','在 PowerPoint 2010中,标题栏显示 _____。','程序名及当前操作的文件名'), ('6','要在 PowerPoint 2010中设置幻灯片动画,应在 _____选项卡中进行操作。','动画'), ('7','PowerPoint 2010生成的演示文稿的默认扩展名为 _____。','. pptx '), ('8','要在PowerPoint 2010中显示标尺、网格线、参考线以及对幻灯片母版进行修改，应在_____选项卡中进行操作。','视图'), ('9','在 PowerPoint 2010中要用到拼写检查、语言翻译、中文简繁体转换等功 能时,应在 _____选项卡中进行操作。','审阅 '), ('10','在 PowerPoint 2010中对幻灯片进行页面设置时,应在 _____选项卡中操 作。','设计'), ('11','要在 PowerPoint 2010中设置幻灯片的切换效果以及切换方式, 应在 _____选项卡中进行操作。','切换');
INSERT INTO `grade` VALUES ('042337','38','sp','5','0','15','25','45'), ('042427','1','1','15','0','10','0','25'), ('0425101212','1212','嘻嘻','10','5','15','0','30'), ('042514123','123','刘畅','15','0','10','0','25');
INSERT INTO `judge` VALUES ('1','Word不具有绘图功能。','N'), ('2','在Word中的段落格式与样式是同一个概念的两种不同说法。','N'), ('3','Word允许同时打开多个文档，但只能有一个文档窗口是当前活动窗口。','Y'), ('4','Word进行打印预览时，只能一页一页地观看。','N'), ('5','普通视图模式是Word文档的默认查看模式。','N'), ('6','页面视图所显示的文档的某些修饰性细节不能打印出来。','Y'), ('7','在文档的一行中插入或删除一些字符后，该行会变得比其他行长些或短些，必须用标尺或对齐命令加以调整。','N'), ('8','“恢复”命令的功能是将误删除的文档内容恢复到原来位置。','N'), ('9','进行“列选定”的方法是按住CTRL键，同时将鼠标指针拖过要选定的字符。','N'), ('10','“居中”、“右对齐”、“分散对齐”等对齐方式的效果，只在针对短行时才能表现出来。','Y'), ('11','嘻嘻！','Y'), ('12','哈哈！','N');
INSERT INTO `many_choose` VALUES ('1','在“幻灯片放映”选项卡中,可以进行的操作有________。','选择幻灯片的放映方式','设置幻灯片的放映方式','设置幻灯片放映时的分辨率','设置幻灯片的背景样式','ABC'), ('2','在进行幻灯片动画设置时,可以设置的动画类型有________。','进入','动作路径','退出','强调','ACD'), ('3','在“切换”选项卡中,可以进行的操作有________。','设置幻灯片的切换效果','设置幻灯片的换片方式','设置幻灯片的版式','设置幻灯片的版式设置幻灯片切换效果的持续时间','ABD'), ('4','下列属于“设计”选项卡工具命令的是________。','页面设置、幻灯片方向','主题样式、主题颜色、主题字体、主题效果','背景样式','动画','ABC'), ('5','下列属于“开始”选项卡工具命令的是________。','粘贴、剪切、复制','新建幻灯片、设置幻灯片版式','设置字体、段落格式','查找、替换、选择','ABC'), ('6','PowerPoint 2010的功能区由________组成。','菜单栏','快速访问工具栏','选项卡','工具组','BC'), ('7','PowerPoint 2010的优点有________。','为演示文稿带来更多活力和视觉冲击','添加个性化视频体验','使用美妙绝伦的图形创建高质量的演示文稿','用新的幻灯片切换和动画吸引访问群体','ABCD'), ('8','在“视图”选项卡中,可以进行的操作有________。','选择演示文稿视图的模式','更改母版视图的设计和版式','显示标尺、网格线和参考线','设置显示比例','ABC'), ('9','PowerPoint 2010的操作界面由________组成。','显示区','工作区','状态区','功能区','BCD'), ('10','下列说法正确的有________。','插入影片的操作应该使用工具菜单','在幻灯片中插入影片时，会出现一个对话框，让你选择幻灯片放映时是不是自动播放插入的影片','插入影片的操作要用到“影片和声音”中的“剪辑库中的影片”命令','在插入影片对话框中，要选择插入影片的类别时，只需双击要插入的影片','BCD'), ('11','以下哪些是属于“动画效果工具栏”中的动画效果________。','驶入效果','飞入效果','照相机效果','打字机效果','ABCD');
INSERT INTO `only_choose` VALUES ('1','Word是Microsoft公司提供的一个________。','操作系统','表格处理软件','文字处理软件','数据库管理系统','C'), ('2','启动Word是在启动________的基础上进行的。','Windows','UCDOS','DOS','WPS','A'), ('3','在Word“文件”菜单底部列出的文件名表示________。','该文件正在使用','该文件正在打印','扩展名为DOC的文件','Word最近处理过的文件','D'), ('4','Word文档文件的扩展名是________ 。','txt','wps','doc','wod','C'), ('5','第一次保存文件，将出现________对话框。','保存','全部保存 ','另存为','保存为','C'), ('6','要打开菜单，可用________键和各菜单名旁带下划线的字母。','Ctrl','Shift','Alt ','Ctrl+Shift','C'), ('7','以下关于“Word文本行”的说法中，正确的说法为________。','输入文本内容到达屏幕右边界时，只有按回车键才能换行','Word文本行的宽度与页面设置有关','在Word中文本行的宽度就是显示器的宽度','Word文本行的宽度用户无法控制','B'), ('8','“剪切”命令用于删除文本和图形，并将删除的文本或图形放置到________。','硬盘上','软盘上','剪贴板上','文档上','C'), ('9','关于Word查找操作的错误说法是________。','可以从插入点当前位置开始向上查找','无论什么情况下，查找操作都是在整个文档范围内进行','Word可以查找带格式的文本内容','Word可以查找一些特殊的格式符号，如分页线等 ','B'), ('10','打印预览中显示的文档外观与________的外观完全相同。','普通视图显示','页面视图显示','实际打印输出','大纲视图显示','B'), ('11','在幻灯片放映时，用户可以利用绘图笔在幻灯片上写字或画画，这些内容______。','自动保存在演示文稿中','可以保存在演示文稿中','在本次演示中不可擦除 ','在本次演示中可以擦除','D'), ('12','在PowerPoint 2003中，为了在切换幻灯片时添加声音，可以使用______菜单的\"幻灯片切换\"命令。','幻灯片放映','工具','插入','编辑','A');
INSERT INTO `student` VALUES ('1','1','1','1'), ('11','1','11','qq'), ('12','1','1','4'), ('1212','嘻嘻','1402','q'), ('123','刘畅','1402','q'), ('2014020332038','孙鹏','1402','q9t3e5q2'), ('2014020332055','刘畅','1402','mengmenga'), ('38','sp','1402','q9t3e5q2');
INSERT INTO `test_number` VALUES ('1','5','5','5','5');
