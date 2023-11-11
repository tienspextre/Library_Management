CREATE DATABASE  IF NOT EXISTS `intern_group_one` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `intern_group_one`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: intern_group_one
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `base_user_role`
--

DROP TABLE IF EXISTS `base_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_user_role` (
  `ROLE_ID` varchar(45) NOT NULL,
  `USER_UID` bigint NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_user_role`
--

LOCK TABLES `base_user_role` WRITE;
/*!40000 ALTER TABLE `base_user_role` DISABLE KEYS */;
INSERT INTO `base_user_role` VALUES ('R000',20230807042359842),('R000',20230807053552900),('R000',20230807064411503),('R001',20230807042359842),('R001',20230807053552900),('R001',20230807084733963),('R001',20230807084858850),('R001',20230807084940128),('R001',20230807085013503),('R001',20230807085033264);
/*!40000 ALTER TABLE `base_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baserole`
--

DROP TABLE IF EXISTS `baserole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baserole` (
  `ROLE_ID` varchar(45) NOT NULL,
  `ROLE_NM` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `USER_YN` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baserole`
--

LOCK TABLES `baserole` WRITE;
/*!40000 ALTER TABLE `baserole` DISABLE KEYS */;
INSERT INTO `baserole` VALUES ('R000','ROLE_ADMIN',NULL,NULL,NULL,NULL,NULL,NULL),('R001','ROLE_NORMAL',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `baserole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dausach`
--

DROP TABLE IF EXISTS `dausach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dausach` (
  `BOOK_CODE` varchar(4) CHARACTER SET latin1 NOT NULL,
  `TITLE` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PUBLISHER` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PRICE` int NOT NULL,
  `PAGES` int NOT NULL,
  `DESCRIPTION` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `STATUS` int NOT NULL,
  `AUTHOR` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CREATED_YEAR` int DEFAULT NULL,
  `CATEGORY` int NOT NULL,
  `IMG` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dausach`
--

LOCK TABLES `dausach` WRITE;
/*!40000 ALTER TABLE `dausach` DISABLE KEYS */;
INSERT INTO `dausach` VALUES ('AAAA','Tony Buổi Sáng - Trên Đường Băng','NXB Trẻ',89000,308,'Cuộc sống của người lớn như ngồi trong một chiếc tàu lửa, mặc nhiên đi về phía trước mà đôi khi bản thân không biết đang tìm kiếm điều gì. Giữa hàng vạn những chuyện mệt mỏi trong cuộc sống, đôi lúc bạn không còn đủ sức để mở lòng mình và sẻ chia với mọi người xung quanh.',1,'Tony Buổi Sáng',2019,0,'AAAA.webp'),('AAAB','Dám Nghĩ Lớn (Tái Bản)','Nhà xuất bản Tổng Hợp',103680,448,'Những hướng dẫn đơn giản mà tác giả đưa ra trong cuốn sách không phải là những lý thuyết chưa được kiểm nghiệm. Đó không phải là sự phỏng đoán và ý kiến của một người. Mà đó là những cách tiếp cận với vô vàn tình huống của cuộc sống đã được chứng minh, trở thành những hướng dẫn có thể áp dụng phổ biến và tạo ra tác dụng kỳ diệu.',0,' David J Schwartz',2019,1,'AAAB.webp'),('AAAC','Dám nghĩ lại - Think again','NXB Dân Trí',159000,336,'Tái tư duy, theo Adam Grant, là suy nghĩ lại, cân nhắc lại quan điểm, định kiến, thậm chí là kiến thức của bản thân, cũng có thể là suy nghĩ thoát khỏi lối mòn tư duy. Cũng theo ông, để chinh phục kỹ năng này, bạn cần quên đi những gì đã học, đồng thời thiết lập và duy trì vòng lặp tái tư duy.',1,' Adam Grant',2022,1,'AAAC.webp'),('AAAD','Kafka bên bờ biển','Nhà Xuất Bản Hội Nhà Văn',102700,530,'Kafka Tamura, mười lăm tuổi, bỏ trốn khỏi nhà ở Tokyo để thoát khỏi lời nguyền khủng khiếp mà người cha đã giáng xuống đầu mình.Ở phía bên kia quần đảo, Nakata, một ông già lẩm cẩm cùng quyết định dấn thân. Hai số phận đan xen vào nhau để trở thành một tấm gương phản chiếu lẫn nhau.',1,'Haruki Murakami',2020,0,'AAAD.webp'),('AAAF','Rừng Nauy','Nhà Xuất Bản Văn Học',135000,556,'Câu chuyện bắt đầu từ một chuyến bay trong ngày mưa ảm đạm, một người đàn ông 37 tuổi  chợt nghe thấy bài hát gắn liền với hình ảnh người yêu cũ, thế là quá khứ ùa về xâm chiếm thực tại. Mười tám năm trước, người đàn ông ấy là chàng Toru Wanatabe trẻ trung, mỗi chủ nhật lại cùng nàng Naoko lang thang vô định trên những con phố Tokyo. Họ sánh bước bên nhau để thấy mình còn sống, còn tồn tại, và gắng gượng tiếp tục sống, tiếp tục tồn tại sau cái chết của người bạn cũ Kizuki.',1,'Haruki Murakami',2020,0,'AAAF.webp'),('AAAG','Tâm Lý Học Hẹn Hò ','Nhà Xuất Bản Dân Trí',84000,280,'Tại Mỹ, chúng ta nghe nói rằng kết cục của hơn một nửa các cuộc hôn nhân là ly hôn. Ở Bồ Đào Nha, con số này là 70%. Với các cuộc hôn nhân thứ hai ở Mỹ, tỷ lệ ly hôn tăng lên 65%, và đối với các cuộc hôn nhân thứ ba, tỷ lệ này lên đến 75%. Ở Việt Nam, cứ 4 cặp vợ chồng đăng ký kết hôn thì có 1 đôi ly hôn sau đó.',1,'Phạm Thư',2021,1,NULL),('AABB','Càng Mạnh Mẽ, Càng Dịu Dàng','Nhà Xuất Bản Hội Nhà Văn',69000,352,'“Trong công việc phụ nữ cũng phải cố gắng và dốc sức dốc lòng như đàn ông, nhưng tận sâu trong nội tâm, phụ nữ vẫn là phụ nữ. Không cần thiết phải xù lông, quyết không cúi đầu, sự mạnh mẽ thật sự của người phụ nữ chính là tính đàn hồi, là độ dẻo dai, là sau khi em xông pha dạn dĩ bên ngoài rồi vẫn có thể là phụ nữ.”',1,'Mai Dung',2021,1,'AABB.webp'),('ABCD','Xứ Sở Miên Man','Nhà Xuất Bản Phụ Nữ',120000,264,'Cuộc sống của người lớn như ngồi trong một chiếc tàu lửa, mặc nhiên đi về phía trước mà đôi khi bản thân không biết đang tìm kiếm điều gì. Giữa hàng vạn những chuyện mệt mỏi trong cuộc sống, đôi lúc bạn không còn đủ sức để mở lòng mình và sẻ chia với mọi người xung quanh.',1,'Jun Phạm',2022,1,'ABCD.webp'),('ABCE','Đàn Ông Sao Hỏa Đàn Bà Sao Kim','KNBooks',111000,488,'Tình chỉ đẹp khi còn dang dở\nCưới nhau về nham nhở lắm em ơ \nBởi kết hôn không phải là kết thúc một cuộc tình, mà nó mới là mở đầu cho rất nhiều những giai đoạn khó khăn ',1,'John Gray',2019,1,'ABCE.webp'),('ABCF','Tâm Lý Học Tính Cách ','Nhà Xuất Bản Phụ Nữ Việt Nam',200000,80,'“Tâm lý học tính cách” lấy “chín kiểu hình tính cách” làm trọng tâm, với nền tảng là những lý luận của tâm lý học tính cách và tâm lý học chiều sâu , giới thiệu đến bạn đọc một cách chi tiết về đặc trưng và phương pháp cải thiện khuyết điểm dành cho chín kiểu hình tính cách của con người.',1,'First News - Trí Việt',2019,1,''),('ABCG','Mèo Và Triết Lý Nhân Sinh','Nhà Xuất Bản Thanh Niên',127000,276,'Đa số cuộc đời con người là sự chật vật đấu tranh tìm kiếm hạnh phúc. Đối với loài mèo, ngược lại, hạnh phúc là trạng thái mặc định khi những mối đe doạ thực tế nhăm nhe sự tồn tại tốt đẹp của chúng bị loại bỏ. Có lẽ đây là lý do chính mà nhiều người trong số chúng ta yêu loài mèo. Ngay từ khi sinh ra, chúng đã sở hữu niềm hạnh phúc mà con người thường không đạt được.',1,'John Gray',2020,1,'ABCG.webp'),('ABCH','Đi Tìm Lẽ Sống','KViktor Emil Frankl',56000,224,'Đi tìm lẽ sống của Viktor Frankl là một trong những quyển sách kinh điển của thời đại. Thông thường, nếu một quyển sách chỉ có một đoạn văn, một ý tưởng có sức mạnh thay đổi cuộc sống của một người, thì chỉ riêng điều đó cũng đã đủ để chúng ta đọc đi đọc lại và dành cho nó một chỗ trên kệ sách của mình. Quyển sách này có nhiều đoạn văn như thế. ',1,'John Gray',2019,1,'ABCH.webp'),('ABCI','Không Diệt Không Sinh Đừng Sợ Hãi ','Nhà Xuất Bản Thế Giới',98000,224,'Bụt có cái hiểu rất khác về cuộc đời. Ngài hiểu rằng sống và chết chỉ là những ý niệm không có thực. Coi đó là sự thực, chính là nguyên do gây cho chúng ta khổ não. Bụt dạy không có sinh, không có diệt, không tới cũng không đi, không giống nhau cũng không khác nhau, không có cái ngã thường hằng cũng không có hư vô. Chúng ta thì coi là Có hết mọi thứ. Khi chúng ta hiểu rằng mình không bị hủy diệt thì chúng ta không còn lo sợ.',1,'Thích Nhất Hạnh',2022,1,'ABCI.webp'),('ABCJ','Ba người thầy vĩ đại','Nhà Xuất Bản Lao Động',57000,330,'“Cuốn sách này là một tác phẩm hư cấu. Đây là câu chuyện về một người đàn ông có tên Jack Valentine mà đường đời có nhiều điểm giống với tôi. Có cảm nhận rất không đầy đủ với tư cách một con người, anh ấy lên kế hoạch tìm kiếm tri thức để sống một cuộc sống hạnh phúc hơn, khoẻ khoắn hơn và đẹp hơn.” ',1,'Robin Sharma',2020,1,'ABCJ.webp'),('ABCK','Rèn Luyện Tư Duy Phản Biện','Nhà Xuất Bản Phụ Nữ',98000,204,'Những người khác có thể đưa ra những góc nhìn khác mà bạn có thể chưa bao giờ nghĩ tới, và họ có thể chỉ ra những lỗ hổng trong logic của bạn mà bạn đã hoàn toàn bỏ qua. Bạn không cần phải hoàn toàn đồng ý với ý kiến của những người khác, bởi vì điều này cũng có thể dẫn tới những vấn đề liên quan đến thiên kiến, nhưng một cuộc thảo luận phản biện là một bài tập tư duy cực kỳ hiệu quả.',1,'Albert Rutherford',2020,1,'ABCK.webp'),('ABCM','999 Lá Thư Gửi Cho Chính Mình','Nhà Xuất Bản Thanh Niên',140000,432,'999 lá thư gửi cho chính mình” – Mong bạn trở thành phiên bản hoàn hảo nhất và cũng là phiên bản hạnh phúc nhất của bản thân. Hãy để cuốn sách trở thành “kim chỉ nam” của bạn trong cuộc sống, giúp bạn luôn nhớ và khẳng định rằng việc nỗ lực quan trọng như thế nào trong cuộc sống, để bạn giống như một đóa hướng dương kiên cường hướng về phía mặt trời, hấp thu những năng lượng tích cực, sống tốt một cuộc sống mà mình hằng mong ước.',1,'Albert Rutherford',2021,1,'ABCM.webp'),('ABCN','Ổn Định Hay Tự Do','Nhà Xuất Bản Văn Học',87000,284,'Cuốn sách truyền động lực tới bạn: dám ước mơ cũng dám biến ước mơ thành hiện thực\nKhích lệ bạn theo đuổi đến cùng sự nỗ lực để đạt được thành tựu tối ưu\nTruyền cảm hứng để sống và làm theo những gì mình muốn\nKhông quên nhắc nhở bạn về sức mạnh của thái độ mềm mỏng: vừa biết khoan dung cho người khác, vừa biết cúi mình khiêm tốn',1,'Trương Học Vĩ',2020,1,'ABCN.webp'),('ABCO','Hai Mặt Của Gia Đình','Nhà Xuất Bản Thanh Niên',70000,290,'Vì sao chúng ta luôn bộc phát cảm xúc khi đứng trước gia đình mình. Vì sao nỗi đau của gia đình nơi bạn sinh ra và lớn lên lại lặp lại trong gia đình hiện tại? Nhiều khi những tổn thương đến từ gia đình nơi chúng ta sinh ra và lớn lên lại chính là nguyên nhân của các vấn đề trong gia đình hiện tại.',1,'Choi Kwanghuyn',2022,1,'ABCO.webp'),('ABCR','Truyện Tranh Cười Dân Gian Việt Nam','Nhà Xuất Bản Dân Trí',100000,248,'Nội dung truyện cười rất phong phú , không những đả kích thói tham lam , những cái lố lăng kệch cỡm của tầng lớp quan lại phong kiến mà còn cười vui phê phán thói mê tín dị đoan , những ứng xử vụng dại ngờ nghệch trong đời sống xã hội .',1,'Nguyễn Phương',2020,1,'ABCR.webp'),('FVDJ','Điềm tĩnh và nóng giận ','Nhà Xuất Bản Trẻ',320000,320,'Trong cuộc sống thường ngày, chúng ta thường nổi giận vì nhiều nguyên do: công việc không suôn sẻ, chúng ta tức giận; bị người khác hiểu nhầm, chúng ta tức giận; thấy việc chướng tai gai mắt, chúng ta tức giận; không thể chấp nhận ',1,'Tạ Quốc Quế',2022,0,'FVDJ.webp');
/*!40000 ALTER TABLE `dausach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giohang`
--

DROP TABLE IF EXISTS `giohang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giohang` (
  `USER_UID` bigint NOT NULL,
  `BOOK_CODE` varchar(4) NOT NULL,
  PRIMARY KEY (`USER_UID`,`BOOK_CODE`),
  KEY `BOOK_CODE` (`BOOK_CODE`),
  CONSTRAINT `GIOHANG_ibfk_1` FOREIGN KEY (`BOOK_CODE`) REFERENCES `dausach` (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giohang`
--

LOCK TABLES `giohang` WRITE;
/*!40000 ALTER TABLE `giohang` DISABLE KEYS */;
INSERT INTO `giohang` VALUES (20230807084733963,'AAAA');
/*!40000 ALTER TABLE `giohang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisach`
--

DROP TABLE IF EXISTS `loaisach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisach` (
  `GENRE_ID` int NOT NULL AUTO_INCREMENT,
  `GENRE_NAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATE_ADD` date DEFAULT NULL,
  PRIMARY KEY (`GENRE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisach`
--

LOCK TABLES `loaisach` WRITE;
/*!40000 ALTER TABLE `loaisach` DISABLE KEYS */;
INSERT INTO `loaisach` VALUES (1,'Chính trị',NULL),(2,'Khoa học',NULL),(3,'Thơ ca',NULL),(4,'Lịch sử',NULL),(5,'Truyện cười',NULL),(6,'Tiểu thuyết',NULL),(7,'Truyện ngắn',NULL),(8,'Kinh dị',NULL),(9,'Tâm lý học',NULL),(10,'Truyện tranh',NULL),(11,'Nghệ thuật',NULL),(12,'Tôn giáo',NULL),(13,'Tâm lý',NULL),(14,'Kĩ năng sống',NULL);
/*!40000 ALTER TABLE `loaisach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisach_dausach`
--

DROP TABLE IF EXISTS `loaisach_dausach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisach_dausach` (
  `BOOK_CODE` varchar(4) NOT NULL,
  `GENRE_ID` int NOT NULL,
  PRIMARY KEY (`BOOK_CODE`,`GENRE_ID`),
  KEY `GENRE_ID` (`GENRE_ID`),
  CONSTRAINT `LOAISACH_DAUSACH_ibfk_1` FOREIGN KEY (`BOOK_CODE`) REFERENCES `dausach` (`BOOK_CODE`),
  CONSTRAINT `LOAISACH_DAUSACH_ibfk_2` FOREIGN KEY (`GENRE_ID`) REFERENCES `loaisach` (`GENRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisach_dausach`
--

LOCK TABLES `loaisach_dausach` WRITE;
/*!40000 ALTER TABLE `loaisach_dausach` DISABLE KEYS */;
INSERT INTO `loaisach_dausach` VALUES ('ABCR',1),('AAAF',3),('ABCE',3),('ABCN',3),('AAAF',4),('ABCD',4),('AAAG',5),('ABCR',5),('AAAA',6),('AAAD',6),('AAAF',6),('ABCD',6),('ABCH',6),('ABCI',6),('ABCN',6),('FVDJ',6),('AABB',7),('ABCE',7),('ABCJ',7),('ABCM',7),('ABCO',7),('AAAD',8),('AAAB',9),('ABCG',9),('ABCH',9),('ABCI',9),('ABCJ',9),('ABCK',9),('ABCO',9),('AAAD',10),('AAAC',11),('AAAB',12),('ABCF',12),('AAAG',13),('ABCD',13),('ABCK',13),('FVDJ',13),('AAAA',14),('AAAB',14),('AAAC',14),('ABCG',14),('ABCH',14),('ABCI',14),('ABCJ',14),('ABCK',14),('ABCM',14),('ABCO',14),('ABCR',14);
/*!40000 ALTER TABLE `loaisach_dausach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieumuon`
--

DROP TABLE IF EXISTS `phieumuon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieumuon` (
  `ID_PHIEU_MUON` int NOT NULL AUTO_INCREMENT,
  `USER_UID` bigint NOT NULL,
  `CREATED_DATE` timestamp NOT NULL,
  `BORROW_DATE` timestamp NULL DEFAULT NULL,
  `RETURN_DATE_ESTIMATE` date DEFAULT NULL,
  `RETURN_UPDATE_REAL` date DEFAULT NULL,
  `STATUS` int NOT NULL,
  `EXTENDED_TIMES` int NOT NULL,
  `FINE` bigint DEFAULT NULL,
  `CANCEL_DATE` date DEFAULT NULL,
  `BORROW_DATE_REAL` date DEFAULT NULL,
  PRIMARY KEY (`ID_PHIEU_MUON`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieumuon`
--

LOCK TABLES `phieumuon` WRITE;
/*!40000 ALTER TABLE `phieumuon` DISABLE KEYS */;
INSERT INTO `phieumuon` VALUES (55,20230807084733963,'2023-08-28 09:06:46','2023-08-30 00:00:00','2023-09-11','2023-08-28',2,0,518400,NULL,'2023-08-28'),(56,20230807084733963,'2023-08-28 09:45:00','2023-08-30 00:00:00','2023-09-11','2023-08-28',2,0,135000,NULL,'2023-08-28'),(57,20230807084733963,'2023-08-28 09:53:55','2023-08-29 00:00:00','2023-09-11',NULL,1,0,NULL,NULL,'2023-08-28');
/*!40000 ALTER TABLE `phieumuon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `BOOK_ID` varchar(255) NOT NULL,
  `BOOK_CODE` varchar(4) NOT NULL,
  `STATUS` int NOT NULL,
  PRIMARY KEY (`BOOK_ID`),
  KEY `BOOK_CODE` (`BOOK_CODE`),
  CONSTRAINT `SACH_ibfk_1` FOREIGN KEY (`BOOK_CODE`) REFERENCES `dausach` (`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES ('AAAA0001','AAAA',1),('AAAA0002','AAAA',1),('AAAA0003','AAAA',1),('AAAA0004','AAAA',1),('AAAA0005','AAAA',1),('AAAA0006','AAAA',1),('AAAA0007','AAAA',1),('AAAA0008','AAAA',1),('AAAA0009','AAAA',1),('AAAA0010','AAAA',1),('AAAB0001','AAAB',0),('AAAB0002','AAAB',1),('AAAB0003','AAAB',1),('AAAB0004','AAAB',1),('AAAB0005','AAAB',1),('AAAB0006','AAAB',1),('AAAB0007','AAAB',1),('AAAB0008','AAAB',1),('AAAB0009','AAAB',1),('AAAB0010','AAAB',1),('AAAC0001','AAAC',1),('AAAC0002','AAAC',1),('AAAC0003','AAAC',1),('AAAC0004','AAAC',1),('AAAC0005','AAAC',1),('AAAD0001','AAAD',1),('AAAD0002','AAAD',1),('AAAD0003','AAAD',1),('AAAD0004','AAAD',1),('AAAD0005','AAAD',1),('AAAF0001','AAAF',0),('AAAF0002','AAAF',1),('AAAF0003','AAAF',1),('AAAF0004','AAAF',1),('AAAF0005','AAAF',1),('AABB0001','AABB',1),('AABB0002','AABB',1),('AABB0003','AABB',1),('AABB0004','AABB',1),('AABB0005','AABB',1),('ABCD0001','ABCD',1),('ABCD0002','ABCD',1),('ABCD0003','ABCD',1),('ABCD0004','ABCD',1),('ABCD0005','ABCD',1),('ABCI0001','ABCI',1),('ABCI0002','ABCI',1),('ABCI0003','ABCI',1),('ABCI0004','ABCI',1),('ABCI0005','ABCI',1),('ABCK0001','ABCK',1),('ABCK0002','ABCK',1),('ABCK0003','ABCK',1),('ABCK0004','ABCK',1),('ABCK0005','ABCK',1),('FVDJ0001','FVDJ',1),('FVDJ0002','FVDJ',1),('FVDJ0003','FVDJ',1),('FVDJ0004','FVDJ',1),('FVDJ0005','FVDJ',1);
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sachmuon`
--

DROP TABLE IF EXISTS `sachmuon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sachmuon` (
  `BOOK_ID` varchar(255) NOT NULL,
  `ID_PHIEU_MUON` int NOT NULL,
  `STATUS` int NOT NULL,
  PRIMARY KEY (`BOOK_ID`,`ID_PHIEU_MUON`),
  KEY `ID_PHIEU_MUON` (`ID_PHIEU_MUON`),
  CONSTRAINT `SACHMUON_ibfk_1` FOREIGN KEY (`BOOK_ID`) REFERENCES `sach` (`BOOK_ID`),
  CONSTRAINT `SACHMUON_ibfk_2` FOREIGN KEY (`ID_PHIEU_MUON`) REFERENCES `phieumuon` (`ID_PHIEU_MUON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sachmuon`
--

LOCK TABLES `sachmuon` WRITE;
/*!40000 ALTER TABLE `sachmuon` DISABLE KEYS */;
INSERT INTO `sachmuon` VALUES ('AAAA0001',55,2),('AAAA0001',56,2),('AAAA0001',57,0),('AAAB0001',55,2),('AAAF0001',56,2),('AABB0001',57,0),('ABCD0001',57,0);
/*!40000 ALTER TABLE `sachmuon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongbao` (
  `NOTIFICATION_ID` int NOT NULL AUTO_INCREMENT,
  `USER_UID` bigint NOT NULL,
  `CONTENT` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DATE_ADD` timestamp NULL DEFAULT NULL,
  `ISREAD` tinyint DEFAULT NULL,
  `ABOUT` varchar(45) DEFAULT NULL,
  `ID` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`NOTIFICATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (118,20230807084733963,'Bạn đã tạo phiếu mượn thành công. Ngày bạn hẹn lấy là 30/08/2023','2023-08-28 09:06:46',0,'1','55'),(119,20230807084733963,'Phiếu mượn có mã là 55 đã được xác nhận thành công. Bạn cần trả sách trước 11/09/2023','2023-08-28 09:08:56',0,'2','55'),(120,20230807084733963,'Phiếu mượn 55 đã được trả thành công vào ngày 28/08/2023','2023-08-28 09:10:06',0,'3','55'),(121,20230807084733963,'Bạn đã tạo phiếu mượn thành công. Ngày bạn hẹn lấy là 30/08/2023','2023-08-28 09:45:00',1,'1','56'),(122,20230807084733963,'Phiếu mượn có mã là 56 đã được xác nhận thành công. Bạn cần trả sách trước 11/09/2023','2023-08-28 09:47:28',1,'2','56'),(123,20230807084733963,'Phiếu mượn 56 đã được trả thành công vào ngày 28/08/2023','2023-08-28 09:50:52',0,'3','56'),(124,20230807084733963,'Sách Tony Buổi Sáng - Trên Đường Băng có mã sách là AAAA hiện đã có sẵn. Bạn có thể mượn sách ngay','2023-08-28 09:50:52',0,'0','AAAA'),(125,20230807084733963,'Bạn đã tạo phiếu mượn thành công. Ngày bạn hẹn lấy là 29/08/2023','2023-08-28 09:53:55',0,'1','57'),(126,20230807084733963,'Phiếu mượn có mã là 57 đã được xác nhận thành công. Bạn cần trả sách trước 11/09/2023','2023-08-28 10:07:50',0,'2','57');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `USER_UID` bigint NOT NULL,
  `BOOK_CODE` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATE_ADD` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`USER_UID`,`BOOK_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (20230807084733963,'AAAA','2023-08-28 09:43:16');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28 17:54:55
CREATE DATABASE  IF NOT EXISTS `intern_group_one_sso` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `intern_group_one_sso`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: intern_group_one_sso
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `USER_UID` bigint NOT NULL,
  `USER_ID` varchar(45) DEFAULT NULL,
  `PWD` varchar(255) NOT NULL,
  `STATUS` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`USER_UID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (20230807042359842,'tien2','$2a$10$4VZ39NNazF/9l0.Wxx.1eeaFTIq8dL2SduyEraItxu7yVmxvGVRR.','02-04'),(20230807053552900,'admin','$2a$10$q6YY796ESO8qW51qidNmTeLIQ9ZWP2seNinK1w7ZyihvqJVk2DFem','02-03'),(20230807064411503,'dat','$2a$10$Eh5KttMTCbPkT49wSE.ir.jwrgUARY5vS6kVcnbkN1WeQDn8BQjg.','02-04'),(20230807084733963,'nga','$2a$10$ACRPorleitZgfIF9gP.Kp.5rstxJxsfYy7UPzz18QFGKTz4wPx1JS','02-03'),(20230807084858850,'ngoc','$2a$10$EFXfcA.6h7Sio1Hdq0AW1e1fK2te4nR0mWmhpkQKEJGuMfpoTf1sy','02-03'),(20230807084940128,'tien','$2a$10$FtQiFwQZn9mMTtAqRhpieexMPKqdTH7A02dDfPBW2zqVLOMtt6Yem','02-04'),(20230807085013503,'user1','$2a$10$LAf2oA18DUNLCZxTw3kaH.CxBPXUYfwGkz9LbMirRgmMb2qH.swOe','02-03'),(20230807085033264,'user2','$2a$10$RKDlxH9K/7iBLVw832ocmOp3wJwg2DBuPhU6dYzxqdcwQdBV4Xmda','02-03'),(20230809091721974,'in','$2a$10$wjAi/FwUHM7.Uvu6zod60uRRk7cq7dx1qoI6AOZSPO2ic1Zk0lIcG','02-04'),(20230828063930613,'dattt','$2a$10$oYyzE/xSMcRn6qz7y0QLfetUetUWtGPwdC8fGOHXp/qgCYUKbUxLi','02-04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_info` (
  `USER_UID` bigint NOT NULL,
  `FULL_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GENDER` bit(1) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `EMAIL` varchar(40) NOT NULL,
  `ADDRESS` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `IMG_PATH` varchar(255) DEFAULT NULL,
  `DOB` date NOT NULL,
  `EXPIRED_KEY` timestamp NULL DEFAULT NULL,
  `VERIFY_KEY` varchar(255) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `CREATED_BY` bigint DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` bigint DEFAULT NULL,
  PRIMARY KEY (`USER_UID`),
  UNIQUE KEY `VERIFY_KEY` (`VERIFY_KEY`),
  CONSTRAINT `USER_INFO_ibfk_1` FOREIGN KEY (`USER_UID`) REFERENCES `user` (`USER_UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (20230807042359842,'Nguyễn Đình Tiến',_binary '\0','0123867687','miprotechtien@gmail.com','Nghe an','','2002-06-25','2023-08-09 03:30:00','f9576add-213e-4894-9b16-b0a809164ea4','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807053552900,'admin',_binary '\0','0123867687','admin@gmail.com','thanh hoa','','2002-06-25',NULL,'','2020-06-24 17:00:00',NULL,'2023-08-09 04:37:42',NULL),(20230807064411503,'Nguyễn Tiến Đạt',_binary '\0','0123867687','dat2k3a2@gmail.com','Nghệ An','','2002-06-25',NULL,'0eaf317a-4f00-4542-bd7e-66f04acfd2dd','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807084733963,'Lê Thị Nga',_binary '\0','0123867687','nga@gmail.com','Hoa Binh','','2002-06-25','2023-08-28 06:47:02','4a607074-c157-496f-a924-9d01df6f0ff9','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807084858850,'Nguyễn Thị Ngọc',_binary '\0','0123867687','ngoc@gmail.com','Lang Son','','2002-06-25',NULL,'a9bd3710-9fb1-48cc-b7ee-f5ca451dd6fe','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807084940128,'Nguyễn Văn Tiến',_binary '\0','0123867687','nctvip02@gmail.com','Binh Dinh','','2002-06-25','2023-08-07 16:20:05','d52cbda0-ed6b-40b5-8760-097f8b8ee5f1','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807085013503,'Nguyễn Hữu Chuyên',_binary '\0','0123867687','user1@gmail.com','Nam Dinh','','2002-06-25',NULL,'7f88ba3b-ba7c-4ba2-8c69-e4ca4305bc1f','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230807085033264,'Văn Đinh Tùng',_binary '\0','0123867687','user2@gmail.com','Gia Lai','','2002-06-25',NULL,'43d66f4a-8069-464a-9cc9-517c8156789b','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230809091721974,'Hồ Quang Sáng',_binary '\0','0123867687','in@gmail.com','Da Lat','','2002-06-25',NULL,'9cf587bc-39da-46cb-aca8-058f98acd5f9','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL),(20230828063930613,'Võ Thị Như Quỳnh',_binary '\0','0123867687','dsadf@fsd.fds','Da Lat','','2002-06-25',NULL,'ba67c8aa-725f-493c-aa50-87ce2670a222','2020-06-24 17:00:00',NULL,'2022-06-24 17:00:00',NULL);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28 17:54:56
