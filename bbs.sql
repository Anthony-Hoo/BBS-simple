-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bbs
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,' 请问你用的什么开发工具？',2,2,'2019-05-01 19:55:51'),(2,' 你报错的原因是因为缺少相应的jar包。这些包在tomcat的目录下',1,2,'2019-04-14 19:56:29'),(18,'哦，原来是这样啊',3,8,'2019-05-17 11:00:20'),(4,'用于将一个类声明为 Servlet 描述：该注解将会在部署时被容器处理，容器将根据具体的属性配置将相应的类部署为 Servlet。 属性详解：该注解具有下表给出的一些常用属性(以下所有属性均为可选属性，但是 vlaue 或者 urlPatterns 通常是必需的',4,1,'2019-05-16 11:25:05'),(5,'serlvet配置xml和@WebServlet ',4,1,'2019-05-16 11:27:15'),(6,'再写一篇，太好啦',4,7,'2019-05-16 23:30:24'),(7,'真好！',4,11,'2019-05-17 03:21:27'),(8,'佛系怪兽君带着扁豆炒肉\r\n来支持你啦,简友加油！欢迎到我这里来看看！！点个小赞，好运不断，来个关注，青春常驻，打个小赏，工资疯涨。。。',5,15,'2019-05-17 06:14:13'),(13,'有点道理。。。有时候跟非科班的讲一个东西很费劲！---一起加油吧',6,17,'2019-05-17 06:47:53'),(14,'无账号',7,17,'2019-05-17 08:25:45'),(15,'无账号',7,19,'2019-05-17 08:26:34'),(16,'疯狂的以太坊背后是什么？',8,21,'2019-05-17 08:40:20'),(17,'py只适合用来做项目前期快速开发上线，基本稳定后还是会迁移到java上面',7,19,'2019-05-17 10:52:48');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Serlvet中WebServlet注解详解','作用：用于将一个类声明为 Servlet\r\n描述：该注解将会在部署时被容器处理，容器将根据具体的属性配置将相应的类部署为 Servlet。\r\n属性详解：该注解具有下表给出的一些常用属性(以下所有属性均为可选属性，但是 vlaue 或者 urlPatterns 通常是必需的，且二者不能共存，如果同时指定，通常是忽略 value 的取值)\r\n',1,'2019-05-15 05:13:10'),(2,'MYSQL中的COLLATE是什么?','COLLATE通常是和数据编码（CHARSET）相关的，一般来说每种CHARSET都有多种它所支持的COLLATE，并且每种CHARSET都指定一种COLLATE为默认值。例如Latin1编码的默认COLLATE为latin1_swedish_ci，GBK编码的默认COLLATE为gbk_chinese_ci，utf8mb4编码的默认值为utf8mb4_general_ci。\r\n\r\n这里顺便讲个题外话，mysql中有utf8和utf8mb4两种编码，在mysql中请大家忘记utf8，永远使用utf8mb4。这是mysql的一个遗留问题，mysql中的utf8最多只能支持3bytes长度的字符编码，对于一些需要占据4bytes的文字，mysql的utf8就不支持了，要使用utf8mb4才行。\r\n\r\n很多COLLATE都带有_ci字样，这是Case Insensitive的缩写，即大小写无关，也就是说”A”和”a”在排序和比较的时候是一视同仁的。selection * from table1 where field1=”a”同样可以把field1为”A”的值选出来。与此同时，对于那些_cs后缀的COLLATE，则是Case Sensitive，即大小写敏感的。',2,'2019-05-15 05:13:10'),(4,'如家床单大片尿迹','<p>5月11日，福建厦门，一名游客入住厦门明发商业广场如家派柏·云酒店，当其掀开床单时，发现床单不换洗，并且有大片尿迹,到处是曲卷毛发。十分恶心，这位游客称，当天晚上酒店不退钱，只好去其他品牌酒店入住。</p><p>　　网友爆料原文：</p><p>　　如家旗下品牌，厦门明发商业广场派柏.云酒店，床单不换洗，床垫大片尿迹。 11号晚上定了4个房间，到酒店后才被告知是没有窗户的，前台客服竟然说“这种价格一看就是没有窗户的，正常人都知道。”态度非常难横。被迫无奈加钱升级了房间，没想到到房间后，一切震惊了。 床单和被套根本没有换洗过，随处可见的卷曲毛发。床单底下隐约可见黄色的尿迹。掀开床单，整个床垫都是黄色的一坨一坨，非常恶心。拍了照片和视频给前台看，前台派保安和我们再次上去核实，保安说“在外面住，就应该将就一下，再加一层床单就看不到了。” 当天没办法，住酒店也不退钱，就离店住了其他品牌的酒店。 当天晚上，让酒店前台找负责人电话沟通此事，回复说，负责人已经下班，没办法沟通。到11点钟，店铺店长打电话，意思就是“前一天晚上我们住的和颐价格高，所以理所应当是干净的，他们的酒店200左右，价格在那里，也没办法要求高”，在消费者眼中，价格应该跟地理位置和硬件挂钩，而不是跟最基本的卫生情况挂钩。 第二天联系如家总部，说专人处理，至今没有人回复。15号今天又打电话给如家总部，仍然推脱没有处理。</p>',4,'2019-05-17 03:54:28'),(5,'jsp中年如何取得textarea的值','<p><span style=\"color: rgb(51, 51, 51);\">是这样写的&lt;textarea id=\"inputText\" name=\"tinput\"&gt;&lt;/textarea&gt;</span></p><p><span style=\"color: rgb(51, 51, 51);\">我想用一个按钮或一个变量接收输入值应该怎么写</span></p><p><span style=\"color: rgb(51, 51, 51);\">我写了两个可是没反应</span></p><p><span style=\"color: rgb(51, 51, 51);\">&lt;input type=\"button\" value=\"取值\" onclick=\"alert(request.getParameter(\"tinput\"))\" /&gt;</span></p><p><span style=\"color: rgb(51, 51, 51);\">&lt;input type=\"button\" value=\"取值\" onclick=\"alert(document.getElementById(\"tinput\"))\" /&gt;</span></p><p><span style=\"color: rgb(51, 51, 51);\">1楼的不行啊...我都试了 还是不行呢 能QQ指导我一下嘛？</span></p><p><span style=\"color: rgb(51, 51, 51);\">3楼的办法可行，能给我您的QQ号嘛？我还有一个传递的问题...- -!!</span></p><p><span style=\"color: rgb(51, 51, 51);\">我的QQ是117039711</span></p><p><span style=\"color: rgb(51, 51, 51);\">1:如果textarea 值提交到其他jsp页面的话可以用</span></p><p><span style=\"color: rgb(51, 51, 51);\">&lt;input type=\"button\" value=\"取值\" onclick=\"alert(&lt;%=request.getParameter(\"tinput\")%&gt;)\" /&gt; 获取.</span></p><p><span style=\"color: rgb(51, 51, 51);\">2:如果是本页面获得textarea输入的值的话 可以用js</span></p><p><span style=\"color: rgb(51, 51, 51);\">&lt;input type=\"button\" value=\"取值\" onclick=\"alert(document.getElementById(\'tinput\').value)\" /&gt;</span></p><p><span style=\"color: rgb(51, 51, 51);\">需要把textarea的id设置为tinput</span></p>',5,'2019-05-17 03:54:28'),(6,'JSP中获取TextArea中的值','<p>1.写这个大部分人都会，获取其中的值，但获取的时候就会出现我们不愿意看见其中的乱码问题</p><p>今天写这个就是来解决乱码问题。下面以一个小例子来讲解</p><p>2.</p><p><span style=\"color: rgb(0, 0, 255);\">(1)首先编写一个JSP页面，用来接收来自前端页面的输入</span></p><p><img src=\"https://images.cnblogs.com/OutliningIndicators/ContractedBlock.gif\" alt=\"\">&nbsp;input.jsp</p><p><span style=\"color: rgb(0, 0, 255);\">(2)编写第二个JSP页面，用来显示</span></p><p><img src=\"https://images.cnblogs.com/OutliningIndicators/ContractedBlock.gif\" alt=\"\">&nbsp;view.jsp</p><p>3.</p><p>为什么这样呢，原因是当网前端浏览器提交时，要只定编码</p><p>4.结果图</p><p>输入图</p><p><img src=\"https://images0.cnblogs.com/i/511327/201406/010843199473993.png\" alt=\"\"></p><p>结果图</p><p><img src=\"https://images0.cnblogs.com/i/511327/201406/010844093849956.png\" alt=\"\"></p><p>&nbsp;</p><p>好了，验证完成.</p>',6,'2019-05-17 03:54:28'),(7,'从textarea中获取数据之后按原样显示实现代码','<p>从textarea中获取数据，按原样显示在某些特殊的情况下还是比较使实用的，下面为大家分享下实现代码，感兴趣的朋友可以参考下，希望对你有所帮助</p><p><br></p><p><strong style=\"color: rgb(34, 34, 34);\">步骤</strong><span style=\"color: rgb(34, 34, 34);\">：&nbsp;</span></p><p><span style=\"color: rgb(34, 34, 34);\">1. 用&lt;pre&gt;&lt;c:out value=\"&lt;%=从数据库显示的字段%&gt;\"&gt;&lt;/c:out&gt;&lt;/pre&gt;&nbsp;</span></p><p><span style=\"color: rgb(34, 34, 34);\">2. 显示页面中增加：&nbsp;</span></p><p><a><u>复制代码</u></a>代码如下:</p><p>&lt;style type=\"text/css\"&gt;&nbsp;</p><p>pre {&nbsp;</p><p>white-space: pre-wrap;&nbsp;</p><p>white-space: -moz-pre-wrap;&nbsp;</p><p>white-space: -pre-wrap;&nbsp;</p><p>white-space: -o-pre-wrap;&nbsp;</p><p>word-wrap: break-word;&nbsp;</p><p>}&nbsp;</p><p>&lt;/style&gt;&nbsp;</p>',2,'2019-05-17 03:54:28'),(8,'java的service文件夹存放的一般是什么内容','<p><span style=\"color: rgb(51, 51, 51);\">我现在是在看别人写的项目，service存放的是什么java文件，那些java程序是不是用于控制程序的执行</span><br></p><p><a href=\"https://bbs.csdn.nt/wap/users/26300075\">ljgstudy</a><span style=\"color: rgb(153, 153, 153);\">05-12 10:45</span></p><p><span style=\"color: rgb(102, 102, 102);\">等级</span>&nbsp;<img alt=\"Bbs1\" src=\"https://csdnimg.cn/jifen/images/xunzhang/jianzhang/bbs1.png\"><span style=\"color: rgb(153, 153, 153);\">1楼</span></p><p>系统业务逻辑相关的代码。<br>比如说我们用手机打电话，话费采用阶梯计费（类似100分钟内2毛，高于100分钟1毛），那么话费的计算在系统中就属于业务逻辑的范畴，响应的实现代码应该放在service层中。</p><p><a href=\"https://bbs.csdn.net/wap/users/19630250\">goldhjy0928</a><span style=\"color: rgb(153, 153, 153);\">05-12 11:25</span></p><p><span style=\"color: rgb(102, 102, 102);\">等级</span>&nbsp;<img alt=\"Bbs1\" src=\"https://csdnimg.cn/jifen/images/xunzhang/jianzhang/bbs1.png\"><span style=\"color: rgb(153, 153, 153);\">3楼</span></p><p>业务逻辑。<br>在这个层里面对数据进行逻辑处理&nbsp;。例如<br>我要对前台拿到的数据进行数据库插入&nbsp;。那么我要对数据进行一定的组装&nbsp;，判断，设置等等之后再插入数据库中去。service就是做上面的事情。这只是个例子&nbsp;具体还是要看你所需的业务逻辑<br>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>',3,'2019-05-17 10:59:00'),(9,'java的service文件夹存放的一般是什么内容','<h3 style=\"margin-left: 0px;\">java的service文件夹存放的一般是什么内容</h3>',4,'2019-05-17 03:54:28'),(10,'java的service文件夹存放的一般是什么内容','<p><span style=\"color: rgb(102, 102, 102);\">系统业务逻辑相关的代码。</span></p><p><span style=\"color: rgb(102, 102, 102);\">比如说我们用手机打电话，话费采用阶梯计费（类似100分钟内2毛，高于100分钟1毛），那么话费的计算在系统中就属于业务逻辑的范畴，响应的实现代码应该放在service层中。</span></p>',5,'2019-05-17 03:54:28'),(11,'服务目录管理','<p>一，服务目录管理流程的目的是确保服务目录 生成并得到维护，同时包含所有已经运营的服务和那些正准备运营服务的准确性。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1]</span><a>&nbsp;</a></p><p>二，服务目录管理的目标是管理服务目录中包含的信息，确保这些信息准确可靠，并反映出实际环境中正在运营、或正准备运营的所有服务的当前详细信息、状态、接口和依赖性。</p><p>三，范围：提供并维护有关将要或已经转换到实际环境的所有服务的精准信息。服务目录活动应包括：</p><p>1，定义服务</p><p>2，生成并维护一个准确的服务目录</p><p>3，服务目录与服务组合之间的接口、依赖性与一致性</p><p>4，服务目录和CMS(内容管理系统)中所有服务与支持性服务之间的借口和依赖性</p><p>5，服务目录和CMS中所有服务、支持性组件和配置项（CI）之间的接口与依赖性</p>',6,'2019-05-17 03:54:28'),(12,'如何才能提升大脑的灵活度？','<h4><b style=\"color: rgb(51, 51, 51); font-size: 16px;\">01给大脑增加负荷</b></h4><p>福尔摩斯是一位大名鼎鼎的侦探，他总能发现常人难以发现的线索。即使同处案发现场，他也能得到比别人多得多的信息。</p><p>福尔摩斯是如何做到的呢？他说的一句话给出了答案：“你只是在看，却没有观察，这有很大的差别。”</p><p>看和观察是两个不同的层次，“看”没有给大脑增加负荷。而“观察”是认真思索事物之间的联系，需要大脑积极配合，因而给大脑增加了负荷。观察过后的事物，在大脑中停留的时间更长，记忆也更加牢固。</p><p>给大脑增加负荷有多种方式，比如，<b>记笔记时用手写的方式，而不是用录音笔</b>。东京大学新闻部的学生做采访时，一直采用手写的方式记录。用笔在纸上记录的过程，也是大脑在思索的过程。用笔和纸做记录的方式，也被很多人推荐过；在上下班的路上，我们也可以留意旁边的商店，然后在晚上回忆商店的位置，商店里的商品等。</p><p><b>02多样化阅读</b></p><p>读书是普通人自我增值的最佳方式之一，读书除了能提升气质、开拓视野等外，还能提升大脑的灵活度。</p><p>不读书的人，很容易被眼前的世界限制。而读书的人，能够打破限制，从不同的角度出发，增加破局的可能性。</p><p>如何通过阅读，提升大脑的灵活度？答案是多样化阅读。多样化阅读既指不拘泥某类书籍，而是以<b>不分领域的杂读</b>方式阅读。也指用多种方式阅读，不必把每本书都一读到底，可以<b>交叉阅读</b>。经典名著自然要读，“闲书”也有读的必要。每本书籍背后，都有一套属于作者的逻辑，取其精华去其糟粕，才能最大限度促进我们成长。</p><p>《爆裂》一书提出了“多样性优于能力”的原则。在社会日趋多元化的今天，单一的技能已经无法满足社会的需要，只有拥有多种技能的人才，才能适应当今世界的竞争。比如，职场人士不仅要读关于职场方面的书，心理学、艺术等方面的书也可以阅读。如果把我们的大脑比做土壤，不同的书籍就是不同的种子，让种子在土壤中“发酵”，最终破土而出的就是精华。</p>',4,'2019-05-17 05:27:03'),(13,'如何才能提升大脑的灵活度？','<h4><b style=\"color: rgb(51, 51, 51); font-size: 16px;\">01给大脑增加负荷</b></h4><p>福尔摩斯是一位大名鼎鼎的侦探，他总能发现常人难以发现的线索。即使同处案发现场，他也能得到比别人多得多的信息。</p><p>福尔摩斯是如何做到的呢？他说的一句话给出了答案：“你只是在看，却没有观察，这有很大的差别。”</p><p>看和观察是两个不同的层次，“看”没有给大脑增加负荷。而“观察”是认真思索事物之间的联系，需要大脑积极配合，因而给大脑增加了负荷。观察过后的事物，在大脑中停留的时间更长，记忆也更加牢固。</p><p>给大脑增加负荷有多种方式，比如，<b>记笔记时用手写的方式，而不是用录音笔</b>。东京大学新闻部的学生做采访时，一直采用手写的方式记录。用笔在纸上记录的过程，也是大脑在思索的过程。用笔和纸做记录的方式，也被很多人推荐过；在上下班的路上，我们也可以留意旁边的商店，然后在晚上回忆商店的位置，商店里的商品等。</p><p>大脑越用越灵活，只有时不时给大脑增加负荷，才能更快地提升大脑的灵活度。</p><p>作者：清芷兮兮</p><p>链接：<a href=\"https://www.jianshu.com/p/9a46bf4882f5\" rel=\"nofollow\">https://www.jianshu.com/p/9a46bf4882f5</a></p><p>来源：简书</p><p>简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。</p>',6,'2019-05-17 03:31:43'),(14,'李嘉诚说：不想穷，就好好记住下面的话！','<p>无论你是男人，还是女人，做人，想成功！下面就是你必须要做到的：<br></p><p>1，这是个现实的社会，感情不能当饭吃，贫穷夫妻百事哀。不要相信电影里的故事情节，那只是个供许多陌生人喧嚣情感的场所。只有不理智和不现实的人才相信<br></p><p>2，给自己定目标，一年，两年，五年，也许你出生不如别人好，通过努力，往往可以改变70%的命运。破罐子破摔只能和懦弱做朋友。<br></p><p>3，朋友请你吃饭，不要觉得理所当然，请礼尚往来，否则你的名声会越来越差。<br></p><p>4，好朋友里面，一定要培养出一个知己，不要以为你有多么八面玲珑，到处是朋友，最后真心对你的，只有一个，相信我。<br></p><p>5，不要相信算卦星座命理，那是哄小朋友的，命运掌握在自己手中。坐在家里等什么房子，车子，还不如睡一觉做个好梦。<br></p><p>6，不喜欢的人少接触，但别在背后说坏话，说是非之人，必定是是非之人，谨记，祸从口出。</p>',4,'2019-05-17 03:58:31'),(15,'Markdown编辑器推荐','<p>故事之后,问题依然要解决。互联网开放性，<code>Markdown</code>编辑器进入我的视野。基于<code>易用</code>+ <code>提效</code>的思路，在长时间的试用之后，我收集如下的<code>Markdown</code>工具，分享给大家。避免经历：被羞辱和被损害的经历。</p><h4>关于<code>Markdown</code></h4><p>网络介绍够多、够详细。其目标：<code>易读易写</code>,和<code>一种适用于网络的书写语言，兼容HTML</code>。</p><h4>Typora - 最亲近程序员的编辑器</h4><p style=\"margin-left: 0px;\"><code>Typora</code>是基于多平台（macOS、Windows、linux）下，如果你是内心文艺、热爱写文，又嫌弃传统编辑工具。&nbsp;<code>Typora</code>是你的首选，因为它是最接近程序猿码字风格的编辑器。<a href=\"https://links.jianshu.com/go?to=D%3A%255CApilotEdit%255Cmarkdown%255Ctypora.png\" target=\"_blank\">基本风格</a></p><p style=\"margin-left: 0px;\">官方的目标：&nbsp;Readable &amp; Writable</p><p><br></p><h4 style=\"margin-left: 0px;\">MarkdownPad 桌面端使用最为广泛编辑工具</h4><p>windows系统下让人心动的软件。<a href=\"https://links.jianshu.com/go?to=http%3A%2F%2Fmarkdownpad.com%2Fimg%2Fmarkdownpad2.png\" target=\"_blank\">logo</a></p><p>优点描述</p><ul><li><p>即时看到你的Markdown文件</p><p>可见即所得的模式，左边是编辑器，右边的效果图。</p></li><li><p>PDF导出及导出格式自定义</p><p>满足各种格式转换和自定义格式转换的要求。</p></li><li><p>极致简约</p><p>北欧的极简风、又有设计感的风格，很有逼格。</p></li><li><p>定制高度自由化的编辑器</p><p>配色方案，字体，大小和布局都是可定制的，因此您可以把MarkdownPad定制成为您的完美编辑器。</p></li><li><p>其它</p></li></ul><h4 style=\"margin-left: 0px;\">马克飞象 - 颜值在线、功能出众</h4><p>马象源于印象笔记项目，现在独立出来用户即使不关联印象笔记不影响体验。搬出来官方的介绍：</p><p><strong>马克飞象</strong>是一款专为印象笔记（Evernote）打造的Markdown编辑器，通过精心的设计与技术实现，配合印象笔记强大的存储和同步功能，带来前所未有的书写体验。特点概述：</p><ul><li><p>功能丰富：支持高亮代码块、LaTeX 公式、流程图，本地图片以及附件上传，甚至截图粘贴，工作学习好帮手；</p></li><li><p>得心应手：简洁高效的编辑器，提供<a href=\"#\" target=\"_blank\">桌面客户端</a>以及<a href=\"#\" target=\"_blank\">离线Chrome App</a>，支持移动端 Web；</p></li><li><p>深度整合 ：支持选择笔记本和添加标签，支持从印象笔记跳转编辑，轻松管理。</p></li><li><p>在线云笔记</p></li></ul><h4 style=\"margin-left: 0px;\">在线markdown 编辑器</h4><p style=\"margin-left: 0px;\">在线工具是时代的趋势，markdown编辑器在线优秀工具如下，供大家选择：</p><ul><li><p style=\"margin-left: 0px;\"><a href=\"https://www.jianshu.com/\" target=\"_blank\">简书在线</a></p></li><li><p style=\"margin-left: 0px;\">有道云笔记</p></li><li><p style=\"margin-left: 0px;\"><a href=\"https://links.jianshu.com/go?to=http%3A%2F%2Fmahua.jser.me%2F\" target=\"_blank\">MaHua</a></p></li><li><p style=\"margin-left: 0px;\"><a href=\"https://links.jianshu.com/go?to=https%3A%2F%2Fwww.mdeditor.com%2F\" target=\"_blank\">MdEditor</a>&nbsp;-- 画面漂亮推荐</p></li><li><p style=\"margin-left: 0px;\"><a href=\"https://links.jianshu.com/go?to=http%3A%2F%2Fmarkdown.xiaoshujiang.com%2F\" target=\"_blank\">小书匠</a>&nbsp;-- 比马克飞象更漂亮，唯缺少客户端</p></li></ul>',2,'2019-05-17 05:32:44'),(17,'自学Python编程和科班出身的Python编程差别在哪？','<p>自学Python编程和大学学计算机的人学习Python编程，差别在哪？谁会更受公司欢迎？</p><p>相对于专业就是编程的人来说，学习Python自然会更容易，因为他们具备更加完善的理论体系，所以学习编程会更加容易。</p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-84bdbafefae31aea?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>相对于自学Python编程的人，可能因为涉及到自己未知的基础概念，而不得不先补基础，再学习。</p><p>但是，<b>对于学习Python编程就一定是科班出身的程序员会做得更好吗？</b>看图</p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-bd875e72f6e7d815?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-2b50afaee92e57a0?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>然而，没有公司会只看一个学历，更重要的是你能不能帮助公司解决技术问题。</p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-adc4ebd2e7d4e086?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>自学成才的Python程序员更需要不断努力，反之，对于科班程序员而言，就算是再牛，人之为学，不日进则日退，不过几年，也会泯然众人矣。</p><p><b>Python附赠福利</b></p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-2d6ac1f67589cd2d?imageMogr2/auto-orient/strip%7CimageView2/2/w/218/format/webp\"></p><p>项目案例源码、声音库、图片库等，都是精心收集，后续还会不断增加。</p><p><img src=\"//upload-images.jianshu.io/upload_images/16980865-ae5e4d7bc58f92d8?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p>',6,'2019-05-17 06:47:27'),(19,'Python 开发过那些牛逼的 App','<p>如今 Python 越来越火，大有登顶编程语言榜首的趋势，很多人开始知道或者学习 Python，今天就介绍几款由 Python 开发的世界大牌 App，让你再次认识它。</p><p>下面一睹为快，看看有没有你不知道的。</p><p><strong>▌Instagram</strong></p><p>这款 App 想必你应该很熟悉，不少人也玩过，前几年还可以随便上，现在不行了。</p><p>简单介绍一下它，自 2010 年 10 月诞生之日起，就一直稳坐「在线图片及视频分享社交应用软件」的世界老大位置。</p><p>它有多牛逼呢，用两组数据说明一下就知道了。</p><p>其一，根据 Alexa 世界 500 强网站流量排名，Instagram 位居 <strong>美国第 11 位，世界第 17 位</strong>，排它后面的是「微博」。</p><p><img src=\"//upload-images.jianshu.io/upload_images/14581851-8f3f2317f3d226fc.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>image</p><p>世界 TOP 20 网站排名（点击放大）</p><p>其二，<strong>日活跃用户达到 3 亿，月活用户达到 10 亿。</strong></p><p>这个数字你可能没概念，拿国内最近风光无限的「抖音」来对比一下就知道了，根据抖音 1 月公布的官方数据，抖音日活用户 <strong>达到 2.5 亿，月活用户有 5 亿</strong>。</p><p>还是比不过 Instagram，不过抖音后劲非常猛，海外版 Tik Tok 已登陆全球 150 个国家，微信都没走出国门，它走出去了。</p><p>话说回来， Instagram 能这么牛逼，主要是因为它有一个更牛逼的爹：脸书「 Facebook 」。</p><p><strong>▌Reddit</strong></p><p>Reddit 是美国最大的娱乐、社交及新闻网站，由两个维吉尼亚大学的学生在 2005 年创建，最初采用 Common Lisp 语言编写，后面改用 Python 。</p><p>相比 Instagram，它在国内知名度要低一些，而实际上它比 Ins 要牛逼，是 <strong>美国排名第 5 的网站</strong>，排它前面的只有：Google、Youtube、Amazon 和 Facebook 这四大巨头。</p><p><strong>▌Uber</strong></p><p>Uber 你应该熟悉，前两年和滴滴打得不可开交，目前拥有 1 亿用户，它使用便捷的 Python 来处理大数据。</p><p><strong>▌Dropbox</strong></p><p>如果你经常使用网盘，那应该会比较熟悉 Dropbox ，它也是用 Python 开发的一款顶级 App。</p><p>提到网盘，就不得不说国内的百度网盘，简单对比一下，在存储空间大小上，百度网盘还是很良心的，免费提提供 2T 存储空间，而 Dropbox 仅提供 2G 免费空间，差了 1000 倍。</p><p>Dropbox 虽然在容量上输给了百度网盘，但在安全性、协同合作等方面，能甩百度网盘好几条街。</p><p><strong>▌Pinterest</strong></p><p>如果你是一个设计师，那么 Pinterest 你一定不陌生，该网站和 App 也是由 Django 搭建的。</p><p>作为一个图片分享网站，它最大的特点是可以方便地采集和收藏喜欢的图片。比如你喜欢 PPT ，就可以在上面采集 PPT 作品作为灵感储备，类似中国版的「花瓣网」。</p><p><strong>▌Spotify</strong></p><p>Spotify 是一个起源于瑞典的音乐流服务公司，也是 <strong>当前全球最大的流音乐服务商</strong>，国内众多音乐 App 中，能接近它的也只有网易云音乐。</p>',7,'2019-05-17 10:54:05'),(21,'以太坊突然暴涨，是牛市来临的信号么？','<p>最近比特币走势预测大咖Tom Lee转发了一则推文。原文发布者叫Altcoin Paycho，他说以太币已经突破了长期的阻力位。我要做多了！</p><p>Tom Lee预测，以太坊今年年底会突破1600美元。</p><p>Tom Lee以前每次预测都比较保守，除了2018年，预测比特币上涨25000美元以外，他的预测基本正确。即便比特币在去年10月没有任何迹象走牛，他仍然乐观地看好15000美元，虽然后来因为比特币现金分叉，比特币从6000美元的价格跌落至3000美元以上。</p><p>对此，Tom Lee在接受财经电台采访时表示，比特币这个价格是不对的。而对于加密货币，他还是乐观，他认为加密货币的托管等基础设施正在完善，货币的采用率在增加，交易所的价格并没有反应这些基本面。</p><p><img src=\"//upload-images.jianshu.io/upload_images/15633690-cc591eeab3bbe15e.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600/format/webp\"></p><p>Alex Kruger 在推特上说，这两天在交易所Bitmex ，以太币已经放量上攻了！大家知道，BItmex交易所以前一直是做空以太币的，甚至放出100倍杠杆。BItmex的创始人亚瑟海耶斯甚至在比特币6000多美元，以太坊400~5000美元的时候，放话以太坊会跌到100美元以下。当然，以太币跌到了最低80美元，但比特币那时候已经接近3000美元。</p><p>Cryptohispano 这位老哥，估计是西班牙裔，他兴奋地发推说，以太币287天的熊市，终于走完了！</p><p><img src=\"//upload-images.jianshu.io/upload_images/15633690-1faeabd082d49ba9.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600/format/webp\"></p><p>还有由看空转向看多的，比如这位推特上的网友DonAlt，在几天前，他预测以太币要向上突破，「我不是突然转成看多，我说过，ETH会触底然后再上攻。」一点没错吧！</p><p><img src=\"//upload-images.jianshu.io/upload_images/15633690-35af0578d41f0559.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/600/format/webp\"></p>',8,'2019-05-17 08:43:03'),(22,'还嫌自己不够白？穿上黄色毛衣大方时尚超显白','<p>2019年春天的到来，流行色毛衣那么多，我还是觉得黄色的毛衣比较大方时尚，关键还超显肤白，即便是黄皮肤女生穿上，超显白！</p><p>1、这款是属于高领设计的黄色毛衣，宽松的版型完全不用担心身材的问题，衣袖是喇叭袖的设计，整体设计上超能遮肉显瘦的，黄色超显肤色的，像这么明艳的颜色特别的受到小女生的喜欢，搭配小脚裤，怎么穿都显腿长。</p><p><img src=\"//upload-images.jianshu.io/upload_images/15383130-ae35d6e37aec3335.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>2、经典小圆领设计的毛衣，圆领的设计可以很好的修饰你的颈部线条美感，只是黄色为色调看起来就已经足够的时尚感了，宽松的版型结合半塞的设计，修饰小肚腩是最好的穿法，搭配半身裙，裙子是针织的材质，穿上身就已经足够的时髦了。</p><p><img src=\"//upload-images.jianshu.io/upload_images/15383130-52c33af8f6f244d6.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>3、厚实的针织材质是大部分女生都喜欢的版型，经典的圆领设计让你的颈部线条看起来特别的好看，宽松的版型无论谁穿都很适合的，袖子是灯笼袖的设计，穿上身特别的遮肉显瘦，对于手臂有小赘肉的女生也不用担心，太好看了。</p><p><img src=\"//upload-images.jianshu.io/upload_images/15383130-7d947d35abd52d8f.jpg?imageMogr2/auto-orient/strip%7CimageView2/2/w/640/format/webp\"></p><p>4、相隔比较宽的波点元素作为装饰，看起来比纯色系的要特别有个性一些，同样是宽松的版型，无论谁穿上都很显气质的，黄色为底色很显肤色的颜色，黄皮肤女生穿上也超显肤白，搭配牛仔蓝特别的显高级感，无论谁穿上都很好看。</p><p>2019最流行的黄色毛衣，黄皮肤的女生穿上，超显白！</p>',7,'2019-05-17 10:55:28');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'song','song','2019-05-14 19:54:30'),(2,'user1','user1','2019-04-30 19:54:57'),(3,'user2','user2','2018-11-10 00:09:30'),(4,'admin','admin','2019-05-16 05:48:43'),(5,'admin123','admin123','2019-05-16 07:24:12'),(6,'简约-R','简约-R','2019-05-16 11:29:48'),(7,'无账号','无账号','2019-05-17 08:25:26'),(8,'阿林家的猫','阿林家的猫','2019-05-17 08:34:40');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-17 19:06:55
