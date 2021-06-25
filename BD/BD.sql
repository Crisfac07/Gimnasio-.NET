-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `No_Empleado_A` int NOT NULL,
  `Nombre` varchar(80) DEFAULT NULL,
  `PApellido` varchar(80) DEFAULT NULL,
  `SApellido` varchar(80) DEFAULT NULL,
  `CURP` varchar(45) DEFAULT NULL,
  `RFC` varchar(45) DEFAULT NULL,
  `Direccion` varchar(300) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `userAdmin` varchar(80) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`No_Empleado_A`),
  KEY `correo_idx` (`userAdmin`),
  CONSTRAINT `userAdmin` FOREIGN KEY (`userAdmin`) REFERENCES `usuario` (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (571,'Jesus','Badillo','Escamilla','BAEJ800606HGRDSS07','BAEJ800606000','AV. INDEPENDENCIA NO. 241 COL. CENTRO TUXTEPEC','5598346532','jbadillo@gmail.com',NULL);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `Id_Articulo` int NOT NULL,
  `Titulo` varchar(200) DEFAULT NULL,
  `Descripcion` varchar(400) DEFAULT NULL,
  `Enlace` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id_Articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'PROGRAMACIÃ“N AUMENTO MASA MUSCULAR PARA MUJERES. PASO A PASO','A la hora de programar un incremento de la masa muscular para mujeres a medio plazo (2 a 6 meses de duraciÃ³n),...','https://powerexplosive.com/masa-muscular-para-mujeres/'),(2,'MÃ‰TODOS AVANZADOS CLUSTERS Y MYO-REPS. DIVIDE Y VENCERÃS','En el entrenamiento con cargas teniendo por objetivo fuerza mÃ¡xima e hipertroï¬a, la sobrecarga progresiva es fundamental para el progreso. Si bien es cierto que se puede conseguir con mÃ©todos como los conjuntos de series tradicionales, tambiÃ©n resulta interesante aprovechar los beneï¬cios que nos ofrecen ciertos mÃ©todos avanzados','https://powerexplosive.com/metodos-avanzados-clusters-y-myo-reps-divide-y-venceras/');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clase` (
  `id_Clase` int NOT NULL AUTO_INCREMENT,
  `Nombre_Clase` varchar(100) DEFAULT NULL,
  `Precio` int DEFAULT NULL,
  `Descripcion` varchar(300) DEFAULT NULL,
  `Imagen_Clase` longblob,
  `Cupo` int DEFAULT NULL,
  `No_Empleado_I` int DEFAULT NULL,
  PRIMARY KEY (`id_Clase`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (2,'Natacion',70,'Nadar es un deporte perfecto para cada tipo de personalidad.',_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0\n\n\r\Z\Z (\"&#0$&*+-.-\"251,5(,-,	,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,ÿ\Â\0:\è\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0Ke®d²X\Ãt™‘\É\à¦—Ÿs=×§m‰|w\Ğz]\ÊºLND±y N<(\È\Ì\Ğø²\íÆŸg\Õuİ‡3\æö6ıõ\Ì™Š\Şg­Ø¿Q\Ç\Ü\ß\ë÷—¬lº,«kO\Êó:Z4µtÖ±~ûr\ÏEq\Ãdl){\Ì\ã\ç$¨r<¿q\í{…\Ö\ä8\Şç²¤;\çFK Z¨0a31b\Ü\ÌW†ó\ï\Ù\êl?\Ò;„p\Ü\Ôô]Í„DVòşw£¹·Ñ£\Ğ÷\\w0«—6t©kù\İ]\ZT¨\ÑH–\ãyw\Ğ\ì™\ÉI¸\ØXç¼¢ Œ¢«\äx\Ş\Ã\ÕÃ\æ\Ïqº¸¶\å\ÆœÉˆ\Â&fb\Ær\"\â\Ë\Ğ\Zlú?~\î1¼\çkµŒL¼McÀğ÷ûM\ïAµ\r›r;”1u:\ÚT)k—U\"#—·\ÛOGU\Ëy-\"\Â&0›e™‘2x®jª4}ga\Ìpıj%Zİ\Â\Ërs\'3!¥2!¯\Ôô\ZpôB¼¯;µ\Ü\Æ	À\Ä\Âù¿7\r‡G\Õ^¶º\\wºm%@\Ö\ã5›z\\\İ,®0\İ\Î\ï\Õ]˜vL\Ï0&\Ãr]`\â\Ğ$ùW)w \ì:}}\ËaZ¬\Û\Ûi”I–FI‰\0†³“¸¿/T\ë\Õ\Énö\Ó#88‡a#—\áª\Æ\ã¨\èns|†§KD6»¥„#Š\çzŠ|\İM€VË»\ßc&ºkº\ä\ã\nCfÆ¹º\í5\Ó\Ô\×\ã[\è}-Š\Ü\èõw	UŠ\Í\ÆaAÀÌ±xd¦J\Æu\\÷‘m}7o\Ê\ïw630bB\Ù\ç4úMB\×\ìú+şG\Éoªh3c´Šù½m\ê4’ª\0”ÀÁlı\ê\ÙI˜e$À7^\Æ\'\ËôûŠ{m\Æ\Ão¸\Õ\é·\×^\Ì,…WÍ©\Â%%\ì\ÈÈšÔ¸\ŞkKr—«\í-ö­XÈ€¯™\ã·úD\ß\Ë[\Íõÿ\0>¯\Ûk|÷‘\Õö\Ù\n\ntu\ÈU>z•\Û+B\Úö;+6Y\'d\ÉI9÷¸y\êœe>‡¥³\"yn\Ö\ÖL@\n¬[\Ì8V GW\Z;ş;Î;ª•·;RP‰\æ/WÁs\İ\ßW½O ¹¼\ß\ßRy\ï?\äù…ú;Db¯5\Æl7Ty\ê\Û;,M:ª\ÏX\Ù_´û{Œ§pÆ4ˆ\ÜÒ¶Õ¶\ê¢Í–¢§v\Ù‰%V-‘\Ì\Ê\Ôü\ëÓ¬M~k\Èz¾Ï¤N¥w7&\"¢šš4qzŞ‡¹\èm\ê9¾3m½\İ\Õ\Ôs<Ş›S¦O¡nW½Î†­%\Ëe*g£Ù±a¶­1®6\n\Z\È[‹_\Óõû\ÍJˆ‹Q”\æ\rt¸\Ü\Öf·F\íûôÚ­f»¡\èÌ”ˆ/]\ÉS\Ùq\Ñ\Ôöû3›««\ìM\Õ9M=W6º\à BŸ8\'AP,R š\ß[9cd\Ì\ÚLkde\ÒY ‡¯›\Úv9¦Ü¶¾š\æ\Ûa`òbqUÀXXP\Ç\Ì\'Ç·}Õ¦°–‰\ÎTòŞ‚†Œ»~›o\å§PøœW\çı®¯‚\Ø\Ù£l„T5œÿ\0;\Ñ\Û¬²k\Û\é&¼\ç\nXN’œ3–\ÌÈ©G:-RÊ”\ÊõMp\İ9\'\"±˜‰\ÂO9··z•«Ry™“$ø}\'R\ëz‡õ;ptZ:;jó\ÌyqWš}\Ş÷\Æ)k¹¼¿XTˆ;\r;·-\Ù\Ün-±¥\n~<œk&°\Æ\Üô§ \åwyYd±®…\Î`\ä=\ç6\â\ë7v“0\Ì\È	G8{o\Øt:Nz˜s|\Ç-«\ï59Ü§®\Ñò\Ë]S U=}%JVø²\è\×S³¹\Úo¶û0¤\å„02\ÑÉ}wU\İm\éñı–\éó˜\ìÌ)#Pù\ï-\Û\í3`İ¦Bò\"ªt\Ú-÷.®·°¥\ÂS\ß\ìI©\Ó\è4^™±Jù\ï>—M\Î\ím·£ß‚\Ä__M\Ëòªl1ö\ÛA,\×\ìm\ìw{m­Æ°‰\0\\É­¦\á\èz?T¾k¸\İ\âñ¦Yƒ&q*\â\ë\ë\ïu\ìm\Å\Ç\Æ\îx\ë\Î^¡u‰\ÒjT\Ì\å|£¼\åøXï–ª^i¦\í*\×CÓü«ŠÖ´TDM\Z\Ñ=u:\Å\'a¬€_\Ø^½z\ë\\Ò™4ñü\ëÑ¦\ë»Gñ[«±3f.XfE‚\ïm\ìHWŒ–r«\æ·k\á©z\ÇYcš\ãu€i¼£¹\×\è“\é\ÛuA[™\êª2´\Ù\Ú\íŒ\"\0ahMuõ»,¯BœSe½e[‹‡†•&Ã¶{‹Nk…\\]dr~¿º\å7––DË›¯\çZO¤IC\n jk5¶)sıj8\Öõ÷u¼æ³—ôë¡¤\ÑU6è½˜\Ô:N^óµ°–[¹´`LŠ”6Æ\Õøuöª¬Ôª§mwû\Õ`„:\ÌM/+µª\Û{\İJ@`\Üó!É€yø\îú©,1XUU5i\íiıwª\çõ\Zº–7úoôN´ô¬\Öxôw:Uôıfjôš\à³~õzÀrİ•®¹@W\ç\ZÖ¹Œ‡L1¶‘J\Ñ\í,_¾\Ù!Œs›\â8mß¯hz9ƒ\ÅÄ°\Ï\'\nQ\Êmö\Ï\Ã3•¹\ÆÚ¡\ê\İ_§óc\Şuµ¸-¶§U\é{Urzúšı\Ë-uo…\Ö\Ó\êjf\á”‡j\í\Ö%U¨Ô«¬\Õ\İ{XR\Ó{%	Û­­\æk\Ô\Û6%\âm˜œ¯¢¥·¹\Ğ:&V­R¥ñû>¶\á›XxLœ\n\ÍkG\Ñ§Ó‡\n«Œh¼·bÁö)¯¢\äú$\ÅmAv\nE`¯e’UUjiW\Ô\êõ\È¢%¥nÍ‰°²){w[\ÃcBM…ƒ_‰\Öt=³§i\æ\n‡O\Ä\Ù\ì6-\ÚIÃ¦a:6É‰\Ökz\íWö;\í$U^ö¿œº³7ı¯S©^\â\Él2g\'O_S[­\Ö\×\Ö\ê”#\Ú<§d›a²‚\Øl¶7-\ã\Ã9]z5‡/±é¹¾ÄœN{_x©\ÇQ\èn\î‹§djkm¹ó\×r~‹®\áºNÎ§-\Ân»{\ÚşcŒ\ëQ²\ë\î­4)YŠl±~ò\áT¹8½¦\Ô\ëh!` 1C–\Ã&Nf@f1Gwav\Ù5--*\r­\Ç+wv‘c\ZL\"E`\Z÷]d‚WQvvB<Y\à½ÿ\0!\Éú&ÿ\0›\à7Õ»\ë´9Š{ Ë—+€¯­\Òii\î\é\Ó\×\ê\ê\0€€À\Ævdn;¶&`NYb›ÄŒÖ´1ö\ÌôUzR8n¹¥Mo\Ú\ØY{\Ø\ãlÆ†zĞ¡Qú+:y\Şò\Ü\Ó{‡1 \Òum\Õêµ›\n\Õ,Üµu4µú«A\Îk5\êJF\0b23\"#;•Åƒa´\Ø\àªí…§¡.©R½\Ö\ál(\ê6%[¨…Xf*Q§\Õn\í¬’ıƒ,\ØÍ§=c§\Ñ\×\×Xà»w›öİ‡-\Ãu]^\ÃO\Î/dmÃ±)„kjR\Õ\è\ĞT‘˜00#\0=Åƒk1\ìtDÈ¥!º¼û\íd­úÈª¦šti\ÖZ\â±V\Éiy\İ\Î\ã2[³}”¶\í®kŸ\éù{\\—£yı\Î×\×\ì»~{[cxûh¬B­=e\ZU9ƒ##*\\\0(ªƒc›&\Ç\Ø`TvNÄŸmqfed\Îr‘{©\ãû©r›Zs#ƒV\ëq³k$S›½…Nw\Şr\'6¾§ˆ\Øöü\æ‡o\ÒÚ«¯\Õi(k’“1™‘80\0\"\"!°c\Z\æ9\ÆE3˜¶2ÁIYkö“e¦s¤\Õ\Ø\éy¾\ÔK$‹+rœ÷iµ\ØE:÷¬VŸq«š}=¸\Ûs¾µ®£F¾»S­VNL\äFfLN`D\n\âD\"\"°Ú›e¸&\Ó<–1²\Ö\Îbd„=\ÌkC_}÷\Şdlj(ZÙ±··5)\ÎY£Z¶\ÃOº\nûj7ó§\Öhù„\ä\Ì\æNd\ä\ÎdÀÀ€ÀˆÀDˆ\0Fşd\ä˜s…\'2v1#2\Ö\Û&³%Xc¬6[s2%cM{Fm7m*¥e\Zø\Ùj¶”\Ëb\Ç\Ô\ç(kµô*ªd¦g#\"32##\"\"`F\0 7xL2\'L\ÎK,”-—\Z7Š#bfo0Š\n8u\Ş\Æ\åbB¥Z\ë`\Ëaz¾«O§¹n\Ã^\Õ-Uõµqj\n\âh]`\ÉÈœ\Ì€ÈŠ\Ç D`.8È¤\å‚L&IN	dœ\Ìl52\ÛU®^a²ÍŠz=nó«\è5\èBª¤ŒoY„“¬ª²Z„²\'s€$#™3ƒ\0A#0·cNaö\r„lP³	L€‘ƒ™\Èk\rĞ»o\Æd&¸lö½V\ï5´RI²C§\Ó\Õ\Ô\Ö\0‰ˆ‚\ÉÌœÌŒŒ‰’‰B˜\ÌZs‘1\0\" ´†fd…‚a‘0š\×\áf²\ÃJr`\Üv,Øª½–®\í\ÌÄªª\Ñ\î\î$“KU¨\×h–°\É\Ì#\\2\0¦#\' pe™˜³‘Ìˆ €\\\àŠA@;&Dœ\Æ½¬yƒ–ó’…¦\"rY5™\\\r\í{\Ò6k4šm0l\Â,É\"[\Ç2rZXY89-H±c“3ñÊµ-\ëö\Z[šy\Ø2i›w\çMq˜3\"\Éi\Ã\ØD—˜¥D¿1}¯V•ê´š\n0¨(œ˜Œf.rdó0\Û@\ÃÆ‹N»M\Ç%\ÉTEe¯§G)Z\Øu6¹.\ã\ÇÙ¢ô=hd¥{?YØ¥\ÖA4\Ñ_Î‘d‹jUdT\í”\åK±0·fûW»\İ\èy–d©™)	™\Ù:İ»¥Å”(\05¾\î±Èº™\ÑnªÔ²%NÁUÁI@XÒı<Ÿy¡\è9½®«Z\Ó:\Õ^`Ö³c&\Ú\ÕB/Toöª¦;½`Z¨\ê–sV[° ™\ÄY˜Ëº\È\é,P\ĞXô\Ë+ÖŒ¯cJ®¡kYô{¾€\Ù ñWˆR°V¥À.1Š0\Å`SY]l\ä\æ¼ö5›k‚¦\Æd”½’‹)Ş‚\ÊW\æRbhß˜«g&³N+”¥\Ù-\È\ÍV\Ò\å|(MˆÌ›9“™•˜\"\"#\î`\à\Ä\0@@\0€+O\\m+hs3šûo’¯a¸e‰µ 8SR\ŞÖµ—.\éf­¬š\Ö\"R\É\Ê\ä¨l”–J®\åvb“h³\'33\nG23#\"20b b DDD`@@F£rR@ü™§t˜R*´e)—¶…²É©lñPÒš–O*Ø™¬\Ã\Êøƒ™É˜\É)\"­lòbc2s3\"c#\"2\"0````B B\0DEl2’\"“‰šW‰„Adâ§1Z\Ù\È&\É\âa\å5\ÜD¶S$J\nq…$S3ƒ&S9™™&¼‰ŒŒˆ\ÌŒ\"##aA0Ì‹0å“Œ#–BM§™F\Ó\æUZ\é.H\àBdA(‚)™™\É\Ìˆ\É#\ÂÉŒŒŒŒÁŒÃ¯\00!\"!\ã#’nA;\"N\Z\Û\nN™9\Ê\É\áM2mŒœ¥ğ°+\ÊBfK\n\èZH²K\'\'32b1&S99˜\ê¢#\"\"\"#\06\ÊHŒšl!\É68\Êa2\Ë2raLo:rHtû+E3™¤½zs1š\æd-@\Æ,+Õ®•\áL\Îd\ÌNfd\n–‡%9ƒ8\"0!\"7\Ö`\ã\æ”©3b\ÑÌ”\Åİ¶E33¤ºW§&J¾‹u{& ªĞ³e\Ñ8„!Ï™Ä‚)¦µxÉ™™œ\É\Ì\ÌÌŒ\È%k)\ÌYˆŒB\à7D÷H‹*©Ö­\É\Éf¹®³\n]OE\Ò\×Ø™´Nt\Zş†í™¨Ö£]Jó¬b5²ú\ëº\Âj¢¸W¢ªuC\nrfff3#\"\"\" a)JÁc’Q‘ƒ±}–5„fATõ£“2<\Íu;·\íœeœ^õ»f\Ø5\âøı>ÁNIš‡CZù\íPô˜WÖ¢Å–M\Êè¬Šô Œ™’‰\ÌÌŒˆˆˆ€%JP¯\nz¦™’*‹ö6LÉ’DY­\×\İ\Ø\ì]\"&›9¢ò½kQr£-¦u|6ÿ\0¦¹\"YUyÛ•»œ\Ô\ÕE÷Y8œ¯¯U*£® ±Éœ\É\ÌÌˆˆÁ%]{©×›×­“Ì¦Juº«\Û\r¥©kÉ\Ç-g\İÛ¥Ğµ«ƒ\Æ\é7ıS\æ2$*ñ\ïİ\Ä\ã	N¢M¥‡Z\\¨*VN»X¨ŒÉ‰ŒÈˆˆÁ\é*\Õ-\Æ\ÃˆŒ\È\Èõ\Z]\ëû—9Q~kX»Uœ«Ö¹‚\ëÀˆ	¢òı¦Ó­9\Édk8Í\év¬c @\ëji*ıÒº“T\ÍmzÕ•¬\Ö(\"33#\"\" `F`olv\r’f\Ò<#n»Ÿ\Øll\î\îEÁS\ï#¤óÓ·\à;\ÆÌ­¹\Æ#I\ç´õ\Ør$°a©zK¸E\ëõÚ˜Y(44\ãl\ç\\\ÈÅn¡^–›^µdfFD@ÀÀö-aa¸‡=w?wu;\í¬eœ¸r-…ù@ú\Ími‚Å²H<\ïôôòP\Ù\0\Ã\ÌO#\Ìu›j[Ğ™ÂE~nj\æ\\\Zf¡\Õkª\Êõ\Ú\ÍbÀc\"\"2\" c·\Æ;	®’’\×s\×:*û}İ“+¢¤¶\É\Ép¼gy\Ùñ[½ş.^KbÙ“4|¥ı\Ú:l\'‚\ÎV\Å\á\Ô\â¹ş\ãaª\Ùß‚É/Og²\Ã\ØBD–!GE\\\n¶£WMB01‘İ”•†A·5Zõ\n½Ò“\Õ\',±\Ç)“\×ù3ı”¼\Û\ÒİƒŒ3†-«\æ|ß§\éG¨\Ìf*\"\n‡S·µ­\Úld`Mµ“Ÿ©·¼\Ò\ØbÖ‰Ê£­\Ô\Ô]\Í~—W]`İ¾Ìƒ^ZmugW³ºn@lZ€°Ç“\ÒY\äú?A\íô\Ü\ïy,	#q\'¦¨<»A\é4¶½\"f\Ä\ä‚á…ÿ\0Ÿ\Ş\ï+\ë6[i4J\ßY‰5òºI\İlXB\"­}½-\Ê:\İR@2= `\í?UÌ‡WoS\Ñtƒn\Ê`\Ê-#d\Ú_\'Á·\Ùnyÿ\0A\Ğ.XÃ™SB\n(ø\ä{\Ö\ï\Âˆb9\Æp}o[[²Û¬\ë\áÒ²u jsZkÛ¨\ËV\"½y\0N¿QPm\Õ\Õj\è¬C\ÑF\Å\Ío1[®\Ühv=}°2\ìqmvÀSñ\è\ïûygªX5\ã\Z\"S8\ØW\çû[óş\ëf\0\Ù3\0‰%Mn’\ê;n«g¹rğ!•\Ø$™\Óñš~‡b\Ù\ÙRi´\é!I«¨ «L\×\êõ\İÕ­o1S§\ê´õz\íòÁ¬›Aoa·\n\Ú3<¿Jÿ\0fµ\Ê\éığ3.’\ÉY\æL\n¼I\Ùúú\Ã!„\"Áœ€\Öy¾‹¸\í4ú½–\è`3Tœ¸Tó|~š\Í[¥*Z\ë,—Z†¢¶]g1Ow\×\Õ\Ñ\ï:mºWjÀ[r\ë\'–$\ÉY\Êù‘z_`\ï3\êúFˆ¶aƒ‡’39£ñ³õ=Ÿ	\èÖ‹2\ndFdšb4qS¹\ë´ú½\İ`a\"£\ZØ”\Ï%\Í_\ê‹6a\nD V€R´Ü†Ûªf÷I³hK\î\ÒV\Ö(Û\ÄVñy\ØûKu~k\ê\Ö\Î!ŒÈ™\Ì9a\0@ù\Ï×ª\å½\"\ÈÍ©\ÌÁÁÈ…pü¯C\éô:§m‘\É@xV—‹\Ñ\ïº-^\'p+R¬U%\ëv\\ùtw·_m–\'	\ÛÄ±–e\åü\Ú}k«gW\Ñ\İ3’üŒÁ,\Ì0Y»\Ågq\ì<~Ÿ\Ñ\Z\Ü\È\Åd\ÄÉ¤”<\ã‘\é=c\Îj:=°BVc\\\É(\\\Ö\æøY\è¶Ú°³¶RkEsO;K£\Ú]³X.\Úy¬Iö-´\Ò^sşKz÷¶Nyk\×:c	‡‘€q8j˜Œ\ä|´½º\à‹»9(‘€œd\nE@Z/6\Óv}ı_M\Ô\ì¥qYHz\ÕU/@\×\×rZ\r¯W5°°Bªš\ÍñX°n61ø\ë\Å–\Æ\ÃKñQ©\ëıYr¼­ß‹|\ä\ÌI\â\Ã#\Ç55}—u\ç›\à³2…lX€”\'\Z±\â¼ü;\Î\İ|u~¢ş\Ê\ãYaA^–\É!_š\ä´{Şª5\í\ÖS{\ï\İvBmØ’”\æE1\ãİ¶ö²\Ï0My8aŒ•\Ì8\ã+‰-_…lÛ§\Ìz~\Ä8K,T\æbÆ—œr}¢9£`k1P-\ÅVzU)r<¶Ã¡\Ú\êµ\×/6n´bÓµf\Â\â	†Ã•h¼e­ö^™´¼“·\ìl\ä¶q%[pEŠ)#_™ğ\å\ÖúµO,\íú˜\":\Ä DMJ\'+Nƒ\Ì4}¦mhğm\ê\ï\Ö\\\Ñ:õP³µš À³¢\æ´;n¹§b\ŞÉ±“&\Ö7é–ƒW\âH©\Òû\r¹\ã¸_Wİ²rE²\è’	\Ã\Ì[V²\Å\ÕğÀ¡\ë\İv«Ì½£Á¨ˆ\0b1G)À$Jø9£\ÙzN\ËI\Â\îz›CT\0U\ÚZ¼\Ú®™#‹\ĞÇ¥f\ÒÍCm>\Ù\×)±bL\n<Óƒ\Úkı\Ç}j·“Ï®>1\Üd	008I\ä|•7}\Ò÷3\Âzv\Ú\nD1sŠ8“‘\ÌUP¯\ç^w¶\ï»l\ç9]\çQf®”Ì£W\'\\okt¦ÄG5\çn^H‹öv¯\Æ/\ë»^yè¼›¶\îó	…˜\ÃQ\ãbÀcs$\â¼\éo=µ¼6ƒ\Ô\Zr8,KDX²€Á\Êdº\Ú/4\Õ\Şô>šyG \ê¬Ecl\Õ\Zp²Ş«’±$É°\â—H•™!²\æb<*•˜÷=‘\ç\ÉúgDLl„\É4Ld%xm[³¨\rg‡ìµ‡\è1\æ\è\Ö\ä_\0²[’@	D(U\ÂyÒ·¾¡´O–\ê7mRª*!k\×\ÈÔ–«h×¹ah\Ø\äÍ»¦\0\è_šp»O¡z“­\ã\Å\ì¶\ZöÕœf…\áÂ‰Lƒj\â\"\n|¿€½S\Ü6\Ñ\äû\îø‰°¼T©2D\Ìf+,u\Şm\Ëq\è%_Œ\æúÎªkbET¥m:\r\Ükga®Æ¾o>¶õ•*l\r5>vË´½û ²:&\Ø{ƒö Í¤¼‡«\Z\èB¥¹¢ùóiª\ï}J\ç#Àú\Ş\Ío¯–R–\á¥rpª6À\çTg\ãü³7>À†ê¼ƒ\Óû\'VÔ¦6\Ïìµ®\çhÿ\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0õ…! mù0\ì|f@1&\ìnù|\Îõ\ç¦3œ\Æ\á]\Z=	\ß\Õ@\"\ÇÓ¿ŸØ¹ô\ã\Ì\0C\n÷*<‡¯2ò\ç\\x¾®ˆœô)¼µöZCGG_7.œæ“”€š\Ù\ß\Ç\ÌdÀ˜\æ9ñÃ¢½	9µ–R\Ï\è³C`L\ÏN\ÕÉ•óƒ¨\Ì\0­ú;ùø#9lŒ3\ÉFy\ë]\Íc:HRúIˆ”\0%³Â©rŒ² {8ß§VcŒp\\˜ôoÎµ[nzo\Ø9n¼‹\\¹Š¬%kÑ„¡9\\ó\ÏŸGdğôDöT\Î55G\ÒFQ„\è¶\ÜıY0w\éòåŒŒœ±\Ã;²—\Şù¢\âú²šsõI™\ç†y_O_\0¹\éKH~\\ %\Í\Í9Dö\éÇ¥uO#e\ê!)>…U\è\Ş	“”F½µÁ\ä}‘\Í#Œy Á\ïÏ¯_>omc4Y\ß~ºo¦šPKQ$\Ô\ßg/<6n°R¦9¹sÒ¹ı.U¶¸J\ÛE««\Ñ\Öó\Ï>\êªm‘†)»×§e>r\æ’9ùğÏ§›·›m9\Í\ï<‰\ë\í\ÓmIŒ¥/F\ê©\ĞÁD8\Ör¼c™œ§/;+\Û\rŸ?E\âGGn\Û\èÚ˜˜I/J\è(‰v\ëH\ÑL\åK³3\Ï\æcº\Ë\\µrûúµÖªP¥I33=\ÚU61Fr¥OF“Ì†o§6w	mµS·N\İû‰ˆJR””L\Ïm\ÕS§@\Éc\ZR¢ô\Ç\Íñ¢€u\Ó\ß×³‘‚D‰J™J&WmÕ¶é±ˆå©‹\Ó\Âòw[œ\Êi!%32¥.­*\ÛD¬\êê¸¼zuwôn\ÒšI&¤%%33)OM\İ7t\Ø\Ø\ÆÊ–y~OGgoL PT±(PD\Ê%de*ñ\ÇÛ©ªš·zºZ+j¦°u’`1Œ¶\ÒISÍŒ \Ò@—$‰N~‡U<:´Öƒ©·7“sR)(³´\å¢D’h™•\n3*©Î–;N\æ\Ü\Ô\Òi €	 !R”©…3=Ut\é\Õ\r”Ü¶*&P€I!45!šP¦euİ•T\é7NK	tHÁ4†L\Ê@%J”„¥J™\ì\Ñ\İwI*h„®±rôe¤%)	¢&f½–\ïA\ÔKP¡m8§\'g>H5\Ó9Y*˜$ I)S31\İZh\Ûq/<\ŞNw—\Î!o\ÓÇš\ÑYÀUÒ™v\êT\Ê	JR^‹uFró‰U\ÛÈ²By\"i\Òc	»«™º™ˆI$B¨ˆ©Ì”¥¸\×\"%¢ı^NY@t\ÆQ-»Ò¦Xİ“–p…\é8Î«4³iJ\è\ìòúøšgg/\Z@Ã§|sI½n¥-µœeŸnZR•(•*ı.89šI‰ú¹\çÄ„Ø«³Lh¢\ÚN›s*m§9\É½¼\Îÿ\0>D\0==¯+N)¯l\àñAwbm¹‹’2„k\ßÃoŸ\"ôzü­¸“\0cÛ·Ÿ:\Äe¶2›u™2% “\ï<Î¹\åB`†Ÿ·Ÿ·˜4:\êß¬›n•’6\á’Ptôqa\éù²„õz~tœ\ÓI€7}S\Ì1U\ZK–	!$´\ë;<\áH?_£\0 M³^œñ±\ZJzg¦H³¤v\×&…T\Ô\r=\Îo\'\Ñó\ä\Z¤6©\ï¯:Ûtj©ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0ù0\í\Ì\íÀ‰KUü‘\ëõù”sÇ—Æ’kôüQ\ïÃ·S\Ò5c§Lórç”³ü›$\Ñ\Ç‹?«\ã\Ûd½;:ñ\æ\à9|f0\ÜÁ€×¶Ş/\çã¶€”†o\â\Ì\ZQF\\Z¶\Ãp“\ér†\à˜ü\í¶7\îôú#\ÑÙ²9|Jj²¯**|¨wsÒ™3\ÏĞ¼6Y\Ú\ÅKÍŸ\ÏÑ¹\ì\ã…wl\Ô\íkE|^¶\Ä+Ü«ù•m¢Ç€Ğˆwğ7§â™²z@Tutú-\élÉ‹w-|Œ\Ô\Ø\Ê;’\Åø¹‚,»B\Í}ZIñf†M\âx¶\í;«§O›\ånô g\äu5RL³OÎ¯®•³«\rËŸ6¿3Ú±r;„|]\×\Ò\İ\Üulİ£\Òñ\ïvù\Çõ®<]KTË\ç0C\Â\Úu_AY<ÿ\0Z5ØŒãœ¯‘]­ÀŸO~\ro#½nò¼ı›•L\à³Ò‹ùóA2¹\Ú;«{\Ö;^°®\Ä8ó›k‘]>\éºxıL¾G©C\ã\ÏFŠ\ïL\Ş<2`\ËLòŸYhu05–-Z\í\È»#ivv¿¡ê”®¯œö›-\Ü|ù=Ú©\ä|ş9iİ«\ÇDŠ\â\Û7\\ó\ÊQ\ÊûÚ”)—6•\Ù\é\ì\Ù\çz§}\á]\çò¼˜f\Ä×¾»1ùø\Ê09…]\Ô\ÉõG_\Òfµ\Ñ[}\ê2aô¼Ó»\Ì]B\Ş•›v\ív-\ß(\ày¨úNs\ÍT¡m3:‡w\Ğ{\Û\È†\ìZñŠK\ÆÅ˜±fw¥ËŒ#5\âš[sôËŸ\Ñ\Õ\îûj‹>\é¾Lñò,Y‹³3R¯\ç\",\Õ\'!\Ë\Ä$”hŸR\Ã%ş‡\ë­4\î\èùşGŸ\"ü\0\âX±fvg¥Y°NsEUIğ\â‚jo˜Vó\Ëö?U9wC\Æğü\Ù\×_/33;†\Ë;»—f\É9\ÎS ¡\å\ä=ªR™õ>Á\Ò8|Ü™‡Gwq~Š\\óQX¤h±E ¨šsRm\í{\Ùp`\ÉGQ\Äsrñ\â\æ®kC\ÏMªÂº>y. !6hœ\ÍÊ¼ò¤¢£J¶‚=h\Å\ïBC	-\ÌY™ò\áNÓ§ \Ñ*HR$\êÁŸ‘;Vd¤(\Ë12.\Ì\ïF®ºF*^3\îƒ,\\ñ¬^n§\Ù@\à+%ÃÅ‹;;Q\İ\ŞsYr¬\ÕRlˆ¬²5\Ë\Ú3\Z/35*Ü¼	\'‰\0q-\Ôwj3»g’*M$Œ“Šß² İ–õ\ÇÕ¬EHZi½\083»33w\Zó³¾J1/8\æE\Ô\Ø\ä\İ{I™\ë›B;N,Yb•kZW‡q,Ö«\Ñ\İ\ÏxS¢\Ï6TEÕ¢3¥iG†–Jö:\é=Óƒ80yE”\î\î,\ÅÙ\ìşT±eœ\Ñvj‹\è]\"“lûø“;®xò{pšÏ˜™ZU\Ï,\Î[\æä±š\íØz¡h\ÚI=\Şjï«¯tó%j@D™&|’­´Y\Ë-ò²šl\İ.¨³5d®OP—\àg\ä\ÓÑ©Dr»ª„”\Ë/Mdt_mœŸM^xU©^gc¾—•\ì‚Ç¸\á\Ç\ŞÁ%{»&jº”œû„l¾½=\è\å\Ï\Ôw £3.\rS>€c\İ\İ\Ş5¡\ì±\å\î\å\Å66pœ¨%\É4Š‹RšrÏ4TQù†hú~¼ü\à÷\Õ\Å\íñ»„°—\ZJ…RqTI£\ïƒõœ\Ñ\Ë0\\z\ß\Æú\æ\î\â@óqúx½ƒÃˆU\ècĞ©«€’Oªc	¤µ5(Å­\ÜÇ²şU½&\ãÃ›µfõˆ\áÀğ\\°¼—HQ9˜><\íby\éÆ‡¥+\èù¯£¯sq=\Äg¡ô¸p\á\Üóõr½\ÕxHA­|¤;·~\é\ryü¡=\Í\Äq=\Ã\É\Ï\ìù[õñ»‚¨H±\Î\\A\Ì\æñÚ§‹=‡Š[\È>»+\á\Ü\Ë\Í/¾·ƒ\ïG!*¬³Ë—oMB\Æÿ\Ä\06\0\0!1\"A2#Q 3B0a$qDR@C%5Pÿ\Ú\0\0¡\ì¤&ú€«\Ô\0D*¥V;\É\Ã\ìlŒ±ùñ0¼´]sÚ³‚hr1ò\Úk\0\"À\áG?Fl„¾9\"t2?M\Í|NA;e`)\ÌK†\Ò,E\â}†j\ê¥!\å¾ı\'´_õ\é±H€¶ª¯JT©9jzƒ4\èİŸ”\ìü³\"›&Q²0\Ùƒ8±\Ã\æQÁ½c\ä;O›pŸQÉŸV‡…4nœ‹ñ¬\æœhvG,”\Ûãˆ†-5\íd„,g\â»ô ‡”})W©RJØ˜\\\íKT~C\ÌqÃ_\"GJ6kH\Æ\\\î\á\Ç$ĞFÉ˜YŸJ’7Q\Ä\ÄGi¬$\ÙPyL=\'Hç²¹ƒZ²5±dj¤øŸ1\ïò÷’œ\ä÷)Š(úFh¨Ja\é÷´´„ü‚\n¯@‚€ -\0©¨ «\×\Â\è©\à7M\Ş\rO…$Oì°…ƒ™64€³5¹1¼¢iZœqN	\0\İcGœKñ-q)²\\Â œ—v\Ñ\è}¤G¡=\"€Am[~€ô\íU\Ò\êWÒ\íarÖµ\ê9A©­{I\ãs\í0\ÇÃ´¹¿$×œx†—ü\ÜĞ¡l²j-ˆô%yŠ\'8;L©L’N\Ş9\ÈM2Jv3Hœ;s €E\"Q\ĞaDR\ë\î\ï Eõ~y6\î:–¦ü—–µ†£²\Ş\Ù\Ø\Ğ\ÖlEş0ÿ\0§\ç\ÉuÉ‡¢ÃŒĞÕŸ\Çió\Òd\áÆ…¨ŸHOAK½\Î\Õ>kˆ¡,Ä§½=\é\ÏNr{Šqş\Ğh¨£w^!E\é\×\Ş\Ï\âˆA\ÈzJ©ƒ6ˆU\éD+´-¨„\àR\âG0+7G\è–?H_Ş‰¨l”Fö\æ‚$0•6w”sf\å“{pa÷28\ésâ¿’52Ñ¶g\ä\Å3Sg\éØ¹¡\î,A\èUt«\ÔJ• (£\ëJ½HµTŠú/l!3‚\r^C.±›ò\í¡d“\å+d£”…™QñÀ4-¸¸\r\Â\Övi9BO\ÜlKQi™n\Şp´øp˜·Ÿ J!HtSeù°\ß¿\'µTMµ­f\ßÁ¥bB\ë-ot!\Çs\ÔXŠ\Çd1­\nÌ”€@Í˜—<\'k0q\\\Æ\ï‘\ÎBJ\\©\ÏOwJW\å\Ï<§÷†ùt\à•ºÓ¿º(œšzF\â\Å\×Ó¨\Æ\ÛA¤ ¨K´\n´=- \ïJT¬*]ú–X*C‘1#õx·\í|\Ób\Î†ı\Ñ\á\ê‚:d‘\äG3:Ô´\î“\ã—k°16<=¬%ÂŒ˜qK\æ] \ã8³\ív3eÄ˜—E;$m†”\Ó\ë^€ªôûN!\n*©B¾•zWJ•zRy·Œ\æjr\ÜIœ@l\Ø\Ùx\Ì.÷q \Ó!/Ñ´¸r\ãy2\êŒö¤{!Š\ß$\Ñr¾A§cI—‘\Í8øŠˆ ‡¡\n–ğ®\ÕÒ»_Hœü\íŒ4òì‰‰2\Ä\Z:ÁgÄ•»¸˜\0\éƒä”Ø‚÷\ÌSjq4,\í]„\Ó#²$¡$q\r\Î|—\ĞqV·\"T†šVnC›j,’Pv\æ©\r)\ŞK•¦N\Ü\ÃEBõ“eşlX\n\r#ÀyCT‚\ëÒ‘ \êò×‚¨µY	¯@ ‹mjo¡ y|J\ĞZV«bb·•]!\ëIºv&˜ı0–÷•€\É[jûw\0ø\ŞDx+\Ê\Ø\n|-r~\r\Ìc\åˆ\Ó\Ù pMz¿JU\èP*\íx(\áıB-M?Hª\é\Ñ\É&Ck]\Â.,s4+‰»\äş¤|1inb;bk\Ş\Üy$aŠ-N\Éf\0ÀÀÁ“™<iøùZŒû¦‹L‚\ZAc:¯B?ŸBˆ\éJ•R‘\ícl\ä\æ’\nÉÓ½3\àŸooX\røR\Æ¦xQ´­IÏÜ½Ä©^\â¥qM\Íöı£¬\Èò±²]/“ığV{<¨AŞ˜)ŠQ\ÑS4\îA„”\È\èvğˆş\èŸJ\'­ˆ\íZs^\ß—ùRV¨cş„$+p(Q@R WEe\ÄòË,\Éa5/\ê¸\îø¼:û‡\'RŸüÆ£‰œİ“gbF\Ç\ÜZtmt´üx\\\Ñb.\èw\Ô\Ïk[g!\ìpX>79² ŠV¯\Ñ\Íq\íğüµ\á4Ú¯KGÊ«DR=ùÿ\0\Õ/º-\ËÊµ]\Ú•\åtV£4x\Ø\ÆY2µ\ècÀ¸f~NCÌ³–d\äH?§ñ£¬¬\Â\ÆÌše‰¦ğ»’F\ÆC­U­¶\ë÷\êOJu+ûYº´p|\ÒH-ùo¡Hû\n(\ß+\ÃDQ6\èc\ÓI†šJş£\Í\É~OpK‘¸4˜‹š›K\É,´\í\"b~cLkpFÈºGĞ¢…—ˆ0ö.I\ÍOˆ\Ä\ZCQ”/)ÁWöJi6Aö6•´-¨=[)Vô\ìxT\n¤?\ïh>(„üŠ(Ú’\åi\Õô¹`“{\"÷pÓ£ıNn=³¶\\i]\Ó\"†ZkÙ§1´CXø\â-¹5o†fM\æÍ€\é$$e°B\Ş911ÿ\0`	86‡ğv­Š•*E–ŒG\é{<\Ç-…\ÑU\è\núNµtPu\ì ;[B\"½\r«VvL,óú7kR\ÖÈ³µ\Çj\\8\Í<·/’\ï\äe\äñ\ÆÆ;<8 l‹G&&£—E‘Ÿœ\0Å @\Ñ=ú©R\"‘5\ÙÔµh\àŒ\Æ\Ìùe3\ÉW\Ø\ÈÇgZ&¢ò”\èú}3„¬yyÙ¹@|&~%j¸Îšbı?!~ùb\Ã\Ç\Æ3!ŒiYy{œk/7¥be:Y{ol‡Ğ„ğŸ+\Ş\×xpO\è)\ŞK*>\Ñe£s)\êI²Hsÿ\0-•6V”(*[VĞ¨ª@ÿ\0;ŠµH6\ÖÂ#\È ­«°š\ä¢ŸshË.±>Y1|rt9G\Î1…‘°Œr¶Œ{öü\ÍR\Ç\È\å*\Ï	k±µc‹7·,ˆ\å\ÕC\éW§J‘\ét¼xdˆv©x+r\'¥C\Ğt(”]j\ÖV¡\'ùc\ÌÅ½™’\çM»O\Ô\ä;\\t\\¦¸5;úsÿ\0½\ì®\0:\r\Ï\Ót“†É§\r)¦Q4\Ù¤v<PE\É+™\ìC\îX\Øø\ã¶U¢Î•R\èIş\Â\à\Ş\Ìù\Ñ\Ä\ÒVn³,\Ö\Ø\Ù¦‰‰ñ\á3Á8\Û\ÖK„q•;\í\Åd4?\Ì À\ŞSGJ*®\Ìpµ\Å\ÊIºY9m`+7;y*Y\íe\Åa»l¡@\í\ÑúB\Â\Ìy\0\Ó\ä~ş\à•\åªQÒ•†\Ğa%G\Z¶§1:4X¶•°¨\åxLœÍk¼\0›a„‡\ì=j½>%lş\0#\Í*B\Â|˜[\\\ß¿ñ´ HA\ÊX›+i\Ò\áÏû˜\Ğê‘¹üsp\Ç\'m0º\Ó(´n~5‹`¸\Íú6#\ÊS³°a\Ë›€\Ù1Ÿ²V\ì\0QVB´E¡c¥\ä\"\è×”~PA¡q­Š»õtñ0ü²3X\ÈK™…6¯šrr!„Ch,kT†&v¯ª\Å#r\r:K‚\Ú\Ó\Ä\Ñ\Æ\ÆO!ˆ\0d9Q1¿¼y³\ëp\Ó\ä{8\Ì\Z\\pƒQ\ÆØ™µªÕŸ[R\åE·ş²\Ée\ã†l—İ“\é\ŞQ­21e\Ë3\Êt\ì`\ï#&ôrf\Ç\rø\äN	\ë\î‚\Ö1¥\Ê\0O\ÊÚ§\Õ	õI_\âl‡¿ÌR¼©I*7m-°B¯W.d\ÅNµ‰%m¦§6Ó¢q\0¶ \ÔB!®;\\!Bö¤xdC\ìc!¬{|öa.Š(ª\Õ!h\Z@‚¶ÿ\0„\n\â\Ó\\…\ÒIwm\Ê\Äÿ\0”K>†\Ìl\Ø\çŒÁ\È-Œ‰\íOc\Ó\Î0úv3™\à‚<\Ò:Á\İ†\Ã\Ö\ëô¥J½)§F€-Bu ğP[\ÊÜ­9\íh³$¦f\Ô¡Ò$Š\r‚a¡\Ä0Y\È\Õñ\àÙ«?7p\Æ\É\Â\æi\'Ck¿$pcIÅ’@,\á3“ytQŸ\È7ñ.*\Ê\ÜVô_j\Ğ*Ñ…4’›\ÂÆ—?NŒ:S*#u\ÙG¥¥2\ã%b·¤\ĞV­”\Ü+’X5ó\Ã!\ÅG‰.S\è2&\ã\Âú\\\ÅK%…;û²eÆ„¡Hk³6s\è¶Q\ÕQZtõA4\îmÿ\0a\nFXS\ânrd\"4\íó0 ğ\äZ¶ª¤B¥H\Zƒ[H\ÄÒƒ+\Æ\Ô\n\â1lA‡\èöBı) µÿ\0½ ¢\Ï\â\ŞÀQa>Ar›9Nxx£6!wl˜MliÚ©{ø\äk‹”\Ãt{\\Ì™ ;efDe¶©	øñ\Òc\êGŒö\Æ\í®‹!¯AÀ¡J•*\nE £\Z,E«i¬ú$bVmtP²!Lõ—üdGQ›-\ïÇD1crO‹§kñ\í­c|\Ò/?DƒT})\0©m[i\0©N\ãdŒ¼‰2òh\ÅŠ Áš\êh­\éğºI„mÆ„A\0Œc“Wõ$r\årOê •¶\är8£¨\ã•\Ò6\Ü\n.N=-eò5„5™c\íc\Èe‚\Îeˆ\Í<|–%<v±¤\Ù\"Ã˜=€\"*TœŒOm,¹KA»\åz‚e\ÍA¨¢©\0ƒPjE›\Ğ-w BT©Qõ\è Q]ı\í¶*!º(5¥‘…pÀ>„nj,w“\äŒ}JF\äğ“6HCÁg\Ë\Û\É\İs\äb¸´Ã©\Ê7°Húš,\Ø\'”€±§›Z|\Æ­ƒ­Z²»(Z´Q©Wñÿ\0´:VU¡+mf\çº\Zl1Ë¨½ü²¥}\Ä\Ø\à9‡¡>\\Py\ÆfšmU\ÒR!m[	[\nÚƒURµ+\Ş\ÃS“%Â>3Ì­.kK\İ\ĞÒ¦É˜9I£bÀ¤|,g\áˆwcxL#M9’öi˜˜šV\Ù\Û.FÕ—¾m‹\í:\ï\ÓS‹|Ef\Ú1\á\â\Ç\0\Ï\áJ\\\0\çZl\"&P|‘R \ÆV\Ò‰üŒµH£\èZ¤\Ôø…\îP\â5ˆ€=ªE© \Ô\rµ_\ÄsJ\ÏQ‘Y¬0~p\ê8òxd±»À¢©\0Õ³ùtN¶‹›hn\n\ĞB–\ĞQl#Å¼ \ï\ä\éh9Z4U\0‰ô\Ôô±˜C\ã\Æ\É\Ì\Ã\rnS2±\'\0‡–D>\Z«\Ú DK\å \é\Âf\î!¬¡XmRÚ¶¡\Òù°+V·Z(Ÿã°ıü\ÒÚµu\ík\Z931g|m^\æ;\İb\Æ(\rC\îKlR´–e‰ FØ²)\ä\nõ¯[[€[\Öò¬«R\ÌØ…½ùÉ—á——\Æ6´\ä\ï\å`+´3Gh\äÉ!³—,Mü1¾;Ç¤%O\ËVFTd÷“”\r†\Ï-ù‚p\ÜÀ¬8\é;71qF\ÇZrs/\ÃÚ³	lf›X\Ö\ævÖ–>\ÆU\0px°B¤B!§Æ\ÊNR(ªA©¬A…ÿ\0“×#ƒ\Z|:\àŸ‹/\×\Î#\Û3\Ë|E«H<Gı@ZjHuˆ$Ç™¼6V95\nô¤‹)\0Ke¢\Ò+\Ùd+µÒ•\Ó4ü=\ã\ãÿ\0.~^>X£€6A\åƒ/¶†²9Y\Üú^<\ß%$s\éó\ÆÏ†Fm\ÇöhKV\íZ\n>i¡WğE/*YYß©\ëI\áƒ!Å²L[\äi\ØaÊA¬Ñ†\Û\ãÍ…\î`ô€·…¼#\"\ßkr%K—\Ş3š\æ\îY\Z\Î\Û\âd\Ï\Ï\ÈRDQS\\\â÷~\Ö#)Œ\n!\ájb8`tò7?#¦K~\Æ\âÁ\í \Úcš“ç°¥˜’Ÿ%ô¦q\nw€	#\"\'Hpe\å\Æ\n‘ˆ°²Y²\Ê\ÎÌ”\ËC1û\è¼[ASÅ¼#‚\í\ê8x\ÛI± 6:\Æ.Hğ„AD\"jtvŸ\n1\Ò! \ÄÈ‰B0<™S¥¿‰\\$!a5\ä!\"°\ï2aG!\èa=Ÿc\êqœl†9\ë \ì˜Ê‹R\Êg˜µw´z¬Nò\Ì\È\ß\àL’\Öõ¹µv¨-l[V\ÅI\Ô<¼	»şóg† Sõ§5\Ív.v\\SÅ‰©\ØÙ˜Ám²Wñ¶Æ«(•Àˆ´†ËŒ\Òp±\åÆ¶8Z%\é5\ërÜ¯û¨\ì)#l±–¿+I†F\ìfüM:2“f;{¦~ rLqb>onòFùFÕ0¦+d®‘AZ ¢\ru—…9\È6&\ã%4ö\\û†C\Ã\")\ÓCfI¡\Ô[-\É#‹˜\Ç¾–s-F“#‘\î1\Å!pl\á\î!n¤]kU\Èv>;œÑ;eŞ œ\äb‡X»ˆ€\Ë\n\Ñònu\'ôÈ‹{V¥†Z\âF|\éÍ¦€ŒiÑ­ˆ3¤\æ¦[OXù\Ë\×\ïúTˆT‹-:N\ÇF\"¤NĞ\\VÒ¶•´§\àL\ßOö0¤!+\íA\Ç\ì-Ôº!P\Ê\ZQxr.‘#]ør\í)™\Ò0t\ÍZD\İ[ùf«\Û3ñŞ„¬p\è>”¡\"-\ánT±6h\Ë›§e\Ä\àü#ªfcš˜k¬RO42²\â‡#\ä¬-S\n@[<FøÃ±\ÜL­!\Ù\Ñ\å\Ç\Ô\ÚdS\ÅD\ï¸\"ğ¬+µhW¦ú\\´¹W(BAõ¾\Ö\ëW×¥Ò“!‘7sòõ\è_!dnf^ªO—mfK¦weXz\ÜJ²…•H1´Z¤Hs¤–I[r\ŞÆ–\ZXqñÀ²ÿ\0\0«ƒ,ô\èôüiñ˜ş\\#û1”\É@\0§f06\ÎVtEee\îüq²k,_ß¦£>9jv™f\Ú!\Çöø¢5<V\Ñ\ZlQ?z~dx³t\ì\ØòñÁj!k/=¥6\ÂzÈ—2Tr\Ï<ıˆ½¢:D \Ä\ÆÒ‰\ä&›m­¥lE‹bÚ¶\"ÀŒa‚0„aˆ.\İGšMs^,:\Ş)\Ç\n¤\ÓG–‚¤\Ç|Kx&l´Xj\Û \è‘\ÇÓ›²»J‚f‡4iÿ\0A¥\Îp%ºy\Ó\äúös\ì)şø\'Œ\Ø‘¦\ê\Ù\rü¢\Ö¼ÇÇ†KJ´ø\ßh<We=­x§eC¦‰™ºN“şt\âitTD¿,lCe\Æ-\Û\Ù\Õsøı»p`šf±ôQ´A@\ZTABş\é\ß_¸ªCæ¶•E\0G \ë´P$„ö½\Ë\\\Ä\ãw+°tùò\è18ñğq½¬nr¥´-€z„kê‘¥¼>H…›”¯\É\Ü\Ò\È×\è,‹9]:\ĞÎ…ò\Ù~\0,Ş‚\ÏÉš	>8Ofx·±\Ìk\0ŒNj”ò›ReBdØ§°²sYˆö¸\ád·/\r’µ=»šğu,\Üøqzt9qe„\éj-#$“ı;’ød\î7‰X=\ĞVF-ö2q‹ş+	·©¨t«´à¶¦µ5‰\í5 ÷°.f­\à«‰D¢¢\×!œ†=º“±\Ä~i­o\Ëk\nÏ‹ğ“5	Á§ù­7.\"?p;\ZDq1\çµúl\ÊL	[\Û\×ncª¤F(\ä“\Û\"\Ö k\Ç$y\Øó\Û\ÚşAŒù G[\n\ÚO“‰	^Õ€õ\ÃK‰§\Ì–H¥û\î!¼ü¬¬w\Ï	ls\á\å\áIo:¦\\\Ú&˜\ä\É\Èı#5Ø¹ OŒµi¸€g\Ê\É\Z+¤i\ZF½GHv€T*TˆŒ\"\Å\ÆT“iÙ©g\ç\á\Ì#:V4Y±¾lˆùPŠ@\ĞU5Uø¤¼\"ö„dOÌ†ˆ\Ì\ì?Snğ\ÆËøX]#].d”\éeö‘l	;\Å\âc±\Í\ïô\Ø\Äıƒ¶JO,9ÁY\Ğe\İ,f<[#\Ó2y\Ù#\Ò\Ô\Ü\æc9\Í{\ß\È^±\ép#sõh^f\Ş?¤ò\Æ\è_]¢LV,jmº;´ \ã–\0‘–²0£“·2\Ä6· \Å\Ñc„±J‘)±C»d‘x$Ÿ!ILˆ»À€0[ñ\àO¥­\å4=\ê<s`ÆƒA\ì´F\Ğ*QT†\ëF‚sK\æ6\Ë\í\ÈHB\æB_\äH\Õm) 7Ám›\rt»\\\'Ëğ—T0z\æ\æ~\ãsp\ç5/µÄ“ğ“G~+O\Ã\ÛeÆ›™—F<Ü‡3rf¤˜õ_\Ò\ÆG[\ÚPm(‡^\æù‹\ì=¥ˆ4‰D‚µ}0—¶lI\",ü´iÙœ •á­E!UƒB,±xAÉ®[û\\n\n\Öğôx\nmW\n’rš5¸˜’G\Ç4 \ÆÏ—%­\à.Sôóä°¸!©qZ1’†(²P\ÆK§E+2\é\í’\"\Ó0jk8´(\Z_;\Z0\ÙLF@Áeú”@õ’\îL‡9d\ÚZ¶tÌ”1šnl™Q½’i¡±f¹R‚Hˆ/\Ñ`|»“£k\Z%„2dşŸû£N\Íf~#em\",R\Ôt\ÆO\Ù\ÅÃ‹š†h\ÄgZ~Tù;\ÌT\äYMX\Ù.…\Ôb•’¶\Å\"Ğˆ¤øƒ¼Ë‚‡â½ˆ°„\ÖTPµ¢\Ü\ìÁL|•H0”\Üw9GŒ>şY¥¼…µò‚\Ù\Æò\å&l´}û\á&T§ò~s\0¢ü\Øş†IB{VÂ€b\â¿7!…¼!»\Ğ÷\äÁG\'/c]\Ç\Ècv»;ŒT\í\Ôqœzl£\â\Ö\í;/-öÉm6¸\ÜT9\î\"M¯k\È6ÿ\0­\ïû\"\×\È&JGGyŠ\ÜVòCúvF•?m÷y\ZS››™‹ª\0\ÂÜ¹ñ\ÉkÛ¹¼Ás…\Ì\n\æ‚Œ•\Ğ2\Ò9€¼¤ıN&~mÔ -´ıg£¶\ë>øóg\ÊÉ•Õ§\ÆpÃ‹\0\ÜÀ³\ÖÂš\ÚA–P`[\è G„+\ÓqN”0[†¡LÈ*x\È1x$/v[‹¦+1£P\àO²$s\Zc·Mª‹f÷òö\ÛHYú[rÍŒM=¸Q›(p«hr(ä³ö5I\ä“(…¤\ÎùZ\èß\ÏjĞFŸ“R1Á\í¾œ\Ğ\á\ŞF1oc\'\İd\r\Ğ\ãG4‹rx[l¨-‡¨ç¾E‹ÂŒW\åØ+\Ù£†W±C¡€i@\Ã\ß\0µ@M«RCT¹\rˆÛ\×X€{§t¼w+õ3ü2gNô\ç“\çr²¸Ú¶\Ò\ì/‘	¯s\nDynX^\å•\Ûe\ë}~\ZO\İ8¶Ê‹dk»\'«®§ÇbwM!mşC[ö\"iñ²\ëÁ²¶\ì³øÁh¢\Z¨ı4ŸºY<Œ€º\×\ä™6¯9’-;OŸ\ZK—*2üW¦K¢ˆE¡P(FØƒQ€¹{U\ìÁG\r¡;Oˆö}«\Z:\Ôp\â’”±±¢ f<\Âó‰\â!\É\Ä\â\ÚQÀ\Ú+@•\ã´\ÓÒ¶…\ÈÀŒ\ì\å\Çõ&¢]0d9ó½\ça\Ó\Ø8\ÙY\Ó8d\ÖvÆ“ cœ\å\ÜÉ·\'\Åee {\ÌZ\ë\å\È—\n@\'tf­dDC\ì3»·\äM#l:~Y{ŒRT±‰XB\Ï\Òù%5‡„1#!d\æ\ã\ã¿k\ÆÉ£G–`ø½kÅµÀ\"f\Ã\ì>7³¢Á\Ú”\Æ\ÙQ@J~È‚nH{¢†@û€%ZB?Al€VHº¼:F4üß™ŠŞ‹³â¯„š‡v%ÎˆşN\Í\Ãgm~°\ï“Qâ“¤.=\Ùş\ÑHE×·jö¡E\í]õ\í^3‚\âxA²\"×”\×=ˆd¸/wü·1£\ÈË7nÃ¸Ç½\"\Ë\Ø{nk37x\æ$w\ÈÒƒš¾	 *A–¶…Æ\Z\ß.|!{\Ø\ZhÇ›f\åö’÷!0G1v,\Z¶LGl†A—‚w\Ã9À”µ\Üa\ìd„ù\ì \âz¤$@\Ú\îú\ï\íP[B8Ñ¿\Ëô\Üwy\ÎÓ³±\\_ªM nv>s3^‹>kq\Zğ\Û`(Š\nÓ·(Eİ“‰\Ç~\ÛŒ¢c\Ç\å¬|¬Iœû\Z|$lj\ÔrcÇ•Î›!™Í’<¹D%\Ï1j\ìn3·0›‘…†=³$=ñ3vcI¤X˜\Z¶Ë÷\ŞüRa9\Ø\ÇòFÉ™‡8É„^\Şú\É\Æ·§±Ñ’	\Óe\Ë\Ìq-\Çf4&¿\âÅ‡ø]\ÔR6^\ÖÖ…´\èCº/\Âş#”xá™!\èq¸”\"rn;–b\å¬c|-\Ú6Jšh\á¤\È\×\İ\Éû\ÙYY’mRÀ\Û\ä|Qş/šw~6s\ÛÜ¡ş\Ûõ\İ\Ú­\ÎA\ÏBG¦½\ës\Ö÷\0„¿\ÎğW•KbØ¸Bö\í+\Û…²P·J¸–¨—å²–‹s¥j\Z´Œªn³‘\Õ  !¨\Çô5@\Ô5˜şÿ\0VcM8\çcN\Òı/M™Ä¶M*ø3HtR\î\ìŒ|£\Õ4ö|K&ŠVnf£\È×‚\Ü9°œ>\Ø\ß\'*r¡ú±\Ş94.v!0\Ü\á\Ø\çõ<Uú7ÓµSu\Ôr\\¹\æ\äpqe$‘\Å\Æ\ÙX\×u\î­{¹ÿ\0G’Œ’\å\Ë#\\TY\äK±\Ù8 ™k‚\Èy\ç~\ìY8ZüÙ˜ò\r\ZI\å\Â&}CM	\rHò\Ãß€ÿ\0iÉtk/$\ã\ã¹\ãQ™ù\"9tì¤\Â\ân/—¶]9\ÒImd-Š\0\Õs‘ğ\Ç\Èl\íE¶Tø­”w.,:Á²{sn–<VS\"5a™[^C›“)®añ`.Š -–¸\Ç\Ş\Ğ­Â‘r\å\'ÃŸ^fÊ‰¢”¹xî»’H]ş!ˆ\én…\ÑcDZ¤\Í\ÆN«2MU\îñ&L’~VWk´¶•µ|1maB?\à\Å\"öò&\Ç;S7ÿ\0¶\ĞWB\0W\0\\5\ãŒı¹v¨ª–BşIaA›¿&ã²“q\ÚWµ;S\ÛF\ÃÉ†a\Òo0wrú\ÚZU HM}‰\ë 5‘\Ü\Ï\É,\ìa\åsE¶AMN\Ç`dx\Ì?“°[ş£\ÍOkzpz,ú1\ä)Wú¸eüù„}&e0QQ\å\ÂSer\Ê\r{x‘5@E\Z1„+Á\re­	ÍŒñ€g=aFe\Ê8¶•ƒ(ä¥”\ÒfxP\Ûeg\â=\Ór5¼qKJX÷FBf1y\í\ÓÅŒğ>mZ{M\ãi‘Á0Í™\0\ìL¦\äD™`ƒ•„Xw\Ç5º\'43\nbCŒ ‡‚Ø¤$\rÂŠtA\İt\æ;¶»O{JŠB\Ë2\É,!“aqMÃ´\0c\ÃNğ\ß}¶KõB“U\r;Y’K\Å\îe&DœC¹50\r)3ƒ‘\É?G&DeyòIş\ËV¬®\ÖÕµm[ÅµmT©{f}2ˆ„¶\Ò•«B\Ğ2ö¾O\È\ÃC\âÊ¯œQ\ã\ÉùŒ(]ø7\0x2c\Å§7şNÇ¥ú\\nw_¢¿\é\Ú4\ß_¤d_GM\Êj“\nb;n4\Ì(:Vı\ÓÇ‘’\ï%Ò±ı‘-x\æ\ír…\È~±›4ûö¾Q+K%f##“rı^&üù3-˜\Ùs\â¼1EŸGRmP\Z˜ûQ\Ò\0\ç\äG\È\à\Ñ;\0;†\\g\ÉÌ‡²¥\ĞÍ˜d6™R´¨·5»‹²¢\î½\àğe¯x©Ÿù¤nkDp` ´€ñ{ZŸ\ÙX\Õ,{e\rS@\Æ1k\ì3h\Òc0eHVoÊ”o\à”V^{â°³¢\Îc3ò$\Ø\Ì\Ôıœ\ì5¹øm™¹¬s\rP½ùC\Ëµds=‚Vg\Ğ9K§I>YP\Ç\í\Ú\ÆÇ–\Ùzq\ÎNœ\É{cñ¥€öFÇ¾yjƒ&H\Óu2\r>,†J,om£´¢#D°!+¥.L,ÿ\0!\Ô1›tıNŠO\Õ\á®\å\×]\â9sŒ¦\Ş2œ\Óñv~Sú%\Îq³ERÚ©RÚ¶­‹bØ¶´*T©R¯\í)¹¬û0¹oŒøş-Z\í¶3øŒ`G^\ÖE\Âñ\å¦:¢KBUL=÷~\Ü^`~>ÿ\0œlÆ›¦7\n2›ˆ\Z~-lBW ÷­Ä«G´kŠ\Çn€Ÿ\Ç.«8¤x\à\í\ZGm`e\í|- \ÖK²! (ñ\"\Êpp{\0\Ú\Æ\àLd/{q\î‘À-Q\éÁ\è\é¡{6^\Ü<7\èŒa#n[\èY>ÁJ9XYn€6X\Ë\ì\ì\Ğı=\Ä/\Ò\í3Lc\r†À\à)\í6 A³±\Ñ€q{.h\'i~y\Ä+’8ajgõwcò\r¬\rTffI	\Ïa1¸\r?lmA³X&‹¬\İ<M-;\Zxô¨\Ú\r³& \æ\æaq>Ì† v\İ+U~\áK\Ø&e)ğ\r³i¼hK\ß`\ä6‹2¢z!¯OÀ†Dt¶}~™HÁg÷$\Ô`\Çhlª;\îm] tıi\ßNÕ¦r~lòy/”¯‘óµm[VÕµmT©m[B ¨\Ä^Ş·nGz©\n\ãqóÂ¶;\ëcckş€Ÿ\ë~@^\âa\çİ¸y÷£\ìj\0&\ê-^\êşG\Ú\È\Ã`u°2aø–d9Fra6FkOù9ôù\r8c`;¶G‰\ã6=£»[¨®e\Ê\n/+‘	\é\nµÿ\0¡ÿ\0t¶…Ÿ™\í«i\Öfq5£—”ş8Ù¤dNûš<¡‹\ã+Œ¹T\èc¨€x€\Ø,ioa &Š¡õKŒy\'h3\îœ\ÈÖ¿„Ô\åDH¸Ÿ–Z¨*E\ÕIò¹´\Ô\ïò\ÆÀ)¹\íi\Ïx¢F\ÇÀ\Ç\Ø\íƒ\Z?vÙ”\ì.À\Æ\ÆÄ˜\å¦><\Ü@öd\ï†7£gË¼\ãÍ“‰\Ì\Û¸\ÆB\Ò\Şü&º£5“¦9¶c\ã\âwx™\î\Ç4b\Ô1\åò\è!˜Z8E ˆ\ÎˆaHYŠ.Y5\Ø#\Ö\å.$É©Hö\Òt\ïr\ìªTgK¥anrÜ¯ûkş#\è´ú\\¡	$\\¯Bw!P\ÉrC/ù÷qıó\ã?ø¥q\ãŸÿ\0^Œo9$\èO*\ç?|\ás³\ì<Å¹3·\Ç\êƒÀÔ§˜Ô›ö3Z|{«^\çø…{—/pÿ\0¯s\"RIÒ—4µ\î\Ó1lI„0^%Š-rv\È\Z÷–f\ãZW`\ä\Ó\Z\âak\Ó\\I\îRv€#´K’öF«g•q«Œy\İO\É\Å`;óµI¨\â÷AÁñÁ\é\0\n&\È%ıÍ¢•1:™^\Ş[AY\0¬·<g\Æö\å\æ:68©e\å\Çd­\Óó^59 —%\ï\Ô\ÜG—.LW\ê›£pZ\\nÁkæ™Q7‹…\Ä‡¹³ËTv\'Àš\ÔYR\ÅĞ‡?xı\Â\Ì|–\Ú~—	\í²`\Çov^&?Iÿ\0\Ôb6\í†O\ê,·š¦l‚‹\ä’Co¥J•zR¯M«jÚ¶­‹bØ¶ªsV\à·\"ğ¹\ï*Ş­\ÊŞ¾kk¾ö;\Ú\Õ@eú\Ò-k}ª\Ğ2+•n?{\Û÷\ÈÏ®F-\ÍT\n\Ø\ÅNú«‘\ãÈ›ù°¯\ÚU\n\ã‰q·\ë…ñ_ô Àv—1\Ğ\È\Ë\åM-¯q(MÊŸ\ë\ßNs\ä_¨;\ïõ† VC£\È\íñób¿|(\Ï\Ù\â\Ë8\ß\î\Ú÷‰¹¤x9W\çÜ´ı\Ó\n9ŒI¨µ§¯\Õ\Ü\ï‹]²e2>8XÁE®ÂŒ³yF|ª¥ç¹±4}<\Ñ\ì4ºW»\Ü\n\Ë\äk\ã{\'xa\ä4I{q%„dfc yX¹P\Æ\Ù$˜\Â€\çAšÉ\Ã,øe³\ZGct	ƒ%´dÓœ\Ş\ØÁ<\ÏQüp\Ï\æy0±G\ÊMn[µ™\ZşD\Û’>W[ıiR ©v»ô¥J•zÚµ¹nr°·\"\à·¼-\ëz\ŞV\â·n_%òTUEQTU*ôø«j\Ü‚®¶¸£\\C\ëc‚ı\Ä\"³÷ñû\ØÂ¸‚\âBW\Z \Ûğ\"‘q=\ä_0·-\È-m[R\Ë\íoiCQ\È_¨\Ëş\Şú?ö÷X®[ñ‹Šú/½Œ>8/Ã¢\Ú\ÒS¦®³\äƒZ\ç4\Üy™\ãl\ê\æ\ÜJ\Õ\ïfõÓµy¼Ô¦úWdW$mk\\—&7J\\\Èò\ç~\Ø¯\è²\0fÉ˜\Å+şN¨i\Ò9ˆF\ç\Æ\à_¤c\ÒC±š\çòGK\ÇwG.N‚F±ñf³\ÒA.$–\"È-›&—NsN\è¢Ê‹ù1gü›\àZ~¹u(ba©µl\Ç\Û~Nl\İ9\ĞLò‹$os(É\ä´c¸¯l\ä\ìg°|zv¨ª>.•…aXV…au\é\Ò\éP].•AP].½m­_©DM]*m\n‘ô\áw\×‹d«c—ş\ì ğ„‹•Ë™oiól[›õ½r®_@Hğôe—\ì>—3>\Ë\â#¢c®\Ø\è¿\Øp\Åñ\íY}7oõ\à\É[e\åûgòÙŒ|ğbŸ\Ò/õöÁÀs{E\Ğ\0™OøÛ¿\äœ\Ò^\Z„hDâ½»×·‘{iQÄ”§`\ÏV@6K_n@ö;Àhp\ê($\ãEt®¢ÖŒ‡m\Í\è\ÆL™£W\ÚüÌ›,’¥0I½˜\Î,|øüR6fş\Ösv–>l/Û—\Û\Ã9\äÆŒ\ä2™+ Æ¦F\Èb¶œ˜\Ç\å.t4v¿P{XB÷;\È\Ş\àwo \Æ?h\ãı†\Åòc‰=‘ô¶c†öñŠÅ\äp\ÄO\\\×È·Ç³®\ïŸ.6\áFL[N›­¥ğ}3è´•\ÆW\Z\ØÀ©«kVĞ¨*ş\Ê*öS‘_%ÚµaXõ¯JTˆTõûˆ2+‘n‘r¾FıòG÷¾%q\"c´6LMoñµËE\Å\"\à‘p½mx(\ï[ÿ\0@¹\Ğp®Áa+¥H<s\Ì<{Ü zy+\Ü\Í÷\î$)\Ò\É_¾ \ÒvK_ù2wxŠxóø\Ã\åni‰¡­n >ı\ë†\\CÏ¼…{\Üd2qˆ\è\ÍŞ“VL¸\Ù!%\ß\ì…ŒùiŒ\ÇA\ã{ZT\å“K\ÔùlŒsœ\ëı·–\ß\ì\Íô!\Èsy\"\Èg6,“\ÛC1ßÑ—v»Š7v÷\çb\ã\nR\ë2#tó¿ó+s642z^\í£¤3@\ì{\ÈÁN\ÔZ|ş§^«7Óµ\ß\ä\ä8\ÚL<sÎ‹\ä>h•°-¡SW\Å|UµjÂ°…¸.\Ö\ê[\Êùı|\×Èªõ¥µm!v»TU*T©m[\ÚVº].—^‚g!)[‰T¶¯Šn\ÔV\Ø\Ğl?|x\å1\ĞÆ…;%\ì¢\â\ÂÅ‰Æ‡²böŒğ-!ŒğW\È\î+-\ÎBG/’º[\Â\ŞÒ­¤ªj¨ş\Ãcú V\ÎÓ‹Á\ë)\Ø\Ù\"E‘¯‘ñ\î%É°½±úöú0\Ê™ D?\î¾\Äl{…ˆ`‘ı(0Z\Óò\rc!¼¼a®.\É5Mt{\ìy¢Ú½\È\ÆRm=›Gƒv‡m\Æe¾]w¢“]/\ì?Z\È?\â“*i]rœ¹\\¹õ\É\"\ä‘nr\ìªT«ûoûmZ°¬-ÁXV\Åm(R¦®—\Å54kpD¢ò!+²·W@®üw\éJ¿·¤\\Ğ‹Ø®5¸-\Ê\ŞU=l‘<yı\ÕR $U\"§/’²·9o“\è>d$™rÎ¹\å^\á\ãÈœ•Ì¹\Â\ç\Ü/v\ä3]»¯rn\ĞÎ”xıF`¿P”¯~ÿ\0±»Ï¼‰{¸>\ÆV/\Ø\È\Ã(K…h?\r6\\o®V…Ù¿B‰Os,\éù1J\ë’9pZò`½‚||Wx8pı;	‰\ØQ\Ú8mo‡c3ı™a\à\r;‘\È÷MG\ZvAm5®u’	i²Û°\à\ÂM§lˆIµ,8‰5¦Ôš®[\Ç\í»–C¹\ÆÇ•{iW·‘{y‹ŠEÁ\"öò£«‚U\Ã\"\ãxD\äVÂª¼üWJš©«¯N\×~„-\\m[G¯J‚\éSV\È\Ö\ÖMTK¥Ò°·\0·±D‰ˆø<%\ßÁ\Û\ë{*–ñvŒ ¡=.g/pñ\à\Ìò¹Qq[–õ½«{{\æ-Á3\ïtj\âWø*j¨­¬McP¨\Æ\Ú\è7µ\Ç\×\\o´!zö\ï^\Õ\Ë\Ù<¯dôp\Ü·¥Ä¶«¿OµKh[\Z¶5m«¤Cmr>º{¥>Zù©È®B½8¸8&\\`i\Ù\Ñ8ÍŠL‚û’\î\ÈoTƒ:R\ê8xÀ‡\ÉıC\ßüyu¬¹…#.\ãeÒ€/I\Ó\\[Ş¹¹¹·¹nr\Ş\å½ö‹º\ëw]YUj‚ R\ÜAVHTPW¥-ª•Z\ã+„®z^\Õ\ÔQ\Æsm{g/lz^\Õ\ÔJö®\ä\Ú}¸Ù¹{FX¿mu\í\Æ\ĞQ\Ænğ¶R\Ô\Ìf»u¶–¸–\ãF\è÷!6\îB–\Ú\ái¨\àc¯weÔ3O\ÆcGOÄˆ2\ÄXPH\Â_\í#\ä£&m?·\ìa\Ùi¸l\ä§É¦SwD\Í=e—\â\ì}`\ÅÇ¸2\0ù6§é±†X|\rd¡¦\\Xc`(q™@™	®R9d¡’\Éj÷L–7ºƒt¼—\ÆÓ¥eµ?fÁ\"0\É\á\\¶-¡mj o\ß\Ãzø®–\äW<€tÌ©û^\ï /”¿P\Ê_¨d£¨\ä\ï¥\ï¥û÷\Ï^ô¯z½÷\Ïj÷VŒ\Î*\ÊsÀ	’2»\ärF·Dœc.ZF#X\Ñ<®šÙ±»\Ëö\Â\İ\ÒK¬\áCĞ—ú†C\Ô3\æÍ’u\Ïhjajø+jqn\ÔKS›\ØlkdkkÖ­­[X¶µW¡\Û]+«õ%Y[V\ß\í$­Îµ·Sª?¢e5\Ì®:(ñ\ÛLMÜ¶Gñ¿nÍ„¡BF„C8­G\Ì8\Ü\ÙPƒ\ÆÀN.0\ÉhC\Z|B‚(e1ğ\ÊT\rg\éÎ‘p¼\é{qX\Ï\Ó\Ü\ç\ÄÁì§‘ºC9b\Î\Ó\Ùys	b\ãv{Xf\r÷»§§?\ÚE§E4\'\É.º¹`\ÖÁ†C\Å;\È\Ó\Ú\áı5,sdŸs®?Jl	´\æi\á\Ò\äf\éN\ÔY²]KHƒ÷N,\Ú\Æ\ìmNÀµ¤LØµÉ©g\ã{jX’°\ê\Ãô|„t¬•úfACM?h»!A¯T\å‹\å\Øú–4XÍ‰¿ªÁAJ8¦\ä\ã¹À–?ùÛƒ†.YNv›¦–ô\íâ£\àûw<½\Íp\r \ëAÁt‚ƒY\ã\İ°§\0\Û1¥h\í\ís|úR?\æş\Ûı\ï\ì=Š‚\Û\ÓN\Ã÷.%\Ïcƒ\È8\Z‡´g×±šß„\Ú\Öd½7%\îx·×¬Ÿ‚g\à=-Iø\Ñğ	\Ì(c \Ü-BSt\Ù_\àh³•ú«ô9‹v¬\Í:L\\NG™š¹¹Z0\\ƒ²¹X3~Œ\Ä\'LSœ¬‚‹ŠÈ´Š\İ9/rH˜&l\Ã~K\ÚùÁŒ9C\ådl\Îl¹dd\ÎöB\Év]9ö™!O)›)¬Æ•\ÚQh‰“CªÇK%\Ê9Q9øb]6\Z~<ŒÔ¢\Ì“\r]\Î~6F\'¹ğcJ\ìy±¥Å€³L8†l\Ç`?b\ão\Ãv.F4<xò\á\r:<Œ\'M±¢—9\Î\È~$x\Ù-™™Ø‘\Éû±\ä\ÂıC«J\È\È\Ä\Ç~2’<¨õ,™úw»ı\Ñqœ^ğ{lÆ½º†Ÿ\îG+0\â-\Æ0:}-\Âk\"3‘\Zwûœ\\&‹a\È\Åw \'™#ô­®°2\æ\ŞL†\\\á{\ÉÇ‰$’_\ËaA¬®\ê5¾P\á+lJğºÇ¿zıH·\Ëu\r\Ëİ°…,­\âd“ıK\åpù\ßaø¤õÿ\0Œ¤\ã#\àk>lvl`\Öfm”uÜ‡7á“›6XM¬|_he@|\Ï,uF<¢aMì§†ÿ\0­\rö¾½]\ÓJ‡Ç¤e Ù=ø\ï&Œüœ‰jEö¿•(ø‚ƒi€¦\×r\n4\Ö5\ê^8\Z\Ìø;š{Œà¹—\é\Így2a>!½\ÂÇ¶–‘i\n–>¬\Ó{ªÀ\ëA\ê6\Ú?Ô†\èü‰şDÚ³3£8òş˜\Âzn™CHağ\í! õ6˜\"ˆ¼qX\ç\â\Åƒ\ÇH\0|`\é°ä°—Ã¤Eñ\ì»haÁ\rº¥Ä–€^	ı°Ğšk\ã\éÍ´·³p+2i\"\Çs¡v¹\Õú\Öv\â\áú\Îho\Çõœğ\Ğ\Ô\í[=Ì£ú¶yN\Ôóœ;:†o\Ù\Ôsh‚s²\È+\ß\æhù`Š÷¹~W½\Êu{ü­\Í+õ,\Ò\×~¥–İ´5,À\ãµÚcÙ¸»R\Ëé©ºcdGT\Íx6\İK1±ü_›X³³@K‘3œ7™„ªIdùB÷{–‚\â\à\ä\Ù,\Ò\ÚSü¦n\'û$ÚŒWjÿ\0±\Â\ÛJ1nõ’‹j„}®7q\ï_~¬ŒºR?µ­<¿\Ù ¶(GK\ëÖ7öMô›\Ğ}%½©—´_¤¤\íMüE¹\Ä4„\ß\ìµk¯B\Ó\ï\\²Y‘;dñP’š<\ÓP\0x{wQùy\ãb\ãb\âb\âb´¹·½oz\äz\ä‘rH¹dN®6x¸¸\Z½»¶bö¬^Õ‹\Ú1{F/f\Õ]øóÊ½Ä«\ÜH½\Ã\×;\×;—¸r\ç .tg\ís5r±rGv¹\"ªEğš[\àû¼eÿ\0Ú¼j¤\áŒ[Añ›øñ\ÉT¶=f\Ğm»¡\Ğşß¤ñòQ7\ãı’	Ÿˆõµh” v}/\ÒÔŸ\ã*/\Å__\Ø\Ãû\Ç\ÖışWz\ã];Dú‹pc\Ú1~=_¯ÿ\0#û&ğ?²_Á²şx	\å7şÇ¸µ\âI9°x&ÿ\0\Æ\Ã\ä\í\Îô…ş\î±ÿ\0ü²ö´Z õEQT©R¥\Æ-ª[V\Õ\'ä‡…\çûø\èÿ\0l¿\ãQ~y>¡(\Ç\î»\ĞJQ‘\ß\Ù\'øÊ‹üa^Ÿü\ì›ı})R›ğCñT©L>\è\"{õ¥J—\É|••½n\nÂµ~Õ¸n(zŸ?ğ_ÿ\0œQşğ\Úÿ\0†—ß¥\'‹‘RR¥I\íøiˆ[J\ÚU)\ZKSñ5m[O¤q\âƒ{[V\Ôzó(”\Z¶-ªQğ\í¬¨\Â[Å²§´\ÚØ¶©\"\İJ»A¡mRGm[j–Ğ¶©#\Ü\ÚNŒ\íëŒ­¤+V¯û¨-[Ø¶¹|\×\Ëï’¼ò¸-ÁZ¿\î´Ò¯ÿ\0À¿ù\n?\ÜU :ô¥H5-¡u\é\ÚÚ©u~ıQ[J\ØhB‡§em%lj®–\à¾G\Ç>v Õµ\Zo›.ğ\Ø\Ğm*[U/òÊ€·­«jÚ\áI„\Ş\Ò\Ñam[Q\Â\Ø\à¿V\ÔX\n\ã#Á±\äv¶‚¸\Â0\Ú0#ñ\Æ\à•j\ÕúZµ\Û\ÑE+‰«lr©\ç®Jó\Ì [Õ«ÿ\0ÿ\0¸U¯‹¼øt­]­¥¯¬ Šr\r+\Zºw«(5\Åq ÀƒUhy\äo\ÕH\ä!ÿ\0\ìÕµmFš;\Ş\çş\rŠÍ¡\ZÚ¶­«j\ÈvÑ´DÍ\î17\ãgjÚ¶­«\"3ùˆ\ßö©m[V\Ô\èšñÛšö&8;ñ\èª[Qˆb?]·\È ø\ém\\MFF`Àğ: …jÕ«W\éjÿ\0\à«\\l+…«‡ø\ãxñR…º@¹«\Ï0\\orµjÿ\0¾\è­\á\ßüş©Xp[¿¹lq\\\È`A¡W¦ö­\Ç\èn+Œ”#l\n•*E\Íokü\0™\ŞF;|İª•*TœCE¸\Ì^v\ÄØ¬Û„_ı©R¥J“\Î\ÆÁšk3~! 2…-ª•*[mH\Ã½Dÿ\0¥J•*TŸ^$C\äÇ‡şüÒ¥I\Ñ5\Şx\\<[™ù5û¿şim\\-F\"ò\ìv#Œÿ\0õ1½¾{V­Zµ~–­Zµjÿ\0¼µ¥XQ¨À~¸\å?x.G<\ás\Èğ·+V¯û\Éğ”P\Â\Ú*T‹š<\ï¿\ÆŞƒP„!\Z\Ø*T©:h\Û\ç\ïü8f\ä\ÜfµÒ¥J•*Fš,¿&\ÍE\Â\\ë•°Ø¢^)R¥J•,¹-\Û,[c\Ü9\ÕzR¥Kj–F£v\Ç¾Y\Ø\í…m[Åµl*L0ó\Ñt°u,e¯ÿ\0\à?=–¶v‹{E©\Ğ1\åy\Z>œ\ÏÍ¯üÇ§Õ‹¶£\n\âpğ\è¯òt/fO\à\è$gÕ«V­Zµjı-_üd\ä\ÄÂ;\Çş2fºAç—0\\¡ox[‚´{^\n¿\î(ú\ÛGf}nyñN>x¯\Ëb¥°!  *ô$7Ë²co4\Ò~\ZGÿ\0‘˜ñµ\0zRÚ¶ªF€³&Xğ\Î\'\Éòš8ú¦60\ß©QTƒ\ÂM-«&N\íC–P\Òÿ\0Ûˆ•\Ùi¬´\Ø\í¬\Ğiq•\Æ>ø®ö\çâ–Q\í\Ä1@ñ(Ú„`ô›œ\è\Ã·\Ó\È~G“˜8­\Ù\Z{K­œò\âSgŒG%¿{,\É@2\×[w\Ã(hxs\äm„Ù|¹¸³\ÇOdS°\Û9vŸİüŸ\ã\Ü[Ó€oi¬\é»m9…<\ãE\'k\ÛH\Ñğ|rûŠ{ö;¿\Æ\ìYZ‹H]…j\Ö\åjÕ«V¯\ÒÕ«ô¿ø|£\n00£Œ>Œú,˜+.R<ò…\Ê\"Ş·+V­Z´»\ËbA¨1ª@*T©9\ìg\äì¶\Ä?\"_¸ÜŒÇ)Qõ¥J½<Rfµ½3lŸ“\âc[\Ô-‡½\Î\ÚPa[{B2¶uĞŒ»\Ë[}.3\àpu¹\Ù3	g$i˜¤\Ç\Ès\İE±±\ÄQ0¾\ì\nâ¾`e*7ñy*­\İ8\\A\àƒ•q²v(¤2ş\ãb”O+\\\Ë`,`\Ü\Â\ä\×vº\ÓÁ\è4€ğ\Zí…®\Æ\Òİ®ŸK§\ï\Ç9²°ˆ²â‰“0»šl~¥mú\Şm9¤]q›%J.4\Æ|~Y8ï°†\\M¦I9i\â3•\Ã\ÈZ{I\Ó[»A¤XŸ”pa{m{I›ş=²v\èñ‰§\0\ïÁøR±»\nÕ«V­nV¯\Öı/şb‹\Z|˜8F$ò<«•r-ş¡JôvDLòs/ğÿ\0È™3\í\ÌÇŠ•*[VÕ´*õğ¥\Ícz`\å¹6\á!7\ZI{•±µ¢h›\İ\ÓDCË€ r$I­±d]0uªeS8[‹rr[^\Ñ66;ŸPj„•6¶Ó¬¹S-];¦\ÂPztD«m¨\â{œ~ƒ\İ\Ã\Ã8ù\â‚o\Ú­Œ‡9\í ú4Š[N\Ğg’…im \İÃ©adŒ,–m\"F\\X5W\ÄL9q\Ãß½ˆe’\09\Øğ\æ±\â÷P.\Ú,]¹\"\Ø\âƒ@-±k\'‚A\Ä\Ê\Çu@ü­¤·1’2SXü’\0DŒ•ÀÇ·\ãG\È[wŒõRF\æı>×²œ>¢<\í\êJ\Ãy\Ú÷\é­#tr`L\Äc-=\ÑÂµjÕ«V­Z¿KV­Z¿Kş\Óÿ\0cJ0±¥×¡;G\ÉÙ‘7ÁË‘ß€†y¿&`´~M†6øRW W­+Mzf\éòA¸±\Â.f2YÂ†\â¶#.ì˜»ø¶\0?*ÀOn\Ú\Æ\Å\Éñoµ\0‚L`yøÈ•¸\Ø\îy|–GJ\í‹\Îs²\'8\è±”et­;­1£a E£E¢Œ}\Øk{E\ÔS|Z\"\Âôu|#ı\Ë1r=¬¶šÿ\0e8 [#\ÇgÁh;4@±Dx\0=’»À\r¬ŒH2[SO¥\äc;—Y#\ã’!\Ç\Èo,\Ó\â\Í\Í,\0Da\í6l]\ÄH\ËòNh/D,2\é\Øó\ÉL~.^\Æ9³ÿ\0tœy#•§‡–M€¹³\Â÷·i°ƒAj \nTR@\É\Íúdw\ÅØ¹Q´l|’µ„L\Ö`M\Ò~—}\Ç&;;NŒ·\ÍÚµjÕ«V­ZµjÕ«V­_ü®{ù;1ƒñ9?\ÃqdÙ\r£\Ë\"k|\0€¯JAWó×¦\ßæ‚ª¦Î>š\éf\É}(ğ\Z\Æ\îœ9\ÏøA+Z\ëB/·ºhgÛ‹À?ü\Æ\Ê	\ïq68ö™¼…Ëƒœ\îö–…«eŒ1\á99L…‘Çµ£V’\ælc#Qm•\ÛkŒ:\Ée7Ã‡ğÑ¸ \0ó°Àh=\"ß¢\æ5\Ís™Œq2LgNÈf{9\ã–m2~)#­¡\ìiµMs–¦·¾\Ş	ş\Ã<§\áÕ®¶\Ñ\É\ÓaÊ³&Ff™\'$X\Ú\à ÜmĞ¾LœG7¹†Fş;E \à\ãA\ì›@S…\n%—!é¬¨ˆ/kL[.‹#A\ÛR\Â;¡\Z“Ù±\Ş.ü†‹‘¹\Êv!r\ÛN%´´‚\æ\n\r<£d)1£˜|ß¤\Ä;ˆ\ãfFß‹ò^Î²¸°gü]¤’	cô\é\Ûe:2\ÓGiôµjÕ«V­ZµjÕ«V­Z¿[ş\Öb=É˜Y[ø\Ò\Ò\Ğ%\0¼/ıw\ê,­¤y›Q.™.L\Ù.\Ú`\Ó\áº`ø\âx\Ñ\â9\çt¬\Ä\éSX)¡–š\Ğ\Ä\à\\¶&4Ÿ@F\Ê\ÚS|‡YMj\Õs.=4‰+E\Å\Û\ÈsFÖ’c¼½F\È\ë¡\Ñ6ª\Ğù\0eø\Ûñ\rCö\î\Ü”\Ğ\nñ\Ú.´I\İŞ§…\îñ~¹‹vj˜œa\ä? \ãÏ¶Á(\çÀN¶«g¿\Z%–iY€ñCñm+\'¡¶ºYzD|˜\æ\æisX\Å\×\Z÷VD˜PdT±™s1o–¶K\íò) ó\"\ëx®\'‡\×G w\\7NN/u1;’/İ›HÇ•ÿ\0·Ãªc\Íf§„Ç•\äQ<Ñš,Ê…æˆ°,ÿ\0(4¶\í\ÄY£\Ú\Ü\r\n|,Y¿3£ñğÖ£\ä\êP¸\í\Éöº~G\á.\à-Ã™ˆ²•ÚµjÕ«V­Zµ\Ûjÿ\0° \Ò×”ª\Î\áõ\Ú\Û^V\Ô\0SjCml\ÙR\Îh\ãi²\Í\ÛÁ\Æ\ÂX#Ÿ0\Û\áÆ&\ÓYDı\0	(\áô¨}\íLcim1«hµ´}‹Rmc÷\åNss‡ee2&²&\Æ\ĞÑ¨L!ÀxZ<w3¤\"­ƒ\Ø,\n©Q}òğ‚±ö´F\àƒO\ĞoT«`¥¬\áœy\ÆLL‘\Ğ\ÊÜˆöG«\á¶F`\æ9²{yö\0\ê š 98¡ºDS\é8¿Àw“D\Û[UBu\'Zü\Í9-\Ø\Ì~^›.Õ‰­C%2y° \Èù€r°\ìI—\æ£ €CnR\êAƒ»c\"\Ğ\á\rM”\Ğty°\î©Iq\nf2f\í™ú#‹÷\ã‰5œ\È\ÍW$–\äÁ$m\á²b$J\Ì\È6\à\åQ\è“\å=²ô\æˆBÕ“ùtœY\r\'i¹²\à2e\Ã|\Í\ÍÃ“\ã#°q¦ÿ\0ô§ƒğ›\"o-D.ı-Zµ~–­Zµjıo\Ò\Ö\â€%lşz²›ó\ĞW\é\Ò\äM¨GMŸ.yúv.6E\Ø1pg’|²[6ŸT^ \Ú\n‰Mš‚<ºÇ;´\ĞJ\ì›Ax´(ŠT\Zƒ~Ö»›ÿ\0\Äe\íe-6#’ı µywdÖ› )Í¦®‰F {)‡¥f¨Q6¨İ \ĞQn\Ô\Ø}ùS\Ä\'\Ñ>f;)ğÍ§\ç<\ã7\r¹‘	\àÀ\Ï\Ü\î	\Í\0@„?Æš:6\ÑİŠ+‹p\ì±Ã¥ó®ûA†»\ÛJ“)¡1Ë›¡9­\'/\'ÅƒV\ÇÈ¦?\'~À9xw¾¸òzŒµ¿Hˆx#²L5EÏ†3a¯†¬op#t…Qs	qŒ:\É\Óqò9%\Ğ\Ğ_ŠÜSO+5LL¶1™\Ãi\ïÿ\06\ä‹6Z¶ø²Ş©QNp¾ööwC¼‚Ò¦ÆRy$Ñ¢³\Ç\íóñÿ\0\Æ5a±“\ï4\ìŸòK§c?¸¤\Ódƒñ\äg’\ÔG­«V­Zµjı-Z\Ûü\îh[\Ü|’ƒin^V\Õ\ĞEM¨EM›.Yú~6ù¶,|Vo|¹®\í‡I|§“!¬dm\r\Í\Ğğ;%0YQ¶©=\Â\è8Y°[c :\í‘\îğ[H2…‚„\Z@µD¬\ìÁ…Š\é]¸\Í#Ÿ&4/\Í\Ìlb\ÙM®!­..q\ÊÌµ*0†¢- [òA„Z\ÚUwh\ÉJûMğˆ\íkzº\Æ2±µ#xÖ…¨_\íeÔ°9Aš=7Q\å¨\'´æ•\ì\áß²ğ‰\ÇEl\íS€[ \çm¢\ï\íe\àÃ˜İ³fhùöY‰©\ä\âüF§˜)™\Zl3\ÄK¦şxù±\åŸ\ÙO	­`\ç–öu±Ï“ M\'½ñ¿\âyH³±ç³²ÿ\0*\ÔÜ/\nwÙ—E\È\Çy~\Ôó°\Ü’\İG1»\'n \r¼#6n?r·?\ZnüIJ£\Úu„A¡n§Yl­\Ìk\Åt\ÜiE—\è†#p¹š†?–\ê0\Ş\Ù[ZŸIeü¦\Ê\ß‰\Ìü‹UzZ¿KV¯\Ô55ˆ\0\ÕÈ¬”)¬*©O¨EL›*Yÿ\0,|Ir\í\ã\éğc\r\ÒM¨5½G<ù¯\Ü\ì\\(q[¹=\Î>XÇ¸*¤\âSc³\Û\ZŒ XB\é\n\"oË¾“X	F€@wh“]¥«fœÜ£OŒ\Æ\àÕ am€\ä¸4Ö©?j\Ò!f’w¾\ë`Uö‚´	[­tU À¸\Â1[iú£\åkX>\Ï$H\Ç|›È´]De\Ã\Ã&§‚bw¸N\Ô=\ËDR\r\Ã\É ]\á\0]\Ñ\Ú\Ú:E\áø½\è9§¢*“v\İ­T<‚\åf\é8™#™§M†\ï\Ü\ÃÖ²1ş2\âgcæ‹‡#K†woEù˜n<˜ùx\Ùƒ\0`=¯RsM ÷w\í¨Œ>	t]RÆ—ôC	³¾+Ú‹‹š-ïŒ\Æ\éôLy{i\Òõ\r<òbG¯OÙ5-?1¡¯ö’Dw\ã{¼ˆH\ÍB	z²:s/\ÎÎ\èöcl°µ½¸9¬´A«D8©1\Û7™tˆe§.ûG+\"û\ã6Š>\Ö†\àı0\Æ]:vvœ\Â\rzß¥ª¤\\\İh\Ö\Ú\r¥>¥=6|¹§?81\ä\Õ>™Tf›1‘Š²3µ¸ºPm´5†;¦\ÆÛ³`‰)¸\à›,c\Zœ\êD›´	ú\Ú\à›c\É\ÚH>~É¯ªë¿µ¯gˆ`öÌ\Ün\æX°¿75±ˆ\Ø\Æ1¬m­b]ù[V‘\ÜBå³¤^¡U”\0•j¾\Ñè« aHM%~+/¹¸²Bò‹\æH\É_‡’\Ùb\ÅËR\Â·7\r\Ø‰£À\În\\Tl‹!¥noQ\éy@Õ¢šÎ­}¯&‘b,{{ ûY¿\Óğ\Éo‚|y°\æl]o&\Z8\Ùe3|\é‘NI;s4\ãg3&\Ú96½ı§\áEŒ·#\Ş\ê{X\á#„†\Ú\ß\İ`#·±\Ö%tŒ ¢ù¤\Ó›š/rÚš\é\í\äğ5]3ñ\Åş£-uO\îğ3şb¾ñ}\Ö\\\Î\ÍB‹C\Ü.ş¨€\0W}\'²§0‡İ‹ù\Úc!:2|M¤n“H\ÚwBF¥f¦\Zv\ÊÜ¨&\éI§ÀşÄšc\Ç\á&,±şEª•zZ	­²˜\0ó>«6‘›>O\çO•\Ûc\Ä\Ñ|:i¥‡›™R\ä¬\ÅÒŸ!ùÁŠÈ˜‹\ã\İr\\­úÿ\0÷¦D\ë\ìS<¹û•€zØŠ{@@½¡|k­”œ+µ‘4x¸ÏšI¤“3$\È\éh\Æ\è<x\ç%ÀQRJ\Øas\İf|›P´GZ­\åRlTPñdE\éyAR´Hù´E/\ê\r<>?w{do\Ó3ÿ\0OÊ²ø\ã\Ê\Æ!Kºf`#!™P‚6×’\Ú\èQ®¾¶”El®Á\è\Ú\èù\ë\Ê|õ]*•nR\Ã¬,“/úz­ø[%Äš\Îõw\í\åE<sE¾,6—\"ıCN<mG%\Ô8\ÍõÅ¸F•\í˜-;Oò|xå€»n1n\×l\Ç\ÓHŒ04\ÔMv\à.ôğ„\Úv&X<™Ó¦\ÏŸR\Ó\Ü\Ø\ß\Ô1·!\ÌÁ\Ô{\ÂXšD:hˆ÷Pe\ã\äüb`m\Òeµ\Î\n‰\àòš{²\çy\Şğ\Ú\Ş\ã\Ø\İbÕ¹Í¡3X\à¥Ó +\Ù\å\Å\Üó&S3PşLPN-?NŒş2`J\ß‰\Ìò#)Œ¡ò\ÈÔ ‡¨\çÌŸ#òŒ=\î¸ºSwL\ÖÃ‡\Z\È\Õñ²1$œ\î~6Y\Ğdt^\Ø\Û\Ò\Ù\Øc\0\ës\Ç\â¯M‹ÿ\0°js™õ¾ü6•„^7¢òPµD5\ä>,\Ú\Öõw‘\Â\È\Û\Å*Á\Å~f[!lq†°5»H+\\œ²6\Â4ˆ92÷\éñ(û¾“i\ãÀ@ö¾\×Jû^W‚\Ñ»\Õğß…˜Zó+÷-T\âbK“\\%’6™š±r™—öÒ P\éÔ*è­¦ú\ØP\ïgki}¢Š\ÚhšU~2ğ¢Ìdù\ß\Óóc$Nø$ß‡ıFÎ¢Ìí‘ñ\åi˜ùG.~RA©A’ún\Ù^…\åp“\ç‹oHG!6\ÃĞŒÛ¡$¦\Ã ğüa´!¯\Ä\Ä\ã\Ñ\áx%‚N‡8/fFƒ\ß:n¸\ç\Ç×±\\\0‘\ì\Â\ÌD#\Ê\Æw\ìş£,U\î \Ëd\í%¶\\I@8¡¸\Ş×¬9£m‡´Ÿ!²6Â³]šx,\0nuÚŸ\Ú:Qó	n¡{n£F¤lğÊ¦\Ôq °\Éó&\Éü\ÛÙ¦Á¦I!¹qñ£\Æi\Û>¤\È\ÆØªl·\Ù\Æ\Âld%5B9v\0\ç\Äk\ä8zf\Ç‰Œ+ô\È\Å[‡ğ÷ß€{Lğƒ$>\\\Ä/\Ênó\ç\É\î©	\ÎX¥­j>\Ó8ƒ¥~\Õ,œ±ı?† \Ä÷”+\ÉÔ²yó\nÑ¡Ù¼’Õ«°‰\ít€^Pÿ\0¾ı\n…j\ïÁô\r\ém\éPj¸?\r\ÌLy†KR·\ãf‰¨¿3dš\0Ì‚–4ò\àeQƒ JÀ\áC\ÊB\n«À5\ÚóÚ£\å¾ï®¿\íX@²\0AÇ¡}£ÿ\0d,\í6\Üs4ü\ÌR\ãÏ•ŠıØ¸Z\ìs\Ó2†\Ò\ĞFV™”-Ÿ¥›Pj°\ät\Ü@\r\Ü÷yO#÷D°f\ìwu\Û\ã\ä[|9\ì=\á\İ\'G\ä\Ì\ç!0ğ\çgf\Ù2´x\\\ç{I1u\r=\Û\ÔÔ™.6³‡9\n|L—’|ñV\"\0¯v\ïŠ\Ú_¸¹\ÄüÓƒ\Ë7\"K›\ÓA{v¸Ö‡\'§\Z{@\æ6›¢\Û=>=\ì\r|š\\O\í·ÿ\0\Ö>IMÉ‹†\Èúd\Ùq\ãtŸ‘>QÚ Áh\îXCÛ¿\íÓº¶´n[öŞŠ\Ğq6Ï“CÍ…c\é Àj\Ö\ç\"K`4\"òz\rQú£H©\æf6;¦—+%\Ùy/\íÿ\0k4\Üf\ç2\"¶€¯PœAˆò£a’P,ãlW„]\×aw\ÚŠ	¶Q»]\Òÿ\0¥C\Ê Rk\Ø<‘@+úVWn6ª\×õ“\İ\Å\È\Ó±\æ“)²·2,\Ìf\Í§€2™\É{°\å\Û$2¶V5\ìÂ®Â ˆ®—C¶ªòWdu\áR«U^O~6ªµ±Ut‹O”\èiPşR_‰‘&4†<œ<ü<\ÜX:\æ6]0\ÓH¥™¥cdvƒõ\r\İcjl\Ì\î>g¹½\ï‘H\"~•†øhk\Êtqb\Å{~\\X„Q@\ßZ\ï\Ãk<—·\Óxh€@F›ƒ”>y_\Ó\å½\ãn\ÎÓŸòƒ^ª\æ†ll\è\Èd˜\Üeš–?–g@\çí‘‡{Ac\äJ{\èô^\İ\ÌŒGÁ\çi¸¹\Ä×’;X\Ø‹\Ã\İ0·ÍŸ4\çc!\Â.7$8ûzh‡s€p\r‰”Œ\Ï?ˆ\å\å\Æ>\Ú\ÆZk\Ş\Ğqw€/q\éöpğ\ŞW”\ZCQ°©\Ä!\Z\r öZ\Ö\à.—Æh­{S\Ú!ts\Ü# ­\Û`ò;mvB\Öæ¹›\Ò`2d‡!ôƒ­´ƒQj …*¿¯4‰y]/ ¡b‰\ÜP\È\í\n®üRa­\Åy,˜<ŠL¬Oi”\èd“xù‹©3+k«®µm7}\Ï•š\ìi¸\ß·Q J\İüƒ}\"*×¾T‡^k¾\ëø¯¢G\Ø¼\ìm«¤M¯ıüö²qbË‹|\ß\é\Ùq\îLm‘“GX›\0†M‰¨\â\ç6\á±\ØYzLñs\æ\éÿ\0Œ\\\Ø2‡\íYkSŸ3š\ä~\ã¥\Ç\\˜\ä#$4„ğÚ’VHŞ„\Í‹\İD±ıò·\Êv@ÿ\0S3\İ\ãsş\Ü\á+KN^‡‰+-™:VV3‰ú\Æn?\Åc\ë­yL|{\Ş4¾?”MŸ‹\\ñjxÓ{]\Ò ;öÁˆGa‚\':\Ğ\ßh¹—\Ùh\ß\Ğ\Ö\ì4²5+øA,\Ù&\Ôb\nTo¶B\Ã\çp`¦;{üˆ	L\Ç	‘5\0Á\Ğ\äcUm&,[º\rˆy-!ª‰\ít$ I\è\Ñ\ït(\î\Øf\èkZ“°1v³t²,€\Ö\ã#O÷Ù­cƒht[A9\â8‹\ÎD¦|‡<\è\Ğl\Ç2–š\0®\í‚\"i¶¬–Šù_ô¿öB#¤\ßÇ¢Á]ö|Q6š\0|·@\Õyª\0†Qi\í\É\Æ¶9£M\Ê~8¤§µ~f{w};UÀ1\Èe‹J\Ô\Ë\Í!ÀP#´:Cº\n‚\"úEö\áÕ¡g¡\İQ²Jø}n\à¯+\Â\è @óŸ¤\â\ê\ç\ç\é’\éßœmnğ\èp¿©\ì\æC<YP‰\" 9¤,­7øƒ33OG•™‰˜\Ñ\ÄX×®¼8¿\Ø\Å\0\Ç	^\Ş°\ìs¸S\ãxe&\ã\Ë/CÛ¹\'‚Î¤lÿ\0\ê\Ò\ÉK{†’\\ed_\é\ÉwY\Ñ\åu.F†{0º¼\'w­O\ã\ê\ĞN§‡ |Æ$W\íl\Ğ¹Q\æA5m3WA\Î¶ÿ\0¯À0›qu\Ö>™°\Ètø\ÙqDµƒ¡1E\î,A½v\0)k|\İô(~\È-®˜\Ğ\ì/ƒ{&Sá¤¼Õ¶2U5¢\Ş\ã@2‘h\Õ!aM+a\ï~vDùùO™ğ3\ÈsXß½\Ûaª¤oµ­\ål\Ç\álcsÀX\Ñ1\ãb 	ò‡\â¼.şÇ”.ú\'ºWKwh9n\íu\Ğ=«ğ©7\Í\'AÂ€p\ì.¶ô_i\îZ\Æ4\ìšl/d­ö\ÎdÏŠf¹šN¤5@\ä\æ‰GSÀö\Òr3LÔˆ¨\äpM¶‚m\Z…\İü\ØğM4\Z\èù\àOŠ£HƒõF©]£\Ò4J\ÛHx\ì€;[Zl-Gúsbd\ÇÉø\áË‚SŠ\á..õ.<¤7(H×°9¯dOacòô1{ñ!\Õrp\\!Íƒ\'%–\Æ=\âz/•2g\ßfW7Ã¥sú&Md•\Û\íF\ĞZw:P\ÃM{_3hû8«\ä0c\æ\ÚÁ¥°7\äı>1\Ğ,”¸PŠ—úv)É¬¯\éü\Ü{,dù8Î¡«G¸s¶Hr#¼y0ñ\äüD=\Æ3øİ²h¥c»f\â_\Ó\Ú\áÛ¸£»v†hc¼\Úds=k\Ë1^ğ„EÁöˆh@1N”šÖ¸öC÷ñ.	\Ïc.r\ä,é ¸ömÿ\0CuR£ô\Ø\İİ‘T¿¨uI7³‚,Yç‘¬\0:@\Ö\è\Úx\Í\ÎÂ€BBN•ôV©“\î2ˆ\Z\\<Ù­“\ĞA] Q´\0>@ĞŒ‘kg]ô>\é\Èõ\á¯>v…}øUe\ÆÕ€Q¶”\Ò+¡d ‚µ,ga>!\Ø÷1Ï›ŸœiÚœ˜9m‘°\ÏĞ¶Xå‰³\Ç\ÆüüG\áMÖ‘¨o\íY¾ˆ±jºUJ]W}—\ÈIH|]:Æ‘\rÚ¾#¢A€œk¢<¢?ıÏ\\f9ó¦\İÌ¸\Ï9\Ä?2m9\×¹‰–DoÔÇ“\É2tGFL¸PkS\ã?/\'1›¢\Ø\àI`ip(\Ì\æô¹eÜ¹\Ş\rp˜Ú£¾7:Á)2~ú3¼»·\ä³u’\\ğ|\Ûò1±ñöacE\"Ö’AŸ\Z)…I‘¢ƒ~\Úl\\œBü}w*\0 \×q¦\êY\ì\n]7Cº\Z\ÍÅºPÆ”Tµ÷ûL²~#z‘ı²ò‹\ëÀ£Ù¡ş¢9„ ~M\Ø\Î\Ó^{\åh\èn>N÷K\äUö‚²]@MaO’ijÚ˜\Óp®>Yd+l˜ø«aû\ÑpıÖ‘t	\Í\É\ãÆ—\Î%hpS*\0—ty-\0J¨ mx(“K­½¯®\Å_A*–ÿ\0 K¾Á6…‘C´;\í]x\n\ìR±eR\é\ìc½\ëa\Êl‡6w29?o@\Ö824»\Ê\Ê\Çnl&7O¸y%«K\Ôù‡ıUô\êC\å\âÇƒ\ß\Ñƒil6‹-¶vQUH’:T¶ \0[©[i8$¸\0ôk\ímúZ–‹>yš>fK\×ÿ\0\Z\ÆnG&l\Ì\ÜÊ°²0\à\Êf\Ù2ôŒœ\'™±±õ»vÌ¼w‰š›O\æX~¸¦ÿ\0^	’üb\n\æº|2—µ\ÈÜ¯,İ“;ºs96üc‡\"Aò~;\Ëh:†v\äWÈ»aÜ›\×<?¶š›Lƒ)Ô²´9 \'e¿Ô¡Ô€fÃ— |20\ã\ä8Yø\Çkÿ\0|\ÔP–Bm~óükóll«¿\0´v}\Ï\Óyz@(¹şX\áù\îú]\Ä¤y-5§°szA¤¢Æ´)¥†]4š†§&vc§v9|\Ïs¥šW\ä\Î\é¡i\ç\'8I+\Ö\ÙG\æ\îC{\ZJ\ÖòhFšCL„GŠĞ˜ve\İG×‹)®(x´;[A6ª[B¡k`[h­‚»˜h[\Zz\\a\ßA¿\È\Ğ,“41\äÀø¤\ÍÀ)ğ\Ë\Íö«\â\ÇıUnl*»\ZscÉ1c´\ì\ßw\0\ÎvñhO[»\î\Ñz\é\nO!uH \Ã\å]o\ë£\Ñ\0„\Z]\â\ávQiT\ëFÁ¢@6£ı;ûŸ‰4yN\à\È6\'‡Ç§ÿ\0S¹Ÿ·—‹—L\\µ¶>Yº^.KItø\Ú\\†HpõşAÅ•¢ƒ£k\Ï\å\æ“\È÷\ß\Ë\Ü8¡8=\'M \ß\Ô%i¹^\ä\Ù\Ø\r—º)[Mt9\0S_€ù\ã\ËS>LX€,:„S\rŸ$F\à\ä†Aóı±)!h€‰§Ò¢q&	±\'‡·G›<_ˆ–ÿ\0\Æ9	Q±\Ç\Ï	µ\Æ\Z;/\0 ,Zs‰ğ-5€›\"äµ±57£\Ñ(½Ÿ`õüJa¿;@ò\Ã\Ñ\İIÀÕ»ñm À{_\ÔZ›&“\ÙÇ¸_Y{vX\Ã\ä}¥a³O0ôMTÖ¡?>[Š\Ó\â2\å5BİŒ\å¡\×`¡ã»«MğšIV¬®û°G\Õø]¯»E\ëu…¼R\Ü)n\0ödş\r€¥VmW\Ò!£Á\Ú\×ô“ˆ%ˆ\â87¹$\ÒM\"Ä•±HÌ†iù°\ê‚h\îz¾\'Œ\È\ÜyN4\àŒL\ÆdF\Ät¬‘\Ø&»uøA\Îr$¦½:\ÏH\İXUK£\â\È[KŠ\â#\Å\ZUbˆUhÍ’-n²§‰™,“RĞ²¢\Ü\ìM\ÜD‘f\äb;’-;ú¦9\Z\Øs„»\\\Âğ,\Í\'/sšb\Ï\Ò_¹¸\ÚüRP{3Ij24·{’7n¬”üˆ\Øm­§ş&7ƒI¸²§Cµ”N0\'\à[Ãµ\ËşÀ\Â\Û&L0\Ù?ÿ\0[<tb\Â\Æd¿³\ìI$GúvF9&)ğ\ËI\âV\éd\Óq\å\ŞÍ\éÁ\ã\ãñtÆ»\ŞI\è1ş]\ÒB9Bù1ç•Œ\ãV_V˜\à:Ï¤\Ñg±#XPZ|\äQ&GºÈ²i¡\æ¯Y\Ë~\r1Ñ‘Û±Z\Ø\"v[\î!\ãúsddœ©(q€>OÕ­@ñb¼¢m\ÅhQ.vã·®\Ã{c­Q6W€ª›kº@­ÿ\0H“H]ª(\0‰\0-\ä…\Ù_‰D…v« €n[­\0W–ªø÷¸õek\Úw°\Î/d`ñ•‚_†‰ª;O\Ì\í®¿•…¬\é\à—\ÍW¶\ÈP\Ì\×\Ç\Èô>U‚ƒºN\í\0¶ôƒ>\Â-\n=ôºAı-\Ê\É4‰!üôx¾·0ù ºE\Õ\ã³k?I\Æ\Ôo\Ì\ÒgÓó²AX¹yzk¿oZ\ÆË ğh¸‹ñ—£\ã\äÛšc\Ï\Òd%¸z\ìOp™ƒ\Æ\àdmR\Ş\Ã\Ğ\Ü\à\ä%pò\é¤glv~H\í\ro63\ß\ë=»õº\í\ro{i{\Ü9‰8šk›\ß\é\Z{\Ãôxÿ\0ı?¦\ç\Åø{}gxk3xö\Í;\ÈÇ²\Ğ\ãĞ‡\í\ÄA­Hqú\â|†\Èdlò%ğ3>©5Ÿ\Ûh\\€x\í\ç®=¾Z[‡ny^{¼ˆ\Ú\ã/‹\ã\ÓZ<:\\˜ñ\â’Yuù5·\Ìøbtó¶6\ä9ù8¯’F°aa³0¢Ó¥-ª2KZË·ğ5\ÜV•	‡\ç \á\Òc@j\"š(¢~4\Zz\ì5£\á\ÚpA´QG«)Í´\ÑôºúQ%m%WK°¼vº!\Ñw\äµ„ø\ÑÈ–\'¹«7\"h2:Y°¦õ‡Mÿ\0‡9ò‘»\ØA\Ôğ\â´\ì“¶#•²m¶Á\à\n4vRÕŸ\ß\Ö\ÓHnaD-\èC•… \Ó\ä÷\Ûö­€¢v«‹¬\Ğ=¡×‘{Š¿—d`\êÓ‘Kra8M‡#¡›kd\î-?]\ÊÀ!‡T\Å\Ôq\Ğ$£‚nƒ½Á¿?H–.µô&&\Å­sm\×a\Î\ë\ä\êÿ\0]­?\ä8q“l:w\Û}ƒ±.·M\ÂB\â\Ú\Üü$Fl°\Ú-šC\Ò~^c\0\İd8v^|5±½Ã¶\Ä|oo2WQ\Ó\Ş{l\É%£ \Ò-=\î=\r¶-g½\è0ƒ\Û~C,#\0\È\\÷\n\0´\Ù/.CC¿ª\Å,ƒ	†V\ÅÓ»0n\'\Ïô\Î\r\Ès´ø\\Fˆs£O<qHó‘)–w8ã†ºP\Øv\â\ÄY²¤¡b\Ğğ@\é:—Hx\ê\İÕ’$ub‘=\Ú\0&‡¡¯6\ÉD\ì/´MƒH6ú[N\ÔZ\ã\Ğş¤Ò¹qº \Ãk!±\ä°\åŒ~8\älƒN\Ô`\Ï\Å4mî¦€K\Í\Æ~K˜tœòËF<(\Z²·‰c¾‹hI¸Q6\å{—\â‚xş5`œ-\Çg®\Ğùx,r\Û\İ.;i\î\Åx\'şœ;ù8\0-4‹YXX¹qq\äj:ñ.HŒĞ»©Mõ$lkY—\Ğ\Ï–¼XOc\Â$\Ë\Ğ·IŠÌœ½=üoÁÔ¡\Èø¡º†\âŞ©mi}b¨\ÉNÅ\â\Ú\ìiÀ°\ç\Ï\í\Ù4×·\äƒQ0\Û\Z\Z×³µÀÛˆ€\Â•Œ\"\ì~A<\0\ÑD\Å7·ö>ÿ\0\Z”Á1;ñ_Kı”\0YNÿ\0\"’¢;òRx)¾\ì¤7¦;ü~\Ô}\Ê\Û\Ïÿ\0ıò´‘ZF-1Iş‰ß’\ÕşˆùX`û‹ü1¦£\å‡\Âi‹ı}\áıB\ã\è\å\Òw\ê\Ï+ı\×\ÒHşA5ÁÈ¯öG\Â\ÕÀ:6m•ƒø\å„\ß\ÉI“ú¤Á³“>—õQGQkŸf\ßŠoù\nÿ\0õ ~Í¨ş!?0¦ğ›ø…ş¾’(\ÏH\0\à\åş¨ˆN¯¤I\Ü\Ôÿ\0µ\Ò?j‡NMü\Z¡ğ¿ª#dz»öcÜ¦V[Cs%h\Ğ$xÔƒAüTşÀ‡\Ò\Ö\ØÓ¦>\Ç\ä´W¹Ø¶“´ª‚\èq”ğ(!şD\ïŒ\æ™òh¹˜\Ş4\ï!H\'…ÿ\0\Ä*U\"n¿ÿ\Ä\0B\0\0\0!1AQaq‘ \"¡0BR±2@b’Á\Ñ\á#r‚P¢ğ3ñƒScC`“ÿ\Ú\0\0	?ûº\Ğü;fô\âš10|Í»%¡\ê\Æ*\Ö/ˆõªZ\Ñ[ó3\íe\â\ÈÁ½›´?ŞŒı\ë°\ìŒû©¶F\ÈBÇ¼\Æ=\ìˆB\ÃD²\Ø`ö®\æ‡ß¶\nÑ¦\ÚHFb\ÇBN\î\Äõq{‘K\Ã[¶Fc¹°Y\İõ\Şv‡u]‹R$qn\ë†?ö”˜„Ñ†\á\éz(‹Œ†®+q6}\ëpÕ”[Eb÷™mfÁ\ã°\ÅEb÷²Ô«‹ÀVo37\èd³>Ô²B\ÕLWşş¼û\É6-,\Å÷\Øÿ\0\ÚV´Lbi41\ÜÁŠ\ÆDP\Ú1\â+\Åú½,$îˆ¶\ÙF\Û46”qv^\â9m\Ğ\ìb\Äõc’b·½x{†3ifı\Ãû“û›\Ò\År\Z¬cÉ¿=\ŞC³1_xvŠ#wqbÆµ\ä\íc)+¨­\Å6\æó¶Á\êlŒV\Ä;/¨õ¤òHz”ö$Fâ·¼cÀû=ıƒ°ŞŒ\Ëÿ\0¶\æ/2V*\'À¦\Êi>&[Œš´1\æ^\Û½\Ã÷\ßd‡­Q¬59²vV\Å\î-)\ßc?¡)s$\ç>#÷¾)½ˆx½\Üû‘ğ\ïĞ›“)\Û\ß/¸¯¸\Åb&\é¿BR±NşB\ÕcE‡\ÈX\Ç1Ü“¶\â?k)\n\ï~…÷©¢¢\êKÁ›ÈµMbøŠ\Él}”MN£¶	x\Şlwo7¡\Ş;Í˜ˆ¦\äÄ ‰\İ÷–#°“fC\Ä~\áûü4¿z»\ê\èI&Z\æ;Ñ¶m\'{|2Ì‡\á–hb¹’vLx¨¢+­‚\Ôw\Í\ÜÄ¨õ’-\áÍ‹\rˆv\ÖWPDoQ\à’›%dJÈ¨\Ú\\H,6û–1\Ùo1l\ÉhŠÓ°\î%sH~\í÷Wº^c\Ğ\Ç\ß}Õ¡‹º‰\ë%ğ±{9ñ3š\Ò\ìô5\ïY1\ßß¾ô\Ñ\âgÙ¾„‡M:’VE\æ\ŞvD\'\í-‘=T•”P\×k=\Èğ\Ål%©\"\ï\É#¼x!øWvDŒû¬\ÌvûŠ÷8‹C\"?¸¾\ã³)©qYÔ§¹\ì$\ĞñOF(NÄ­Ì¨\Ú\İ÷¡\ÙÌ«9·Ä›\Õ\Ü!\Ù\r\áÀ²K\âeyÕ©Á\à‰6·#²\İ\ív ©¡¶\Å~b÷(Dq\âfğC\ïJ\Èz0[\Ìt=–•÷•\ÜZ_}B\Ğ\Å}º\ïÁ”\äôx%¿y/1ã±‹Z?0Õ‹4\"7¶\Ç÷…n\â¹G\ÛT’oDÅ™€´/y/\r\ì´\äg¼\Ç~š¯Qd¶\r´³±LV\î;}Ì½\åıÛ³\Z÷¾»\ËJ\ÌDQOŠ\Ìz»\ÊJk€¥hZ\Ñ{„\í²\â$–¶h‚kz)\É\ÄM\î’!¯\'·b,¡±&]¡EŠ\ÌV¾\Ï<7!Yf,”Vó\Ç6FÃ¾˜xw²*\ä{\é\æg\Üx\è~\å{¶J\èB±4¹1÷Y…\ßZn=¸\Ô*­»\Êj¤Æ³*Å§°W\\»\ì£\Z•;\ä+1{•\îsoö_g·hµ`\Ö\r•5\ìTI±\ëş&K\r«yNïˆ½\ä’$õ\Ìx˜›D4‰ı\Ça\ë\n\Ã\ïE_CûÓ°\ÌH46‰ó‰¡§\îĞ´>ô‘F^X’«I®	Ö¢ø\n¥=\ÚÉ–hZ²Ş‰=FóD\Ğî»¬~ñ\Ú+;‹[Y[[q\Ù\İX­—;$h\ß3³\Ær\äA¥¹r{Ù‹{ºšBiod|\Éa…d´«h“I\"Nï‹c»\ÒÆ´;\"x¡\å\İvCÓ—\Ş\ÌL	&R¿´Hr\\™-nd:1µÌ’~zq\è]ùY2£§#\ÙÔT\Ú\ÊN/~®¬÷\Ö\äFqŞšÀÁ\Û`\ï—\ï1\İ+§š)ÆŠO®s•²½\Î\Ùl~\ÂX–\ÔY9fÄœö\Øj	\îÌ;ıÒºN\æFKDõR ì•ö™µ¢\ZÉš±{ñœÊŒÏ¾„,¾ófSe\â\Ç\İB%cU‰Äš‘‰27)³Z%DHzP´3Ê®Ig	¿¡FÏ7\ç‰\Z\rm\Ø\Êpš\İ\".ƒ\àîŠŠq\æ\'±¦TN›Á;µ©\î÷Kºû’QKk):©myÒ£k¬\ÕJ›ZC¼\Ïrô\àT¼[\Å!Û‚±x\èW¶ÁY<\Ú†Ø¬‡Ÿr_3=¢#\Äx÷´dg÷TJ\ÃMLŠpd®¸c¹\áb2d\ír·SWÈƒ\\VDº¡&R\ãÈ›óE5.X”G¡÷\"š\â\Ï:_‰,\Ôï¸š¬–Í¢µ+ilV.,x!\ë7·p\Ó\İm/C\î¡>ü¬v‹¯‘»¶CS³<[o2ƒ\Ëb%w\'q¼ô«½\Èğµ±\Ôd5Y’.\Û\àem˜\ÔRvmeheX\ën¾‹·|‘µw1{‡g¥ø{ùû‡î–œ÷½š%bBV-nE“$TW\àJ23\İr\ÊLº-(\î!*l¬ŸŠ\âĞ‘ß‘ô\"!2Z\É\ìf®®\Ôó \"®£ku\Ñ+|Q\Åõ–\ÇbW™wNxI~¦\Ô}¨lk4e\ïV–I\'¼¯­N¥[\ç<ˆ\ëSY(,‡÷™c¹d[“1o$²D\ì–\ÄF\ÜHJ)¼Şˆb\ÊpO‘ğè†±­ˆ\ÎFv7\Ì\ÌWF\Ù\İ\ËDn+#/x‡¡\èz2\Ñf\"f{[\Ze­\Ãi…¶ó\"a¡w\Ñ+2£’õ*k-\Ìğ±+ñE-W¾,¯o3Vk™‡Iò\×÷+””â¶¢3•\ÉG\è2Ã°\ï¥c\ÓE7ñ¥ûp’\Ø\ÑM=|n\ÖÑ•E«\Ë\ß=,­m‹²û,T\ç›%®—\ÙYX–°…¥÷#‹+pü\Ïğ37\èÁ!IòBµôI\Å-\Æ.;L5Ö–\Ö8¢\É,®…–Á\ãlV”,wŠòd0ß§!÷„-C\î\"Å†;[;˜\Û;d;\Å\ì¹S¢¹I¾jÄ£2´š\İ›\Üô+ˆ‘#²Zq ¼„\ÑVIüb\ÉO¥Ê¾ƒŒ‘c”Jü\Òo½a¢ñ\Ü\Ó5°\Ş1ˆ¬3§óD\'\Ã\"¬kSù^h¼jG¶¡k\Ò\Ë\Ú/\Ôi§¸Bq\r•‰`TkÉ‘©S’\'(S”ª9c¶È«	¶;\èB÷\r$^£\àZ[Ç­&l)M»bö-½\ÄôKVHzÒ–lX¦m“$ÒC½²\Ğÿ\0¤Çƒ\î;$+/t…¡÷„35\èY.,£*\í\ÉTS\ÙnO‰Iy’²\à=/Cˆ‘\ØĞº3YsÄ°\Ó\íÔºEH\Í\îÉ•o²Hiè…¥Ğ´3Œä±³\Úvtš\Ùr‚ºÁ´\ÊP\Ã\â¾(š¦÷¼…«8gl™†—Ü°Šq¿![\ÈRMmŒnN¤Û«q“\Â+J6Ü•‰´NMó\Ğû¬e‹=\ïpî¶‹™7e†3#\ì\ŞNût|*\ä¬•¶Zc\ÕB»\Ş<^OK³\äócÇ€\î‡\àÖ…\ßwb»\ÛD¤\ã\æÊ±|±!9qµ\éS\æ\îv©;\æ¡œ\åøŠI²\à>û™Ş…Ğ¸ˆWT’—˜¤\×U¨\Ö\é,Š±ú‹ó\í\Ìc%¥z«‰\Úa\Õ¦›ó;D\Ö!Ñ›\ßur½J\\]|\ÉY”\å%·2*¢{Vbºj\â°\Æı\Ô\"üŠQò*NT\Ûû+4)Z\ØafTÕ’\Ù=¥9]\î6\ï\Æ\\\ÃCIsœ·¬Š-qf\ÃY&\ŞJ\ã¼^WFI\\‹òf\Ôe%b¢p‹¿MA,n\Çu¼\Í-…µ\ÈÁ\æ}µŒô+Fù\é\Ån0Ò…¡]Š\ÈLZg¡e¢q6As‘[Q~\\¯V|\ço¡ß›\"\Ò\åa¿6?v„]h\ÇB5´4[JB\"\Â1!Ğ©R>efù¢q–û¢’òe\îı\Ğ\Ûò\è).f[˜\åM½\Ï´¿4{*«t›Gÿ\0eğ4\È{ºP°\ã(\ïEIT¦ó\â„÷K2Èš&Ÿ˜\Ë’$1•\"¼Ê«\ÈÖ—$vyy´cn\çk·ö«\ÚO|\Êj/z)‘dX„E¼6Ú»	Z<\rv¸!<7%}úq»¾«¾\n\ÖÀÚ¬J:‘w\Ã6f²Ğ¯%õ£\'\Ğ|´\"\Öc\Â+´ø\ä\Ì%µö\î\âŒ	B#£1i’\\\Ù\Û)Ã–,\í=¢¯,\Ùd\ŞùJ\ã…5Å¤v\êp\ä®vŠ•<Š7{\Ù‡\ï\"Ñ¬L’dz%q2\"q¾£coK$\Éú\èY1Eò\'«\Í2½?4J“\äÈ§\ÉÜ„Ñ®¹£\"po£g\Ì]¬¼\Éa\Å\\n\Ú\É?k\Èvƒø\Û[\îDDP‡!¶kd*Is!f)y›!6÷X¦\Ò\â¬Yõ$KFZ;a¼w\Éo6\ÕvÚ®;\Ü[t/•\îN\í\á£¶²\Ï{fLÉ’Ö¶H›R\á°w•º\è\\Ñ™[ˆ\í#=\æ\"0zop­\ÈB0»-f`I¾Ql£Yñj\ËÔ8qœ¯ô;Uï²œl‰Õ“\ã;S\ç6\Î\ÍIud ¿Ä¹o\îO\Ôo©&b!²^šD‡	v\à\Ëÿ\0’(Fü©•ÿ\0Cµ/;$ø¤V’{œNÒ“\ãª\Ü\ÎÖ½\n·ò_T?S“ò)LU‘:h¨\×8aùZ\'\Ç\Èq\è8ô5|\nø\ári\æ²k™E«mN\ã¼\ÉD’Ô¿\ÙyM\Ş-“M,™+Y`<MT—†\å\É\ê¬IDwŠx´ˆ²H¢ø\îC²\âTzö»*I\ëd_¤°’½Ê¢’–²\Ú`Á\á+a¸\Å4d‹\"jS,“±O\Úmwbµó[˜ü/`İ’À|›Ğ¼\'Ù“½\Æü;L$½LL£2*û\Ç\ä\Êw\â„\ÆXH‰‚\âTQ\æ\Ç)·µGõf\æ¿Bq|“eú	\Ïû¤BünU—–¿\İ\â…nL‘=]}	.º‡£õf\"¤W‘=oSnõ\ì\Û\Ü\ÛD-\ÊeZ‹¡ZOš1 @^„Y_”„]°û%(~RœzC”oƒ³f²|H\Æ\ÛÓ½\Ê\éï­™y®xš«j\Äh—¡&‰¾ƒ\Ç[[[iP³#§„µZ\Ï\ä%Ì›\Ôn\íL\Ù9\'À¨\Ş9ï†ü/b>\'°–û(›µ’VÁ\í¸ğ#«lc\Ä\ÃYZ\âÕŒs\âb˜õZƒ&·–q–\â:\Ñ0v\Â\Æ;¿r\Ì\ÈV-w¸z¯‰fD•‰•\ãÔ‹¨÷D:_\İ<}\nñot`J£óKô=[d\äI\î\é‘bD´8²(À~ºYqõ#\Í\á\äU”NĞŸ÷F\ã£\åMO†h\ì•”ªSem^h\íw\äOYñZ9}G\é¡\Ü}\î\ËR¦÷l\nQ¶\ÌE½\Ñ*\á\ÈX­¬\Ão-\'k]\æ!iZ0\'&<*—yjµdRom›Uø\r+mHh±†‡F.N\Â\Ã1`–\r¨¨••¬\Çršuc“6	§sÀwRô>\Ú\Èm\Å\â›\Ø}¥´ºq´[\Ëq“1[ˆÙ(\î\Ü;>%Ÿ\"V¾š\Ê\Øk\Ô{\ŞEJ–y%‚/\ç&\Çaÿ\0³\'¦\Ç\ÔDZ%aÅ‹£5„ôXD}<Š\Õ#\ÊGj›ş\ìI\Ód)\Ï\Ê\Å¹1Iyù¢HŸĞ—D7\Ğw\æ…~D.ò›ƒ{¤Uª¤²´.F[ß€y\ç©;‘Á\áz˜\Z·kcº-\ÔË‹\\°´1EZ^mhTüV°¤–kq\Ù\ê\ßkm\Âò¶†]$­ñä‡‘+F\×k~å«·ñj\âj3û`YF[L-ö[\Ú}‰zÖ„¶n\Z{š#gõ\'x¬\ŞC\äĞ®·¡$÷‘µ¶¡&¸\ÅxÁqgk¿+”\å>2v-¦v\à\ìM\Éñc\ï1û¬|„úb!&Sõ!\ê$}41²ş\æLoD‰Ä‡¡It)ŠKÌ”‘7\Ğkòš¾£_˜ò5†ü\Ë?\"¢}II:¢W¡2´I_’$¬†\î¸ô$} ˆ¾…\ĞôEkoÈ’»\Í\rEô\"¥\r\äz}HH‹\èkt)T—‘N1\æ\Ù;¾¸Rÿ\0òiñ%+\î.Ö«w¾\Ñ}œ¹\Ü\ÚÑ+z÷­¦\Í\Åp6b…j‰b¿R+Ye!$ö=\æ+qŒo‘ƒ{\Ìx\Z\Ñ<R\àB\Ü\É;\î\'g«.x\ÃNR|]ı\Â÷¯¸„!w¸c$=(v*Ç¢>„WB1\ê%\Ô\Ö$\Éz#1ó\"\ÈÈ‹\Ób\ÏÌ©\èd÷¢*ş¹³²AšÜ›(\Ô\\±E\ä^\Ã}	¯1Ã¨\âù2œŠ°\ä\ÉB<\Ó\'\Ô\Õ|\îR¤ú”#Õ”QB%º‘‚õ\Zò‚ŸŸ²Ê¤\ìbú‘\ê…n73y¤</o-\Æ\rŸi6nµ÷\ê\çc	Z\ép$õ%±\äŒRwMl0¨‘…²hV•³yY\Ö\\Eªø•±^+›?­.Euµö\ÕcŒ…a>¥‘(?ò~\ã\Æ>\ãû\Âˆ¡i©ƒƒ!şE\'\ä\ÈTD¦¼Š½Q8\êD^š>¦¿RRó-\Ğ\Õ¨ÙŠ\âSõ)úw¼‰IrGjkœNØº3µR|\îN„Š4Y\Ù‘\ÙlShmWVJşgÔª®G]o‰SQ\î\Õd™UşR¢óD\éú¥\Õ‡QÄ’\êSN\ÜnBP\\°&‡/\Ë\ïn-\àd\İ\İÏ›3<\×\ÔX\ÛDTT±º,”²hm\ß=\È\Å\'x\Él­U\êC^ŸĞ¨”·<kG{ ù-\Å\äUŒ¹+‰.-\\©.\Z±B\ê`³¼nÙ¬÷¹%û6¾D¹XVVÈ„_4F+\í#O=¶\Z¾û2¥—ö3Y­\îõ\'ş1ı\Çr_¹ª¼\ïú^p¹%ı–ıJR;+_\ävg\ç2‚_\äÄ–†1ŒcÒ„!z‰u-\Ü\Õ5MQ¢H\ÇŞ‰‹#\"/©Œ\ÉIy*.…H\ç%ÿ\0#WĞ‚)¿\":\n•®ºüÆ·R^„—A®„QuÉ•\'ùŠ²ù”\×B™JJâ¨¼\Ä\ß4:‰\ìI²ö|q%å«©ĞŒ?#+z?Ø©V‡\æ*\Çó\"P|¤Šs|¦—\èOUu*\İ\í´s\"Ñ›i?3lz4\'Y>lKQ«<1†_fKa\ák\ì\Èğµöf`ş\Z‹&Sö”âª‹\Üö\ÕDvw7±ZR\à\Èû(\ïÍ¢ró±õĞ½4JÜ‰\"w!s\"\äU\ŞÛ“±Q“—Q¾ü¬Td›.;G\Ğh·M$6=D{¬eôDKCû•!Ğ•\"4º”\áùŠKó\ßR3òª\Õ‰9¯ğ+[ü\ÑMó‰Rƒ)re$¹6B]‚3\ê*ƒ¨¼Š•Wøª§\ågi}]2¢c‹\èAô)ú\ÑJşl¢ß›(O©B±Ğ¼‰ö‡i­t\Ê\Ú\ß\âB/}\Ñ;®…NÏ\Ãı7T*>SD!\å4CşH„\Í4z\àF—\ç·\êR¦\Ö\ÛUşHµlüw±\â¼ÿ\0“n?Q\ãö£º[\Ğí…½s#tş\İ=«Š¶¡\Ã85a¹\á$;\Ç\å©Ôš¥2ºõª>\êvZ>b…%À¬\å\ÎD‘6I²L“\ß\Üd_F±¬&\"\Ä\×B^š¡6Iô\è9t¿)r\ç\Ô~£õôÜ¡A”È‰\Z,%ĞŠü\Âÿ\0¥ùu\æ9š\İ¿\ÊCş(¤¿!It)Û¨ŸVk~bU?1R¢ÿ\0$I\ßÈ«!§\Î)¦ÿ\0ú\ÑÙ©Kü\ÃK£Gb‡Vv8şfvEù\Ù\Ù\Zÿ\0\ì;4—ÿ\0i\Ù\êş¨§]ö¡v„÷ë¦¾¥I[û“³Wo|Zı…\Úaı\é5ô*¿(•\æ¹\ÑL\ípó¢‘Ú»3\çM£²tşIö7şM~¢\ìÏ•VR¥\åX¢¼«\"“\\}¢\'N/ñ¦şˆÿ\0Og“Œ,Å«f\ÛfY3o•ÿ\0f+\ï·×ƒ1{ö¾ki(\Â\Ù]\ÚÜ‡*²\ß=NÌŸ?Øœi-\Ñ_¹ZRok*z\r1z‹Ô‰R\"\"E‘\nE\ĞØ¥\ĞV\Ñm+»s\êDKJ™qhúˆ]\Ökñ5úŠ^lŒ¿1M·ı\Å?R¼\Î\Ï¬¥•5\É§ùM^„­\ä‰—RúIz”\×RŸ©y‰ˆ‹._D™ZH\í2\èv·\Ğ\í~‡jŒ¸X¨½?r½2¤G\Ùß™\n/\Íiõ;:ògfgg—Fvy¯&FK¨\ä_©~£ôEº!.„WCõ%o\ÌTõb}I\Ëó“ÃŒ‰¿6‡ô1òBÿ\0Š-ù—¡¯©Â¯ğ7\Í\â;¡\Ü\Å£´E\Û\áK[\èPoŒİ½\nº‹ğ+\r·½\è^‚KD™&Iõ$1’cv\æ6\Ù)\\}\ÖX±a¡®\ã]G£Q\Ç\Åü§\Õ\ã\èT§\Õş\ÅZJû\ŞEz8l\Ö\Ì\íl\Õ\ï|\nô¹csµ\Ñ]N\ÕOx•©r»¹^Ÿ;»#´Á/šø¦œmóm\äW‚¶Ç›;U5ø^gh§\Êø•©®\r\âW¦¹¼\Ê\Ô\ãm\í\âV‚\â\Û;M\'\Æ\çh§.L\íT\ä÷dvštå¹«ú•#«ó]!S²Gh¶\íeõ*j­\é©}\ê®2\Õ5µ÷kaÔ„m¿\Úÿ\0üÓ²!~\Z±5ı\ÌP³\â\îY{¡\ì\İö+‘¦F!Õ”£ùŠ+ó\×RŸüˆÿ\0\ÈNü\Ê5^L¡S¡J®„„ÿ\0)t?BDŸBo¡7ĞŠÏ¡WĞªU*¿R¼¿3;Lÿ\03;Dº•\ÙZşHœz#\ÙşTB“ÿ\0Q¥ùJ4ıJ\ê\Ê0_\ä\Êqü\Â^‚õ)ú”\ßR©\ZÃ\ÍYS’Ámª\Ùm#¾NÄgøJjš\ŞüL¯R\\Ã \ä9]\"rD\Ù7Ğ¨úô\'\èO\Ğc\î\'~d_^\æ§rÅ†‡Å†\Z¹”{Gıò)\×ÿ\0¾E*\Ùÿ\0İ…*\İ‚{ì¼²ô;7jµ½zŸ´_oGe\í<2²;\ry]d\Ş,ÿ\0\ã\æ\í{\áõ?ø\ê–\İ|_©Ù§\ßgÔ¥*o\æqûD-ÿ\0\êk?;Š\Z¶û\Æ<J´ª\Å|I/2­&\ÓÂ¢JË\ì\æ\ï…K+2šS¿\ÛÕ½Ê°NøÔ”P\ã;eQE5È¤\ë\Û)(\å\ä&­’œn—S´B£\ÇÁ\ì\Ò%­w„;‡\í*¶ô)ø—Å¨¥!¹«}š‰%\èN„ò§<IY\Û4U§Q­’»eZ*k\åO+’¤•³tnN3W·ƒ³¨/©NøajQR-A\åt—\Ğ\ÖwX$\È;ñgbrv\ÍLŒi¯•\Ë,‰}Hc]L|\ÉF1\ã\"¢ŒU³’l”-}²WwóbF›\árœ1\ŞS‚{k\î‹\'W[rÄ«U_‘Úœm¶YM\'ƒ[F´=§4¶¤Qšò!%\Í}\Å\Ú1#ª\Ö\r*y«<QJ¤¥\Æ\ÉT—\à_©\'\'½»û«÷_©/ù\"^¤\×Rkólwkaô;Dš\İ{‹Bz1\Æ\Æ\âÁŸ±VüØŠVö±ü¿°¥e\Úo,o‡;.Ñ•ŠRsö×½\ín%5Y¶¥)o)¸JtU×‹\"«”c\ápJğooÿ\0r;\r\ÆcU\Û,\Î\ÏN\n¥&•D¬Û¶òŠ3xs=›Vñc°:SºkV:©•\ãj7g¿pÒ§tñ\Ú\íkúub\â¥eå°£­“VÏ ’¶¼o>…(¹E\Ş“+Nœ\âŞªSµ\Ö\í¤§)§uw‹\à^’x\Å9düŠ³‚©•›ğò\æªaw&\ÑCğ–¾ÂŒe|\\¯“\çgg‘(\ã“\ÔXyÁg‚I®\â÷%M;}”\İ\ÊQƒø±2{–Cmd˜\å}Œvœwm\ì»bJKciµ\ÔK_{)ñº*ú\å\Z\è5ùI±ŠMó#/\Ì)õ×˜\äYóD)¿\"œJQ 7H«?¡&ù²\Å2›\êSkÌ±%ğD\ä‰\'\Ìj\É\ßo¡ŠGg‰KV[\îôk™\ä“{»û6,Ô±\'ƒØ’]\Ë\r1¨ó<\\‰j=™©	F{¨\ã\Ôk¨\ìH¥(´­…¬Sv\æ‘Oşh\ìòü\Çf–ø;#oûÿ\0ƒ³\ê),\Üòô;D1;Dz•½J·$\ä\Ö\ÄS™	/1>¢õ\êGÔ9B[ŠòŒ•÷µ²\ÍnÌ³o\Åq6\àñ\ÌI\ë`\ïg¬¸Š\ÖÁ[4„¼.ë«gšo1ã—\rÈ;\îj¹f“\Ät®¿(5\'º “\Íj+q*¤¯–ª±Zø`œV\í58¢n\Ï\ã\Ú*<s¾Ã´\Õ\å°\í{¼[\ÕV\Û<l\í5’k\æy¦®~/;EMm#´N\Û\îv‰·\Ì\í\Ô\æWš’\Ë»{\Ê\íÃ©\Ú\'²³+¶\×´T|\İ\ÊÒ³;EM_\îeI[™Ris.NQ\\ı\Ë\î¾ó\ï<†,;.\ëËºû\ß<ı\ÍgM\Û/©[]9[¬Æ¥u{¢\Ë\ÈHCy¡³(Š\"ˆ¡X”º“—Rr\êN]IË©9õ*O©w\æ&_©­Ô¹­\Ôllll“%\Õ?”\Ôü¦§\å#Oò‘§Ğ…\'\äR¥Ğ£H¡H\ìô\ÍL\ì°\ê\Ë¨\ì‘ô;$p\äv_¡Ù­~Gfxô(\Éyv\âE‘u}\Õ\îqhr=­\"s¨­\ârĞ¾õƒC³‡\Ù{ñ%{<]\Íÿ\0\î‹K•şË»\îoB÷¯ÿ\0Ñ–:W}û÷Ÿy÷_q{¤\\d‹¸š÷\ß\ílzq\èZqh}\ÌD>\ï…w²F\Î\ï\Ú]\ß3İ¥¢\î§\ä>¢½\êE\Ñ&I\"\Äô?º\á÷+ˆZ–]‘0q‰±Ü»\É\ÈZ£l]\Æ+-\ìÇ‹1{û¹³i·»\ÓÏº…¯ù>\âù‰ıLyiÃ\ï\Íü¬•¹˜ò\ÜÈ¢ıI²HK©&?öŒH\è}\ÜAù\à[\Ëıtc\Üh‹‘h£\ë±½\ã×—§$y™¾şL\É\å\ŞX\ï´‰/&`ûˆ•øHƒ\\±\Z‘ƒÒº¿÷\×ø±¸óG‹šû¢]¢cL…Èµ÷\ÅÜ’#)\Z±\æJO–W›¸ÿ\0Nó¿\"™;.¿3ú»o\åG…|¨V\ï\ä³3‘ğ÷ó2¾<´-Zµgõ¼w’\Çs#«}¯!h\éaXŠÄ¤S”Vø“Œı\ã\Ìe´G¦ß%(Ë\å\ÅŒ¹wÄ‚.¹2l’b¿™\Ó\î\"ò\äŠ}J‰j¥Íš«’.üû\ÎÇ‹‘ı\Æ\Ö{\Éj¯û°Z‘ßµ÷¤“[7Fo#›FoC\Ãya!#,7Ÿäµğñ\àCÆ¶\ryb6S»\âóW\r§¹	\ßf7\Ö\É\ßü‹Ù´³Y7ú\ÕH¼ÿ\02·ø4Ec\Äöš¯‚ú›v\Şÿ\0A\Ùoy—&Q~E\â\ÖXbT\Ãtö”\ç¾(c>A_Š°¼ó\ßJ\Ït•ˆ\ØJ/¡Q\ï\ÇŒg\Å\Z\Ô\ßjD_\Ş\â…o2mE™-\Ü\Îr\äŠk\Í\Ü}…~ü’\"\å\è-TLuw|O\ĞvöGYü\ìñK¹}\Ú\Ğì²²\Ú9³\Ú\âóf/€˜ú\"=t+¦­fdñ‹?óSûK\Ûb°\Ìwk(¾˜ğµ‰4Ø”·©gÔ‹²Y^\ÄOc¶$9¬RÈ¦\ï¤°³*\Â[\âğô#h½©\àITkÄ…ÿ\0c<\\¿ae»ÿ\0F{»2\Ûh¼‡V¼W\Ã&\ìv_f¶\Ê%U?Á,\Êy\ÒWû+y½ó°¼}4$\Ó\ØCV\\0*·m’GgU?µş‚•7¹«ÿ\0¼ß–?~Š¼\É4H±\ï$¼±!\Ôn\Ü+ó÷~\'\èe\ÑÔ¨^Û´¤†–‰³3!™·?\ÔY.‚½\å¥\èx½£1L~Z>\Ú\ÅN817NXN;˜õ£¼\ÈV[LLV\ã.¶\ïÀÃ™$÷“\Å|7\ÇÉ”\ïl/lzu%¶Ø¯4A¥üwDµ\ï…\ÓËy%8—w\â\Ë\à÷f?²ği]\ÈX5\Ö\ÖvJÛˆ={á©_\Ú&•\ã,\È\à\ïH¡Ty\ê\Ëş¥6\ïòbTM\íO+cˆğã´‹Õ÷\ŞC°È«\Ø\â\ìW\Ö[\ÎÍ®ŸË )qÀ¨šyº\à&¿\Ø\"…bO¸\Ò—\":£v¾ó\Æø­\Ë!\ë=\Çôé‰·¼½„Ğ„‹\rK€\îô\ì]G‹gÚ\İ\ŞQ^£ô2/¡hµ\ÌŠxO÷<Tja$S³\Ï\Å\r8\îXB\ÇF\r‹\r\å\Ç{a¹‰4;¾\é,\ÉJIn\ÂK÷#}š\É}Q=I?Š›ú¢Úšw×Š\Ç\ÍR¾m‘½‹»+\àGì­‹9\á‹Û¼z\í]½gú	\ËZùDZ·\Îø\ësE)E¯Š\n\Ö;Dj$\î¡S?#²\êKm\Ów;SO\äx¯R’jöz\ï¦eKa{Kn¹{ñ\í\Ìoµko\'geu˜½›\Îñ¡]UÜ¦¿S²¶¶¸ø‰j>ŸR¢|ÿ\0r\Öø\â&¾ÿ\0$„\äxKù¡\â\îc§\Ç.\ß\á‰+p\"£ù9\ïc.ˆ\ß\ÌK¨‘bÅ®e\È~ƒ¼ \íÍ™^\×áµ˜$¬•…bg,XÌŒ3=\ÏBÖŒ°h\Æ/\Ş\ã\ì\Éø%ò±kS{?TKZ6Ág\ËCk\ÈvKa\êI¦+¡f`Ä”öN82wŠø\áú¡œRz’\Ù8m)ª´\Ös}	Eğx?©*rkfwõ–x\Z\Øn/}˜b9½¸ab\î+zl¦·®?h¯k9±*/e¥ú£V+\á¾\'g¾\Û\ã\è\Î\Ò\âşW$\×G‰ETOm<\íÉ’\ÕyZx4·q5mo\×x^\Ãx;\ï3ú‘i½\Æ%8MñXt¥ø]\ÑZh­’Á‘\Æ®‰(>d\Ó)¶–\áYñû\Ú\ê>‚K\Ü#\r+G\\\İş\î)\İ\ï³\Üe¡\ÜM±>¢õ\Óõ2-Ğ·´\á\ÄY‹\áCG\Å+ùh\ÏNfz­\ÌB\ÄXş¤1Úˆÿ\0­M`÷ñ0Yr2b˜ñc»~‚M¼˜±.;3\ÔV¥Q\íK\Í\r\ÅoX\ÂBT\ßÌ±‰5NO\â¦ó·¥óC>…II¯†ø¥\Èq´VÙ¿Ø©¥•\"\ÔrO÷*a¹7‰\Ùü¶G´’üS#	=©\ÊL¥J\ï+©~\Å>\Î÷E«ş…Jt¦¶FW^¿¸ÿ\0\ÔÁ~;ÿ\0%H\ínò·‘\ÚõmšW’\è\Ê*ªù©§ôcörùeƒ\Ó\ÌK\å\Ä±r3\ä;o¾L¥gµ`vŠ”÷m)Â¼Søp;;‡	+“\Õ†_£*©.*\Ä\å\Ş1Ò»‹¿\â|?rX|±¤E¯?û´ğCq#W¡%\ä7q\ÊüG\ê66\'\ĞB±\Şa®\Ø\íœñ>ˆVQVH\Î~,°Œ4>†\Ùw\ËCLx\èVŒ\Ş6\Ù#\í»\rE‡\'¹˜I`›c·NûÇw\n\ÉzŠ\È~‚ób)¡1^-y2z’ù_\Ù°\İ\'ò\Ë\È^\Ê{\ï‡SÁ7Šœˆÿ\0¨¥ó,\Ñf\ÖÇ™N{Z=’\Ã+\à\ÇM_;¹<‹µ\ÈC_<°cQk%J\nüñ)%}\É3²Fo|©Št\Ş\Ì\ì¼\ÊS­M\íi¿äƒŒx\ÇZ\Çh¨—uĞ¦ª¥†´ŸF=I=’ÁŠ\æ\Ñ,üKšdİ¯•²ı‰9r\Ø-eÈ§*m¿‡µJ\ß,‘\Ùu\ÒÁ¸\Õ_\Ú\îM>”’Ş±_tZp÷\r\ãö’\áû\Ë\åGôá½ó\ê\È\êÃ¡ıIúl€¢‹%\Èc\ä1\Ü~ƒd±©r\ã}G\Æv}œ¾†s\Â8l.7h¯S9bm0/£\Ôg\Ğ^‚\Ò\î\"7Œ•™lñGŠ›v’[Vôc+][\âE\Ôö7´¸\Ù{\Øw{Ç‰+i\ËBó\ê\"œf·3òJXù2Vi\ãNcö5~Y~ŒZ•>h\æAvš2ûCşV5\é,½ER\Ü\nSoŒŠR\ç®Q|õ®Q¿R[\Ñ\à[\ì\ìv‰7Ì¬\ï»X„.¾%/S´ê½—xõD}¤wµTS\Õ\ã7t¼\Î\Ñ(¯\Âõ¢QU?7úÔ—\Ë<Å\á¾X\èÁ½Â»!Õ‰<¬B6\â¿Rr§%¹•\áYn’\Ç\Ô\ìój\ßñG¤§ü\Ñ(\Ít ş\çqwY\ã‘+G\åYÕ‡\Ì\ÌZø¥ú	\İ\í{#\Æ\Û/¥6CÔ‡¨—Q\"\Æ\Ñ\âXhi\Ë(­\ì•ş)=\ã\ÆoºQVX™%s\âe’Š<O;\ã\Û\Üú–\Ğı;¸Ô¥5µ\ÖXÁ¿¡?¾\Ãù^\ãÿ\0$s¶\Ñ\Ú{˜°\æ!\ÃCĞ­¢\æ$.\ÖRÉ¯1:ô–\å\âC•Zk\à–eG\ZŸ$°\Éà©²k/õw\íD¢¥ò¼\Z¼˜ø\â\Ó*\Ç\ÃÁ?Ğ©÷_ô&\í¿7\æ;ñd£÷û•|®‡†\å4\Ïh—4C\Ù\ËkŒ’;B|/«/Ùrß­_Ì½<şD¾§h’\å-h¿\"œ+-®›Ç¡;Ojš³BÌ²O\ê.-\\n\ÛŠyˆW\\Pº¢\æ°;C‡?\à„k%¶.\å9Áõd÷d\Ç(óÄ´¹k\ßY÷Y\ã|¬·\">™\äR[\Ş]\Ş;G{\"\Û\ã™-\×#¥\Éh”p&ü–,r˜¤ü…%\ÌO©E EúP\Â¹<V/AcS\á³GÚº†%°3x¶–}\Ä#\é¦\Ã,=Â•Wu‡\Ù{†óña·x\ïZ7ñ!x^|\ãJ\Ë´=™\Ì\Ìô!i]\ÛG‰!b-JŸ<R\nP\ÙV·h§\Åø—™Qk[\ì<\Ñı)\ï\ì/õ4\×\Å\Ñ[Uü²Àšm\æ—şÊ¸_ªT‹{\Ú%O\Èq|\Ùvò\ÇA_bx\"v\ÎWV)\ë4S»\âˆa³XTÚ–i\Ê\â•6şGu\ĞnKÿ\0\×tú–{|6‘N\noeD×©Zp[Ÿ‰X\ìñ¨¶Ê–>…LwK[;¦.bXlf[÷k•\"[l?íƒŠ°•E\Åd\'OŠx\î–Wy”Ğ¼?¹`Es‰+sDu—Yû†c¦\å\Ï\êKƒÃ©-Xü¨‹gõ%ò\ì,\Ú\É-‚¹g.9²\ÛlŠ“—–d\'\'Å”\Ù8\ÈT\×6j?+š«\ÊÃŠ\âT^Hœ\ÉõdºCk\ÌÄ‹e:‹|£ü–Z™q{	c7‹ú²ú±VBõY\ËEô+fzP‹z10ºÁ\î{^>\ÄnñzÑ–ô,\Z´£¹\î>\Åğ\à?\ê,\×\ê5rX\èc1ZPš¬\Ìô%f(´ğkyj57|/ö)ºR\Ù5´Jµ7†²’¹R3[V\ÔEE\ï†\â]ª,P\Õ\Ş:­Y‘Û¸°\àò\ßŠ}J³\à)J-d¢‰¹?…\ß\äVÁ½…E\Å;\İƒOğ>)\ävh¸¬‰N\Zº\Ü?\nÖBŠ\çú3Vm\ïX•ªGğ\Í^\'f½²”1±8_mğÄ²f-\ãc-\ÌV‹4…ƒİš\'u¼i\ß`\ßŒ2’‹{QRP\æUuşJrƒ=œøHşŸ\"q—<\nm{„?i/Ã—RZ°Üˆ91\İü«.£µ¾‹UnB}°\ŞğF£“\ÚÊ‘Kğ¢vò%7\É\ê>l§Í–òDdü\ìB\"‚ò$5\æÆŸ\Ø\Ëô¨ú±\á–÷¸¶¼\ßıCV\Şö±]\ÕÁrÑ‚Š1rfÅ°\ËE\Ä\Ä=,¹\ê-¶”õ ­4¶­\ãw\Î\ï3[\Ù\Ë	\ÄJPšºh\æô<vğ7\Ğ\Ğğ—q.\'b\ì‰(¼\â\Écÿ\0\ã›\ÏÌ§S³U\ÜR!\Çz¢Q’Şşh‹ıEñn-¿†xz—Q~\æ<\Ù(“§uŠÀ©\â\åbX\ï$\ä‡/6U²\Í\\«l1Àn\Ü\n²O1^[\Ögh\\ª`ú¡\Í-\Õ.\×RŠ/Yi\Ô{Õ”‘Ú²ø&®™\Ùd£Š¢q“~L\\Õ¬6\Ö\íÂ“[·\nÏ†\Ñ_W…š5lòh\ËcD:2\ÌX\"\Z\×\ÚĞ7À«u¹\àQºŞ°/hQ—\"M‘k\ËE‡\í%\Ã!µ\Ù\"7o\Ìv[¿’\ĞK\ÔÁo\Ú^\Û\Ù\å™{s\Z¸ß’(ß›!Nªü‘6ù²izLOÍˆ\Ö!\æÄºd\æ}€„‡zTÌ›\ŞE\ëJñ‡\êÈ¤or\ÚY(«$Ir6\æ,#¥\Øl^e´\"\Ã‹\èBEšy¦‡ı9\ã\Ãø ğ^9~¤¯NOÀ\ŞÇ¸\\Ÿ\ê6­\ê†K\ĞÇ˜•‹[F+‰\ÓC´^\Ã®]”õ\ÖÆ³\\™zô\×òıŠÒ¥=\Ûÿ\0\ï›§%ñ¥‡š$¥¶/{:›\ãû\Û\Ñ[Vhv–\Å,\åb¤|\ÇÉ—°î¸¢Q\\\îV‚õ+S\èÊ‘ò*EòÀ¨ºš\×Ù¶Â»[\Ö%5j\Å)Sol6y\Ú[r³³_T\Ó\êFtgÍ¸¿2—)Áş\Å}hüµ1Gg5ó\ÃVŒ\Ëf;K\êG­±\ß2|X¼ó,\âö—{°\Ö\Ü,\Çx\îy–jYY‹Z<vñpÀ©(¾\'/2\äN>cö’\á—RV†\å‚#v=^H\Ùmÿ\0Ø®\×D7\æA\Ô|r óØŠ±‚\İr³|‘\n\ê\Ëù\"3·bšóÄŠ^D#2\Şb\ê1¶4‰¶]ˆ•«Uô[\ÉYf\Ş\å¼VŠVŠÜˆŞ¥l¸DFÁ\Ş1Á9\r‘\å\ÈVÒŒL4¡hhc•ıEŒ’m`Ó¿š œ$¯F©\çuö–ñ\Úqû,o\Z\Ó$`÷hx\ï_JĞˆ\ãÁ\Õ:Ÿ<W\×yIV¥²I]\æ·\Âß¦\Ò…Möğ¿\ØwL³Ÿ\Í˜¿\ÔQ]P\Ô^\é`\ÅnhW\ä!Iy]\Í\"|H4ÿ\0—6T\Õ\ás´&÷[O\Î\å\íÈ¨\âø,\ÇS\ÔQ­\rŠx²¬©?’x¢œ£ø¡‘JE¿VÌ©©|\á%b\Ê{%O&MWQ\Ù5gbœ\è\Ï~Î¤\Óklq\Ö^Wš\Î\ë\ê‡l¬]\ËzÁ®hMKf˜<°°¥dÛŠ\Ø7\áÈ—™°£nv\ÄÖ‡©˜õW©o‘iOr/m\Ë\"V\àA¾HŠ\\\Ù/Ê…9·½‚ó\Z\\‘\âó5‘7\ä>¬™\'\Ğ\×b\êz¿1^\Æ„®MÕ‚»2Ù±-\Æ.X\Î\Û\ÄF\Ğ\În\Ù!Y%d–‡fğF-±cm\è\ÇC7FZV˜Šú´JĞ›´\Õ\ì“\ß\æMx±ƒ\Ö\Éÿ\0$ÒœNşi˜\Æ[7=\Âş¢]K\ê_¸w‹Ñ³z1\Úô;1\r,w,}Ga\âJ\ÃLµi\â5J+~û	F[\ïòV„©m‹»_Á/eUü-\àù=\Ù\Ôù£´“©C†+ø+F2\Û\æT¦\É\ÃÈ¼\Ê\í\Ê\Ñ\àV‡B¤|‘+¾B©†Ë”\êyÉ²şQdòi”¯\ÎX”SóÈƒ¶\æ²(\ê\Ë\æJŞ¥e5ò\ÉYõ5©ğ’¼YCñA–w\Å\Æÿ\0¡\í(\Ïc†DWhFkvy|²$¼²cq–\æ…kpÄ¨ùµoS¹µo!j¬\ík\ØO»7mE£À“Ky{\ìif,w²Jÿ\0*<Ü‹”º8lˆ¥\É\ã2ed¹¤øm—d\"\æB>d’\äL™!²\âd1\â\ÌŒEzt;o/\àRöt\Õ\ä–Ü¼Æ—6cR¾>[4ä‘’Ğ¿/B¶•r\Ú:Y•´+Á\ÜW„“Lœ«\ÍG \ç\í”ğX\î÷õ½…Gi_gšOj¡-û“\Ñm+J\Ña\èd¶1\Ñq&·”\ã8ñ\ÙÈœªC\åKÄ¿rn\ã?‚R«OsX®N\åK½±x5\äd?aQnÈ´§óg\êN\Ïle°’d#uÀ¡óeşfR—”\Êr^e9_ƒBšò/ùn(Ë–h.f¿ø,=Y\í#\Ìpos±§±ZÌ£VOÂ°\éû	\Î+\âÊŠ¢\İ?Ü—²{\Ş+¨\ã?Ä\Î\Ñ:R\ê™IU‚ø N\\G\Ğÿ\0¾D\ìşW€\å\É\àe\Å\à`÷¡y‘MuBÕı¬O™«}\ì—A·ÁK’&\Æ?6eõ}ì•‰6Ë¶.‚\ê$`$j¡«–C\ÌÅ‘«OYe½»“OW»\ç/\ã.£şœ|S\Ã`\ì¬;ùŸ\nlø„`c¡-‹Fb\ËB\Ï~Œ4\àô;™˜+õ!\'R’\Æ\Ø]6Õ­ml\Ö\ìˆkBKZ2r\ÍJ+úoz\Ü+¡x^6&µv_`\ïú—\Ğ\Æ1›»˜¡a¸¹‹\è\Èe\È\êTù\ãŸòFU(|\Ëÿ\0IBk¯g\ä\È\ÊK\çK\ÍHoBRMY¦IÑ©»cıŠNQ_÷2£„şGš\äT¾û­|\âFoŠ.\×;‘®¸’MñÀ£v·4PœZ(4üˆ\êõC\Õİ\Ğ\ãd\Ú\ä\É;ğ)Áñp³êŠ‹‚—\î)\Ó\âAMt*j=\ÒÀQOzVgl_\Û\'ƒ(4—\ÅJõ¹¡·¿`—,š\ÚİƒBW\Ş-n\â—Ê¶R–\ëõy–\è7‰$‰7\ÈHğ®\"Š)o\'~Z\\‡ˆ\Û.\Ù=	$\ÉZ0Wm’¾	lŠ\Ü8\İxi\ãñoòıŠ©rM—Ö«\âwVv\Øb/Aı£id­~#Ì¾:1c÷c\ÇC\Ğ\ì6&\ÖÁf…\Éğ(Ş•O[o\Í\àœ\à\İğ—\ì\È\Æƒİ“,ª\Ç	®;ù±}Völ¶÷°\Ëc<ÌŒ´<=*\ãÑƒ1Ğº‰‘º‘ı<\áğ\ßô(\Ï,/¸2µT\Öv·ª³o\ru—ğMI<š\Ú%(½-,õú2œ¹µˆ\Ó|˜\åÍ’³\àIó\Ìq~HŠiğ¹J=\Ï\ïwGf²\ß	Inj\â¦ù¶Šw_\Ü*±\å$\Ê\Ò\ä\ãÔ¯(²O\ËrO‰QE½ù1¨KğşÅ«GğgĞ”£o…‘•7µ\Å]?\"¤el\Ò\Ç\Ó2›§/š%eQ/†x2¥-®\ÅH\Ín¾D\Ô_®i•¥.‡\\Eg,\í™M±\ÙnØ‡au$‘\"ò‘v+!\\\Ù.&<t`Œ´d<lJN0~7²\İ\äF\Ú\Î×–¢©Áj\Ç^lÆœ<S\Ãf\ï2>DqÑ”M˜\é\ÌZ:‡¢\æ)ˆVˆ¯ag\èf‹5…®,§,\àø”cEÙ§|\nt\İH\ÙUZ¹\î—\èÿ\0‘GW)$’\ÖCÖ„\Õ\Ó³&[+&nÁ±Y‹Ü»‰­\n\ÌÇ™‘r\ã3)\Æp\Ü\×ı±RrŠ\ÅF×’ıÊ2_…º£´ÿ\0M\ìÕ¼Y?gQ\ìx\'É—¾\â1œw5‘RJ\ÙE\ç\ä\ÊnV\ÚğeE\'µ,Ê—[„®·F+Š\"¼ˆ5\Å1KÑ‹\ÊQ±J„¸K3²Sœv`vW¾\å®&—Ğ—…ñ_©*qYt+K\ÍHù¿ı­øfQp[\'º¢\ÕW\âÏ©R—‡¡©(nºkÉ•]\î-Z\Öbös\Ûqİ‰¶RIq,„Z\ã²&¹““\"\Ë$6øDnDirÑ™Œ	+ÿ\0\ÍW_gR“|Hÿ\0Vºü°ş~œ\É.§şJ9şˆI\'‡2%­krĞ¼O!\rhZ…¥\é\ÄV\ï[F\Ñ\è¦Ú“µK<\ÆQV³M9?y¢”9+Á»\å\×3V4¦ü6ÁEÿ\0:0v\Ïqt\Ó$µö7´Á§´V0Qb!w\Z‡¡%\É\r\ÄÃ¹$…\ì\ê\ì©ü÷š³¥ó§\áóF¬\ç%o!{jK\á›\Ård­%ğ;k#ò\Å”\â¾_´ˆYå¬‰©­\ãi\ï$š·7D_‘+q±4üò \å¹ÅŠ¢¶Ôˆë§·\"RIl%8y\à\Î\Ó\å$T„$·`j\Ô{\ã<}Ju \×Ø­+ñ¹QqNi)~¨\Å\í\ì˜\êRdu—\Íú¦ùe\ábŒ\ÖüıD\äAEqĞ®#wb¶…a‰²6¸\Ø\ìu\ÑdJï€±z,‡hÁ^M‘Š\Ùo²·’£MkN\Î\×\á\Í\äb\å±l\àEû*^\'u›Ø…s4­m†FrÑ‡3!˜\èE–‹\éc\ÄX\Çs!Œe¹±\İğ1¦Õš\ÚT›”^\Èf·\æ6µ\é¹l–\îOö!+\ÅÙ«\Øÿ\0\ÍM|Nú\ËyaZªX=\æ/ üqµø\î>\×\×Fz\ÅaˆÃ¹ˆ„ô\":6mG[\â\ÃjcTj|x\ìQ²ùgú?Ø©(\Éb·¡{Uó¯´¼¶•#V<6f¬/xN5Ì”œW\Å\Õ¿`\ÓGA\ê¾(¦›\à)\"\×\Ü\ÑMy\"-n’¸\Ó\æˆ8k&\ã}’X\r5¹\âŠV{L¤\Ò\ã—R\×\ÍŠ=œ–ù\"6¿ú4Qq[Ô®T¶\íb«½\\›‡wü\Ö_4q*6·2\"·\ÔW\à\"IpCÑ‘s4‹¶A!Ø“oÄº¿c°ÍŒ\Ãô1¶òRqƒñ\Û&÷y»\âj\Ş.õ\Z_\ï,º’x\ìB¼×Šo{,¥š[b\æKl\Ä{41J0\ĞÇ¥÷´=/\r1^Ş’\Ãñ-¨©Iš/=Dœ\åx_‰YĞ©tµ.<ğj\ße—!ıHú˜J/kô-¬+5š<˜»Œze\Üz†HÇ‹\rŒ‡´ƒ\Ø?oO\ä’NK÷¢\ïšÁ§Èœwk¨¯Q{7—´OöjA\ä\Ö:\ÈnP{\Â>Ê¢Ú²óBö”÷¬Wğ7J{\ŞBö‘áˆ”—XŒ/\ÅXI®dœ^\æ®:Rô;.º\Ûgs³UŠ\İkPòh›’d)\ÍnjÌ¡ª\ÖÌ¿övj‘{\\YR½8ñI£·Å§ğ\Î6%JªÜ¤S¨“\Î¯\"2‡8\àPqO\âŠÁ‘z’ø£ƒ\\ÿ\0\ë\Z\\…q(“|G\Ôdo\ÌVD’dUô£==\Æf{·Ğ¿˜üOqwZ¦[¸’Š¿â­+,\å¿\Ë\ëaI¾,‡ô\è\å\Æ_Á†\×m¦fc\Æ\ØX=¨C\î+÷\ß{\âÓ¸Ù´DR£[\ÅlŞ…¬²”^RO4\ÉkS’Ö„·¯\ßacS	¥³ˆ\ï\Éf$,¬\ä¶#Ì’\Çi\èb;i¿qF\"õ>¥\Äf/R\Øp>šœ*\ìšXù\ï*x>x§nL­Nœ¼\ìÿ\0c´CU\ã¨\İ\Óÿ\0¼	*5·k`ù2+\É\âYŸÒõ“ò\ÔŞ±L³–×¼I­\ä\è;=\Ì}tM\Åğ*I>eKó)«ğ~E8\Ér(B-ì½®B¥6ö\ÆGk©‰ÿ\0\ÈÁóL\ítšŞªXŸ´õ4\Èe½`\Ç0\ÕB°Ç—$/3˜±X™ñŒ^\Ãõ1ò\Ú;#Á+±\Ù<#•lFonåµ—±¦µa\Ë7˜\ã­\'d¯´wpXµµ\íbµ\×ù\è¼[õ\ZÀ\Ì]t3û¬;\ÌvÒ³\Şn#<\àä®”Št\á(»5\ì\Ö©jŸj“²\Ï\åóú¢§[?©`\ŞÕ¸–\"RMY¼^)²ñO¶<U¹¡ß»t3\Ä\ÃC\Ğ\ìb!\r\Öxp\Z¥?ÿ\0û/–â·\Âk\×ùC\Ç\äyùoµ¤¾<W&Mk\æ\àğ’Vgôjne—Š\ÜñLş”İ†«‹\ÅIbŒx¬Œ<\È\áÀºòÀ†\n–\æ>i\ryk\êE¤6\âÊ¶\äÇ®‰{6NI\ïLœ¸\Ü^fB%\ä$¸\Øm–E…qX~du™‚\àg¸b,Œm°Ã\ïÅ±\à‰%\ê9:t\çgö¥ü\Ò\çˆ\íR²»¶\Z±\İ\çô²z´\×¬C\Ïy‹6+˜6\ÉJ\Ü\ÚM/%¢úô#]\Å\îw¦…‘š0¾ñ\Â1nì”¶?3´Rº\Ç\Â\Ûı\n‰7eV\Ñø·ò[¢Q”]î¡Šõ>\Úz³Vµ˜\ÚO\î¶gqz\ì2\ØÆ·¢\×Yşúš0fCcÑ§Q˜—Lv\æ2B\Ãy\×G¨’)©\Û&ó\\Âƒ­K;Å»®h„Ÿ\âO\ä”\Ú_œy\î5åº¥•\×=\åE:o&˜ğq{\ÕÉ¥øò\É\rÓ©\Ï1y¢8s2¹m¸ºŞ™‡4E>e,v¥´v\à\É(§À„_–d|\Ó){EóE\âú—§q¸Z7‹Nı´f£\èùŞŒ<ş\î&\å÷]\Ú7÷\Õÿ\0¥ú\è\Ë\ØO\Ò\Ö\Ğğt²ó7hÀ\Ş3Í£w¹\ß\îÑ¹\è\ŞB1¼o‚°íˆ’I\ä‰5f¯Œ­‘¸Švxp\Ñ&\í–9hW\î`bEtÑ»¸\ìÿ\Ä\0(\0\0\0\0!1AQaq‘¡±Á\Ñ\áğñ 0ÿ\Ú\0\0?¿˜Y¢\rùrØƒ\n` B\ÄÁ¨;Àa%‰µş–X”`Yk;‰sR©%c‹\ÄD^¤©eš;G	 \\1¨”f 1Qsƒz©bhu(\Ò\Ø\r ±Û¤½w‘)\Ü@¢d\Ã\Z5,¸¹\ÔyA±.n8\Â)YE\â.n;¨aùJ\ë\ä–7j,JÄ¢f#¤,7\nA\Z\ÄX÷.\Ü;G+‚\r\ZE4œ¼q(*Ï˜2\ÂÈ¡Yc\ÊÁ\Õckˆ\æ¸–÷¨¾&™z@…e¸:\å\Äm\ØD\à‡fŒ-\Ô\Û1Š@\æ2±	¦%5iNeB\Õu˜L\0j?*?mW­p-c÷\r°\Î\àVq\Çøª‚j„J\Üf<ÁI[\í/‡mùZŸ3u°i–,wú©˜\ÉdE1D\àM‚)@š\r\Â‚ xƒœË±ñD\â\'t\ì`¦°‰0‹h\ÏM‘PÍ·QÜ‘\ÊpÁ]©\àf\ÛÄ­Ø†9‹A÷eğ¤˜\Î\ÍZpÊ‚c¬&\n\Ô\nN`t\àY)¨\Ïø&J˜=À;€u\í»aU\Z\'Y–Q—r®4*$¦a–\ÍK‹2\Ì!¸Xn \Åu@os-L\İ$\rzn	\ØyXv.…\æa€E50•V:;\ÂQ \à(\Õ\Äbq1\æ ”\ä8 ‰\Î]rğF¥\Ù<°\\g‚`©±=\0A±‹HmÁa•\åÁÄ´…\Æ<\ry€\n[r\ÚSp”\á\n§m1r\Êp#k•‰@@I!TJ%”.0(ƒ·Qd· \"*¦+y\È\Ù\Ìv\æD±‹?\ìi—Ë²;˜‡\ê![À¦QÊ„	\ÉÀ‚!‚\ÒV\æQ\n:´«\ÜQ‰mŠ€IDŒ@\ÎfOPA±\ÚrH\ÈF–ƒ\Ò\ær€®\ÃYP^aŠòf™l–\Íóµ\ÉO=¥1Œ*nTc8‹«|™°€ps0†q2f6k¤£;bG7ˆ:wp\í\Ä,’\Æj-±­À+ \èfdT\0\â%‘#2\ãj;;\âô¢6\é\Å´\0PÙ[Av\Â.\Ï¹k±¨ZJ`\Ë:¿S)9ˆ\Û6°‘ŠW\È\ë)Ì…ÙŸ»v\ì%¡en(aQ\ÜsgQ¡Zf„Aj\0°·«-”\n\0j64g¼E\Ç`‡1\ÃP/™An¡ 0hˆbC¸1Ş‚R!¡Œ\Ër”+\ÒF÷L\Í\Ú7(¤\ÜVó2³h%	‚\Ïò!Q(w¸iŒbFe(Lfe\ÂW•/X(@À,õ()\ÃÃˆeL’¼1¤[…¢„)©^\á<Á‡PUiÄ¹’@wÔ¬\rY\n\çÄ¥1-\İ~`\Ô%…\æN1w,nğ”\çPS’Ğº™\ÑNi\Ü\ØWxJXñZ\ì¦<\nš†6Á!ö\\·œÌ”\Ä\æ$\Â*B¸ôK¦ST˜f$¨Q-»~!­M\Ú¢L­OL`«7\Ë \ë5%\0!\Ë*=\Ï/xrs®ğAš±¨|Àƒ£]\É[†R\Ë`óâ¡µe\0~¦€UT²Û–\0ñ\ÄWf&-\Ş	“«H…ˆ\Ñ8‹òÁ£U\ÌFš]Ì‰}\å\Ğ¹fÀ„…¦VZ\"«?1™\Ìr\×l°\Ø\ì\ÓXÁ,V/üZ\ÅA¸ı5\Ö0\\d%ŠÄ°\î6c3R’X—„°¡6FfE\"q‰\ÜJYR®¢EXL\ÃAŠA3&`±\Ş,)d\Ò@÷€&ˆ\á]\â–Ã˜®\ÛwXf,I\æPx\ÌhAÜZ\ZNx\ë10\Ìc1°€j\Ø:c\á€#$\Z“ñ\Ò!ÀzCp4°\n@½J$)§n\å#\Ş%”$°ƒ´È³=%2¢ªX\Ü´6F¡y˜h–¹}!\ÌLgÀ›i¾;«T&û¾ˆ—^z\çqV(Œ¨u—l3\Ô{Á”{W+«\0À\È^\ÒúKkD´\Ë\ØLŒZÀCWGCD¯R“˜K$t©vš•€\ï¤T\"¸šPtuŒi¨¨\Ö\Ø\è\Ä3\0‘„Eµ\ĞB‡f,\Û{•œ²\ãFœ\Æa„`S#–,Y™K¾q•/qEc0k\0göˆ\Ş\"*,cX	¯0Fˆ¥b$\Ã)\03¸­\Ù#h£9(ô1ğ=Ãª%”gµ0XHn†$s«\08b¡š–ª\rK\Ì\å\ÇVš€9\ë ˜§1\Ûv\âdú4\ÃĞ¶f*\Ã…u”&Èˆ0\à\æ)49=% \\™•ÀV3\0µ\ÌB³0\È1y\é\ÒUŒ°X\Ò)DÍ ÁˆšD\å‚\í( F \\\ä€eˆ ©lYGh\Ò\Ä“c\à˜Ax«§««)Á}©pC#i.ee$+\Êj\r\\Ú‚\0\ÒU\ÔB°\èF\átq-‹ƒ3”zŒ«`is\Z0\Zª2…$­4 –f\Õ ´j-.\à& J©®—lWL²›@*MD•\Éj\æR´¸p) ¶.(\';V…ô–„,`±qX<¥S5A¸0ª).\â-’\ZB–5B¢F*%F1•\Ëc*‘ü\äRl3\ÍM–Q\ÜY	\æ\È\"½\Î3ó92&\\‘‘f™G\0†bF«•\à\Ô\Ú\'!(h²\"E:D*N3;%”‹bú¾R\èëˆ%\Óq,a\"^Q3orU pö—%`S\Z`¦À\æ\ízD’Y•6Ks;bµPøSvˆl*w¨ş T\ä¤Hª\Ä`:0‚‚«ŠFb\r’ˆ[˜‚\Ö Ò­\æ\"‹k²q9eÿ\0#+[G4\â\n\Û,\Ó\Ä\Í\ÙA\ë¼\å0ş9]\ÏvRh\Ê\ÍJ®`p•|3!Û¸-9€R«\Äw±8\Ü:\î_\à\Ø\09`»5\ÄK-œ\\»QSY!ƒ\n\Ûl\Ô/tb8&\Îe¥¼_310üR\Ä\Z”f\ë•Ì´\âw\Ì\Ã\08”J;º5\\V\Ş`‰0BÊ‘\0\Ş…!œ„\ÄbÚ‰rÔ³ˆ¼\"¥Te‰•>cµ²a\ÎH\Õ-M\0”N%/)\è‰w–\İB0%6ñ\Òbº‡I”GYŠä©‹ºe\Ó p§øª\r)	¸cvD\Ä\ÄÀ˜Ne\Í\ÈÎ†f\r™x O‚B„`œb¾Š½‘û-}^½!9	\Ñ -£Ó¼\"\Ë \è&M&_(\ÛZƒ”Td#J\ÕGÒ—,`9`–^£l\n‚y‰\ÄØ‚r…LX0\è\\\Ës«\Ú\æ\àR\à«\ÙSk”yKWx\"­¶º`á’œ\æ)\n\Z\æ¸òN¨+…\ï‰©.»\r/C¤\é‘U\î	z»\Ê\ßBi´p±\Z*\ê¢eu…\ÜD+l\Ò\n%5û‰Ló	@V0mŒ,ø¦\Ø\ÜT\ås¶J@6gZŠ@\È\í˜\ì\à¹‚\ä±\nˆgÌ¡v%ô/\Ì!#[2Á[•\ÍfUóˆ”ÿ\0Š›&6XƒJn:[\r‘B6™Œ(ùŒ\Ë]JÖ <Nzˆq\"YÄ¡¥~\àÁoa\Ç\á\ÄEºH\Ó\ÜœgL\Øa\Ğ\Ã `J…\Å¨Í²&úNs@&¨s\ÂªÉ´TQH\îØ’À\Ç€´\Ç\Ú\Òa(\\šapR\0\æQVl—*\'H\Ú	Ù‰f\ép\Â1\ĞÎº¥ğÀØlˆ\Í@\Ä[–Mf ¸\Â\Ù\"%\äm\"—cL%f\ê\Æ\ÈD\ÌQ(«Š)Á;K\ÇB\"¢œ,5À,\è(\Ú‡xˆÁñ\n,Ä·0\ëJ€u\Ş\n—\È}F¤±ñ \Èe˜]\Êe\è\"\Ìå²°mn\ÌC‚¬\0 #kw[X¦¥*\Ş\å5T±\ĞC«J\ëU¢\á—C¬%WX5)Îª)E¦\0˜›”\â¼•t¸Š‚£ƒTZ\à\"Ù¡IAª¢¬±pP\ìÅ•\×\Ş.st\Å™˜%‘R¢K«Ô€\ZfG2CN;&˜\à€ñµu\Ä2\Å>£W™µ§Ü¤¹®.	ª¤K„vb£¬:\ÔÀXl‰\Î \Zr@S¦–\ŞXÍ“\ĞÇ­²Jb0¹€\æŒ@\ÒWx‘\æ\à\ÚÆ¢\ZFd„13C÷®9ÌˆK2i -\ÏHp}Ìˆ<õ—‘a\ë\Z±s\"–\â+ˆİœÁ\Äó6ÿ\0\n»”›&P!.\nˆRY:D[\ÇH\r8‹£¨hX\Ûp\Ëq˜Ë–>2\Õ#DQZ¬>­Y»A„u\ÄKH\ÜV«³j•¡zWñ.\è—Tz	š	\Ü\Ê0=\Âe&`‰O7\0*®£\'‚p%\Î\Ø	¹‰—1p¹z”f\âFÁŒPÛ™Ic%¥\\1³x «‚\à•^%–p\ÜDô°\ËTSƒˆ\Ğ^b\Ç\ç`\ï,-¹QÙ°eŠ®\ê=dU\Ì\ĞXÀ+\æPX\Ù\0)A^§,F\Ò\ã\è@HÁ\É—Y	„€\Êb€¹PµDF¬f¿À³¨UşLe-\ãıKTŸQ‘\êA\İ\0¶…À)Ì¥¼<A4Ê»€tJT\î \êZ©n)€\ï\á\Ò÷]\Ì^ˆk1L\Ó\æU³\"±7D¹r®3gyG}Â’ö‘\áÙ•\àE[e½\rC,š\Ìˆ2\ë3€‘‰)\â*	v®Bö\ëI¦-ô•–r@2‡\ÉHI¤–quâ ‹\'˜)Šº‰z²™\ŞÒ‚Cº‡IT\Å\ÎÈ€@§L®ÀK5Á\Â;P2›Ã†\Ö*\01v\Ë#[IÀ³1* pF\Û\Äü\ÏD:ƒ]b+Q\Ê›b¢©¤Œ*\Ò\æ\"F’•Vå±·xA\ÄYj *\Ü#G\Z‚\"\Ãx”(\Í§”bR\îX\âHZ\ÆslŞ„%BW»–\Îi2b´\\´¥±F-–\\KE¼L¨¬\Âª”0Qcş\Ä\ìÁ8ˆ…[†\0\"@\rü\Ê^rL\Ğ	£½RBù¤\Z\â\0d‚8eÜ£©\0fŒ\Ë\n§\ny–£\0\äj\n\Ãd§e\ÊÍ„®ğÊ–™F\í“%\×\æt\ìˆ&@¡-1]ğÊ—U1¡kÆ¨\æšª *\Ê!jš¬\â\Ñq‡\Ì^¥‘2D·]-D\Ò\é\ÙH¦\î(\ï-9!EÜ§l\î\â¬\Õ\ËTB˜srŒu¤\Å\á \Ûn\â9\ãó	bo0\å¹}‘B™«”‹•Z \ÆO82°t.l”!¦±ˆœ…¸“R¨¬Z3\0!	\Ò_a—\åˆb\È\îX\nnƒ‰ˆ\rme2\Æ0Qmr‚\Ñt¥k£\êkl‚\"¤ú\Æ‹‰”X¾!kS­\Ñ0@<J/\×Z \Ü*^ñ½{T}\È@tn)µ \Ë-À—\ÆÊ„\0Æt‚%\ÂIQ¢0±¦T¨¹B†\Óğ\"\Î\'nS\0Mò|A\Ï·)2û‹wT°x€D\Î\ÌzÀ\ŞHŒ]L\Ë%h8…@¡²\Èû†Pd³s¢#¶\Ä\Ã\æ)¼‰\Ô/p¥dD\Ô\rr£`e\Î%S©¦\"ğò˜{J¸S˜e£) TÒ¸<\å\\\ÊØ†.$Æ¢¶=Hşª®¯QEFú’¥\0 ¨1r\ÊtĞ§D\\17õ*ghYUVˆ\rÍ†¹e\í{Š»q)ôBm-œ\Û\Ü!i8Z\0\İ@\ïb˜*tx&j9T»\êlF \0	BZJ\é\Ò\â\0F¯qI\\ÆE^‘G. ¯qI^\ì¼‚¦w¯¾¢\ì^\æ`”J\\¶\Â5/\îÎŒIua*b\àE­HD¤F‹®@\ÄÈƒmĞ±¡H\Ûs,b%KU*– w„®ñ\06¨\Í\Ã\Éb\0>b \Ä#F¿Á\ád$†\æ¢Zğ‚ˆcñ9*3D¤µƒ¬6\"ò¢J,5 =%\Ú\0ó=3S„†=t\r‘\Şg½¦Wp1Q_(¸¤³@\ÊUw\í6\ÜŞˆ­&±š@7c\\A­\Ïob\ïÌ \Ùhöó\Í\ÒL µ¤R\×bÀ\Æ<#Q\á \r—A2\çĞ‡$µŒ`Š\Ê\Ğú\ë\Ô\ë8•Á&lf‹C›ŠœK\Ü}h3\Ò*¬	Mš•¼\Ñ(6\î!µF@b¶Àš´`\Ú*`0]\Ö0Yr’Xh\Ã3±\Şh&¡©5\à‰Y”\èMEˆJ·˜bXdHˆ&n™\ã	¼\Ç\ç‰\n¹@Xœµ\n\rDˆƒZ¿›x:\Äv\Ê\É0q™’\Z‹ˆq\Ğ;B\Âı(\ã\Ë\Ú1\Ã3\nù„œ®—.€\\6°\Ù)\Ö	2D,$d\Ë2¢!\Z38%\Ü\Î\à’ü¬\Çaˆ©’«i@L‰ˆ4Å”Dx…\ÂYx\Â>©‰\Ò#\Ä\à 7QEÌ¬SbÅ²\É\×¿„G@|\êFî“„†ô$«%\ãR\×Ì³	9H¸\0\è&şaU{\ĞOŒòU\Ó:*@p‹-º*rZˆ±1gHôe:=\ÏU†\n¥¡z¹F‡x\Ã_‡\æXyZ»¡„\n¬À\Ù\nº23´î½ˆ±n0E\Ò\ï!\Ãkpw%¨``jª%V\å¯yF\êQn:¤£¸R¶°A\É±¢C.k_2¶DÊ«\Ú,˜Ig)õ­R”\Z— r-Rùšu¢PJ*Š\",\ÓO2ªK+0cÌ©µlŠ®,ä¹¥\ÄG­\ÓW3¡\ÄAª£ˆr!\Å\Âki\Ë\Ö9óUFUrÍ— £),Êª\"b,\ä\rFõL\Õ0X\\¥,‚\æd*¶‹8”næ¹¨î­­b8\Û+0F\Çü@ )–\"„€i\Ò\İJG‚¡.jS\Är•FH†ü#\0.Ù—®3C.!\Ü\è¼m,\â(\àf\ÒL@E1a\İ\Î\Ä$%Õ‚POˆ[\è”\êŒ\àd…h\'˜¯#±ˆ9…õ%O¼B›W¥u2A/³8aº¤¤\è\æh!uªŒW\Äb\ë3¹qcõj©\î2—÷Z}\Ëx€ò„„˜M¡ôM\'†Ÿr7\ä\Ëy&?i@H\ì†^²5zŠ\åÅ‘\ì\Ã=4¢ §\ØÅˆ\rI\Ü&QŸ\î|Ø®\ĞL Áhˆu´\Êip¶d—ˆÑ’Å³)z¨Q˜6-F[„j\Ã3N\ã|¢P&m\â¥yCKÃ•\æfMØ›ŒŸv­a2 JOq\ßõb\Îe¥ó:(\ŞXlŠ3¤\î\å:Mˆòa¦\"ÙbQ\r…¥JXk\Ö1LGM¡ü™’¼%1+oó·\Ø\Ş!\Ø99ñ\ãúµ\Ì%jb_\Z\é\ØNJ<´J*\ÃQ¼U\Ñ\Ò”\Z•\Ã+l€*¥‰hˆ1\ëP9%:ùÁÙ´\ÍÆ“F²\ÖX\ÅBJ!¹Yq\ZD¸šN\ÄQ\î!\'C\Äw-¢‚<D©-Jz\Ã\Ê“ÚšAªş¡Ÿ\0,”\Û³,²Š,‚Yb—\Ä5F¸½}”\Ãkp\ÃE×’å©›\Z€*ó ²Š\Ş‡Ô¸c\ÆE?\àˆ²„tK#\âNò‚\áÃ‹¡\n¼”8¼\äHr	5ù€\î\îK70oó7Ã·nøš¹\ÔE=0\ÈRñô\ë\0\ÆY‚\â6\0,\0µ\É\Ö\0hnb\Ã,i¬¥RúE\Ó-7mdE.˜9P:Wr%eFaW4@\ì\"­Lğ\æ6Êµ‚±0‹-c\í\Äf³P!	i\0R\0}°Ä‰,]³,±` \ìJ\nú\Â\å\ÙóB­”^*²0P±(n(\Ó@…; \ìbt8#§®ÀrJ%Zmc´ıYµ€”j¼À¨~3	\Â4¼#0\"ª\n\ÌÆ¦‰6DBÀ³¤«€¥fTP[øD\Ï`b\æ.tÄŠgE\ê0&L\Æ\ê¢#D»ˆú‰\ÚÃ˜\ÕuL§O	oD\Z\\º\ĞCI^\ìU¢¡\ÑN‹\É©‚$\Í1-A\Â?CŸ9œüJ•6/¨šÛˆ9ÿ\0“¬&\à£\äRZH\\\×\İT­ÁT¹\Í1e\Ê×©Ä†\0\nrXz¢#B\\\ÆEu\"Ÿ\Ù.¯9µ9ƒv@&¦Kù”#©¡ˆ\Ö0w#fP§zˆ,^	’½ğ¸a#Ä¦”ƒ±;‘:7XÛ–tA\í1ŸrĞŠ\äI®Á™y\×]‡Q5(@\Ø÷‰/°«‚º z\Şx-\Æa¹@r\æ\n\0P¬@°[)RŒ%f`º¿1€B’\Ä	¤”xˆ\í\Ğeª¦b¼UA\ÕÊ›)(ht‹¨aD¬.³\Ò:¥l…x®±ÖUh5ºUiP\ä+˜om\Ä-B\0¨…\Ş\æcr‚\Üe¸µ\Ñ(¼ı<\Ö\à‡Nih\Ûs\Ù7QC\â\ìeŸRs\r*\í0 h\Ó\Ì)¬=\r8-‹P&l³r\ÎU¼Ãˆ°j$ô9b\æYA¼DRÌµ‡¡r\Ò^R\ÂUtÓ˜1\Æ\ãycˆ-e\Èf]\Ö\Ë0\ÜIÙ\ÒJ\0;A½6UCA´\è³<s2†Ü­jwgğ\\§jÌº2“\É\04Cõıe€µ\Ö\ë¡\ZP3WùD`Œu[³\0©N×©\Ï>Pz\Ã\r\Øw\"º<\Ê4\Z¼\ÌuSr4Ç‰\ZU¸\È{u•NÀ±›\Ñ@û•\Â\ÚÀ–ñ´À„–$J0¿k\êÌ®[\r)‹)DKp\ÃS+\ÖôFD\Ï{_p’9\é’{‰1gxqi\É}À†\ÉEpWº\ÄÁ‡†\"\Ô^ğ8ƒd®£\Ì\Î.`gğøˆ#\Õ(\ÄoHÁúF£s49®©E\Ü\àcY\"ÎŒ«¹If #-\ÄeMfaJ^ğ·,SLšù‹².R¿q\áJ€2¬G\è\ÊY\íˆxtRÁ\Ø7‰B\ä,4ø\Ü*\ëU¢\Ç2ÀŠİŒD\ã\ê$\Z@€¯™B:\ë¬jyaèe„PGbPC„r+\Â\â\Z5°&¨‹HJk¤z±º€\Û\Ç\ÈkV‘T›3ºZ\ì\Ä.½Dif8X®¹¸X‘K.A\ÌoÇ¡j`š\ä•\n\ËÀ\æEŠ8gŒ²E\ÜQ©Ü™\à{[—’\Ö ÀW£SPb2\0ñ;\ÌEjjT=¡–Ú¢\ÙR£P8¼F‡ó¶®%™¢g¬öØœ,´T·E–|D¢\Å\å\à\ì\'5-ù€!z\Ú\rı;e)F\Â\Çı–ï¤ ˜e\Ñ\Ê0\éQD{‘\ëm0°L\Ë<Di\Úof-‡Á ùƒ4ø‚›P\ÕDˆZOUS›ıIlN\Õäˆ—MTO$¸Z´µ}J\à{X†W\\Œ\0€\Z¸\ÅD\ê\ÄÅ¤tŞƒ`»›z%—™\Ú)’\ÕPŒ>\å&Ì°Aj6X>\"j±Ù™:°LôbsLô\Äp‚ˆ\ég\æ7C\éıL\ÎP”]/ñr\Ş\â\Æ;ƒ\Ì7¬\ÓpqHWA•w+…‚e*Q\íM#1w#¦°K±\ç:\İ\Ä\Üé¸µúA\é™ú1hle\Åÿ\0sR\ÙzI@\à\ï)ô@vš.J³Š‚»ó©\Ñ\Û\æ¿SÁSipVù†5\Ä¤j5µ\ÄH\á\àc\æ³9Á¡\é\ÖZš5P\ÎY`CªÁ¨\Ù*‘\0n\ì[#B\è¶N5\Öa\İĞŠ\é¹D\èªd€Q\"±<“\"\rF°M¦!›\â;Í©.d¸„`\â)A<K-\ë$\"@>a]\Ş\0kü”‹k¤¨±–\ìğÁ\æN<D›\Æ8«1]bµle“\àJ½\Â\ì6xK\Z7 \æ õç§”¿†(@^õ\Ä;\Úpê¬²\àÁk\í•\Ş\ç\Õ}K\àÀ}¾¨ò¢õ[ŠyŠKô%V.t‘¢3D¿,(\Êv‰\ÚvBx\Èû$k\ËQ\Úöašô„C:\äHT\âtBşaE	\à§öT†G~ ü±N/qÕ—g·ü”¦\rQ\ì‘f_Y\'<;JœÜ»°R\áú†VÌ·4>eD\è‘.Xi7ñ\0Qg’TşYg @9c*Á\ël‘!=@\È2=.ù—¹-Cş&3Pw˜gD±\Ş\çI…5(6ä˜…\ØgsX\Ë!l\İñT\â3bE=PØ²!H\Úu9LPv)\Ô6\â<pªJ†TùC\Òd9u\08¢\ë\æ\".Œ\Ğø UU5\Ä\ç¤\ĞQ;BÒ›\é\êÒºŸ±r\Å\Ò$\à\Ö\â†\è6\Ş\n\èÀ\ë\n\â·NaÚ…¾\èrƒQUc$j¥\æc]u–\Zˆ”±}b4¼KWD¡\Ì8û†\Ö\Ôd°/\Ê4_©aA©Î»bsE‡\Z\Óñ.<‘¨fZ‚\í¼Â”RÁ`\Ô\ÌÌ®s\İ\Äd\écqnD²¼f\ØBY‘\n\àE¶¡\ãHueNœÀ\Ë^˜\Ø‚h\nr@3õ\0(*µ\Ú#ivÖ¡l¦u\r ¥\Ö\Õ/\ì÷Š©C/<£ò§\ßø M\îTObZ\0şn8¡…b¬–\ëW\ïq\"Šò·\æ6ó*÷*To)\îvG™l\áX~bF\ë(ó2Wô\ÍÀ|Zo\É6×®U3¯²\Ü\Û6l\îMS\Ş\ã0TM9üÌš|—c\é…5¹\nı8•PV3	oº´ûˆ\åŒ\0E;0)öGqNÌ¥¦D•K€\áˆ,¯£\"ú‘(eŸQQ\0hC?úe\ÅF]\Ğ)‡¬W¯r±\ì–œ‚ƒ\ä\ÜAÃˆöc0„S£ó:\ê™BZÁ@p\ÔF”v ò3\Ú*Yn\ZNµ7ªº@²\Íô”1õ/‰¬Ğƒ{¨¶Z”¹¤(\î\ìL_E?QN!½GÃ²Y—H.÷oˆqT)\äv€X´mqòeF¶ \å\ÌKa|\rË+­TJ’/\ĞT\ÚZ\\¸!Ù¤7¬øw‡…B†Y†N|\ÆaPS—h\Û-\n‡Hš¥\Ã¡TÍ‹\Şe\íLÄ«*±@z	r«ü˜ŸCPÎ­\ÄH¹\Ì8”PR±²&Up\áŠL‡X!m\Ö\âGOHE¢iŠ\ë9\ê…ƒl%w\"\Ê\ÄWvôƒ V[–<Aº³\Ä\Z\ĞqS$õ\à™Å¼Æ¸”‚‚\ÊÒÀ.•‘\à¢i^€\á„„-\é1\â]`ø ªÀ\Ë~¥©s(ö\êZP¸©~)h¡|v ‹\Ê.\ä·o§V)\İóÁD­\Å%\ÄpK™ƒt\\\à·\Ã\0u\r¡©“\Ù\"»¶ô\ÃX&\Ó\É\rfÁ~	t¦˜3@zŠp©Ü¨/\0\ì\ÅD\Ş\Æû“(+\Äy/L`ù\0\è—2\à/)qğ\×%5¤1™L+G¦#€Oz\"ˆ ´9t–¾\\‰`P8K‰ ‚P¿dÎš+ñ›A‚ŸLƒ\×\ÜHU¯ötƒ	®qşÂ \ÇA> KÅ\Ò\Î!c2ì»Hz°\n ½\à\ĞA\éÔRE\Òp:\ÂÀ3j\"ˆ»”\áù‹\ìm‚]V\ìGM·\Ü\Ê?=”^’`4õ²`r1SaRb\naHRf-\î…ù€Y Š[d°\Ø[¬N(CÔ’\İİ‰¿j­—\Ü–2a—Œ9§a\ï+%¸± E\ÕE\Z\Ø[ÇŒA¯n¥\æ`8dôŠ½IoWtßƒ“Ì¨À õ‡ª«Un\Ğ1õ\Û³|F­¶\Â%PÙ½’§Œ\Ä<h¥@¢P\â·H„ò\"Ü§$\ä\nõ˜Š™\n\Ä s‚x%K>s2\ÄC6/\ÄV\"è¯¤\Å` ®Ej[d’°Æ‹:°QJ\Æ&Íš«DVº°\ÌS\r\ï\ÄM³ßû°§\Ëp\Ğ7e\×\Üa¹\íB/ğ\Æ\â\Í\\F\Õ\í¨§U\ÄNTO(\Ôk¤c6\Ó,\âYƒú\è.lz†£ñS\ä˜æ¨\\¸±r@.*Õ¯9ŸH?‰¢Gˆó?)Uc\íiFŸ†\rÏœ·\Ù\ÛõDxWBña>C’òˆ2\ê\r„\Âw>Š>®YRvCõ8E)ı¯ÁƒW€Š-8Pù„IM\\5\èÈ¿’\ÈôŒ;ŸI\Ìq`Ä¤/”‚H¹\Ü\ê¶> \å«ä€Ô¼l+\æ#Uhıš—´JÀ\'˜5#\İ \Û\Î\"#€é˜–(…\âuF¢ü	1,7™»f…\ÎÒ‰¼\"’.·œKa‘\ßTÂ«\nºq\nÆºö\â$P®ş”(!n¾&¶k„\Ä-z\Ü(\Õ=Á\Õ%uf|¢P\Õq\r/¤p!Qe*\'Š¹?¨\âµ\Ë\æbm¤K‚±9\ïŠ\Å,,f%Dœ¡¯=ZóÄŠ7 –\Ú\Ò*üF\rd,auµ\Çx\Şti†P·b\í\Ş¤=e!)\â4en²©…$!¸O8 v#„¶w	\Ş;A\í)<4c7‹JŒ¡Ö±P®¯‰j½%Å€j\Üb)Cú~ k!\Ù\ÕFW\ìDR»	E\\°?‘-™ƒ]‡\æ6y&Z\ìu?#.ß‹&Ã¥\Äg\å–+k‰\Z8daN±Yg†^y‘\ï”\é*q)\Ò0\ÅJ£³\rlR±<\æa\Úò%;§… ´?©¥\'DAòp\'’kİ©yk µôJù \ZW&¿¹d?\Æ_—\í0·º$şH|¯W\æ^c\Ğû–\ÅÓ©ü\ÄF!\Õ\ÊÂ¡û˜q÷ü0\åúO\Ğ\Ã¾\çüD\î‡÷0Jœ\â\ÃÈ©\ÈRüJğ½óPz#)Pº\ØG2ÿ\0BL¼\Òÿ\0`\\“Àe„÷“¯\n€È«\è\ï9£¸¯™P\Ø(=Ÿ\ÈĞ®*«}\Ñq˜ƒ\Ä~`˜¶=út\0¹eXd•\ê\æ\Å\ÛR0yl\Ø¤®w`İ½ \Ö9dn\Z¾I£\í`W;÷ £†\Ïv\ád¥\Î\\\Ç}”a2`\Ì#¶(*5–ÃªZƒ®j	e«À„q£e\ÄC\Ô9ŠŠ\ï\â$”¨`®¦\"§tÁuP¡oÄ¤\íK#_­@ªÂƒT(‘{B\ä0/2…7	€0\0UE¤¨\Ê\Ì9\à½\â\Ì1ˆ‘‚‰¿®/\Éd\Î\à\à€\ìBè—®\ìfk¤¦ù¸æ’´ô™ü,¢jµnbw…°n02Ã­\Æ$RJ\r\æ(\0ee,ò¨À8I}\0Åº\ÑÈ>’\Ê\äBša\Å\è\Ü\â\Å=²¡\Ú>òƒÔ´9ò\Ô]€: øÜ³»‹\à©v…ù¸rğ©õ\Z%<­±M¬¿xöJ™\Äy\æ)\â]\à\"¢\İÜ¯?\áW\'=#\Ùa%DˆD¨Œ*\r–úÀf“¼\à\ï-¦˜\Í=\\kd.0V\Ä™xb\á–\è¤e…9¢¢x„µo”qó°\ê7ùŠX\İ\Z}Œ¢OiKEö±%\Åh(Á²½\ãì—¯¯º…\Õ^\Ç\ê£\æEeì‹­§\ÜS²x†Š»\Éc.\ÑÚ†(”ü3€.‡IšMw\ÅQ\ĞD²­\\;`t€O‚•\"€ºG‡$-¹ª¿é€’\å‹É¹j\0Èõ†\é\ng4\í\"\ÑÌ˜b«\Ä\ìu·\ÓP!)\Ô%\Ü\Í+´­Dd\Û\Øh \ÏJu:Á´4¤nùFIœ ]¨uº\Ï\Ì\"”p\Å|@‹ùÖ°¤|\n’†4\ã©«R+3»-}Ê¬±U¥6ø«ƒV\Ä^\à,U\Í\Zn/y†g„z8¨„TlHù8\ÊdQ¹õ	\æ[\ì\Ú`˜R\ê=m\èx‹Q\\:k§õ-€	˜°\ï¢Y²\Èßˆ^\Ã5\î‹@Y—\n´{mWp! DD	Œ\ïPm6LO\Â,,6÷\íj\'ˆ\æÒ—\Õg\ÚT{\ÖG3ó\ÄKW\Ër\İ\Çdó˜\Êt•¾#4\å‰N\ÔCˆ‡H„HÄ‰ş1\Õ\Ü\Ç*½\æZQC\ÚEtO,U\Å#½O\Ü_lO-ù\ä§uğÍ¶ı¦˜\ßDA\í~\á¾\Øl/¨o¨ƒ\İ\"¶\ß“,Ä ¥y@’\Ì\î\ÈÁ\è.ƒúMr{?\äX\ä\İ8\'ªß……¢A>\àâ›ªJú©afš*~LpÚŒ¥[X\äa_u‹Á\â¡¯zLMWZ…pÀ|ƒ\æ7š‡x•v¹g³´Z\â*.^\ÒØ·¼ƒ\Ø\r\Ê#rŸr^k\æZ°[ó©¯c„·\å\Ôa]t`|K^ \n\é\Ò÷QHIai\Ô14\Äö`DuI\è_fxL@Œ\Ğr@µ]BğÃ¢• \ÇI„­HaôGmŠÈ®·pÈ´†\\R/pµ1†\Ü]ƒ\Ş ²R\0r¬r\êL¸9›\ÃO\ï¹nH\éTai ´_x™¤\Ë\0iRYÌ \Ø`»\é\îPFò„[\"\à½\â&\á\âùc)ÁK¯x\ï!—\Ó\Ä\àp³ªg\ì°ó2\Ä*8ğ†Ó˜€\ìÚ—K©(\â_H [l5+\æ\îTN#¢\\Q‚\ãa™6W\â<\à\0$&·/Œ±5P»btTYk|\Ê÷/˜W‰GYGY\åm•D5*\è—ML\İË‹ú\Êz3\ÚQ´|EŒb,b\Ü‰\Óü$H\ÇpE+¤;Ÿ\Ér>\Æi\ì`uo\r@\êıA7ˆ½OPM~\Èhu•á–©<‰qò˜€k\ŞÙ“ô[.Õµ\Ü`f“\É‰c‘ \æ_‹€\î½ ù\"1o=p=3\'\Ú*>¥º\Æ~Wwd»\ê*²|¡ú›\Ó\ìS\î¿\Â-øN?2…óist|\ØV9|	—\èDSºWR¸\ï“û¹ÿ\0e{b¼Ê‹Š½\ìú‡h¡…#\ÊaöErƒ\èz+_€yƒ‚|Z&¨¦©™{@\×8¸ÜŸ¨2\Ğøƒ–@\ï-\Ğ^ƒ\rñ`^.ˆ´*Ø†ü\ÑZÅ„õH\Ğ\éxt\ÄZW\ß\ê,D¥y¿\ÔjXú\à…v\ĞóA¥*x€¤‚¥6\Õ\Ìé‚ \é¸\Ó\Í(|$[\à$:n¦Vp’¼U\Ò&ó\Ş2¥\ßK„.\Ë3\Ø{ô›•9K«\èøÄ¼ŠÖµ\×\Æ:¡\ã8\ê\"O\É\á‹!P•uƒ¨‘U3£¦˜@¹ª‹”¾\ØûL]\Ó\Ñ¾»i	\Ñú&\ÔY\İh³=Kñ:KnÈ£ş\"wL¹g´\Ûq=X-\Ôñ”\èJÖˆ†\Ğò\Ä/‚gA\ã/\á\Ñ\å#g\àN<ˆ6\É\\\Ö<A\ëú™õ=Sa\îô£È¯+ùgJ‹ˆ¥DE:Å½!\ê6s\è\ÄV\Ó\Üy•ò\Âø?0=˜FZ¡)BúDbW\Ã\â\È\Ò8.¼\æÿ\0P^o!‡:ò?L\îü¯J {ˆnÇ§ğÀ\Õ\èŸûò.ˆ?Sp=AmŸˆµ¥]\é7pƒ\Ğ< ?¸\Ño3?Q…®_2­HöB&iy¬>\ß\ÄHÓ”…ò!\éocq\çÿ\0ˆ0°hC%O‚,ƒ§\å­\Â;9ˆ¥\ë\Äu’ú\0n\Î\ã(€<\Êñ\nœY\Ø\Ó\rCÅ²\éIù\Ì‡`¥\î\åco•„\Ö\è)–\ã\ìÿ\0\"U\Í\áµnó¿\ìyT0ª°`?l\é[`ø‚Ju‚«û€~¬g`ûJ>cƒr(S¯1(Hr\r¨¬¬É®n©V,ã˜®E•“\'\Â\ËòÒ’\à‚™\Ç?Ád¹\ÔÆ‹z\Çş÷]’ô¯ÿ\0û,X™4LY\ëD’¶\Ë*¼@õ\éG•¯TZ”[h\Ã(FÎJ„ZŠ—Á¦‡³\ê4¬=%ø¹Çƒ»|ŒY\×8*\å\âWvR¿\áC‰\\\"¹@zAt‡l\"eIƒ’P\ä‰9”\ë´m\Ë\âf¶\ï\Ôk\ÌNÁòJ°Dx—\Ä]\íB=)oFñ+¢=™ÜR5n+ ¸|\Ä91¦\Ã\Ü\åˆò¾\Zwñ3[\í8\ÇÑƒ\ä\Ì9eœpø`?™É·\Ğ\Ët>\âSüŸø‡üC÷qWi¢‚\á;—ú‹6_2U1•\rùIC\áŸÿ\0’\ÇÒ¿‘\äö„²v§û!·½‘‡¿ùpx\í¾ù&\Ât?J€8ø³N{ˆ*¿f	ó4\Ë—ª\0|üK2y\Ä\ét\Ãû-rº+÷’ı²\èAÅ‹÷.RV\àö\Ä%q‘y|T½]T€¿‹&,O§\Ô6GGñ—C¥?PW} \Ğ>\Æ$W\å?Q\Z!ùA¾\ähº\Ã( ò\Êrœ–™g`\n\Ë/¹\\p_\å«]\ìhE¥\nk|Aµ¶,]=şe\Öu\0º¡ı@ Î»z\ê+Š¡\×~f\ÖG,4-§«™™C\È[LXó9G£\n\Ï\Î\ßÄ©\ÙÊ¯±”Í³~eX‰H‡“©\á”V°ó\n–?8}Ê¤ô\Ç^gE©T\îÎ‚¯\æ\à\rB\Ò\Ã\àˆDU[ôq\n)u@şe\")\ÅQ\ê\ád>—ğD³GvQ¯™vZìŒ¦\î¯j–.\Üì¿˜u\ë\Ü\ë@\Ô\Â/¡ş\ä\ï3¼|ÿ\0“ÿ\0W/ªbT$=‰]’º	Øˆô	C‚(\àøŠE+Q t\"#h±{Jw\"\Û\åbZ?8ˆñ¯’#¯‚P\Ğ=K\â7\Ùó/¨Á\Ø@ú\Ö\0~\0`\àµòb\Zoi(4üOs|#ú‡\ï\'ûv‘?^œa>-?PòY\ÂûˆR\Ø\Ù\è§\îi“Ã‡1wQ¸‚­Ò…V‡ÿ\0:\Ë\ç>€V}Dm6Ä­JuJûb\ÕìŸ¸Y\Ë\è„.-½¯\Ì9Aù?‘kóƒ?	6\îkówË€¨sŸ­ş¢û#\Â)€öl\ÃAv\Ì4\Æ\\_\Ä\nÖ»¡OÄ°!±B®ªX8½ ×Š\Ì@É¾UP\\Må„»ŸøÄ³O\à@°\\c1©4\ÖEı\ËjFÂ¥DªG¸u¤Œ\"F\"¶±\Ş\Èa³Õ‘Kj›\r/ğ%Â‡(\æv_\éõs%Û‡\ÇC\äˆU\æ^~e$‹\Ø:÷‰²°rıK®\Ï\áÔ„(¾„\Í;?©BÙ˜1‹)¤.1\Êv¥P@\èfÀw¨\Úoö5+oš\"^Áq«šNHSl;)ö\å¼µ\ä%\Ô\rÀ/™h7€\à0¹¡œ‰»n=I6\Z\Şû\Ê&m\n`–½\×Šph\Årq\00ö©F»V\ã…X¬ùÔº\Í8¨÷„GRU÷\nCs\ì\Â#Š½¶K\Ø0ù€wiø€\Ü\ÂU\ÉAq\0¤Ú…~H¬¡ğ~&\Ï(\ÕPŠm>\'\Úu¾ÒŸ™›[ó\0û”8ğJt~\"W\'Ô§¯\ëû\ëù%˜>b#”!”¦¸ûˆô>#À‚ƒ¹-\å‹\Ô=±\Ãñ\Üj\Èz–/€:o¢Ww\Ô{˜‡W\æ#«ó¼Á­@t¼¯ùš¾Cù\å¼$\èÏ‡ş\Ãù\ß\È\Ï\ì—òdùŸ\ÈTƒ\ÑÏµ±o%~¢->`«\"~\à\r«Â–h¾¯\ä‡QyT·Ÿ\Âe\ãÿ\0Î°.—\á˜ğ|ş†0}£ö…0/\Ú~¡m%\à#FA\îR%)ğqR:v\ÊN\Ö+\àO\Äü»I\Å\Ñ@fn\Ñü¤]Xñ\î^\Ú¤^-g Ÿ¨f±ıJl‡L\"\ßa‰<Qğ1O\ÛY¥~O™L \è+\Ş_¹Dô.B\ÅÖœA‹\\\ê/E†\Õ\ÑSõ1¤ôiù\"l¼H%<Tı‘\å\æ/½E•À\İ;­	t®•P¥\0¸O3–ÁOºŠ\æ-\äiúù‚¨\r\\\ĞpDl•\Õ\í.6³\èt@›^\Ş!U/…v\ÏID)ë¼ ‡ ;tñ·\Í\Ôúl„ñkxó6m\È\0\ïs*ª\Úgk\Ô687\Ì\éö\Ò\à˜‚+mU\ÚüÀYñC}m7E±\Øû•ŠU>n!E&T¸\â‹7¾bø€\ê\Üü­¹·óVşAû¹\Î\r†¼øE%ûb¢ˆ\èl>º›W|*;©\åYÚñ*\Ú|À\ê>fI\Ü>aJªy”¬ú\nüAJûQ\Â\ävù\Z&\\!óú!£°‰\ØS®?R\ìğ˜­\á\è?s øıD¢\ë\ãÿ\0B[ycF\Ó\ïş\Ä\éùˆy|²‹‹ùV=\Ñı\ÈD\é=¿ò<©ò\Å<ŸûÜ¹\Ã\à}ô=~Q\Åò±\èŸ9”ğx%„GG\ÌZi‘}Qz˜§FuG”Eòy\Ä6À O5-«°…6>&\İL£“ö0\ç|ıE™N\åš(ZJTyY0O\Ü\È*=_\ì/9_ùaŠd¼8\Í a0~ıÀ·@?¸¿š_\Ù`\0\è§\îq²úSöJ;ÿ\0\Û\Äv=ıDöÿ\0ù\Ú5K{•ü™e\"ö0X!ò²¢\ïôŸ†À]ƒ÷…!6¾òD\íÿ\0È­´¬YW[\×\ÜU†\ËSuAùŠÀ­ ªõÑ•¯D—vLzbšK\ÈQ\æøs/ÿ\0\Ö-_Fı\Ä\ËòˆŸ™½ƒ §\æ`€[\ÕO\Ì\'@ò˜cz¥jw«K®Vd\é‹÷j¸\Ï˜Ğ€1edB{6\ÍÚ¬\"¼\É\Ş-%¶¹º³/•aşw\Å^\Â\áŸ3\È\åŠğø¼\íOü½F¨^¹?I¤\ÅQ·\å¸\Ò\á\Ê?¨rØ¹_\0\Ç?Ks¨Ô³tt˜w<KyY^—\æ\àø€\éõ(\é)\âPüM\Zú”\é,–t—¸\îq\r„Á„\Ù_ue¸\é|	nú¨³m¾\ì\Ñ\å ¼<¿È‹\ífŠ¯µ¶3}\è‚IÖ¢ğŸL\æ\ßf^ Î©®¾ÀÆ«öWíƒ´?‹ÀGşñ+¬ô =~U\ÄW7ğ§˜iÿ\0¤B¿¥ˆu|1£•ø›…ôDn\ç†\0\á¾Ò|Q\\}\à#\Ù0ñ‚\é|3dy¾ğn\êr\Ó\ÑAz .f)ıR\ØıÀ]½/\ìğ§„úŒ\'©W+³ÿ\0\çO#ùa|·\êdŒ~\å\Ô\Ï\Ã3ò\Ü\é‰u|¿’ŒUÿ\0½I€S§ü ôU[\ç*öı\Ì,x”\Ñ\0~[ù€šı\È\Ù÷T<»øTü0q;Àı\Íï€¿pI\ĞşÒ¯¯Tü\Ãî½ˆlù@s€ø‹;33ò›©b\î_X†ú{LjØ‡şÊ‹\Òİ·\îmzcø„\çÂ¢(\à]ƒö\ÊF\Ä\æ™t£\Ëü\ÊFª¿‹ˆ‰%\0À¨\Ò\Êİ¼(KJ\Ô]:ø\Ô\"£«}¿?3\æŒ\êø^&@\Ú-\ä4Gqb’¶‚g³C.Œ\Å (\é£\Ëq°ı)“À²¸\Î\é^ğ¹\à’5úK\Ó~\ì\Âş96±|¼(üˆ\ÙU{\Òvÿ\0	N?\"Sÿ\0	CK<³±\ÏF\çM¾\È&›»#2\Ö\ç?QFC\É1i»’Ê—À\Ëö\Ş\Ñ8{NZ|\Ü\Äz\ÏF!\Ñ÷p\ì¿ì³¡/€©\Zºµ{^~‡\æ\nd_Cõ;ú¬£E\í…£\îc§Ô¥»>\'qñ\Zl<c?t7\Éa ¯H=3\îS¡ó+ ùa\Ùˆ1¹Ÿ\ÄkË…¨‡{\ä3\è¿\È@¹Pş¡­\ãH\nú–Qt–\ØOFß˜Võ´ªú*Ÿ˜†?ğ:\Ä4y¿q\âƒü•¨o\å7\Ö\"J»\Ú+jùP¾˜\Ë|Œ?’Áÿ\0I?à©\ruú™tN@ıN¯\ÈN\ß\ìœ\Üş\ÊZùB¤³“ñsø\Óı…\Z}§Ry_È—Üš\év\î¢\áY\Õ)õ\Z¾À\Üò˜À\Ë\nV\í<d[\ìüE³ñ\\²¿_ô‚iÿ\0\Ş4×§§Š\Óó\n\ì \èş£t’~ WŸ\í7úÿ\0aÿ\0qúa\Õ\0ı\Ê\Êz©™\×M¿PQ92üCE\êU¢\0¤\Õ7•»úq!²\İ\êŠ\ìIi)Ò\Ü\áªûQ««u¢\ßp-8®E\r˜\Îu|w:F7k˜­…¦{Ÿûÿ\0sµ¡yZC»¯˜Ya•S¶Ç«†\n\\Pşeş`·\Şş\ã+¾\Ò\×\Û´üMh/4˜/±ı–òû\Ğ{`\ÚŠaO¹g9voˆ™Ÿ•Š\Ğn«ş#\è\Ö\Ã\æ\ãAİ†\Êû—7*Ü¢\ÊË¡¬\Ë\0j´\Û\r£\åŠ;Oygù–%_ø\Â\ÚOı˜r>¥O\Ã(jº•/:=“-rV•e÷Xÿ\0ˆ_jK_É¾4YI\é\Ê Õ˜»(ñ\İ-\ÎÂ‘G¹\ÄN°¾ğ\Æ`C‘\n–·¨‘¬¬\ïULuŠúQ_`óˆ¶\å¬=\Æ €P»cJj$ø.ıÔ·¯¢\Ï!\\K}TøE=¬…\ê¢\Û\Ó-ñˆ\\ˆ\á/\Ã6®‡\ÄQ\éÎø‡\n¢¢\Ëu N}\Í}µ\Öc\åS\×\Å¸£ê¬ \Ğ\\Â¾U\æ\Ùğ£3£\È/Šet\Z‡\ê>¹Ê„¨zı•2\ÚS·\î\r{?@}X¼bg\î\ìú’’«‹z$P-¾\é·œ\İÀ–±\Ùc½†¶ŒQ$\è\âE\Ğ\îşLùg·ò\0t\ÉPA¿p\Ü\ï¬÷	Tœ!pRôi€¨ı\Â¨›°~\ã]°ğa¿\êgSÿ\00\ëGl?q¬\"ñpqô½~eu¾pN¾Œ¯£Y\èD°A\â¨Çš¾¡©öÿ\0P{\Óù\î\'\ê¶óü\áP\î\ï‡\æHu\Å?«~°~\ão\Ò¹V\Ä:G\îD\Ú3¥¯\Ô´\'@ùAğP–‚ş§ÿ\0/üŠñ{ C\Ş\È:*¦]S/â™­jR\0p°\ÇF%\Å\Ñ\æ%\Zñ	ó.¿ò2\Ô|\\E\à`ü˜ú– ûéˆ‰L\êPB0œ„ü‘|D¼²sFaBò¶›‰l?/\ÜIBT÷??\ìé¯œ{¯hr¯†	ÿ\0,A\Úúb\r[/:û‹J\êB~&ˆ=[~£\ŞA^²Ø¿$–.\ÇJ\ÔCº`§\Ät|F\ÍQäˆ¦_„\É\Ï\Â²“³¹\Zó†\ë\æ:‹|\Øm]\Ù\\}\ÅÖ‰C—5\Ö\Z\İ&C¿T@cz\rt\Î\Ñ\Ï\Z¸QU\Ñ\ê\ï0ØF\İù}J¦(»{¯‡hšš³OÁ¸6\\l\àw‚p\\PJ\ÙIˆuR\Ù\'ú‰·\Ô[Œ¾R\êŠSqC[»\'…·\Ó`:Àvd\ïIiPò2\ëÌ¢T5\æ8|»\Æ*U\ï\àW\ÕÄ©*·a¢ø€¸•[WA¬z\é¡ö«¥Á°\İ8€²ø¾ñBS\á \r¤&œ_\"sñS–d;½&o¥,\Òô8Á\Öy’v?†» \Ğ®n1¥MO‹?N½¢z^º\å\Ü!\Ò#®q\ÚG¶\Ï“ˆK8@Ç¾W*›~„™ú}Ò€•ÿ\0F\n¶€ıKfº²¯©‘¥\ët~\à\ÃY†5.\ÈÀ½ü0\Å{\Ğû¨€#-6ºĞ±Œ\Ñu\á”•Ò¹\Æ\r÷‹\Ç!G~–W!°Áú:—T\n|²\Ê\ç(¬I\êT\â\ÂøB=ª\î\×\ÕJ`S£©v·\r¨šğ€°\\\Ğ«\ÄVx\0Ğ½\æm\r÷\ÌRdô\Ü[`$]\âW56„T\Ç**m˜RQò!\ä†Xá©ˆ\ãYa˜c¤p\èŸø‚sõ,—\Ú.&0XÓŸğ\Ë-\å”\Ğe\é™fÜ€¤Œ\ákFGš9;D/\n>I·ñPx¡¯+e¡\Ô\'\æ\\s\Ä\Z–õ‰·7\ÅnSUb\neº\Ê ‹u¢†«¤\ÈC\İAştşÁ/ş\Ä\"^IûŒ`ÿ\0\ã¼\ÖiÖ¯\î<iî¿Œ’¾2m„\r\rµ\Ú¶\á\Û1¹)§?¤N\é¼yş1#š¿\Æ9\nV\Ñ\Î/øÊ …h\Ã|‡\îX(˜\\ø_\ÔGD-Qk\0¿I÷|uy ºùŠ\r–\×*û€ !5Uzµ´•¾-ß­LPHNC€(œ°şzÄ¥\æ´ÀW\Î~‘=¼\Ä+†·W\Å@ú¬®2r^b\Óa¡\Õ\Æ{Ù¨b‹g\n\ê?ØºÒ¨¡o¢k†\r^Ø›¼‰-(0¥·¾uYŠ÷©@r0‰ƒ‰€kF«\Öx\ÌE\âĞ™  \ì™\Ş\ãM\å \r\àm\êy%ƒ9”\àÂ²sÄ°¼,b·Ï©`\nBP\åÜ™\é|Æ…\ä\0P\ÛL\ãŠ\"Lµõr1\åOx¾6\È8½.£úÁ.øª+ôK=\'\Şw›\Ã\Ê÷ch`T\äDUrWÌ³€”p\äüB&a(µ³_–“\Ì+\êP}\Ü\rbCÀ² €J#Ê”û¶\ÚG 0Qr:³W˜9Àä‰¦\Ò\n”\Ô©ô}Dd¶•\\·W™U’P8\"W\×±³¢üš‡Lm\ĞS€˜±/Ì¸Á¢3\íj [\Ú!8¦¨\ß\éÿ\0pvów\Ø\å—uÿ\0\êBğ?³C Qù»=\ØjuSñÿ\0\Ëñ1‡şF7ğ\ê(`^\á/¯´\\ıFô+úˆ­£\Ñ“a¡\æ\íûr~\"‚(i-ó˜ ¿\åiV7¸Ÿ˜Ôº/ nT‘y\ÜPc!%\Ç*~\ĞW˜h‡)™}Àº‘Áı„°XRòq\0µª»«‰?)˜¶X<³¯ş ƒhC]J*W!w(©G\Ó‹e\æ «¢T1\\{\Ôp\Øqi\éş5FÁ‰Zòÿ\0€\\l%.ü\Âb¿©™\0\'¢ş\àÂ¨*13\Ù¸\å\ÌKÑ†‡?\Ú\Îv\\@V\ÔE@¢š»•¹¡Tk‡yJ\Î\Äx)Eˆ\ãû+F(,z•~¹\Zxzy†B\ä3m\Å\Ø”Vú,H&¬|J¨¬ùœ!r\È\åE®s}LE½«üƒ\Õ\Új¡·¨¶ˆQ/Sª\åK*«O¸sfø\\š	]|A‚\\~\ÏıoYX0¦\Ïş E\n\'\ã§ş\ÇB9\ËaQ_û\Û+Q\Õ~½:c\Æ\"*UU.5üñˆ(+´\"tñ\Çó‹°Pañ¯½t\â4-\Ñkw²º<še=7Mi\Ï\'QµDP\ì\Ò&©Šå­|ƒc§N\"\nB¼övV\à\è\nli\Ùo.³¹Io€uq\ŞQ/˜¯Á\éÙ¸€$§\àİú‰\ãÀ{K«®IÚ°Š™²\×&·ƒF,\êtn\\µ@\Zm\ÆG‡=b\nB†\í³\Ô@\Z.\È9\ïZ‰XP¥ğH\Ñ3A\áT0(`‚õ±\Çr\n2PÉ\Ñ\Z! \ãš\ÆÎ“pU\Ô)s)P,÷\åù\Â&O¬	\\\"lúG<Íƒ\Ô\Ş\å\Ì¥\Ø\çs™†\ç\Å\ê2\ÆY\Û9—ª\î÷x”Ctr=\î¸F\Ôû\Ô\Øz,õ¸QH\ÕÌŸ\Ê:b\ß\Ú\ãz\ä@=b^\âQ\è¸\årP<¥x»‡\êko\Ì\"Ù,hPıÀ\ãCÊ¬74Áz7º”Š\Î-\Ô b¡\ê\àÆ¥\àöŒ©y½K\ÌCbøŒ2\ß\à€˜J„fÁ\Ş-V•˜j8%+™j\á¶9–­\Ø\ÅAin\ÒkÈ\ÃW%fLG(@¨Š!‹Z\Ë\Ö-®Ÿ\â%5Y{\Ç\Øp\"Õ¡9û‡Oğ/Dar²´\àD­åš¿\æ- ^N²«™¬WH—Š¹U)\Å\æ_Rût‚E\\.dg\î{Ï˜WC\â«~b’­G¬®ƒ\âQÀ_‰‹\Ò`=Y‰ˆ‡¤°Rdğ\ÆPÀjD½7R’\ÕF¶·¡ıÁ°¡P\Ì&2ŸXJ8ó(ş\æ¡«Vğÿ\0\Êÿ\0\àKd6\"‰:Ÿ2-ı?Ù‹ö\à\Ó?û9ÿ\0\Úÿ\0˜TŒ¶¶\Ì_ú0=V*\à»ı\ÆıüÈ şSù+\Ğû?‘ÿ\0\àÿ\0 OóüR\\hS\Ì—\Éş\Êtü\ï›öş\Í\Ş\ßØ¶z\Ïû\Z\é\'u·»Y†ó\à\ÂW\Ôrso¨VL\ë\êl…Sõ\ZN£5’”¦O¨\åxº?P\à\Ô(©Q³¿\Í\Ê.\Ù\ê(\0ÀØˆTó†~\ãŞ–Á¯¹ŠOH×‰’\Ô\âËˆ\0¸p—^{˜\èÅ§«*\Ü_H0a..Y©j¨Z\ë,`¥‡$º—f\âsy€\ë\n\Ó WZ–afóP{?Z§¢\Éo3\\²\å3]!ÖŸ‰Ä¼iˆ\Ğ<\ê_f\n·i\àüK\ìüEiK¿Ì´.\Õv=u\ZvI3g(¾*‚¸AgÔ·£ñ-½}M\è\ëõ.‹¦r4\ã´Zp/z…Ü¾\Ï\Ä5\â_g\âQV¡{¨ñÃ£‰v8~\"\ãO\ÄÙ½‘u´K1š\ç,‚AƒY‰r\å¸‹[\æ#`T§\î=!\îG]w]µ›-e\ÆÒª\é¿0]\ÅT\Ğÿ\0ø\ßûr\åÅ–Ë—.\\X±b\×b\ê)\\\Ì\\²)˜¤k9˜#\ê{\"c˜˜ˆ\Ôc\î?ş”D&@Œ\Ğs˜\'O˜u.~\ï@õe]\ß\Ìx(\0¢\ÕfOP\âgP´;J°|À¨ ¤\í>b=\r°(¢	Š:¤\î•A\Ò«€\Ùw:?˜š:\Ì¿Àµóù‰h{eJ†¼p}ß˜.\Ú\ßø¬ÀÏ·\é*\Ğ÷!\Òj;\Ä\Åu\Ä8CŸ’\ZP\'\É¼G\â\"³…†zJ„¯Dğ\Î\Õ=Áqò%G\ê_s\Ã*\ß\Å\0n\Ï$™cx¸°£\â0]ˆ”\çZ4^œE‚\\2’ƒ\n¡\ãü¿ÿ\0.0[umK—.\\¸¿\æ%Ÿ\ã\æ>\Ì\Ç\\\Æ<E\ÜY\Ö.\"\ê;1\ÔuEÿ\0	Š\Å\Æ\â\â\\\\\Åñ\ZË…\âE9L\ê @H¿\ËV¢QO f5]n	\â£/ÑŒ€*’\Ó\"\Ü\ÇKP\èJ‹T¹´<²¶S“™IÑ¨õ°}§‚T\í\Ôo§˜¶Z:OYs’ã˜¯[]\ÅÊ \Ì9\'Ÿ\ÔŠ¯X¸…¸1¯\Ôò[úˆdŠQŒKĞ´ŸˆwO8‹\'\r\à€Ihœ%1\ZË¥D¡^ûÇ¨]Ş¢ÀFjXÀ\ï){d\É\Ä,µZ‰¸¥\è\á\Ú=BŒ ƒ_ø¦ÁòE8z\Ä\èS\Ã\Ã<ƒ*\Ğ|•p¼1hŠ˜f?2\í#,\æQ\ær\åÁ—şm \ßx\Åöœ\Ë?Ë—ş1ŒX\Ë\Ô]\Å\ÌWX®ss\Ä^\Ñ{E.)\Ş)Q{\Ç[¶M14Ö£­EŒ\Â:N\rA\\j&n”D\rŸ¡\ÂÃ°<²—!\ê[–\åˆ30JÀ¾[o¶ÀA¶½@7wİ”²|\ÊUgƒ2óC|\ãó+P®I>¨…B\à‰\àm\Ğ\Ì ur\Ãb{/\ê\0(%\Z!-Mc¸™|Á/k·ù`\Ş\áşMs+!Ÿ\Å0¶Cü\r4xz1+	| \Zfÿ\0Ã‘\n¤\ÔuJ8pz•¬?ö!†G¢S4\Ô\Ê9u0\Ç!_oè„³\êÏ“1Ì³8Ç€O\r@\à>O\Ù¡\åq\rôı\Ç-i\Ô\ÌJ\×Àq	 ÿ\0ğ.\\¸16\ä‹gÕˆ¦½1\Ñù¦\'¤ò$¥\Òğ\×\æQ¿1L\é#j\àš0/2’\æe÷’\\¹r\å\Ëÿ\0´9ŠF J\Ü°¦…’\Æ\â\"ÇœGQs^\ã¨\ÇQqEÄ¼E\Ç1X±xƒS\Ôaû¨–¬=A6¾j˜A”ƒ\Ë/Aˆ®\ÏlƒÀœ·õ(\íW»pI‚ <t‡–ô#R\Üì¿¢l\ìÌ£V_–\áŠú\Ñõ\0\Ğ#‚f(\ìn¦;œ\0;\å€\åú‚Ğ„xL7\à60\ÔN@ı~ˆCk\Ün€:E:•Á-‘oc‚;iÀŸğep[\é\Ãó3\åC‚põğ\ÂÙ²9j’œ\Ê\ÆN	\áq\É0\0¾4÷)±\è\áÿ\0,f\Ñ}L?0:GC{‹«‡&\ÙÆ¼™ø\Ü\Ğç£†%),\èÅ›uU:@\èO\Ù\r»^lú`\Ú\èS\î_:«‹Ò$±²ğÿ\0p÷ÿ\0K—\Ş\\¹gùq#È¸\îz\nüEuO÷Áòw—‘#Ì¼Q\Üô—øœ\0ò$_h?\'\Ì™TÜ«Ì¤§Ô²\\¼Esş,2#X\ÖB‚¥‰\ë/q{\Åb\æ/h½¢•\ÌXŠV\â÷‰\"3?\ãşĞœ¢÷ğ-\'´?=\0x_\ÍCaı‚\Ù}¯\æG\Æ?NˆxJ\Ô\\Dğ\èıKK¡Õƒ\îp\Óà¯Ca~h|8\0õü³¬>MÀ˜\0ƒ\é<!¸\ÏK\Ï\Ä\ÉJuª&Ô\r\Â6¯ªÁÀü\n\ØD´V_\"5ÿ\0»\Ìø\æ,\"”) (<IN\Ó\r#OùP.ğÀt†¶\rQ\ÒTR\Ïı\'„3\Ô@¤\ÃÄ¼²‡I\ÈÂ¢×ºñ\Ù\ï<Oó\ã/\Ò=³ Ó€\Ã@y&¨_y\áÿ\0\ì\r\Ğx¯O†e/³^º~H‹[¡g\Î\ã }]>7\àCIé€ºğ’§ŒlRl#\×\êQA€\ì¶\íw¡øaş•3€§Uqß˜\"~\áş\ÚË™ÿ\0\0ÿ\0—._ùx›ò\'<Yø‹×„\ß\æo²ÿ\0ü\ÆH‰Ÿ Œ˜XO|Ak0nIw0\rfW¬C\ÉZ%ŒS9‹ÅŒ`7,L#:‹/\å\æ+qE\Ú¼ùW÷	¢¼\àù\Ì:(„‘§®\Ø¡|±^<‹~N{@–c-YJ±`\èaõ\0\Í\Õ\Ì/\Ä<\á%\àšt\Ê\n¦N¬ú¥>ª @ƒ‡ù‡´\Ò$ +D k`Sğst–ÿ\0\Â!\ë“\Ë\Ì2\0\r˜ŸP=%{C±øÒ\ÅmŞ‘”9=q\n|X7\Ş•ş5?p\×Rıº†\îG£’:\n\Ê\êDdQ¤\äˆ`º\Ì\Ä\É,–*ñXIÖ œQz\Ù,×·H\ê\Í\ÂE‘tÿ\0÷ı‚YŸö~ \Ğ\á‹,öI€CK©j½\0\Ëƒö\'Y@\"O[«	¿’[‘v>÷\ÄtQ¼\á\ê<¤Wˆ‡a\Şv\ÌF\ê\ã‹eš\Ãd~\ê=r}Fğs¡§ö.\É\Óğÿ\0fx\ÛUbùÿ\0±ƒ\İ8\ÃÖ¬ù\"R\Æ\ïüŸ\ï§X…\Ãü.\\¹r\åË—.s\0 y6öö+ñ£\È~\àg\Û0“§ø\ÜĞŸüJ\à\Ø÷\Ä\Ã\ä—rF\Îô\ßÁ‡30pŠE%÷—¿ñE\"[òŒ¦†\Ğ]K^‚\Ç\æ_r¨øœS\Ú?,wL>& \àE \êµ/?C\å˜#=w·®ƒòR\î9s‚ˆ¤‚tÁ<?\ë ;T²@\\BöEµ\ë¬X?h&_\')\ÛeÀú\r»]¾\à\ëÌ±\Òƒ\äùciTnÊ¾X¬µ¹£Ë¯©\ÖJ\Û\ãÿ\0~ep Qx!-y\é2\İf¥–˜ˆ¯%\ç\Ö%‘\äJ…[\ÒÒ%¥¼·¨6¼!\ZD\0\×X ©\Ïù?_\Õ\İ…† \ZÅš=\Z\"ğ„8\ç½ËŒ¸!Dÿ\0\Å\ÄA{¢‡¾\å‘v9+<\à!C\0\á\ê·\É-\à\"!‰\È\'†t\Ã(@]o#/\ä\ršz¯¸‰\×\"û$‡–\Ğ\Â ª\"\×\Ø\"ÁmQRU\ë¢6P§˜F\Ø	ò\Ã*Û§ne0«l^¯Hx3Œ‡Â™š‰´³Üˆ,êªÿ\0À2 /j±mÃº«øû•I»ÃˆİŒ|™#qF€#Ñ)’\íº\Ó)‡¦(EYŠÿ\0‘—0rf%I‰:„\Â\äwÿ\0Ÿ?ô-\ãüSü_ø¹r\âÅŒc\ï7\ï\è‹aø\"dû*`¶<‰8ıŠs\é/ñRq%\ĞHR\æV÷<£\ßG\'\ĞÚ‰¶÷\"\Õ,:-Vÿ\00¦Š;v”t„°ğ‚_`\\üL3]j“•\ÎB¾\Ùr+\Û/\Ë9I\ê\å…J§\æUĞ…rü;,\Ã\âÇ¨\'k(\è±@\ÕÔ¸9p?°eúCÁÁw¤ñ°õ‚]‘¨\nû 2˜l‚C…i û€XC•W\Ü[Œ¸£\Ü=‡¡–ÿ\0µ%\Â^Oû¸·1\â\ÅÁı„%kşy€\Ò\Å\n.L\Ş\É\Ê54‚*\ÚÚ‡¨\Î\Íe\ÈÂ–\\Rÿ\0ƒ;*ª\nÓ‹¯](\×ş\Ä\ÑE\r\ZŸn\äBÓ\ä¿\ÄDEš\íÿ\0aSyƒ\'²\Ò\ï°j(\n[6 ÿ\0²\Ö\ç\Ê\Äl<4z\àP\í½\îªw^¿\İfÀöE¯³\Ä-P@ód‰»ó\Â\Ùp¾šˆºL\ÆMö¸\×\è7t>Æ³Eó^ñûA†¹ú§©F(†G¤\Ô{\í@_Î¡\Üh”Ù§\ê8\Z\ÜÒ®?õKº\Ô>\ïò±{›CÃ\Ü(Ø¾²\nma²me-À²2\Z(`™ÁO¨¡€œ\Ø\Û‘\0‘\ë\à`[Š†k]ıFÂ‚\n\×|\î\Ñl&«¾\ãXPe%=³\ê\ã^ \Ê\È:šu,ù·\â \æ\\>ˆD¨œ\Çûÿ\0\ç,_ú\\¿ñq‹—\\X±b\Å\Ìb\Æ\âL»Í¡ò\Zõ\"p~4\Ë\äH\ë[\Ãı‹\ìaˆÑ¤O%@20`fˆ˜;À<Ã²PfÀ—V“ŒŸSFóªı\Ø¨\\`\ïsHÏ¶U\İr€\íƒRš€’«_©W\Ä°D¨[uD=£C\ß2\Ì\Ú]¸°º\"°>\"\r‚`ó\0C€Á\Ä\ÌE¬´ ˆ\0W~	D¢ğ¥¿ò-b\î\ÒÁA@«¦`Õ¦›`–†›³\İo}G&V5¼=Â“kFh6øP*\Zô\È\n\àb}\İ\æ™h7\Ò,\Ûq¹‘¾(…ÒŒ •ƒ˜„°MÈ\Ø3\Ñu\"¼_O½‡\Ğ\ŞxoğÁ\é	\á\éx\ï*v¨[uı\í),m¬\éÙ\Ë¶(Ecƒ\ÌhÚ·L;‰‚\ÔuDT£\É^`cA«w2ğVy¹x\Z@c\ÒkÌ·%lT?“\ÜJ6[\0\îÿ\0F\\–_	“\ÅJ#®Mœ@¬.a¤r÷\í\0®²\éEY\ë\Ü;9(\Æ_QkN]@p\ÏÔ´7\"\0\è\Ó\Ö+\ÔmNóª\ÏXÖ€\ÅM»ô‰„\0…ªš^7¸*ù(Qxµ«+x„\"š\ãY\æ†rBFñu¡òÀdM\åZæ†›\ë\â<©…d\ëO3\"uM2¾>ã’…X\"\Ñ\ã\Ï\ÄM¦„k±|\Ä#$ 2§ñ\Ö\ÉuNƒ%:º~\æ©\r¨,o³Ö£mˆ°]v]\Æ•V¯\éd‰ÁÛ¢¾5ò\ÑMøIh¨2®\èñ³\âW\è•W„?\Ğ¨\îø,`¤m\è\í1qeÅŠ,b\Æ1w\ÊzŠ\ÒğY\Â4Àõ€:°®\r€õZ˜\æ;1ò\Í\Z._¸ğ½uhÿ\0Ş¥E+\Ğ/óü•´)\ÎQ:¤\ÂÀw˜jP\ÚL0/ŸD2…\ã<KP¯\Ğòÿ\0#^>\0yÿ\0°ñv‡_Á4‚Œ§b\09Z2û‹¶ú.‰A¤\ëª™$]\å€\í¸V\n²r³—¡€.D;ğŒ¥³0Wuq¯*\ê6¸,\"\ç\Ïn\Æ> Lo o\âHn\Ö\ê\à£6\ÄCT¾!.ºPK+i†`ªº\Îa˜.¥K\Õ97DBÉ®Nfl]@¸\0\å \n6iÜ¦\ÊOıp¡o8ş—\é\Ñ\'#Ô	i-^yˆ™€K¯p\0@^1~N\"qzù\Ü%M«ûi\Ù1\0\Íh\Æ\åñ½ı	,0…Óš™-Ph\Â‹$…\Ò\î\Z\ê•5†U“òOa_m\Ô<¸¸R=òF”c°y#rhK7š\×\Ì\èG\ÕMŸ\ÛBŒ\r»\çå–œ\Ù\àtd÷_ˆ\Å \Ô\Şë‡¶ [\\_L\Ê:#„t?˜¸cš;\é\í”\Z´d:C„—!\n±+–”Ç…–\ÄKì®¼3\\\Ò\'*\Â/\ÆP6›ºş\Å\×Pô\Ï\ç¼-,¬¡‘ñ\Ò\r-b\Ğa\â\Î<«ÀÀWBûô¹‚QyN¯Qõ`\0\'S\r–}±q@\ìhq\áõt‡Ã©—vm¿Œ \Ôb]\Z¯L0\å\"\ä§\ÔJ\è•\ï,lüŸùüV\ß\á‡üX¤X±s‹1ŒfW³^~&1Î®\ì\Ç\0½\n~ó(\\\áùÌ¤nz\Û40õ\ç\æuRuW\à€8¨y0\ìJÂ»Q\nh`·EC<+pü\"®P\ë§şK\ëË«—ùš\Ğyÿ\0°š¸öó\ê	\â\àQ%\ÖÜ‡‚™Q—\Øõ4Pv?\ì\Z(©ı?­%%º€¯Ì wÿ\0E²\éŸ\ä\ÊƒZ‡\âdd\ÙE\Z·»û\r–HÂ¾µó+X¶ÿ\0\ÇhFë€Š\ÅYg“ÿ\0 ‚\âÑ®‘^ı%3¸¥Y}À|\ÔAR\Æs™gX{\Ä«u†4‹O¢YÀ\ËT5‹	Ì«‘–=\Ü\'ôûš‹s\ë<?Ÿ1ÿ\0v\Ò~H‹4¶\äløõ/X\Ù\Ï1¥tı\"*\Î=Ÿ¸©¦\å-\0\r†4_mhª\"K¹Šá€¤î«« \ÒPS0N8E¨\ê\ĞöuÙ©®¿ñ¼FUğXølõñ ­\ÑøaúŠh¨-­¨q\âQş‰\Ù[c™f`ˆ&A°mø”€ø$›‚$\ÑHq[­\î*Ad3g\î*0²<\n¡»µtˆm½…¶F®;>Š\Ó\à_Ÿ!¿%A‘³n\ëµ<øe2†=Z†^\'•T{)\ê[i²Üº¥¨\é¡uÌ´\í(ª\Z‡k\Æ\×!G<=»}\Ì÷Wg\é\æ\0\"™\Ñ\İÁ\Ş$a^0\ÊJc#ÿ\0¸”‘¤ôw;¥\ØOOötŸW\æ\àöF,´õ\Î>\án\åÅ§ñf˜$qj:˜„l\â(ÿ\0ò\áş\Ïğ\Ã0Ã”X±‹—.,Ì¨UÙŸ³°£\çs\åR­ù»U\ÑaF(€\àˆÁm»€tA]™–®¶Ë¨Ü¹t(º¸\Ú&¾ƒ\ßò°X²ğ”%ûtJl|#_öo\Æ!\0R† ôN\ï_\ÖX[°\Ô:ıö¥¾“­%\\\ëi”\0?÷ˆPV\ra?P¥7\ê\Z­ª\Ê\Â0\Îoû¥!\Óÿ\0±BüŸ\ÌqŠ4;qù”P	AD\Ç/\ë\æQº\èrû []>!&«Nˆ4p3GĞˆA…\Ô4€:TL-L¬XŠVn\0£ğc}e¼Wx%Q¢¡?”gl¿z½«\æ‚€P\å9<›ñ}\"ò™\Ç£ó.Rú+‹f\Î\Ì€°«¨\"Q\é”ZqI\Å8R·,\0´¢$\çr5\Õx–‘¤\âQ¹î¸…%¶\Íq\î À—H¥–ko’™f|¿Î\Ç\Ä}kş\à8ıÃ¯x2v}\Ê#[1;¨\Ã\ê^\Êj¡|ÿ\0ç˜°+itv¸!–w\é\Â*—¯yø†(Š0\ï…^\å%¶ª‡®R>¯`/«—\ê3P*\Ä)ò,E±[¡±¼]E\áµ$\èšyQ\ßcIŠ\ì¡?öcÓ„z¢z‚¬\ÑXö,ø\\—5{²y€\ZG…„\çS³³\Ô˜\Õi>ª–\àÿ\0İ¥\Z\Ø2^›\æl\Òòt|\Ì»(¬\"l\Û:-r\æÀkøö–¡ ‡ÿ\0\â\Ë\Î?’Vs„cúÄ²6hŸŠü1¿\0ÇŸ9>#iºp_dGÆ·7\ŞH\ãe9\ÅõR#\Ñ\"Zˆ8–ÿ\0Cü_ğÁ‹‹,a\î—..bÚ®\Ò\Í\0@/Ä± L\ì„~_S˜õp{X_±\n-K\í9õ³m¤6¾Jx\Ñ\àóü\\µ!¸\n=}\Å?\ß_ßˆüzZ\ë\ßô…“¢\n+\Ç>å¦¯.\×\Ë,)\Ï\ì{\Ò\ç\ìÅ½\áÒ§’k:_\ÜC=3¢s)cĞ¸¦\0ñi¡+Ÿ¨\â,;Œ\0\Üø†MÕ¼1ˆ\Ò¸£jüÏ˜l ƒƒo¢\åb²†€\Ä\Ïà»™\ß\Ô\ÌE#İ˜BC–b/o3\0zk2\à/U\Ë)\Øa´5•°l®ƒˆ›Tõ\Äf/yZxˆc,´Xf[\ã\Ôvw¾ù¸\à\ç\0Trğ%‚9\ã\É\Ø\è\ÎG\Ü\Âú/\á\ĞN‚$Q`(T…ÄˆV\Ô?üD«\èÿ\0¸4\Ğ\ë}\ÌØ‹’=‰pÇ”\ÒV´*»GË5FK3}>\å*U·Q©f.¾Gp.vs\'C¾O“?88÷÷;%½¸{\Çx•\\\àø\Ã\æ¶‡M\Üwÿ\0³,G0\ÅıA£\Ì#\'G0R\ÍÇ\ËV¬Q\ãY\Ì\ÉŞ²Hö\Ã\îmPÚ´Y\Ò&h ¢ƒ¡u\0]W…«W¶>\É\Øa\r®\îÇ¼¢“¦)\ì*N\çR\Ö}\ÇQE‰£¢añ^\ÛGØ¤öE¶.R?)şLM\ÑòDü0zv\Î\ï7†,QS9+\æPh((F\Î\ã\Ôó¶7&K\ß\ê0J\ÔÍ”/h¤†©¡Û¯\ê$¦*ò\r¾¢\È\æ˜ò\Í\Æ\äü!+\Ü9€–\ÚzŠ\Ú\Õc\Zj¥“\Õ\Ó\è\ĞĞ‡t\ÆWR\ì\ÇÅ¤ .\ë!÷’v@7\Ø\\Qb©şğ\Ò\\ia‡ñr\ãX\'©\Ôg_`\Ã C€·¬,£]¦K0–<B\Î_ˆ!Ê¿Qg –\\&µü½K õ\Ê=ÿ\0\Ö\r’l›NÄ¢Š6\äñ\Ó\ê=}¦\é]\Ùb¹0`ö\"R ¤‰KA\ê\å€5\×.§!\0–£ªb@\Ì\Çø\\DP+µ²Š\Ù\ãO¸‡3¸ —\Í3EZóI€·J€M•„*\r=\Ö`Ä§M¶wı¨\ì«:\Ûg\ŞıVÌš_o\â,S\'iôÊ·—ş%‡‡µpq*A-g\ÇH€]k¿™;• 91¬À(µ\\¯\Ô1\0¥s\Õ1\Z\"‹ºÈƒ½¤:µ˜7O#ˆŠb6_\â$–\Ë\Ì\Ã\ëŠø|1vm±‡>Ï±\àƒY0JıGø`”¯\é\0\ÚÀWG¼°¦—ó5]–°\r¨Á½\\h‘–\nj^×¼b\İ\ë\Ì\\3i\äŠ¢_J„<^\0Q\Ş\Ã\Ômv—²¥€µ\Ô\Â	ªõ¦˜š\ßgq\á\îE\n\Ì\ê<…>\é\î\Ç\çDöÁÇª|\Çì†—\Âÿ\0\ã\r1{Å“z¼?˜€3šPùüù”\Ô3B7\Şúuˆ(Uz\êüJ U¼€¿©F\Ì)Æ©÷\noÌ‹C¢T–(·\èÂµ£wdùeg¡\ÃEz*4Uz@ğ»‡\0ñ(_„˜spao\çx”ƒÈ¯¸C?AıœÜ¢¹ÿ\0­Ç©L*ñ…¡\æ#o–R\ï‡DrK5“\æÿ\0¦`Vª´w¿¬eM´vy‚R×OC(\ÎÛ¨\ïÿ\0b\ZwWOG©á‰¼`\0\ïÿ\0·dYCT·(Rh¼˜yğú\ÏYÜ¡{?py‰¡&¿+¾%ø2\Ä~˜ZMo\ë)ûˆ¢Öšù\î* –.±\éO\Ü]\ãû}\Ë×¶|?\ÙyS½Yò‚‘+ÿ\0\ä¤\Âÿ\0\Ã8pãˆ™v\Şa\ì=±¡B^\Ë] 9Á˜¹§·Œ wùs\Å1“\áı”6¬$ƒ\á\çÔµV\röKf%\Ë\àƒP%¥\åamš?²\Â:tÓ˜\rİ”N£Ÿ\"`(:²\Ò)Î®\ë\âT¨\çxeB/\Ãó(\è\Z\Ü1Dx†¢T\Æ1½•U,\Ã*ª\ÈF–\åFW¬\Û6\r\Û\Ä ›oÀ~\ßE¼„¿•\ÄA›\\¢/#\àF2”¯¡;ºÃµ\âXt\ÎÁ¹ikUfSWT:–)\è–\Ö\ÖûDJ\énó\İ ¡³0,ÀvHŠc´£,!E+ø…Ğ¦YTñ\Ë8-{\Ü \r»;•³\ßXR\Ñby}¶wó€|\ÏÁüù\r\n\Æw™R„Àö{\Ã*5Œ³T±uÂ“aŠ\àò@\á¬\æ\à*’u‰Z§DD¾Y°\×\à˜\ê\Õ)T¼	Iöùˆ»Wˆ\Ùv¯‰ƒ@‘ú8†ò¹‰\îo\â\Î\Ğm¦\Ğvz³´\n\å\å:½3\Ú(;ƒ¿9¬[\î\Ïx™³ÀËŸ$Â =ó˜= 9™«µX\0ñú1ÀÁ|^\å(Y€\Û\Ï¨‹˜²\ïµ!€>­\0\ê%\0–Q¥ÁR\Í\à(kµÜ¤.b^õ¯©\\t°,ÌŸw…Ÿ‡\ÍC\ímG¡\Ä,”É‚|«\Ôt®tCº¿Q\ÔL\Õ%Ü¾fW¶\î\Î0DB€—·÷ù”–P»rSÎ¥\æ’‹\ÖUQ\ÔÁ41š\ç¬\0­®\ëµ;\ïòÀ”­…\î±\æhĞ¥ò2È§4š<¿\Ã(;\ìTı2û–é§±¦8‚š±öS,­:\ne\ÒD\ê§\áÒ½\Êÿ\0²?\áşËˆõb»»\Ò|\Ä\nzf–VPY¡\Ç-QĞµºû‹54|ú‰!¾CC\ãŸrPÃˆ{ı…Gœ!ñ\Ë\Üa¤\n\Ã›<b³˜Ao\äôœ²}J%Fkk\å`Š®\ë\î Àj\Ó3X²h¸\0!şL¹¤ €6Ş›üF›k\È6\á3Š\0K@|9}j\Öhµ•´	\ÅUû`d& ¨\Ç{€d\0Z¿öQ\Ö[“=hrş*2•@\è.¨î°Š®Í¡r_\ÄÁŠj£,x\ë)\ìux–%»\Z;\×Ir\È=#°ú”;uÄ [\î+¶‡=aE(El*UÃ˜Pb-2a]\å\Ş(\ä5\Ş\"Ç³(ú\Í ;1 Í‹K¦ µ€;†\ßgü¯`–¼\Íö—“²3\Öòsóª\Ë%\å\Ô\í@¬§ôˆ6Z-Ì¢*—üM†t\ÖIJ\×\Ä*İ§¨\Ûw\Ì\Ğ*pq„¼ˆf^\ÛZó©•‹\Ö¡Km*5†\å\á1ŒÁ°¶»Ä«¦¿ıRúŞ¹\ê\Ş\Î=\ãf\åXw§Ï¦\nPÊºÿ\09¿3©\Ä\Ã\ÚK\ÉÜˆ–ñ\ç«ûJ\ÚÙ‹ùùŒ`¯43À´ú˜#\à~-õZ\0>\î`­\àYõ½©¿Š€F§ü\Å©‡ôm?P:\r³\åo0@§,¾FPU~ŒD°\Ë#‚+Šyô\Ô\0\æ Ü¾\Ñt“»§\ÅK¡Fl£»\Ã\ê\ãS-¯\ZüC\Ç¤^\Öß¸A\á¾šùˆ\ê{{\Û#(†S‡¢s÷\r]Cñ¯¨ƒ\0€\áG\Ç\î]n¦S©˜  h\Û\éA3\ã%\çŸx‰[¼\éÿ\0\ä¡hº5\á\ëù„ˆ¬v%\0±]¡ú—Á^\åı–Z\Ş,|+\Ö0vg\Ù(ª\r ’\Éj\âÏ‘d[T\ê\"\r‹‚Á÷pœ»ú“\ĞJÅ¤D‹ş0¾S’‹\rtŒå£´t¼,&\í\æ\\\âø\0yş.\"¥2`>6û–şk—DÍ½´hùåƒŒ\n\Â>!fC\0weÀ¿¥‡£rˆe OĞ˜7tP]¢G©¤IÀ\Û¤	\Õ(ª\ÔNMR‡4À\0F0g”\Ö\É\ŞXˆF{BU\ÅY“](-úƒYF¯&y[0\Øuª…ò\×6\Ê\Ô\Óú~²¹\á³O\Û\Ø\ï#~½OWBº(Á\Z\Zp\Ó|¥	\nha^¢s~¸”2kµ@0öb\åN\ÑÑ€‡:iWğB\åß‰E¥\ê°)gˆ4”‡J¿™±\\tÜ§#H‹¸\r®ù=aQ\åU~\Â\Ëß† Y\Éû¨üaWp\ï‘<p™^ú\ß\ÄamÛ¹Ñ‡NQF*¸µÔ™k\n~\"[–	X±¸‚ºsˆA…p\Ö`°\ÅQs˜²ÎE.ô9”¬öa®«*´U²+\Zd´Fòôe`Y/d4z\Î\çi³©µjt\Æ}> \İMµ®\á\Z}g´\Â–\é|\Ó1Œ‚Ï”\Ù,…øƒ©\á˜Brôg¨\×8—\ËÜ…§»\Ğü0ø…‚M,X‚\Çw†óA[\ß?r\ì[œwŒ!\Â05BjªZ°Q¢†¾`@\ZE)\Ïit‹/1BòŒ±Ù³sI¢\èC\ê“\Ôº\"×²\Ú_\ØòK5\Ölı\Ù>\âM1K¶ò²|@\Ãp›o\'\Ã5\Ô\ØõpŒ(¿\èÛ©\Z*9\ä6E…+c?€\éñS*\é½+†@*¥ñ[õ(˜¦eş\Ë’dp>\Æ\"4y\éø…-\Ã]Á-ûO\n\Ñ\Z|K<…m±\ì¨\ê›.\Â~ \Ë[²m^^_\Ï]/±%JWC´|”şf\äz-?\Ô,\åŠ\Ízi…ê¸ †Z‚º,|1Æ“¡¿\ÎO¸\ÃTsV|˜ÿ\0m\"Ñ¼¦Yµ•\0ZÁ\Z1õ\Ş\ÙEƒ\ßø¸jkú\Û\îq\èZ~ˆ\'\ä¡\åo\×\Ì\Z\0€ü²\â\×\Ë	´7Bü\ÇÀ+¦ƒ\à\ÜHLx8ü\ÊX\ä\Ãm{¶‚\Ül-·MÂ‡¥°W•\édjWi‚.\Ó\ÙUƒ\àEš@x\n‰g\Ê\";¹\Ú\Ò\Îy\Ó\ËC¥\â\"Ê¦Y,óDU\îBI˜\rñ,9Ö¸ò\àÑ€–¼;ú\rpv;\å.(¹}¿‰X…ô*\à`\İsşUƒ\Ê)+K\ë^\rE6®kPA>&ı\Ğ\rõ˜*%’•V]G\Æñ\Î#Ë—©‚ˆ£$P»\å5\×\ÌEÖºQ\0\ä½\Â	r›“Á#tì„€Q\á\Ûg=¼K+ƒ¥[k\è\×yxN—VK\İu\Ù\à\ÈlØŒ”2¬cøf\Ö\Ì/+¤,,S¤¹uIc\Ş;@‚	‘»ùA\Zy\â®u s¨\n\Ëb†\Çx\Î{Kl¯rR®\ÖEsEõ\Ô†q\í5\n8–\ä^«¸+~ƒcÿ\0{\Çy\æa\Ùa;?1¾EtQñ\îY\Zğy\Ç\äò|2\á\Ş6Rğœ=˜|\æ\Êib„ğ)j;ò{‡Àjr¶Œj¦;Œ\ØV£Y`å¢¾a\Ì	›‰Œš\Å\Øú–Ah1<Q‚aø—¹«ñ\Ò(\Ñ	EˆWˆE\ßl\ï†WX˜9=ms,\ÕF\Ú#~˜‚CDüË“s,\ëÑ–FVB,\èrz!}¦go\á€\Ò&\ç‘Ÿp1\Ó÷†˜^vÇ¥“O\àü™\Ó\æ\\d\İ_À<\ÄÔ’©2=e>+‡¿˜\Ë[G\n\îjX\0ùNù‚=\Èø\ì•\Ş-ª5\n=?‡I±ó\Û\æ!WW“\Ü*\ÏS>™å¿‚-¥\ä†\\ö\'\â]$v=Á³\â_R<Ÿƒd¦§p~E’¤Œ$|	Ö—òF›²(\âN˜~\â\Õ\æ\"­\Õy\æ\rˆ[hòÁZ7—ŸPUG«Y\à\Û\Z®0½Ü¶!·Ş„«\Üoöc€u[o\ä\Ç\âsb°ÀJÛ‚òñ\n§¿\ÔB\×8\Ûn\Ó\ÆH\ÃÖ¢® «fQ*v„}²†\Ê\Zº¨Y”u‚¥\Üt¼bja\å3\"=\"&z\ä\Ä\Òfr­‚Rô\Å\Ì\ÌV\ãk˜f¶§\rğ4{\ë\Z ÿ\0Átw^‘\ŞÍ³£l½?P8\rŸ™’³5\ÖTX;÷(6·\ÒQ€+9~\â¢\rÀQõ\Ù\êe\Úø”T«Ô°–Î¡T`öˆ\">cÁ•v‚99€8F#\âœ<\Æ\í‰\î…}’\Ø/,\Â%€<1nÛœ|0oO‡˜ Štn¬|\Ï3Tax»ğx\èù—M#\Ñû”l‡\r(0‰›\í–ú+C•E`n\Ş\"U¥j\Ö\È\ã\ZJÀK¬¿´\Ó\ÕŠ˜\ß \Î@ rz18 \ZÄ¤Úo\ÌDv9‚2¬32eĞ³SE\è}ø\í\\’ü¼ü\nq\ÙzNĞ\0*Ë®\Ã\É~&^®^ûqP½ôe5k0g»†Î¬\ì7–%–\á\Í-p)ú–±¿ø\ÜÁb\í—b~&\åzS€M\Õ6÷S|8>¥&\î\íze\ã\Î\ÕbY,>e\0°\ä\"ÿ\0ˆ\Ø/¬iÿ\0¨\ÕC’À\ÌÔ‰\Z·}?À\ì±O…ı0Hq5\å†NK\Ã\'\ÅC!-°²÷yy\İÀ\Øt³$J‹`û>\Ş\æ\Éu*ğ§?™Z‡§Ÿ3œb\×/ ±=Au´§†1øfa“g\æüÀ–\nİŠ‡&^É¯pŒv\Óo[˜+`_a^\âX‡¤­iˆS,°zzö™®\Óª\İ\ê\Z[•¾Oû.Y\ì§ó*óÿ\0.-r¬ü4Á\èE\ã\îc\Åh{òõ/,³ˆ\ç\İÁJ“–¾E…\á•ç¤¢š²vÔ¡õaüX\"†r\èN …?±I‹¯ıS\n¢½+\ï‚0yiñRóz¿0^\îŠ…w*e‚\ã0Dş	h¦õJb¤#µ Ô¹\ÊÔ¶\0œ¹ˆÕƒĞ”\ÍS®Ï‚:„”kXf\âf-s-|\Ñ0Y\åU±^\á©B9\æò\àöñ\0\ÛB‹ Ê¼&\0C£G^\ëQ».}q t&1“qª\ÇyrF¸€Â…ñºZ}.^ŠÑˆ›ù\í8/H\ÔUN¬JQ§MKz\Z£¼µ5gVi@¾¤CH ¼\áu‹\Æb+:òË³7^Bl*·’©¼Ä2gp+l¹ª\èğ\ëã¤´˜«\äiòAAª²^‡;ä¹¨C€ğüó(C•Fû1‚tnU½—m\ÔQ\à\ã³\Ò…?´\Ù	\ë2^¥‹6\Ü~\"Q¢|\âq‹<\ÎA\áƒ—[™4Lƒ\äˆJ+vq°\ßYq¬Wv\ß2ôW¸\æ\"\Ùa¦ˆOEkÙ¯l÷€ò@¸zµ\ÙÇ˜\ÑË»7Î£¹ŸŠqª{\İ}±\Ş\0˜,lD\ê&\â“Àö4\Ë\rC¿$«!\Íş‹\æ1>a`û%v\Ì6®h½\æŸ\'@O\Ù|–E»_¶Tr²[\Ã1­\ç7B\ÇbO”³õF7O\r\Ë´\ä	lR3”ŒÏ”\Ô\èŠ\ÔÎšôÎ¼hQ\âõõ‘f«\ËÇ¶9\"\İ¼‡\î-\Âº±ø”g€=3„÷\çÀjûoÌ§\ç½e\Ñÿ\0²õ†_ ş1¦\ÉPŸ&/\ê=¤*Gƒ\ÃóÈ¼’¿ñ\É\èe§l}7\âe\ÍPt\ÌX7\îi€6„#¨™<Â•]kO¹J#ŠR‚R)5I\Òõø†P]\ÆF\Ü\çÿ\0{ó_v\Ñu|!`ÿ\0Ş¦\áEb\ëğB\Ìn¹^¸÷2;_p$:Xye[n8‡¾â»\r°tS	r&Áv‡C_¸•Ñƒ\î	T\'\r˜\Ğ:@	B\é\ìp%$·EZVµ\èG©¿‚\'MK88—\éE\"c\ë¦\Æ1wR¸2M›\ì…\0vZ\ÜB€p\rı˜%\Ë)\Ò$0\â¡\Ü3zu\Ä\Ïjº=\ì etÊ‡\ìrú\ï|º<\Ì\Ò\0p|E\Îa†­\ê3B\Å]`¹7ƒ‰Pò-¢8f\ĞVx[f³ÿ\0!`ˆ\n\08ƒk-sXUBô%Û¡°\n]vˆ\ío\Ò9Uš¹š\Ù<L\İ*f5\ßµ\èK\r1\Ï/IT@GB\î6¨˜/\Ä\\¿IKX¡†ú\î\ng„Q\ìığ‰ö±Ø‡Œ½<J¤¹l³@¯#\ZC¨g‘xbğP\ãı‰I*&U\Öl\Ñ?]¤\ã/N!vj\Õ¨Qš»º\"h.©[ñ^\0™ C©07Eı¢ «G\â\n\Ô*·\Ò7~1Às\Ú\nPFñ²Zªı¢Yvq&t\Åw…\ß\"\æ³#†® ¬(|õ&ğ©e¯“\Ä6G Xu\Õÿ\0r\ÈÓ“\ì•k¹^\åT\ŞO@øi…¹›\â:‹M\Õö4ÀÀf…4v\åE\Z\0 øÌ¦*¸hø™h¯%³E\Ç!ô\Êu†\î¥F/\ÃnİŠ7ñY_aöK†O†±²š@CÈ­\äLÆŒæ˜–8òĞ½DI¯[z2³g@|2w\Ù\ï\áû¹o\Ä^‘L?P­¡@\è:ø”…Hd§\Â\Ù\é‹\ã»B×ª÷¨\ÑÉµƒ\ÜI8\×]™N‰\Ï\ÜN…r\r\ë\ê23¢\á; _\ÌUQ«G{¼û›$:\È|?2\à\Ùa÷\\x\Ôº4´.¥. ª¥\âOl!pCM,\ï\ØLi\Î;ğş¢0\åy_óñ¢¸\0w•Õ¾sóÇ©{C¬‹\r®6¾Xzğ³r\ÑÂ¯–L®­yÿ\0¬\0“\Z*^™ıX6ó»óNÁÁ2R­L‚\\]c3Ay u=W\êB®`X¯\È&L\Õ\í¨è¬ºD¤ s·—ˆ…\Æa7¥+˜\"‚\î…\ÜCf\î\è/l²«l5+aAi©|hw¸\Zb™W±õ}#EMğ\à¸,r‡Oy}‘º\Ê\r\ä\Äe\ï1$´ƒ¶)\Åq¶\ÛÀ`t-\Ë†©Æ³\î%£Cx\\\â•	\Ë\â‘QrJ« u‚\Æ8–RÛ¬Ä¬	\ê@­\á\Èq\È6…]u” \Ärñcó\ZZ{ó5\Ãušù\Í\İl\Ö{\ÄU\\\Ş.\"Áo#©m`™gˆ\0+‰\ÇS¸\Ó\ä†\ÚQ Qœ\Ù4‰À\Öİ¸ôÂª”ÏŠ9\í\â4\r¤?\é2ä´±‚ƒ\n[\Ú\"ÀAA®f\Z\à]\ÖÈ¸\î’ì„€k¨n]v\ÆÛ—mx\ëXª«Ã˜Ğ½\Ùc!]#Wƒ\Î&\r\Äu³{j¤\×F¢‰Û°Æ¥\ä¹Iğ<¨\í¨„RÜ¡ˆ\×uX¦HÁ¯5‚º­r\"b\à%\âÀxø‹\ÄJ8-Ü»_ûk´vÍ&\"¬ü¡û2¦‘lfQ…\Ù\Ë\×H¬Y¶\Ñø`uk)evzC\reiÿ\0Ù”!z!\íÁôjr*º\à˜‚(\î¢\ã\Ù\0©÷Ó¿Ë¯Ur!\é¾^K˜Bc’``\ÌS3\çq&\Ô9\n¿DM©ó£\áW\Øù%Ü\ê·~:\È1#>q}?	™¸†É²ğ\×:~QyŸ\Ô\Èy%†\Ó\Ã,tZ\ï\à\Ø/Zñ\ëöE¢_W§\ÄÉ¤%/\Å\áúóQKË‚üÿ\0h³\á!{\İE\ÙjÍœ˜\Ä\ÚY8<õõ†\Õ5\ëg¨V´t¢{\ãÜ¨ñOı12¨.V£¾!\nø‰\r/%|¼A¥<D\r\ÆõtF­A\ÜÔ´q6‘.c,TW(\ê9l™\Õ¨¯\á*\ìœÄ«ªµ\Ä\Ş@ğ3‰sµWÀ: ¶d!¬\ázş\â\0ã™†¡¶·\n\Ôøµr\ï#yH\n•µ=»\íªË†X\0Šû„s\ÎÀşüA†Ò‚ö\ÂE:´Ï¡‡·06g«\î\Ñ\î(\"ô1€ƒ”_*aR‰*\Ì\Ål‚\è\à—\ËbPAª\Éx‚.c<\Ë\\¯ƒ…{\Åe»‚\ÆÔ½›rÄ°«Ã‹\Ù-l\'Yg,›˜\n]­T&\ÆP\ÅË©\ét€²ò\â6c—c¢‚\Í9£˜6HV-ÄµH\r«Ì¸Q»+¸\Ğ)L\×	¼A\"¬•J;{‹~\Åek\å3Åµ¬yx¸\ì[˜Ud\'\éZqnP\Ò\"\'Á­YZ2\Ù\ä5\ÛFöD9IÍšş\é ¶T¨\ïDqmg˜¨u€K+Šq@³Dó°\' $Uåƒ²ö¿ù;÷8Ù˜S¯“Rš¡\à\Ü4·\Â-´O\ä²-=U\0Áa½ÇŒ–\Ö#B•N\ÜE±—.²\Ö\Ôybm{x€Q\Ø+w\ç1$H\İyÒ¾<²Á¶À³\à^\Í>`9B×“\éó\Ø\Æ\Âú!§\Ì\ÔÅ³¢8fóCuğ\Ç(%y;0\ì6Ú¼b\n\"iR`\î4t|E\Ë\Äv]z–*Î“\È\Ğ\',ˆ\Ë,\íRP|\Ã]\ÂşÁ\í=aÍ¡µ˜\Új³†¾®7³-w€\àWWÿ\0\Æ-¬¯T\ÅR_šşD©\ÏU>0ÀÈ¼{–X^\çA\ÓñO\ÜböÃ‡Ş™RCi“\ä\Óñ¥>ª·l\áô\Ã\ê\Ç?2ªi\Î\ì=>=\Ã\èŠRÍŸqKN)\nzvD\0”\äO\Ç)+èŒ¥b‡\Ô\Ó)Cÿ\0ƒ‰•p½ş>aˆ-œ/÷µ\æ $ º%®„¤Šİ¼ÿ\0\ÈL\0:¤I\É\İ×©Àƒ˜³@€€Áš[_2\ÍüŠ^»v8¸„u¹AX†(˜#!³‰\ÂV\Ô@–@·¡n\ãJQ,úD\Â\Ã\äw‹iŒG¢ƒŠ8÷=x¸*\Énš`¢¹Z’\î\İh¡\ÓX5L‘@\Ö_úÕŒz\Ú3…\èß–ª\åCõ\r\×¨8j\Ş\ï¹PbÇ˜2+ğˆY85Ó¤\Ó‚V\à6²\\\0µc76…­½AHMc.¢£ÁU\Z´\é-DW<L\0\Ş%¬\å9Ut\"f\İ\â\Z\Ó`\Zb‚‚½Jt8q£D\éP\r³DxbT€nª\rî”½˜\"=…ˆ·^t¯ˆÑ–Œ×¸VT`3›óÿ\0µ\0\Æ\é²\ï—ÿ\0 Pñ\Z\áOI3°\È\áo€:\r=eõ\Ğ\"°{»f¯ES\0\êş«%cÃ˜ôvT\r®(ğ`ı©’±yOı\ÌƒÂ†,­øŠe,\á‹Ey¹a‘l$\Z[Ğ¡­@l\Ôm<©x\âZ9\Ì\"qµ(ñ3\Ó^±¹e\à\Z\ÔB«\ìdˆ-\åMŸòQ´%÷±\ïÜƒ\r\Ï(p]4u µAtY:Ø±\ÜL\Ò=J\é,v\â^~–v%PP-A\Ù\Û\'ˆm:Àµ}‡\É\éŠ½P¿\Èñ\n\ÃZG˜\Ó6aµ\Ü\è÷+ \â\å?	\ŞV.¨F(4ºO3’~†ºŠ£\ÜfşÀş%wPúD¯ƒKX¦\ĞY\î\ã\îM\ÌûœÁ\Ñ@øH\nßŒ‡\Ú\Ì9  öƒ,\ÇA=5f\è!ûKà§„ò\Ô\Öø2\Ü\ÓP\ÇÎ˜\"\È\Ö\ÏcU\ê¥k\Ş\'\Ñ>*U±òŸ³~®-e‚.=:…\ÎT™‰mx*\î¨{=\ËNŸJ/¬Dá¡ƒ²\ï\æX.h°ÿ\0\ÉØ¡À¯\Ô\Ï8\é\ÇÎ¾\âZ)#\æ\Zò>8%¸Ã…Zÿ\0÷Xr\Ï,*y¶`;°UybQR\ÒÀ\Î\İb\ĞC,¨¸;ÀYWf!\ç\Ü\'R­² \ëYa¢´m4  \âP¬.ŸHh\Õ4¨!r	ŒZwqE§¯,N‚­–\æò\éyx%P‚ıe`\Ğ\â/°«qË¿ˆ\Ü¡\Õo€µ\ìJ§™\ÉAÊ®K_!\ÄWZ\ä*C‹wc\Å\Ä.»/N\èj\â\ì¢\ëˆ;WÕ˜\ËÓ­D`5{Ñ¨L8bfÚMdõ™m@:ŸH¤K#\Õl©·n\åY®\Øb)m¼|Ã…*®F3­\ÌDX© fKµ\Úº¾²\èA‹º‚K\È&~Ì°`v	«„m\ØŒ\á\Ş ,•Ù¸¬ôº¨P\ÙT\\\È\\¥«zf\Ì70<”4{GG\ÚF²<\ã¹L,Rv\Ğ\Éu¾N\ä­\Û£û2$bö»\å\Ô^\èú‚¯fE\×H®„¢óˆ°\"Z±\Ôı\ÌÁ\Ç\âb¶«\î^j‡`fCXI`pü\ÄRúT\ë­rTO¦¥…	\êDdŒY\Ë5‹ˆú\íAPÛ¼²w#§Dó+\ãN¹€\0§	\0røˆ…\Ş1\nV\Ã\Ôó\ÃÖ“\Ôv»“«©\á\Ì\Ã,«\éfû”ùƒf\Ï×¼?:Cc¢~\Z÷,X#4«ˆ€7™\áƒ’‘=,úa…¨¤\ï\Ö)\æ\ã\É \Ú\ëÉ²YI\ÖñYŠºb\Ôl/cP\ÊjÈ±)÷!ÿ\0&X†2,\ï\á9+ô@i^\ÉŠ4\à¬h¼\Ğ\ß\ã#\n\n\rQ?œõ5µS\á—jµ_±Ÿ˜\\\Ñ_¥_ˆ³ª_!ı#\ä#†ÿ\0\Ø\Ì+¢+\ÃkÊ¾<\×ö \äß®\ÄX‹ŒnŸ—»ˆQ`½\éñ—p°z1á˜‚W\Û\êÿ\0-\"-\ä¿\Ì4ı4Pû2{…±}\é(8Wª\"ò<.c\ZEQ\ZŸ*…\ÔA¥È­J7•–e­}°y„`ì›‰§	H\Êwwh\Z\Ûw‹Y¼3©\ĞDA=ÁR\Ë]\íø–\ïÊªBó•—b\Ê\á™\rP\Æıp:@\Î\éñ5c6Â…‰Æ±\Í:\í¨¡l-¤\Û260W\rô£\á\è½\íø€\â\Ú}\Ú\Ë\Û59·@€\0­¥Õ±„¨Ä¡m\êPU\ër›Iµu…E¿ı÷09m\ĞD9\r\æ` %\ÕV`¨ÉšÄ¨»£ QliZ\ë¹}…b\ÇJ9\Ó.\î3]y€m¦‘u¼Ávuˆò\ï2*‡0n\\¥‘Ã‚÷0		«xŠy\ŞG\"‹ies\æ*Ò¬\rñ\Zf\ÃY\â?1%˜\çKÖºÅ±\à\nO\'\é\âBWK]oCc\Üe÷Î‚Ç¯l\Í=`\Å8¡‚¿’‚\Ê\"\\9ü0r\ÍqqFH”l‹\ë\Ú)\nCHşH\Ê&\ËÁªn»öƒZA÷+¶\â=¼KYô\\Dk³=˜šÅ°<:Y*\rl\Î]²‡­¬\æŠ*\Ûn\á`.½&\Ğv\ÔÉŒ»\Ü5Šª\è*\á\0`\rv\í*\ê-i\äet·Š\İK\íIT„ñM?$]YAº	¯~˜\Ø\Ü;Ay^<?1—jQ\0\îd;6J+Ty\É\Ü\ÄkX0¬¹O\Ü|S¬\Ñ;;ŠŒllpß©˜a\"y\"õmº÷\Ã\0—4\Åî°£sç¤©´s’¸~?ıRñH\í\ØòB^\ßR*}¬Q\î‰\Ğ1Ÿ\áG¿\é\ì\ëµ……Ÿ}bVL¥-{\é\ì™@e\rNÍ£,¹\ë”=\ÊDI–YsşF‹@\ÓE\Ì@°+/ö‰—\'‚„ñAl¥ˆ¸_<?S.¹†\çÓ‡\Ù\îZxf\Í~­Lô!J\\\Â5½cV¨Wyğ¸}2ğA«FI”7Ö·×š\äúƒY¨sˆN\Å\æd\Ò÷)Wwe]õÀM\Äh¤UñuG\Ì1\Ò¡‰½\Ø\Z¶Ğª‰YƒlF>e\\¼v:¬°*²¼°j\È\ï0w\ç\á\â6„ÛŒ°@•\Îqò-Y¯ye_\Ò\Ş\Ğ\0)˜ ÿ\0\Ø\êÀ\"¹A£Y|½\ÖZ”V\è\ÉC\Êñ2@®…\Ø\0;\n‚\Ğ\ËØŠS£o6ô‰\Ò,\à\ïDc¤¢\Éu¦±\rdVŒÁ3`\Ş\rõ”ƒj\Â\Ğ+«iE£´b\ä/i`\ÈN-– ›\Ï\n…<\ÜhL¬(V¾ CGY\Ò_B&¬|L¶+}	½õ`Ú\çB;Ê…+\Ö S4heŠ3}!±Ux\í­jS\ÃY	h\n])Š¨®\År÷3½e*ÿ\0·\Ú`{J`+%\İ\"W•gŠ².±-ª2\á0š\Â0B\"ˆq\ä˜OYa€m«³\î¨/ÂµbQ—\Äƒ¨\Ş[Hô\ÑË´},ø­A‘(\ê1˜X\\‘±`\æJO„]\Î\Ñ\âhY\ïR¨¥]LÄ…n\âJk§0ÀVüC\\¼:\ÆÌ•\n¸¨\ÆÄ®\Ñ\æÂ¶\Õ\Ü\Ê$cu«LÌ¦šö M\Í>ˆ­\n5Ue~¥\\\\@bº#²Z9\Ï\Ğko\ìG*Bi\î•]fW\Ø\r\'dß’¼J|–€®\ã€>2\Ü•g±6=™yD9Fv\Z˜(\à€\0\0Ppı?\à9mRF\â\Ú\ÈÊ¶~s\ßş÷@­ª”ñ+ “„²	C² €Ÿ³\é;„ı¸Š»Àü]F\Íb¦Z	¶KÙ¯ˆñDª,ğÜ¨³¼¶vk½uŠN\Úz¸±6\r>ÃˆQ@P<ù±üÀ\Õ>\n\0ğšú „{:ü1É„\ìÒ½\ìùù™†óx=\á\ï9«4ú}æ´™¶lşC€§wÿ\0|À\ìª©;¬ÁËšó\ÍøˆŸûm²˜S\Ä¯œL2ò‹Q]Y”\r«\â­œ£e\n”\"ã˜Š¨GV\\NŠ\á.\Üm!y‘\ï˜a-\"]\ÍF²uª\ÇAo}\ÅÁr-^Ø€+µyˆn‰Ö­\Óòñ3@•^”Jü(aº\Õ~J\éP	•x¢,\Óel2x0%³hg\ÒÀy¸Bü*£†\ä\ê`‡f•’…£+zÅ¡ZËœFª2z\Z‹’.º\æ\0T®²™P%‹}\ËÁª¸°*–/ˆª‚\Ó,û”\'E\Ê<\Ü2¼[ˆ\0‰u–¡˜]_€\Ó\í¸f!\èÃ•7Á§¼\ä‡\î0^ea®³%t;­³j÷0°ğn1B \íò=õ‰;0ş«L\n\Ş\Â-­\Õ\îg™@×­!I²c<ğp\ç];$)Yf\Ë\ÅL\"\èTv\"O¨({©¡º¿‰I\Ô÷ı—,š&P/¸YDD¬nK\ÌlZ®±:Ÿˆ\ËK¾\Ø\îK_7,Í¶n\ácu]` \Û\Öv´\Ú=®\â¶ú§%\ã\ÌlXFË¯EÁ4^ \İE­iNrt€-|%µ@·±\Ã•‚Ù¯Ç¼±zn¡v\Å¶|Ç›A\Ü,±\ëHQ\Ú,š¡X÷÷Y`?1Ë¹gˆY¹\Ä\áŸ$CDHİ¸]\ìcLq<»ş\Âa:\Å(~\á-r¨·š‡¶\î\Z\êA\Å:m¯ ®Y¼jr†w\nB+¶-}Å€Î¹øFXº®„?3<>2.R:Bß \Î~FX\Ìpıƒõ3º[\İPó˜Û€¦+sb¶?©Fu\ÊlGP‘üò6ğ\â\äö¶½#ğ\ã\Ô\ë†\Ñú?ŸH5=™€–\ì8A­{õ@^k,fw¬B‡‘>¤Ò½A\Ñl£Lú\ÆTY¢mS•m‹e{@{¨«5|UD­yóu§\æ²\Âd=¸ \ç\â\0}h½\â\n–3\æS¡G`:Ä”ÀKLõ£•u:F²2P\Ñ\ç\0hòüq|§IB³*nû«‹\n\ÇLsG€”\\\r©v|\\T8q¾|\Ô(\å®\á·xE©\Ğ\Î[Z\ÛDUò\Ğ.\ã\"Ê¹e&¸„\Íÿ\0&9b/8¦=*P³`j\Ğ.\"q‹y™*Å¢\ãj\à%\r\İ\çaÒ¸@»ˆuw¨€Vj!v7\Şz 	b(öc\Ê\Ù\Ş(\ï½Mû§5(°«×™ x\ï:€\ÇA(t\æ Z»®‘06_\n³x=N\ä\0µµ®÷+\nuwó2 ¢¿¡l\ìùÔ±‚®Á>\Zxƒ\Æ9ô/«\ìEFn¬Å§G\â\â\ê_&\Ö ¥L\×IM`\à‹u\\«\ê³l\ë\æ	¡±OhQ\'ºk¯¨.«º7ÿ\0c“ZÜ¡zcQ\Ówª{1%‡=ø‰V`op\0Éƒq_½Ä£.¡Šò_\Æ\Ñ\0F{\"ƒñUÄ€\Û(–—cp{\îYZW@\îXX^Q…¶,¹l¨\Õ¶\"•¢S±ƒxRóV3¨x	OL¡\0\àvs\Ş7¯\Ğğ\á\ï\r0¹_K;ömd÷aU\íE—\å\n\Éû:?r\Ğa\Ô\í2„Xi®\ä$¥·FNÿ\0Ä«µš©~¥ó”Z ]Ày\n6şy\"KIÍŸO1¬2\àQA\ïd !Ò°Æ¨‘òi#M0ù?r\Ñ\Õ\r\î\\\0;P\ÇR\ísG\ëd\Ò@6\è-Ÿ\Ó°™§õ’Z«/H·lE>e#¸p—l6}†˜L0\æ¯\Ã%\Õ\Ã,[\æ©Õ‚\×\ÛD@a\à\r¬J´ò&0–\ås3\Êo\Ôñ0fxe¦ˆWc²/[TYo©\n¸†µ4\rÌµ\Ò\å\æY¬.o¥U\Ô-T¬šm\í\Ò\\¤­\ßC»%„0\Ñ\Æ9\ĞR5d\äX:?}UcJ\Ğ€W\Ä&³\ZU\íÅŠ»½ ÷‘T\Ğs \àÀ»>\Ç\è ’°^\×\ê ‹ V³V\Û7\ÑlÍ¯°ü,\rsn\ÄTC>MÁ•\Ğqs	ª”=”Ks©[8«–±m°\ZdˆWEx\ÌªK\"šñ›µ\à€\0\í\é¸*\Òybv(Àñ(§4\ænmpY\Îâ––²\ËX§)3»œK\çP\Ø\0o¼£\çSj¿\nJ \"¦\Û\é+†NcÀcttù\í2+…ha2@À½_-1\Ñ\Øub@Ó¢‚6e\Ê^M¼F·{\ĞrÃ£@ûô‚¬;·A\Ô5}‡ó-‹\rKÀ5f˜ŠŠ9­•øÃ¤÷\ÍÀ	–a9Š\04?1\\u\ÃQg¤Y#\å,i\ÔRú;j\ê!¼],ó\Ù\ÒP\æ\Ê\æ)£—A\àö\æ\nP\ÅfP²»*XMysW¶¬‚.\Å\Â©\Ñx}J\ç•ñ\n½L\×\Ì\Ù-\n\ÊQ\Ñ9ğ\Ä\Ü\ÙR“»ğ×ˆ\Ñj\Ş3Ã§’7uf¾f,¶\Õ\Ï\ÊATC`<rw.\Z\"\Ô$DÀ\Ñy™`Ü©/\â ²4”¿ñ¨İºÁ\é(A2@U\î/5)6ƒĞˆ^¤$Ú®¨\Ú.\0+ \Ä5\×^AiÛ¯ˆVps‚=\ÈF€t?óÿ\0\'W^\ëû\Z\Ù¨\×Ur¨W“ˆµ}^~a@\\.¯³\Ã*\0rs\éÔ¶´:d|Ju˜\Ï\ÉËˆ&šÊ‘ŒòQ†’{\à…-†¡\Ê\Êôš€P¶j†ÿ\0‚	X}\î¡\" %‚Š\É\ĞE‹a­=i\Å\Æ\0©ux	˜;›4=Ä­šØŠÂŒPUˆJ\Î^\ÒüFo+Á1\àAs\Êú]\ç)_r¬˜\'&\ìöeü‰İ—\îŒ\Ã c\Êô…ˆ6´t—ªS•„!\ÍpY³»Q˜g\â\â\ËD7\æ–\Ô<GÀZ^W¬PaK\ßõ\0yKS‹W\Ú!Aa[–\"«ñ×G•6jZd\Ã”e§=aU:¨5\ÄÄ³\"ò2Á§¶ \Z\Ü\ndR6¶c\êŠwq2K\â\ãYõ,i‰D‡\Ì\Ğ\Ç\Ë8\×,t7ÛŠ—Lf1,\á¬‚°\àó,\ÌÑ‹\ÂEh¼€f…ŒXô}\åhK:$R› \î\Å\èäŒ\ã”\Ë{£uzv|q:ux^¤Nt¬4ó\0Y-6µ¨\ÅKš(÷{n£\0y€²´ª€…r.ù?¤	ö2¤*jxˆ\ÖÌ¦ò:A0b\ÏH¶mo\ê0´÷Ô¢\Ğg‹\ÜÁ ó[!\ãE\âT6€pc@Èµw\nÆ£·2™\Ø\â L%\Ì\ÕY€\Ø\èb\Âp:a–[”t\\¢U\ZhA¦ğ’\Ö\nuM C³¬b;H?„‡À?°\î}D@\\§KO·\ÉK\Ä\";*\×\×E•EZa_·™E¢Oúr@äš¢`\ï;#Pó¼%391}û2e2À{Ÿ\ÒVô´;ş@s­d2|qõ\0[]«\âb«˜A™Ÿ,]K&a°İ¬øa·¸y8„\rÅœù%\"ò``\Ö‘¸ˆ ×£-œóÁ\Ú\ç@¸\\B¬s¡\Üw\"’²öFÀC^ˆŸ\âT\0\ÇÚš\ë§9Ÿ’c†37†úÍ¦8c$¶\Ù\ã::F´ø(4Y‰óœ¼añ\0**6Ë™åœ¿e\âƒ»\Z¬NF\ÕKy€\0³C\ämo\Ù5x…Ta×–lFş¹£\Äbµ0M\Şa ‚´—\Ì\Ä(b6™\æjóûœ¿\ìo\ëü<øf\ßG˜GO˜q6|~§\íŸzrùœüÀq\ãı›K\î3g\Ä\ÃÜ‰\ß\ÄcO–G\'4\Ì\å\æd\ÌÚ®6|&¯\Ì-\Ëa‰m\éù„pµ¹19˜\ëSU\ÏiÜ¡¬q58!ø#6+—ó>\â}©§¨İ“C6#\'fş¢sb¦ôŸj `V!i7:4Ás¾²l\áÁÃ˜KÃ˜µ\ÇI¼\Ü\Ş\'œn«=q\ÌRk#\rbõ\Ó((1\ÒøjA\äs3ç¯·Dßº\Z+ úDš\Ì\×\É>“pvE `\ì¸  áš‰¾“X\É\ZN†\'\ì¬\Ë\ïÆ€)½\Â=\íP¢±û”6Gø&5?ÿ\Ä\0 \0\0\0\0\0\0\0 0ÿ\Ú\0\0ñ?‹ô`\Ê5«n\íA,ªğñğş~m	[²N¨l\Çúœ\í“3k)G™ëˆÂ€Ä‹t\à\åU1\Ëö22zõGf\Ğu\Ê>\Ş>\İá‘\ì\É\é‹9KùœŒ\Ù9\ÏôE9c“ê²˜×œ\Ó\"GPf\İÑ›$MŒ£\åù^1Ù®÷:İŸÃŠ\Êód’!Àˆ˜\åù#lpoøq3^\èJD‰-\Øõ(\Õ^‡\Í\×-\Ó¡•\ä¶u-Á½G\nTˆÊœ¿+D¯\âü¨²:%dr\ìE\Ö5\í\Úk†­ŸL“sU,‹rd“\ÓCf¨\ë\æF‰x„m0z\ë«\Çl‘<\Ék!ùóø±cT$¯!ø»–\îï«½’œ¥94j‚ŒH\åG\"øÄ‹\á\ï2\ÖÁ\ÖÁ\ÂWd¯Œ†:C©e\åUU\ÜdE$\Ë\Îy\ç§n\ÉBR‘8\ÂP!Pjdd\àE\Z\Æ,p/ô%cÁ‰|¯\Ê\èu×‰¤7CA¶Dyc\ÉjŒ„e³®\ÙI‰¹,Ku\É\ÉE\0F¼\å\çù~<	³ô\Ä\í\ßş—\èvH@\×*\Ù\rY)¯§wš¡»b\İr\Ê[\'²R\Ön42\×‹›#Q„òQ¥0Ÿ´vCD~Så\Ã)‡\åù£1–¶<‘uñı\r2\×TŸ\ãøœù¥±\Å\í—l¥)²tO|a\äÈº¤ŒC#/›\å\×ğk\ĞD‹7o\è\0a•Le¥‡9\×DˆëŒˆÃ„s¿\Óö\×õ~\ÓÖ™Ä‰,´’Í‘\ÖJ25\ÊQc‘:ùQ×¤\Ñ“Sn\Æ^˜ÀUSY§ü\ç\Ìj–·G\æk\à\×şoòü\Ì$¦NRŸZ\Íy¶\Z\Ù\Ã\\¶A\ÈIcŞ¸\Ç\æ\È|ÿ\0‘lİŒü®kš/«\Æ \ç±¼\Ş\î7œ¢ƒXó‚\Ş\É\ìNRÈ•²—\"\Æ2O\Î:uüg\Ç˜\×\È\'<ó\Ï5N]­ˆ‰\åb\Çóu~Á\Ğ\èüukl\Ã/¨ı\Ê,·m^FAa\×\×†?óuèª¯k-mmõñl\0À\n£¿L»H§,?/\ÈÔ“wıRp\ëøµÿ\0Í\Å\Í-ûww\êRR\"9Ub#wf%U)Z³v“g÷ı D+!«_ü\İu#$Bı‹¿\á))şDG(<2\ìn\Ùv\Ïd?Sq³¯§t\æF¡¢óõ\Î>Pªª¼¼¿j©9§-U\\ª¬6›\r†Î\à\Ş\r­\àú\ç\Óô±‡\Éù\Úşl_.\Ü‹\éŸ]»®\ç\èÿ\0GúO§ı/\ÒıFùı2\Ş\î\'\r\Û~\r|\Z\Ò:\Ï\ÄcÜŠ/±ş_1¯¶L‡¦l™C/Å®gS«ñü‡G\àhü]?“§òü]Ÿ\æ\Âq9\0\Édp\Ç!†92G‘Å‹’ò^K?Äµ\ÆU\'*ªª¹\çx\ç*‘Ê¤§%€\Z\" H\n@È•T”˜”‰üU[—û8ø\ã8ø\0	”^V]b89^VS5wwu\Ï5—\×]]ß¯¯8ø`0L\0¾²²\ÙWğyn»s®®ú\ë°b—ww—œó\Íg_§]*¸¸ø DdJƒ\ÖTeõ\×v\ìvşŸ¤g)wú›\r‘•›?NÍtÏ¬¤»»»¿\\bÁ‡)}ugŸ¡\"p<e–\Í\Ø\Í\Ù\Ò\ÅdË®‰\Æ[ºdH\Û\â’&l$\å’\'\İ\Ò]\İ\İİªÛŒyYø¶n+>º\é\ê7Ob\Ê\î\ïVÉ›º\ê\ÉX\âõ\Ñ?\ÒØ¹d‰›.«.\î\î\Ö\î\ìo.[:¶v\Èd\ÚÀ“¯7HV\Æ\ïF\É\ßWq\Ølb^Y°Ù‰D‰&I8b\å\İ\İ\Ş]»,\ÆlŒ’£z\ã¿fœQ»µX\Î\ÂqË»rõ\îG”»\ë£a:cC\Ñ!`\êG.\îÌ–Ş£Œ•q‘—\ÒŞ˜Nk».\ír\îşm»õ£Yw—zş–2\ÊN\Éõ\Ñ3q$§n\È\â:t\íR6¸½]ªÙ‘!£fˆ\ï]ûyÖŸF»O-òì–¿¦Zd\Ó»¼Œ}±b–C ¼Uñ‘‹yª;&ºI7wwxy«`\í„Ì¼»Ë»†\Èo\Ùó“\ár\0¬0zµUrÖ­\\¬¼\Õ\ß8D¿“Ë±¿“n\Íc³_·w†\n\ë\ŞJz\r¬$\rõ}6\î\îò\Ü^Ö®\ï.£’s\å\Ñ+µ¼¿c-{>:¶n\Õ\å\İùcƒ¡\'¬\Ûùâ‰€–„”\Ã:»Ë»Ë»\Óİ°\Íd¥\ãUe\ßÏ¶súu\èİ»W¡\å\İ\İ\ÆQ\ŞÁ‰²Zò­I³Œs©¢b«‰Zõ®\ÉÖ¸n’¯Š·ÉŸ6\Ö;5\éÙ·^]ÿ\0•C„\å«?F\n*¦2PŒ¬Î™e\Ü#\Û!ùÏ¥¿\ê\ß4\ì‘ô\ÃD£+/\ã\\ù–±`\çBD‹ÿ\Ä\01\0\0\0\0\0\0!1A Qa\"02q‘¡±@BğCPS\áñÿ\Ú\0?\0ûn.Ğ›´w*d¢­m£oµŸöD¸?j¼;#\Ü\ÖD’ÁY[‘‹¶­R¿dc\Z[˜v\èÏ•\á	D±-È‰\àÀ\Ø\ÛÀ·b[xZ\Õ=Š\ß\îI|¡MSÁ(ºdZµ¹\Ú\ëtBNÓ¡I<”W\Û\Éu6ø;³À¡™l…)6¹m³ğ°²\Ç\'rò¥H\ÉCB¶\Ñ–\ëJÏ…=‰j˜\Ïz¶­”r\ÖV=–\ÃN\ÑÜ¬cE\âB{\r}ª\É9ÁF(}(¤\Ø\æûı\Å¶:¥…\åJÙ‹-Ù“#’t†4Z\Zwf4Áõ^–-mhÆµ^>ôhT¸À\ë¼3µ\Ú%(\ãqó­º9^/F\Õ\Ğæ­´”\ZrvF*£„t\áqYfw\Ë\Ü\\²7\É\Û\ØMĞ¸C“Ü¦P“À÷cT\\ukbğü…Æ‹\ÆÇ£=\nXd¡\ÑÈ\çk´\Î\ìZ˜\Æ1³¦¹ş•²Ø›WX\"ªRwCUJ¥+E;Cj†õi\r«e»f²‡-˜Ü¬¶\"+b‹V‹U­¢‹o&†5ö‘\ä‹;w\Êó¥”^Ì”p\Å(\Ú\Ü{\rh\Ç\à\ê‰I\Ò^Y\Û\Ø*Cyb\ä^M\àIP–Ã”t¶\ÛeIgD\Ğ\ã#öv;Bjü3o\É3\Ò\è5±%À\ÊÇ‚~2N\ÑŞ­á’M\Ù¢in8ºz_Ÿl“«R=\ÒTB.›foó£‘N…²W\Ë\Û\Ê‡Ú“È‘\İôqvw1L\íÁz\ØÖ©‹\ÛD÷‘¹\Ób{2\\[¡b“¦\è’vö[ğ«ü*V÷%m7kÅŒz;Á9Fº‘t°¶Á›C“¶P…¢M´wH·Cxb[‹\ÑÜ©‰\á2-\nµè¤©­–\ëV‹ğOFH\Æ5±8«c[‰ò\'°\ë\Ó&¸\Z\İ{£¦÷D\ÄR±5hi\îKx»£W‘[oƒºW\á\\\Z&\'°úkñ\ÇÀ\åKƒ¹\ÛÑ±±Gv$\é\r`µF]VJt\ËG\ÕLp’ôôi6†\ÖDİ—‡¾ŠC<;p1\É\ÒD¤­ò*¶\È\Ç4%Àµ½È¾IlI+(ƒn\Ñ¢®Ï‘rz(;B’§\Å\Ş\è’\É!\ìK\Ñ/LPW6}=«a<‘\\\Épp\È\É\Ò;¤8»eÊ‹\É\ÛE\ä\ím\Ë#kµ\îÒ–t÷§²,kbLœ…¼™l´ş¬]‘-X\Ç\àÚ«$¶$K‘­í„­Iª\Ãqi\î4>‰\"^\Él\ÙÚªHW	\×\êJ;\ìR·È‹\äKağÌ¶\\˜\ã&)F\ÇbœhP\à\à\îT4©\rW²÷8=\r<”©xGR_›D}\n&.Ä¸lkdHow\äş\Â#\Ê:ot@\é¾I^\Ìkf7»\Êg\ÓW±\r\ÛgN°\ÈË’/’>\Èr\Ù\ÃgMb¿£nˆ¾®X%j\Ùi—hjV;\Ç%®\Ö4\éc»#XE\áŠ[lv¬’\à\ê\Ïd7»>\Ş(Å±.D¶$I\îõc\Õ1-´¡{\âc\á²W–5\Ë$¶\Ñ5\é’\å\"÷D}Ø‹U\Èğ$Îœ²ÎŠGM4\Ó:k’\rĞ’¤E·gH_ô¯\İJm2W—\È\ë~O®˜¢\éò8IQY‰\İ×¸\à\ìSGk³\È\È|3¨\Ş£Ì°G–B\"Bô5°\Şş+T-¡ú…¥ˆ^„\'\Èølr\äh—¢D¸$I\n+(up%–ò\É[hıuTw«j\İÄ·-‹kõ-5\Ê;’kƒ¹w#¾9\Ü\íU\"¡5L{ÅYl¬œ\×Ô¨ıL‡MR^Lz¡j\Ç\âôz¿°\É[½‡\èöˆ¾ú\"¶#vFòGĞ¸G\Çö{CXHPŞ—\ê\È%K‚R\Ëf/ôf\ë\ŞP\î\×\îv»[”+µ\Ë¡ÕR¯\Ôÿ\0\äwú(»Kù+ûlcö|ù½¯¹ò?cö1Ÿ#\å”\é´2^‰®	z$ø)\nKµ<\ì\àKª\àäœŸÒ¬œ³&‘Ó†ù#Ê«G\ì~Ï’¹cŠ°üYñö}~‡\è~‡\è~˜ı\rlˆM©I[=¯\è_ø„\Ä\Ï\ÃM\Ù>£¶Ä´œÿ\0*³«-\Õ~\ä#ù²t\ã•R¤‡ö\Øõlc,~õ~ƒ\àc\ÕD}‘öE+l‹ÙˆCÑ±Œt1Ö—¦ui¸\Ãù¼³«=•~¢J\æÿ\0ƒ¥\r‘Ht1\íVŒg\Éò\Êö/“õ\Ün¾Yuò\Ì7óE[ôZUygsip8ô\Ôó’J·\É.õ‘ş#ŠwHœº5„J2¤@Éœ-Ò¢7‘{1‰2K–I<²Kf‰\â¨~†m®4ú´—vv:sv\ÑªŠ­hÁ\Å\ĞıN\ÕôuY:\Î\ä‰2D½Œ¬¼2MŒuC»D	7‘ÿ\0ƒY^\ì\Û\àª\Î\ÎĞ©¯n\Åo\äRI>6¶\â\í\í\à\îi·”}]\ëq)w-Ê—ruB¼¡§^-0R\Ó-0R\Ó+\\±IŞ›i0`ÁHÇƒ‹t6’\çL\è…\â„\">ˆú\"³ö\ï:s\à–›kƒ	iƒ\Zek3zm£­iø²†X¿ö|D=}ô¯zµ\à˜\ro\â„|Œıh…ÿ\0H£\Ğ\Æ!\"ö‡¢÷ğ·\á~UªÑ}˜ú\á’öK\ĞùB\äBû\è´Kq½\Ş\ìK\Ã\Ğ\Ş\âZ-\Â+õ£\äeº\ZÍœl>t\î8G±=\ÅV&Z–\Â{‰˜\×\Ü^ˆ˜ı’(ö/‰=\Ş\ìKoÀ\Ş\âZò.;ceE\È\Å±¬;;•¢²¶~^KV³ş‰\í¹[\è\Ğ\Ş\âx)F{Ñ¡ı\ä\"Olù˜–\Ş^†÷K\ÛD¶-\Û0QyfhíŠ‰Á\ìÆŒ\í–vegu\É\Úş<Zvˆ\ËşGV²„ğ˜\âó­l\Å\É\ÏòPôô5È\èOaŒğ’\Øoq#\Ñ\Ë/N5r•!B6ù+—Ÿt{^\ëüpö{?Cƒ¦1è\Ó!\ÔÄ•2I{B–WğÆ·ÁúŸp8\ì\'ù—ğ&ğ\ì­ğ>2VŒb{‰\ì7±$?³\ïT¶%!#Ö­\ìW‹‚\Ê\Ë-ö®Ø¹²ó«\Ñpi¢=Xü?ô\Ï\áu?f8J‹G¬¡Ÿ[á“‚¦­\n_•ÿ\0#‹¦B[‹I!K-Qİ³Oı8BÕ®D÷D^\Ì|\ro\æ–Ä§¾\Â_\'±±ĞØ—s·²c\Ü[;:j?eF]¯f~\"ùB\êÇ¶[£µ\ÓƒÑ8yGOª®.™8a\å–\Ï>˜\â\é\àùşO¬¤I:y!,\ìÇºÈ¶xE\Æ\Ê\Û«\Ùº¡=™%Æ‰m’S\Âbù¿AG¼Œ¡±!j\Ç\'HQJ(\î—j\Ù\Óıé¿´ú‘¤òıH‹¯\å\r:a§h¬L„\×t(bJ\ÑşWO\Ó%Lù=±±\Ö\ãÿ\0\Ä5”\Ç\Éò¬C\çL\ÇBc[2Bd7ˆ‰<ä·,i\ï[ñq]Õ‘\Â\r½\Ë:nLo\Ã>\è\á$Ğšµ”\ÇĞ¯\Ø]h÷\Ç~~Óƒ´\È\ÍT¿ú\Ì	Cé’µé‘—\å\ß\Ğ\â\é\èşGóü«\é\Èı\ré‹ò+\È\Ò2q£²÷8\Æ\ÅÎ¶-\Ò\ÎÅ³ºT¶Cœ’GlTQ’\Ìx=^Š¿_°º‘q{£<‘šï‡ƒ\Õ¬¡\Ñ²¯ÿ\0I,\Ç(ké’´)fö\Z\ßF‡T¨\í\Ë\ç‹¶\Û\"ö_Ğ›ÅŠ\é‘{q~‡¡\ì£\ä“\ä\ÎE\ìô=yÑ¼Š¬\ì7\Ò\Ûl¹W¯\åZ4\ín.¤T’\Éø‘\îK(}9gb\×|vñOE£\Èö–Hõÿ\0d¡’\ÕIXš¸»E:b\ä‹\"İ‘{4%YBºLKfr‡V+¶„–,¹Á{\r\â\Ä.g½oJú˜Û³¹\çe¢„-¶ş\Ëª¦ğ\Å½™\Ûõ\Åa”ûe±Oº;}u²Qv‹\ßú\ŞU„ \Å,I˜\äk|\n²„·HU‚\Õ	ÿ\0\Öÿ\0r–\"\ìMTˆ\Ş/‘öYí—ª{ˆ¼!\ÊY\Ø[\n1¥\É\èr’EF¼³¦u^‰×º“‹¡\ÂM1N?‡#±\ãJ\Ó\ßÙ”qÀ¤«úØ”bG+%e&C”\ÉP—-~Œ­¦\ë\å!I«’ş”U_ôRnQg%wF5QF\ÙÉ–\Ì\'áŸ³Z8M4=\Å.ŸsÜ¬Ÿ‰\Ó]\Æ|¬­lÆ›1·LR\ÜI¡\Çc¾9;Y‘¢–KB“D}gÿ\Ä\0 \0\0\0\0\0\0\0\0 ÿ\Ú\0\0\ÔhA5õ–\ÆK+¸Ì¬|,’k›ÁÁğÿ\0œ¬…;¦(Ê²ˆ³\âšUk¬ViUW\íll–°33l¡\ÖÁ6\È\Ô!\Ô\Ù]\ÙoŠ`\ÈKA›\ÔtD1\"T™.µ*\ÍorŠšcÔµ­!oµ\\:%¡Œ]\Ù\\Å®/(\Æz«°¦•±_\æ‡\Íü ƒU¶QH¹i‡\á‚(®¡*R¦dM«Rö0 aªŞ¬Mo\èŠD¶›+H„3¼òW„³{0²öe¶SZµ!.„\Í\ÍWHªªV¦Tec24VFU` 0ˆB\Å`Á·­Ml\Ïù)d¡\×$2+\r¶oJi7Y}X\Ë\Z*w\Ğ(¾|Ö¨‹Nc\×mw5¡\ÈPUª±\Û}l’\İoa@	É¬\Õ´\È6ı­l½•)¨!³úE5\È^Bò	BWJ­N\Ùye\ÄkÔ€U«k,	\'e\ê¸2\Ş.X\Ã\\š\Ê\ìL².KO$!D{\'Z±K‚>u\è\\\Æ\ÇÇµ¥¥\ìF\Å\Â=q€…®¬ÀU•Á0¾Z+–\Ì[\×-?EEsV\î\à–3_\Ö=™\Ç\Z²İ‹†À\á¶M•‚­h-BÓ‡]ñ	™KE—:Y—X4\\\î\à3ô\ÔX.ş¯\ì÷1ñ:”„?8ax¡¬±µ¥òŠTS¾~>!e\Ö\âÖˆ>+Ç§ª\ï8œ˜öºeV­lö\Ö\rwl%†1Ä¶›3›ô\Ûõlıv¬¡Mz®Hµ_ÄªŞ–t]oõ°\éò+¿®‹{¯\ì9§ô¥b±R-u\Ô2jüû2\nš˜ŒŠ\ë±»¯a\×#\Ô[g\è\ßûy¥\Ë&-x\ßıÂI«É•l¯1n œ5e\íuk,ô ¯\ÃùmÀ•Ø¯=ªD¯*V1¬Ê•]\\É«õf–V®¶›r2k\æ¾K\å(\\U\ÃJ„™Œp[¾Í¾İ‡ô¶Oö?\èôÌ¯3\Ô\Ü,lŸú#ô›ôÿ\0\è”)¤ª+\ÎKb\ä\\j³&œl”T–%º4^\íúúš25üÿ\0\Î0\ë \0Cw\ÓZl† ­¦ 1\ÃlAˆØEU{EŠ\áÙ¬!B\ãÓºj®XumŠ\\\ÃsÔ¯\ìùş™ıV\Í/®D,ôô P¡9ój\Íf£Yµ\Ş3_ö®x\Íş«fJ€cx|A+p˜˜€zF\İÀ]Ï«\Üß­g\íß“\Ì\ßİ‰ ¼…\ä ‚\Érı-\Ùc\ZqÁ€´\ç‚\æ\ÏBÅ…¢\áiµCó*¢=‚-²÷şµß¼ÿ\0°·z¯š\ç@Ğ€‚`C \ï–R†¿.8(G™¤U\æWŸ2œšÒ¶@‚•¡\ë5~/\ç–{Kİ¹ş\íß¸÷ˆ‘a<¼\ÂrA\0\ç‘Á\èAš\Íf³Y«L\×,¼…)\Ï \Å“@¨L,j\é7mò¬ıkX\ç\']oSk@¾¶°=‡@O]\ã\Z\r%Jr\Õñ\æ\Õyyµ|\n~f°¼\éN²\Ì\çıK3\0Q½kFj,\Ñø\Ì\'>b¡@\Ç\ß\Æp¿ø—pŠ¬5\Ã8­E¸ËŒ\\Ú–5¾­z˜\Öhü\ÕlI–|\0\ÅD\É¥X\Å%¹\Ú/.Ş‹p\0\×&@\ÊC+úN`\È›\ÎG¯¯ ·\Ğ8ŒÄ,\Æb< K	-†!Ô¶h\ÍVu_Ä†$š†\ØJ,\ï²f ³\ĞZ.›@\Ğ\0\0r?¡œ’Å™÷Y$•61d.\İ!-Õ\×E«vjÜ²9dto›\Ş\æ–\çZÖ¦µ¯‚\0\0€ ‚ š$’\Û0·e\É\éœY²\Æ\Şôm6!{;4\ì\\‘p~\ÆB\ä‹D+\É®û\ês\ç\å\Ç:\Ğ\0\0€ ‚¢K›6Aci¸…\Í\Åöµ5\ÍgeÄ±ºê›¯¯{[´Pf~‹”¹‹Ey\çZĞ‚Áw¨`~>|\n\0\0\0\Í\ÍaaY¨\Ú×–-\ÒPÖ½\Âó£õjWù¿˜\'—ˆ\Æ8şoOŸ>\ÒkTm‹@ç’¼\ëZ\0‚\áhqyypZs[d>IbÅ‰¯aH\Ç\ë*Ue%b¾\rvWIó\à!¬\ÒWA\rf³Q¯¦¢‚°\Â\Ñhœó\Ï<\è\0\0\0\0Wõ*\Ùv\\I$“ª°„bµ\n\Å|-d<­q\Ô.¹Åµ¥ù\çJ5\" />~|\'™CY¤j\Ú\'<ò\0\0\0h\ÂI,Nª\Â\n\Ì*\n+*ª\0Vr%d(\ä¯<\ß^ª°\rs\É\rI¨N”òA¦§C2\ZøjøWş”¼@…\×:Ñ…ˆ2œ¯b\Ö„B@\nT+µ)–B\0…\ÒX*´9\ä\rYT\Ñù#¦¶¯öAS^\ÈP/L\ä¸Ms\ÈRiÀYrV\0PÀ¡Uuk*ˆ\è(\rs•M¸G&s­h­˜½ôFó5ñÁ¯Å)‚dó\âVFmy\ê\ÂZ¬\Ë\Ğ\ZTAThÆŒh¯:\Ì\Zµ &€Ö¹È§ÀRšZ\Ñ[1V\ï.‘õ\Ï\Z €p©Rº\Òd-\ál\Í55¡\"¨ES\0\çV@¹EZ\çZ\×\Û\ë\Ò\ZlšÖµ­s\Ë\ÖôW\Ô{­„\ì±$’aN…<\Êò\0Rü	Â¨:UbkNH¢»¬ÀAğğü\Ñk2ªì¶¬k\Ä\ÔÖ´I„²‚©{\ã-\ÊH5”\à!Où\Z\nù‘ Š€\Ø@Ø‚hF*ı0*\ç@jh>i–\Êñ­\Ê\Æ\ÄÊš\×$š\"ô®\Ø\Âñ\0 \Â\á\Ì,¶šƒY\ZÎ P Îµi\"¤#!«AX ;›0\Ík\"•¯\Ü\ÜL<Ÿ¤üÖ¹\Ñ­Pc\r+\ÎB5jŒ\Ú\æ«\Ì\0\0\0\0±B¨9\áV\0\Z\0\0\0\0&´fE[©ò\èÇ¾ 4~h\Í\Â\n•Ve5tG:$¹¬Š€`*8T0\r4aZ\ë<şr€>>k\àƒ\ï6¢Lw•`vÀøAù£`b¤,*G¬ncoÿ\Ä\07\0\0\0\0!1AQa \"2q¡‘±\Ñ0BÁğ#3Rbñ$@\áÿ\Ú\0?\0\Zş’’¦I$R\Úy#\'O~‘§(ngò\äE¬‹ûz\ã«ö\ëMö\'‚Rl¼5H”•\'KaB4ø\'9[\ÂzqVc>\×o¼÷\äR%&=\Ğ\â¬È‘d9o\íµº\Øô\ZØ­\Å\Õ>¬ğ\Ç{\ÑH\Úf¤[‹\ØS\ËÉ­MZû“„–0XŸôñBIÁ,\ÙÚªò9ª\ìíŠ\Å$y?>¥,.QT‹\è‹\éoº[#/,\ÅGr~Õ“Š\è\åÅ˜±KobÑ’KLq²º&8‰\îVÇ‘1E\Óf©<œ-Ä²÷#(Ô\Év½„È½\Åqt8\á‰ûKØµFœ&\ç\'\êGVm¥òšü\É=\ÖÄ¦ûb«\ÔWr\Ëõö|–\é\ÒÈ”{KT5\å¹\Êb\ä‡e-ú\ÓxP–\Ş\ÎD°\È\ÈEth²·\äL—u\Å\Òø³\êFò\Úi\àSU\"\ZSN{</ÿ\0¢«T\Êv?aò.‘N¬Qt“CVi¨F¨”\İ\Ë&¤©¼/#y¬-¾D¸Dš¶?bSxWjİ‹\'qGb\ÑObR\ß[!v²t£¹Y\Ú\ËCK>\Ã%xD¹El?\'ˆCB+qpp\ÇÄ„\İl\Ë\ÃCÂ”{f­M(n„3’Æ¶\Z\"\Ä(š­|4([–[İšquy&\î0[ò\'jN\Ø\ã\Zh\îTö Ğ’¢úw:lJT\Ø\ÔG\İg{H\ít\Ñ\Å.EF0I\î2\Õ²¾µ¹\Üğ4_W\ÒX˜„º\ÙEˆL’Ùš‹vV-/wS>¢–Î™\Ûñ,Ô§Zs\í’ÇšVEˆOtEôk¤n\È\Å[#%„\Îùw\Í\Û\àIö¡\ì†÷e\ØQ]\Ìm÷2M[[²»¡]%bprK%:*YHMS+aN64\éô¡7’ğ½§ğ\'»&³hO\r4i¼Y‘I\ÚÀ\Ï=$#/rÈµL\ì—j\Êõ?6-E¬“ü4”§•\å?\İšMdE\rteõî‹×©-)öÁ\Ú\'(\ÚJ…Ú£³Dj\ÑBIK(“W,\"3•ğˆÒŒPD\ì\Ü_˜\ëb/t/|Z&\ÑNÇ©°\à\é‘h\Î÷—Zº¹	òI|HƒÜ”Á“{ä”•4Ml¨ÖVW©%ñ/\Ğ\Ó\åÑ¥-š\"È²\"r•‘”inIJŸ\êc-?\Ün\r-™\Õ4©‰t}\"DO¢¬šqw¦“~„û]½òb˜¢©\"\ÆÆŒI#¶4%|‘ƒM\r»‰)bO\å\Ï2¤¬‹Š­È¨\ÓÆ—G	˜\Õ;¾©\ìV:´>H¢$,Ï¼\å£Bn–ó÷\'v\Ó%M`J[³Jq¹:f“\äƒ\Êd\ãğÎx\í$k%\ïQ94Ÿ#M§ÁÜ°²E\âJ¾Dc+kšZp\ç(ÁFö=z_#|§©(»\Z\ÜZ¿ñ\Å;M­ö\ÉÚ’[!DV	KdI«“Àš\î\Ù¯¹òF“\"ô\Ó.=\ëd[£±&˜§§Ü·EQ\äP•!N=¬q~w;²\ß\\\Ò²Ø¸b\ÓW\'HÒƒ¤\ìŒx%mE\Z³Ut\ÍIf\Ç\Ê#\à§jD\â\í1UJ\ì\Ò{ı\×ğEËµ:_;BOÜ–MX$\ã+|Ù¬4JmE,³†š\ZÙ™¦\"3T\Çk4GR°\ÓO>„g‹§\à,€–\ÌK’+vi\İZ4ü¡\ÎN:i6\\œ\å¹%„Iò>X…vÇ¼lœ\"Ü¶c’LSI#·NĞ’j\\\nqq\\2ù^••.\ÙN^\îÃƒ´)»“¥kaIS;^:8\ì5¸§»£JŒ¶=´Ñ­ª\îlob\é-ı2jK5_7ş\ä\Í4¨K{!É£-\Íğ\È<¦*¤\Ñ5Á.b(´\ë(Œ¾%_SI\àR9]\Z\ÉÙ¹i8²-û\Ö(j©-šÈ›·È¹DY	ğCt\æ\î-\"‡}\íZô#,­üÍ¤ò†5Š·À¥ºl¤•r8Á?QN³\í‘	Æ£\àü¹\Ö{\à\í}\ÈzlŒÛ”˜§k\Å\ãa\Å\Ú\"k»“4b®T~XøF§š&ò\Ûö¥l”÷i}\Ä÷l\Óş\å6B\İU\ì/|{´EmL‡‚>E\Ã$¶d™{¤S\Ø[Y8\ìÙ©ºuô5£\Ê5 \Ú\ÃGvñ_©\áºqÀ\ã©\İIß\rV\ê)ˆO\ŞJ½	Cud\×ö2m_i­\ÄU\Z²¥„k\Ë-\Úù\í%d\×$Ÿ#r÷²iö¼|…\Z;{]òFZM%\Å:oc·S½l\È86Æ½ô·%§î‘šnGnb8`‹\Ü\ïx\Ø\Óyx44Veô#øi[»%&\ÒD\åÁ\'¸\Ş\ìÓ»y4\áğ¢„!tf´|“\Ùİœ\áÙª$°·\"•N)šMbú‹n\ÔE\ï\Ğ\Ó{\Ú!w\×Ğ¼\Ù\'›d­¾IÄ”dœò¿CZ\êğ>\Õ\ä×‚J(ü[t~!\Å\ÆIy¿ğ~!\ÒI#V*\ß\×¥·Œšª+±]ş\ç\âŸ»Õ¿£?\rÜ“ƒúšUˆñ\ã’\n[p\Ä\Ú\à”´û£\ÆH\ë\é6\İ?ò)>\İN¥>\è¬\Ö\ÓP%¡*{˜’²\åQ\'§‡±¹¡sf„/±\Û5Â\ÄOÜ”²\Ú/vCŸÜŠ\àK«\Æ7°\ÏQr\Èy$¶hŸ¡.b‡\Ì\ê%ı\è\Åê†¶“$ü?¢$¸D¿\í]¸µúd|òC’ƒMğ)<2\rûöF\ÒX^H$®¨^HùF[\É–\é4Ğ5‘¼$(¥),\å‰&¼$v\ÉIl\ÕJNg•õ›ü¹lÿ\0ahÎ–P¤ÿ\02\ã\Ù!\ÂW\r…/‰\Z0\ŞTCM\ÔmšT_3S]\Ü\äş˜\"²WD/$|ˆ½ü{!ÿ\0¬g¨¼‹\Ø^DyOô?°¸¡¬^¢ò\"/r½˜üŒ^a4»w\äOz\Z\Ù!\Ä{\çõ\'½±\Ê57K\É:]²5w\î$·‘\'´¾\Çj\ß#vÜ¾”KQTSo\Ñ\Z\ÎJRn¼2:xIõy´:Uº\Ãv7¦ªXhRU=Æ•5hŒ3\İK\Ôü.›¦\Ó~‚xÑz·ş\ryÆ¤ñ\èFJì’\Ï^¬}„!xx=\à}Pº?(~Wß¥ñûÁ\â\ÅÍ‘B\å‘ò…ş\Ù[~\âİ¡,Q²øi[4\É^W\Ü~\ê‰8·ñ¸\éo/\ìi·†El\È=\Ù\é2Zm\ÎK¨IQn\ÒÜ“\Í\äm\ß?¸«xfš¹´—\ÌÑ…­4\ß\ì~#QTqò55\Î\Ùÿ\0‹1ğ»1˜\âÚ¬´\ä/,ùœÿ\0#[\ä~O^«\ØDz1Œ ¸g¯ûúò??±5„ÿ\0\ß\ĞÔ¼3S–ÿ\0SS\Ô\Ôóû\Zœÿ\0\à|şÇ¡Oy+ÿ\0l^~\ìO’/v¿Dki\'\r9Rc{5úıenŠg\ç\Í*ı\ÒHomY¥¥ñ\É#ğñø[BSu\ZK\îjIS\Ô!\'ri²QB<4\'\ÉÍ‹¢êˆ‰t±/\"~H®\Âğ†.X¼¤PŸ“\Ğ~	xøı\É.>\ä¼1§T\ì’\Ş\Ñn»‡{ı—ğ/?c”ş\Ã\\ı™\êş\ãò\É\'¸ü’{\à\Ô5\ë\î:\Èûv_aø)\ìFIjj:\\/\"ŒR4¡»·\èIºÓ\êkN\í´&òE=ˆøûñö°…Œtf2$_Fù\ìóşG\é÷\á‹\î9xû’\ÆÇš7)7\àiıÚ>\ã\Î\Ø$šXÈ¤\Ş\Ø#M6¾d;r\Òÿ\0$}\ÕUd\"–HQø•\ÊûŸˆò‰5\ï5g¡.\îõ¡6<üoûSı	\ŞtĞ¤³…[/¡{¦&¯a§±&\í‰\ìJ\Úh¬QN„\ë£\íf%ášškµ2S’rv,²²)[_s±¦;´En\Äù4–\Í\'Íš<š0–ø4½M+¤AğF¶#\Ñ\Ú •\àJ\Ä\ÖY«g(µC{ß©&š\á’nß‚všyD\âš[?Rx|¢i·\ä—kƒØ”¢¢ø%4“d¤©ü\ÍHª²2YöGe¾2\İtjHnX\è\Òu\Ö\Ú\è\ãºUüº{\ÈÍ•$f\Ïy#>\Ân/°ğ;~.Ò	y%\ä\î\ßØ’Ù“òO\É?&§’rTİ¡xBğ/|~\ä|}\ßò/õ¿\ä_\ë\Éóı_òz¿\Õÿ\0%e7ú±¥T?¬o~™9\è­	É±¹\n\ÛQv\Ä^Â»\î×¨…Ÿ„šl¡)+”•‘y³À\ÆzÁy)Pü\Ù\Ïÿ\0õmŒ®Dg–\"öC\İ\àŠõ<\r\à¬É‹hôst…š\Ùc£N\Ñ\ß\èôhŒ¶Ü”Y\ä‹Ù“YC[‘{‘\ÏÙ’\ä‘\å\åd^Ì½š%\àh~\Ë\ãúQòGÁ\à›9l‚\ä\\!’–F¾&‘¦¶\Èø\ÇË¥fn¿r0U½úşV—sİ±Q\ë\Ù,\ìÆŸr\É,5hSøwğ÷$‹´?\î\ÉlM+[[’B\ä‹!,\'ı¶$¹\"\æ&›\İ\Zo’/f‰q’KÛŠİ[!­†\İ\Ùd\å²#Ti\Ç\áWó$ñxô\ê\ÇW7H†–\"¿’S$\É4°I\É9,rôC”®\\H½‘\Z=\Ş\ÖF\é‘XHÍ§hN\éPÿ\0¸\æ;eª6¡\Å\ÜGtò%„8ñb¬nMªoü’§Èš\æşh|¯\Ó$%È\İ_ô&¶d){£M‘{1½†‡\Ò\ÍGš¯™¥Wò!‚?©9nú²\ÉIwK†šÿ\0}Y)¼;~İ‰7°\Şwı9ğ‰\'\ï\"²pwj(p.öÅ–4\Å,3f™\İ\î½\Ñ\Ï[+(I\Ó\Ãû\ro·’\Òi˜\Î\Ær%¹\Ê\Øw”D´>v++&Mlÿ\0R_ÜˆK‘?\ëIl\Éy4tş\'lQÆš¢sİ\Ø|e„ih\ãM[òö\'¨óŸ\Øw\ïe”²9<”©\r<NŠ\Â9;\æ\çú\í¤g\';–7C—Ã†¶¢ğ\Ö\ë§Eªc`ş‚n\â\îkVH\ÉZv>OO\Ğw±{l5±{\ä\Â/,Ouel\èÔ6V\ä,Oú‰o\Ñ|\Ç\ÓSS2\Âõ4t>r%©ñ?¡{”©¹‘oB\ÜBŒmN\Ê\Óms\ÇM_Ï¦h¡œô\ì—rÙÿ\0É§ñ-×”GV=\Ñÿ\0Ğ…Áy\Zè¦©£SK1\ÊğBN\Ö(bj×”Fjã’¼»/‘K\à|<z+8$ö§û‰:xgp¸El\'º²¾Ñ©S~4\×\ÌÓ\Í	ÿ\0A-\Ù\ÄQ\Ë¤ó,/_\à\Ğü7«û“\Ô\ßQC8BYeœ#l):O\Çqß©$$©tB\è\Æ)Å¦KJU\Ê?û\Z?TGV*QÛ£{Dz‘^æ¦ª4õÁ\Ó\'§ÿ\0Qc\Êÿ\0$f­;_1½\Æ\Ö÷\é5³´W•û\rz‘{º,g â¨„·\èR_—6¾f¼>%kĞ†\ÒÁ	«‹±{²°M\\\Ë\Ô\Ğü*òÿ\0Vj\êü>\ê\"\Å[òÈ§—lWlr\ÅÃü‚ºvª\åÒ¡Edü\İij?k8\é\Éw-\Ñùn\Ïr_„Ÿ\æA{u\àSŠ”r˜\Ç\Õq\Ñ\nY©¢\êJÑ§¨\î™©¥Ek\Êÿ\0(Œ\Õ\Å\Ú\É\Æ+õ¼\ã\æ^#V‰%O(K	´Nü‰àº³´Md\ìx\Ãô$ñ$Ÿ\Í\Z-\İ8¿L£V?ô\æ¥\è÷û“†5\"Ñ¥>k\æE£WW3\ÂûŸ‡ü*¹o\å\îO[\ZJˆ\éüN\Ù-Gmc\ì%Š_¨·À\ß\"Šc¡ôBŠ¶96\ÙJ\Ş\ì\ì\Òinğvi//?\ÒZS\ÛNô§”Kğ:´şö•¯a{	ªg0y\'\Û4i\ê>\í7O\Óü¢zõ¯+üš÷rz“{ıbÙ‰ª;¶+š9Ù‹s7‘\ÄVü£RO&¿\ä‚ú`\Ğ\Ş\Ñ)¾\İõbO»Y\Û$\×l!E{\Ìo=/cÁe±H²\ßo|’\ã£\×üB\Ó\\`IR\é\ÇL{tZ‘hi\Ó\ÃD¤\ã/¯òOğšŸ“©”öbjúW³\äDf©¢Zn\âq\"}ğtü¯òjicQc\Ê\Õ\Å\Úùô[`5úN\ZÜ²-Yk\İbYhu†fŒ_Jö/ş\â­\È\Ã_Q\Ê\äØ–\ÈOq.¶=z(\Ğ\Ë;W©_Sµ[İ‹JO\êj½G\Ç\î\ÊE1\Ñ¦#?™©ùrS[rCñZu&KF_‘­\Æ\Ï\Ø]Y}c,\ì\Éè»²/}\ÚNŸØ”n²ú­ˆ\ÉZª\à‹\àÛº°Œyd\ÓJ)\Z‹-ı\É\ÅT©¢V°j\ÇhW\Úğ\Éq“9Y\Z3Šı.^=[Š\Ø\Æ/\îÄGGsº;åºRPOs·Jü\ç\Ø]1\ì^:&©\ìÇ¥\'ğ~T»$ğ\È\ë\Ç­˜\Óü­\\4!tc]EBÛ¢\Ş8%Og\Å÷iºa\ÅÖ¢¦wF\Ó%Á5±$°Mn˜İªd©¶†\İ5÷%’Á	:š#5ÿ\0Tıô¨\Ónÿ\0\î†Õ•»\Í—,­\Ù\àòQE`ş\ÕõCK_Z—\É\nQ\\{]„.:¹\Ç(sÅ«Gw¹\'”w¯\Ì\Ót\×\Üü\Å\Ù\'Ÿg\ÒDe†x\Û\î(¬[!5ObPw¦ş‚X¥”\Ïog’Of7º\Zv­}\r\åW\Å\r\Ë2Tü\à•·•£V1]\ÊüšÌ¢¬|!\İ&x(\\,”2\Ö\Ã\Z\ËUsºVVâ†›l\ï\Õ\î¬.˜\ÏV`\ÇN:7\ì-9÷«¦(µ8‹R)¡\éOó´\×\ÌZ±\Î\çk§ƒ­\Z\ZÜŒ\Õ2P\Ìš–İ›Q+Ã£W†j¥m\ß\ÜmÛŠú¡=\à›ô±Á4¡÷5\ç.\êûŠ[‹j\é]-¡\n¬\Ï[}l…“:c¥”fº[\ëb\à\ÓÃ†§j\Ø\îT\Ïş?\â`6¯£\éh´Qk­Q“1%cY±\äŒ\ÖQ\Ù\'Gr¶$…È\ÖS”_;y¿\Øÿ\Ù',8,43),(3,'Natacion',NULL,NULL,NULL,NULL,NULL),(5,'Crossfit',NULL,NULL,NULL,NULL,NULL),(6,'NataciÃ³n',NULL,NULL,NULL,NULL,NULL),(9,'',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_clases`
--

DROP TABLE IF EXISTS `historial_clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_clases` (
  `Id_Clase` int DEFAULT NULL,
  `No_Socio` int DEFAULT NULL,
  `Inicio_Clase` varchar(45) DEFAULT NULL,
  `Fin_Clase` varchar(45) DEFAULT NULL,
  `Dia` varchar(45) DEFAULT NULL,
  KEY `Id_Clase_idx` (`Id_Clase`),
  CONSTRAINT `Id_Clase` FOREIGN KEY (`Id_Clase`) REFERENCES `clase` (`id_Clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_clases`
--

LOCK TABLES `historial_clases` WRITE;
/*!40000 ALTER TABLE `historial_clases` DISABLE KEYS */;
INSERT INTO `historial_clases` VALUES (2,27,'8:00','9:00','Martes');
/*!40000 ALTER TABLE `historial_clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario_clase`
--

DROP TABLE IF EXISTS `horario_clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario_clase` (
  `Dia` varchar(15) DEFAULT NULL,
  `Inicio_Clase` varchar(45) DEFAULT NULL,
  `Fin_Clase` varchar(45) DEFAULT NULL,
  `Id_Clase` int DEFAULT NULL,
  KEY `Id_Clase_idx` (`Id_Clase`),
  KEY `Id_ClaseH_idx` (`Id_Clase`),
  CONSTRAINT `Id_ClaseH` FOREIGN KEY (`Id_Clase`) REFERENCES `clase` (`id_Clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario_clase`
--

LOCK TABLES `horario_clase` WRITE;
/*!40000 ALTER TABLE `horario_clase` DISABLE KEYS */;
INSERT INTO `horario_clase` VALUES ('Martes','8:00','9:00',2),('Viernes','12:00','13:00',5),('Jueves','15:00','16:00',6),('','','',9);
/*!40000 ALTER TABLE `horario_clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructor` (
  `No_Empleado_I` int NOT NULL,
  `Nombre` varchar(80) DEFAULT NULL,
  `PApellido` varchar(80) DEFAULT NULL,
  `SApellido` varchar(80) DEFAULT NULL,
  `CURP` varchar(45) DEFAULT NULL,
  `RFC` varchar(45) DEFAULT NULL,
  `Direccion` varchar(300) DEFAULT NULL,
  `Correo` varchar(80) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`No_Empleado_I`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES (43,'Luis Miguel','Arellanes','Bailon','AEBL820825HGRRLS11 ','AEBL820825000','AV. 20 DE NOVIEMBRE NO. 1060','luis@gmail.com','5578453422'),(44,'Arturo','Bartolo','Carbajal','BACA780820HGRRRR08','BACA780820000','CALLE ZARAGOZA NO. 1010',NULL,NULL);
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socio`
--

DROP TABLE IF EXISTS `socio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socio` (
  `No_Socio` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(80) DEFAULT NULL,
  `PApellido` varchar(80) DEFAULT NULL,
  `SApellido` varchar(80) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `CURP` varchar(45) DEFAULT NULL,
  `userSocio` varchar(80) DEFAULT NULL,
  `correo` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`No_Socio`),
  KEY `correo_idx` (`userSocio`),
  CONSTRAINT `userSocio` FOREIGN KEY (`userSocio`) REFERENCES `usuario` (`UserName`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (12,'Cris','Franco','Chavez',22,'FACJ990107HMCRHM00','cris@gmail.com',NULL),(16,'Jose','Hernandez','Hernandez',21,'FACJ990107HM01','jose@mail.com',NULL),(17,'Cristian','F.','C.',19,'FACJ990107HMCRHM02','cfran@gmail.com',NULL),(22,'Andrea','Gomez','Hernandez',22,'AACE990107HM01',NULL,'andy@mail.com'),(26,'Andrea','Gomez','Hernandez',22,'AACE990107HM01','andy@mail.com','usuarioP'),(27,'Luis','Hernandez','Jimenez',18,'AACE990107HM01','use','ae@mail'),(28,'Jaime Cristian','Franco','ChÃ¡vez',22,'FACJ990107HMCRHM00','CRIS99','francochavezcristian@gmail.com'),(29,'Luis','ChÃ¡vez','Martinez',12,'FACLK08987HMW','lm87','luis@gmail.com');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `UserName` varchar(80) NOT NULL,
  `Contrasena` varchar(45) DEFAULT NULL,
  `Rol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('andy@mail.com','contrasena','Socio'),('cfran@gmail.com','123','Socio'),('cris@gmail.com','1234','Socio'),('CRIS99','123','Socio'),('jbadillo@gmail.com','1234','Administrador'),('jose@mail.com','123','Administrador'),('lm87','123','Socio'),('use','contrasena123','Socio');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gym'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizarSocio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizarSocio`(in userA VARCHAR(80),
								in spNombre VARCHAR (80),
								in PAp VARCHAR(80),
								in SAp VARCHAR(80),
                                in spCurp VARCHAR(45),
								in spEdad INT,
								in spCorreo VARCHAR(80))
BEGIN
	DECLARE spRol VARCHAR(45);
    declare IdSocio INT;
    SET spRol = 'Socio';
    SELECT IdSocio =  a.No_Socio FROM socio AS a
    INNER JOIN usuario AS b ON  b.UserName = a.userSocio 
    WHERE b.UserName = userA;
# Acualiza tabla usuario

# Acualiza datos del Socio    
	UPDATE socio
    SET Nombre = spNombre, PApellido = PAp, SApellido = SAp, 
    Edad = spEdad, CURP = spCurp, correo = spCorreo
    where No_Socio = IdSocio;
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminarClase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminarClase`(in idCLase INT)
BEGIN
	DELETE FROM historial_clases WHERE idClase = Id_Clase;
    DELETE FROM horario_clase WHERE idClase = Id_Clase;
    DELETE FROM clase WHERE  idClase = id_Clase;
    
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_eliminarSocio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminarSocio`(in NoSocio INT,
									in usuario VARCHAR(80))
BEGIN
	DELETE FROM socio WHERE  No_Socio = NoSocio;
    DELETE FROM usuario WHERE UserName = usuario;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inscribirClase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inscribirClase`(in spId INT,
								   in spNoSocio INT,
								   in spInicio VARCHAR(45),
								   in spFin varchar(45),
                                   in spDia VARCHAR(45))
BEGIN
 INSERT INTO historial_clases(Id_Clase,No_Socio,Inicio_Clase,Fin_Clase,Dia) 
			VALUES(spId, spNoSocio,spInicio,spFin,spDia);
            
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_iSesionAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_iSesionAdmin`(in spUser VARCHAR(80),
									in spCont VARCHAR(80))
BEGIN
	DECLARE spRol VARCHAR(45);
    SET spRol = 'Administrador';
	SELECT UserName, Contrasena, Rol FROM usuario
    WHERE UserName = spUser AND Contrasena = spCont
    AND Rol = spRol; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_iSesionSocio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_iSesionSocio`(in spUser VARCHAR(80),
									in spCont VARCHAR(80))
BEGIN
	DECLARE spRol VARCHAR(45);
    SET spRol = 'Socio';
	SELECT UserName, Contrasena, Rol FROM usuario
    WHERE UserName = spUser AND Contrasena = spCont
    AND Rol = spRol; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_iSesionUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_iSesionUsuario`(in spUser VARCHAR(80),
									in spCont VARCHAR(80))
BEGIN
	SELECT UserName, Contrasena, Rol FROM usuario
    WHERE UserName = spUser AND Contrasena = spCont; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_obtenerUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_obtenerUsuario`(in spUser VARCHAR(80))
BEGIN
SELECT a.No_Socio, a.Nombre, a.PApellido, a.SApellido, a.Edad, a.CURP, a.correo, b.Contrasena FROM socio as a
INNER JOIN usuario as b ON b.UserName= a.userSocio
WHERE b.Rol = 'Socio' and b.UserName = spUser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegistrarClase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_RegistrarClase`(
										in spDia VARCHAR(15),
										in spNombre VARCHAR(100), 
                                        in spInicio VARCHAR(45),
                                        in spFin VARCHAR(45))
BEGIN
	DECLARE spIdClase INT;
	INSERT INTO clase(Nombre_Clase) VALUES (spNombre);
    SET spIdClase = (SELECT @@identity AS id); 
    INSERT INTO horario_clase(Id_Clase, Dia, Inicio_Clase, Fin_Clase) VALUES (spIdClase, spDia, spInicio, spFin);
				
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrarSocio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrarSocio`(in spNombre VARCHAR (80),
								in PAp VARCHAR(80),
								in SAp VARCHAR(80),
								in spEdad INT,
								in spCurp VARCHAR(45),
								in spCorreo VARCHAR(80),
								in spUser VARCHAR(80),
                                in spContrasena VARCHAR(45))
BEGIN
	DECLARE spRol VARCHAR(45);
    SET spRol = 'Socio';
	INSERT INTO usuario (UserName, Contrasena, Rol)Values(spUser, spContrasena, spRol);
    INSERT INTO socio (Nombre,PApellido, SApellido, CURP, Edad, correo, userSocio)
	VALUES (spNombre, PAp, SAp, spCurp, spEdad,spCorreo, spUser);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_VisualizarClases` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_VisualizarClases`()
BEGIN

	
SELECT a.id_Clase, a.Nombre_Clase, b.Dia, b.Inicio_Clase, b.Fin_Clase FROM clase as a
INNER JOIN horario_clase as b ON b.Id_Clase = a.id_Clase;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-22 19:44:00
