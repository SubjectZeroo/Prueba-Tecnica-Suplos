-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for intelcost_bienes
CREATE DATABASE IF NOT EXISTS `intelcost_bienes` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `intelcost_bienes`;

-- Dumping structure for table intelcost_bienes.bienes
CREATE TABLE IF NOT EXISTS `bienes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `direccion` varchar(155) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL,
  `telefono` varchar(155) DEFAULT NULL,
  `codigo_postal` varchar(155) DEFAULT NULL,
  `tipo_id` int(11) DEFAULT NULL,
  `precio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- Dumping data for table intelcost_bienes.bienes: ~100 rows (approximately)
/*!40000 ALTER TABLE `bienes` DISABLE KEYS */;
INSERT INTO `bienes` (`id`, `direccion`, `ciudad_id`, `telefono`, `codigo_postal`, `tipo_id`, `precio`) VALUES
	(1, 'Ap #549-7395 Ut Rd.', 1, '334-052-0954', '85328', 1, '$30,746'),
	(2, 'P.O. Box 657, 9831 Cursus St.', 2, '488-441-5521', '04436', 2, '$71,045'),
	(3, 'Ap #325-2507 Quisque Av.', 3, '623-807-2869', '89804', 2, '$36,087'),
	(4, '347-866 Laoreet Road', 3, '997-640-8188', '94526-134', 2, '$16,048'),
	(5, '4732 Ipsum. Rd.', 4, '802-414-8872', '162925', 1, '$45,912'),
	(6, '672-9576 Consectetuer Road', 2, '355-601-5749', '210020', 2, '$64,370'),
	(7, '549-5766 Sodales St.', 2, '557-228-6918', '16794', 1, '$2,846'),
	(8, 'P.O. Box 847, 2589 In Av.', 5, '390-713-8687', '70689', 3, '$60,951'),
	(9, '175-4344 Nec, Ave', 2, '578-170-6179', 'P0C 0G3', 2, '$58,902'),
	(10, 'P.O. Box 497, 8679 Turpis. St.', 1, '870-559-3430', '7029', 1, '$17,759'),
	(11, '844-8312 Molestie Road', 6, '147-920-5435', '5237JG', 1, '$91,067'),
	(12, 'P.O. Box 494, 674 Amet, Street', 1, '056-617-2556', '684445', 1, '$36,155'),
	(13, 'P.O. Box 466, 2795 Velit. Avenue', 1, '252-330-0116', '5422', 3, '$78,947'),
	(14, 'P.O. Box 523, 2126 Aliquet Rd.', 2, '986-825-6899', '37045', 2, '$51,817'),
	(15, 'Ap #669-7718 Cras St.', 1, '200-935-8531', 'RI9 6RT', 1, '$39,561'),
	(16, '2211 Malesuada Rd.', 3, '436-742-7954', '31519', 3, '$52,433'),
	(17, 'P.O. Box 181, 7858 Nisi. St.', 4, '383-252-8216', '83594', 3, '$85,641'),
	(18, '741-2614 Accumsan Rd.', 6, '487-609-0106', '753543', 2, '$78,854'),
	(19, '829-3250 In Rd.', 1, '788-832-7076', '783917', 2, '$64,471'),
	(20, 'Ap #393-3363 Fringilla Road', 2, '335-278-9678', '8635', 3, '$47,420'),
	(21, 'Ap #247-8024 Curabitur St.', 6, '167-013-1429', '15971', 2, '$28,795'),
	(22, '995-1099 Id, Road', 5, '491-394-8799', '37-346', 3, '$69,505'),
	(23, 'Ap #176-8333 Gravida St.', 6, '339-324-8859', '0318YB', 2, '$73,231'),
	(24, '340-985 Lobortis. Avenue', 5, '049-063-4896', '5411', 2, '$83,847'),
	(25, '992-7214 Pharetra Rd.', 6, '257-364-7011', '1045SO', 1, '$93,907'),
	(26, '7705 Fusce St.', 5, '363-540-9113', '9802', 2, '$21,796'),
	(27, '723-5458 Neque. Ave', 1, '512-886-8792', '1038', 1, '$97,134'),
	(28, 'Ap #246-9877 Ultricies Rd.', 5, '423-014-6013', '61483', 1, '$32,659'),
	(29, 'Ap #712-3234 Nunc Road', 6, '334-030-0048', '9738', 3, '$14,560'),
	(30, '4406 Justo Avenue', 4, '242-441-7733', '38707', 2, '$69,433'),
	(31, 'Ap #172-6600 Vivamus St.', 1, '710-649-0830', '57503', 2, '$1,986'),
	(32, 'Ap #728-4099 Et, Ave', 4, '535-501-0707', '0242AN', 1, '$73,668'),
	(33, '4648 Sem Rd.', 5, '956-749-3273', '94323', 3, '$85,996'),
	(34, 'Ap #539-4295 Volutpat Avenue', 6, '904-312-9292', '894922', 1, '$38,835'),
	(35, '500-6214 Tempus, Street', 6, '168-671-0953', '5574', 2, '$62,069'),
	(36, '233-9001 Cum Rd.', 1, '670-701-8060', '20705', 2, '$32,174'),
	(37, '4084 Sit St.', 2, '326-023-8622', '02187', 3, '$23,492'),
	(38, 'P.O. Box 825, 9762 Etiam Street', 6, '343-695-3228', '56309', 2, '$42,579'),
	(39, '5889 Luctus. Ave', 1, '259-039-5762', '6038', 3, '$41,843'),
	(40, 'Ap #834-3873 Nullam St.', 4, '809-587-9484', '69526', 2, '$94,728'),
	(41, 'P.O. Box 711, 706 Dis Rd.', 5, '354-038-8533', '65211', 2, '$90,451'),
	(42, 'P.O. Box 315, 6041 Duis Avenue', 2, '186-671-4205', '893592', 2, '$2,261'),
	(43, '5640 Dapibus St.', 5, '906-342-4567', '4263', 2, '$76,404'),
	(44, '5260 Sed Rd.', 1, '336-903-7567', '92501', 1, '$2,055'),
	(45, 'Ap #864-1235 Mi Rd.', 2, '723-547-1102', 'G9T 9P2', 2, '$99,508'),
	(46, '8151 Rutrum Rd.', 6, '594-072-4670', '58567', 1, '$7,952'),
	(47, 'P.O. Box 926, 1798 Pellentesque St.', 1, '328-063-3034', '0547ID', 1, '$48,882'),
	(48, 'P.O. Box 264, 6488 Euismod Avenue', 3, '210-220-4305', 'J6H 9S9', 3, '$33,141'),
	(49, 'Ap #694-1472 Orci Ave', 1, '362-652-3567', '63897', 3, '$88,980'),
	(50, 'P.O. Box 354, 6477 Eget St.', 3, '593-092-8585', '90970-060', 1, '$35,831'),
	(51, '128-8013 Imperdiet Avenue', 1, '611-764-9648', '727883', 2, '$99,230'),
	(52, 'Ap #394-8201 Pede. St.', 1, '057-000-7888', '6390', 3, '$82,679'),
	(53, 'Ap #210-1906 Mauris St.', 1, '742-185-0661', '4116', 1, '$96,998'),
	(54, '228-2036 Tincidunt Road', 2, '565-750-7079', '7217', 1, '$54,710'),
	(55, '681-117 Facilisis Street', 5, '695-936-1302', '83809', 1, '$96,281'),
	(56, 'P.O. Box 665, 3825 Nec St.', 4, '859-638-8140', '843642', 1, '$3,829'),
	(57, 'Ap #800-4147 In Street', 3, '324-489-2139', '66013', 2, '$70,069'),
	(58, '297-8960 Libero. Rd.', 3, '626-297-1082', '9133', 2, '$26,514'),
	(59, '5605 Nisi Ave', 2, '842-236-6720', '188876', 1, '$68,927'),
	(60, 'P.O. Box 870, 9855 Tristique Avenue', 6, '114-453-9481', '64899', 1, '$67,772'),
	(61, 'Ap #214-5963 Metus Road', 4, '337-930-6310', '5290KA', 1, '$71,048'),
	(62, '869 Tempus St.', 1, '235-726-7602', 'Y4V 5A1', 2, '$90,138'),
	(63, 'P.O. Box 916, 4350 In Avenue', 1, '292-391-9640', '26271', 2, '$70,212'),
	(64, 'Ap #768-2635 Eget, Avenue', 6, '909-006-0105', '93246', 1, '$74,320'),
	(65, 'Ap #581-5945 Ullamcorper Road', 2, '820-970-3451', '35826', 3, '$15,782'),
	(66, 'Ap #298-502 Dolor. Ave', 2, '339-015-5616', '8625GM', 2, '$27,530'),
	(67, '569-3972 Malesuada Street', 6, '712-181-4815', '857132', 2, '$56,359'),
	(68, 'Ap #378-8818 Molestie Ave', 3, '286-311-5133', '39945', 2, '$29,789'),
	(69, '766 Consequat, St.', 3, '790-137-7352', '71804', 1, '$57,408'),
	(70, '729-3081 Cubilia Rd.', 5, '888-946-8086', 'F7 0YF', 1, '$87,871'),
	(71, '457-7987 Curae; Rd.', 5, '760-938-1297', '19418', 1, '$43,727'),
	(72, '6158 Tempor Rd.', 4, '690-850-4520', 'L18 9SC', 2, '$30,425'),
	(73, 'Ap #693-2983 Class St.', 1, '213-536-0655', '21712', 1, '$23,311'),
	(74, '841 Scelerisque Rd.', 4, '367-551-7660', 'YY0A 3TD', 2, '$72,611'),
	(75, '792-7569 Dolor Rd.', 1, '261-470-7647', '14844', 1, '$98,815'),
	(76, '444-5718 Ut Rd.', 5, '041-009-6788', '8230', 1, '$50,861'),
	(77, 'Ap #377-8404 Ipsum Street', 1, '534-916-5827', '37234', 2, '$87,808'),
	(78, '2425 Rutrum Street', 3, '494-431-4661', 'IC54 7IK', 1, '$93,263'),
	(79, '344-8412 Nisl. St.', 4, '050-082-4431', '99-113', 3, '$99,947'),
	(80, '9399 Sem Ave', 4, '909-320-3004', '03082', 1, '$69,922'),
	(81, 'P.O. Box 284, 8629 Egestas. St.', 2, '196-562-2718', 'A8Z 9N1', 1, '$25,541'),
	(82, '283-2290 Aliquam Street', 1, '272-977-8230', 'G1C 0L5', 3, '$97,152'),
	(83, 'P.O. Box 787, 1352 Mollis Rd.', 1, '580-328-0397', '63477', 1, '$70,429'),
	(84, '571-3448 Ipsum. St.', 1, '451-067-8082', '1688', 2, '$9,426'),
	(85, '626-4183 Eros. Road', 1, '818-932-2502', '3977', 3, '$82,655'),
	(86, 'Ap #500-446 Accumsan Ave', 3, '453-561-4737', '3773', 2, '$29,354'),
	(87, '3703 Quisque Rd.', 2, '020-821-1050', '54983', 3, '$96,267'),
	(88, '5946 Consectetuer St.', 1, '773-538-6408', 'Q28 3PO', 1, '$61,691'),
	(89, 'P.O. Box 556, 1951 Vulputate Av.', 4, '670-572-1780', '4484KP', 1, '$95,859'),
	(90, '727-198 A Road', 4, '821-444-9824', '5962', 3, '$82,504'),
	(91, 'Ap #271-6835 Tempus St.', 5, '601-485-1049', '703157', 1, '$80,965'),
	(92, 'P.O. Box 519, 981 Nostra, Avenue', 6, '440-469-6769', '61790-368', 2, '$49,957'),
	(93, '2759 Faucibus St.', 5, '510-056-8508', '612383', 1, '$23,498'),
	(94, '5720 Urna, Street', 6, '581-094-0717', 'X45 0FA', 2, '$8,187'),
	(95, '283-1453 Amet, Avenue', 3, '751-107-3929', 'R1B 4Y7', 3, '$32,660'),
	(96, 'P.O. Box 169, 7235 Quisque Road', 3, '782-078-8565', '86541', 1, '$39,721'),
	(97, '6840 Rhoncus. Ave', 6, '845-500-3131', '7112', 2, '$97,135'),
	(98, '967-7675 A, Rd.', 3, '751-125-7876', '34981', 3, '$6,672'),
	(99, '227-6771 Ut Street', 4, '262-186-7762', '7131', 2, '$17,160'),
	(100, 'P.O. Box 432, 4652 Proin Ave', 5, '113-637-2816', '598072', 1, '$42,804');
/*!40000 ALTER TABLE `bienes` ENABLE KEYS */;

-- Dumping structure for table intelcost_bienes.ciudad
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table intelcost_bienes.ciudad: ~6 rows (approximately)
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` (`id`, `name`) VALUES
	(1, 'New York'),
	(2, 'Orlando'),
	(3, 'Los Angeles'),
	(4, 'Houston'),
	(5, 'Washington'),
	(6, 'Miami');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;

-- Dumping structure for table intelcost_bienes.favoritos_bienes
CREATE TABLE IF NOT EXISTS `favoritos_bienes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bien_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Dumping data for table intelcost_bienes.favoritos_bienes: ~0 rows (approximately)
/*!40000 ALTER TABLE `favoritos_bienes` DISABLE KEYS */;
INSERT INTO `favoritos_bienes` (`id`, `bien_id`) VALUES
	(15, 1),
	(16, 2);
/*!40000 ALTER TABLE `favoritos_bienes` ENABLE KEYS */;

-- Dumping structure for table intelcost_bienes.tipo_bienes
CREATE TABLE IF NOT EXISTS `tipo_bienes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table intelcost_bienes.tipo_bienes: ~3 rows (approximately)
/*!40000 ALTER TABLE `tipo_bienes` DISABLE KEYS */;
INSERT INTO `tipo_bienes` (`id`, `name`) VALUES
	(1, 'Casa'),
	(2, 'Casa de  Campo'),
	(3, 'Apartamento');
/*!40000 ALTER TABLE `tipo_bienes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
