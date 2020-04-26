-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2020 at 07:58 PM
-- Server version: 5.5.62
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shodan`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_info`
--

CREATE TABLE `asset_info` (
  `entry_id` int(5) NOT NULL,
  `ip_str` char(200) DEFAULT NULL,
  `port` char(5) DEFAULT NULL,
  `transport` char(4) DEFAULT NULL,
  `product` char(100) DEFAULT NULL,
  `version` char(100) DEFAULT NULL,
  `server` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_info`
--

INSERT INTO `asset_info` (`entry_id`, `ip_str`, `port`, `transport`, `product`, `version`, `server`) VALUES
(1, '129.59.63.211', '631', 'tcp', 'None', 'None', 'CUPS/2.2 IPP/2.1'),
(2, '129.59.213.6', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(3, '129.59.231.111', '88', 'udp', 'None', 'None', 'None'),
(4, '129.59.214.62', '88', 'udp', 'None', 'None', 'None'),
(5, '129.59.79.245', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(6, '129.59.36.220', '88', 'udp', 'None', 'None', 'None'),
(7, '129.59.193.40', '88', 'udp', 'None', 'None', 'None'),
(8, '129.59.117.85', '631', 'tcp', 'None', 'None', 'CUPS/1.6 IPP/2.1'),
(9, '129.59.199.103', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(10, '129.59.199.103', '88', 'udp', 'None', 'None', 'None'),
(11, '129.59.37.112', '88', 'udp', 'None', 'None', 'None'),
(12, '129.59.138.35', '389', 'tcp', 'None', 'None', 'None'),
(13, '129.59.111.57', '515', 'tcp', 'None', 'None', 'None'),
(14, '129.59.128.126', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(15, '129.59.117.220', '5353', 'udp', 'None', 'None', 'None'),
(16, '129.59.117.220', '22', 'tcp', 'Dropbear sshd', '2012.55', 'None'),
(17, '129.59.197.156', '25', 'tcp', 'Postfix smtpd', 'None', 'None'),
(18, '129.59.202.125', '554', 'tcp', 'None', 'None', 'None'),
(19, '129.59.139.137', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(20, '129.59.90.249', '5901', 'tcp', 'VNC', 'None', 'None'),
(21, '129.59.237.193', '631', 'tcp', 'None', 'None', 'CUPS/2.1 IPP/2.1'),
(22, '129.59.237.193', '88', 'udp', 'None', 'None', 'None'),
(23, '129.59.199.213', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(24, '129.59.198.157', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(25, '129.59.193.88', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(26, '129.59.230.219', '5353', 'udp', 'None', 'None', 'None'),
(27, '129.59.197.25', '111', 'tcp', 'None', 'None', 'None'),
(28, '129.59.154.168', '88', 'udp', 'None', 'None', 'None'),
(29, '129.59.214.249', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(30, '129.59.214.53', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(31, '129.59.120.45', '5353', 'udp', 'None', 'None', 'None'),
(32, '129.59.93.96', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(33, '129.59.201.212', '5353', 'udp', 'None', 'None', 'None'),
(34, '129.59.3.66', '22', 'tcp', 'None', 'None', 'None'),
(35, '129.59.198.200', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(36, '129.59.199.246', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(37, '129.59.213.140', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(38, '129.59.135.142', '1883', 'tcp', 'MQTT', 'None', 'None'),
(39, '129.59.37.129', '88', 'udp', 'None', 'None', 'None'),
(40, '129.59.197.101', '443', 'tcp', 'Apache httpd', '2.4.6', 'Apache/2.4.6 (CentOS) OpenSSL/1.0.2k-fips Phusion_Passenger/5.1.2'),
(41, '129.59.62.15', '5432', 'tcp', 'PostgreSQL', '10.0 - 10.1', 'None'),
(42, '129.59.80.14', '443', 'tcp', 'Apache httpd', '2.4.6', 'Apache/2.4.6 (Red Hat Enterprise Linux) OpenSSL/1.0.2k-fips PHP/5.6.40'),
(43, '129.59.37.233', '22', 'tcp', 'OpenSSH', '6.2', 'None'),
(44, '129.59.213.207', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(45, '129.59.249.211', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(46, '129.59.202.180', '88', 'udp', 'None', 'None', 'None'),
(47, '129.59.249.229', '88', 'udp', 'None', 'None', 'None'),
(48, '129.59.247.227', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(49, '129.59.228.26', '21', 'tcp', 'None', 'None', 'None'),
(50, '129.59.117.164', '22', 'tcp', 'Dropbear sshd', '2012.55', 'None'),
(51, '129.59.117.164', '5353', 'udp', 'None', 'None', 'None'),
(52, '129.59.202.239', '88', 'udp', 'None', 'None', 'None'),
(53, '129.59.107.222', '111', 'tcp', 'None', 'None', 'None'),
(54, '129.59.104.106', '443', 'tcp', 'nginx', '1.14.0', 'nginx/1.14.0 (Ubuntu)'),
(55, '129.59.107.228', '80', 'tcp', 'nginx', '1.10.3', 'nginx/1.10.3 (Ubuntu)'),
(56, '129.59.104.238', '443', 'tcp', 'Apache httpd', '2.4.7', 'Apache/2.4.7 (Ubuntu)'),
(57, '129.59.199.120', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(58, '129.59.199.233', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(59, '129.59.212.164', '3283', 'udp', 'Apple Remote Desktop', 'None', 'None'),
(60, '129.59.217.213', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(61, '129.59.197.98', '22', 'tcp', 'OpenSSH', '7.4', 'None'),
(62, '129.59.151.206', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(63, '129.59.104.79', '22', 'tcp', 'OpenSSH', '6.6.1p1 Ubuntu-2ubuntu2.13', 'None'),
(64, '129.59.80.22', '443', 'tcp', 'Microsoft IIS httpd', '10.0', 'Microsoft-IIS/10.0'),
(65, '129.59.249.131', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(66, '129.59.223.50', '80', 'tcp', 'Allegro RomPager', '4.04', 'Allegro-Software-RomPager/4.04'),
(67, '129.59.95.1', '264', 'tcp', 'None', 'None', 'None'),
(68, '129.59.213.94', '88', 'udp', 'None', 'None', 'None'),
(69, '129.59.237.235', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(70, '129.59.230.175', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(71, '129.59.214.189', '88', 'tcp', 'None', 'None', 'None'),
(72, '129.59.253.236', '5353', 'udp', 'None', 'None', 'None'),
(73, '129.59.78.225', '25', 'tcp', 'Postfix smtpd', 'None', 'None'),
(74, '129.59.117.174', '8080', 'tcp', 'None', 'None', 'Mbedthis-Appweb/12.5.0'),
(75, '129.59.111.31', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(76, '129.59.117.170', '5353', 'udp', 'None', 'None', 'None'),
(77, '129.59.104.47', '21', 'tcp', 'None', 'None', 'None'),
(78, '129.59.104.47', '119', 'tcp', 'InterNetNews (INN)', '2.5.3', 'None'),
(79, '129.59.197.160', '111', 'tcp', 'None', 'None', 'None'),
(80, '129.59.213.177', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(81, '129.59.250.191', '80', 'tcp', 'Debut embedded httpd', '1.20', 'debut/1.20'),
(82, '129.59.199.134', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(83, '129.59.107.96', '111', 'tcp', 'None', 'None', 'None'),
(84, '129.59.199.128', '88', 'udp', 'None', 'None', 'None'),
(85, '129.59.93.74', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(86, '129.59.230.16', '21', 'tcp', 'tnftpd', '20100324+GSSAPI', 'None'),
(87, '129.59.230.16', '88', 'udp', 'None', 'None', 'None'),
(88, '129.59.227.107', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(89, '129.59.227.107', '3283', 'udp', 'Apple Remote Desktop', 'None', 'None'),
(90, '129.59.193.98', '88', 'udp', 'None', 'None', 'None'),
(91, '129.59.193.98', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(92, '129.59.197.168', '25', 'tcp', 'Sendmail', '8.14.4/8.13.8', 'None'),
(93, '129.59.117.244', '22', 'tcp', 'Dropbear sshd', '2012.55', 'None'),
(94, '129.59.117.244', '5353', 'udp', 'None', 'None', 'None'),
(95, '129.59.213.24', '88', 'udp', 'None', 'None', 'None'),
(96, '129.59.250.96', '88', 'udp', 'None', 'None', 'None'),
(97, '129.59.116.239', '5353', 'udp', 'None', 'None', 'None'),
(98, '129.59.116.168', '3306', 'tcp', 'MySQL', 'None', 'None'),
(99, '129.59.116.173', '5353', 'udp', 'None', 'None', 'None'),
(100, '129.59.199.250', '88', 'udp', 'None', 'None', 'None'),
(101, '129.59.86.118', '443', 'tcp', 'Microsoft HTTPAPI httpd', '2.0', 'Microsoft-HTTPAPI/2.0'),
(102, '129.59.120.135', '5353', 'udp', 'None', 'None', 'None'),
(103, '129.59.141.37', '5432', 'tcp', 'PostgreSQL', '8.1.2 or 8.1.10 - 8.1.23', 'None'),
(104, '129.59.247.119', '88', 'udp', 'None', 'None', 'None'),
(105, '129.59.198.103', '88', 'udp', 'None', 'None', 'None'),
(106, '129.59.249.173', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(107, '129.59.104.161', '22', 'tcp', 'OpenSSH', '6.6.1p1 Ubuntu-2ubuntu2.8', 'None'),
(108, '129.59.144.192', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(109, '129.59.18.12', '443', 'tcp', 'Apache httpd', 'None', 'Apache'),
(110, '129.59.89.32', '119', 'tcp', 'Microsoft NNTP Service', '6.0.3790.3959', 'None'),
(111, '129.59.89.32', '21', 'tcp', 'Microsoft ftpd', 'None', 'None'),
(112, '129.59.153.81', '53', 'tcp', 'None', 'None', 'None'),
(113, '129.59.104.167', '993', 'tcp', 'None', 'None', 'None'),
(114, '129.59.154.134', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(115, '129.59.202.8', '554', 'tcp', 'None', 'None', 'None'),
(116, '129.59.79.148', '515', 'tcp', 'None', 'None', 'None'),
(117, '129.59.79.148', '5353', 'udp', 'None', 'None', 'None'),
(118, '129.59.107.206', '111', 'tcp', 'None', 'None', 'None'),
(119, '129.59.212.25', '25', 'tcp', 'Eudora smtpd', '1.3.1', 'None'),
(120, '129.59.223.165', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(121, '129.59.26.188', '5353', 'udp', 'None', 'None', 'None'),
(122, '129.59.69.242', '22', 'tcp', 'OpenSSH', '7.7', 'None'),
(123, '129.59.198.199', '6000', 'tcp', 'None', 'None', 'None'),
(124, '129.59.228.120', '5900', 'tcp', 'VNC', 'None', 'None'),
(125, '129.59.228.120', '17', 'tcp', 'Windows qotd', 'None', 'None'),
(126, '129.59.193.113', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(127, '129.59.190.125', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(128, '129.59.120.147', '5353', 'udp', 'None', 'None', 'None'),
(129, '129.59.116.42', '88', 'udp', 'None', 'None', 'None'),
(130, '129.59.73.216', '902', 'tcp', 'VMware Authentication Daemon', '1.10', 'None'),
(131, '129.59.107.105', '111', 'tcp', 'None', 'None', 'None'),
(132, '129.59.77.105', '21', 'tcp', 'Axis 211W Network Camera ftpd', '4.44.1', 'None'),
(133, '129.59.77.105', '554', 'tcp', 'None', 'None', 'None'),
(134, '129.59.104.149', '22', 'tcp', 'OpenSSH', '7.9', 'None'),
(135, '129.59.237.101', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(136, '129.59.153.65', '88', 'udp', 'None', 'None', 'None'),
(137, '129.59.199.154', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(138, '129.59.199.154', '88', 'udp', 'None', 'None', 'None'),
(139, '129.59.214.98', '88', 'udp', 'None', 'None', 'None'),
(140, '129.59.213.53', '515', 'tcp', 'None', 'None', 'None'),
(141, '129.59.197.159', '111', 'tcp', 'None', 'None', 'None'),
(142, '129.59.212.58', '515', 'tcp', 'None', 'None', 'None'),
(143, '129.59.51.125', '88', 'udp', 'None', 'None', 'None'),
(144, '129.59.213.229', '88', 'udp', 'None', 'None', 'None'),
(145, '129.59.214.47', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(146, '129.59.237.26', '5900', 'tcp', 'VNC', 'None', 'None'),
(147, '129.59.86.47', '443', 'tcp', 'Microsoft HTTPAPI httpd', '2.0', 'Microsoft-HTTPAPI/2.0'),
(148, '129.59.212.18', '88', 'udp', 'None', 'None', 'None'),
(149, '129.59.154.81', '21', 'tcp', 'None', 'None', 'None'),
(150, '129.59.86.142', '443', 'tcp', 'Apache httpd', '2.2.3', 'Apache/2.2.3 (CentOS)'),
(151, '129.59.107.148', '2181', 'tcp', 'None', 'None', 'None'),
(152, '129.59.104.76', '80', 'tcp', 'Apache httpd', 'None', 'Apache'),
(153, '129.59.104.76', '443', 'tcp', 'Apache httpd', 'None', 'Apache'),
(154, '129.59.141.176', '8080', 'tcp', 'Jetty', '7.6.16.v20140903', 'Jetty(7.6.16.v20140903)'),
(155, '129.59.212.200', '554', 'tcp', 'None', 'None', 'None'),
(156, '129.59.141.59', '623', 'udp', 'None', 'None', 'None'),
(157, '129.59.154.117', '88', 'udp', 'None', 'None', 'None'),
(158, '129.59.93.164', '515', 'tcp', 'None', 'None', 'None'),
(159, '129.59.249.148', '88', 'udp', 'None', 'None', 'None'),
(160, '129.59.154.111', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(161, '129.59.199.162', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(162, '129.59.51.17', '88', 'udp', 'None', 'None', 'None'),
(163, '129.59.119.212', '69', 'udp', 'None', 'None', 'None'),
(164, '129.59.119.107', '88', 'udp', 'None', 'None', 'None'),
(165, '129.59.193.44', '88', 'udp', 'None', 'None', 'None'),
(166, '129.59.213.161', '88', 'udp', 'None', 'None', 'None'),
(167, '129.59.213.159', '88', 'udp', 'None', 'None', 'None'),
(168, '129.59.145.78', '16992', 'tcp', 'None', 'None', 'Intel(R) Active Management Technology 7.0.10'),
(169, '129.59.110.138', '8443', 'tcp', 'None', 'None', 'Catwalk'),
(170, '129.59.37.154', '22', 'tcp', 'OpenSSH', '6.9', 'None'),
(171, '129.59.86.58', '443', 'tcp', 'Apache httpd', 'None', 'Apache'),
(172, '129.59.86.59', '80', 'tcp', 'None', 'None', 'BigIP'),
(173, '129.59.86.59', '443', 'tcp', 'Apache httpd', 'None', 'Apache'),
(174, '129.59.233.219', '5900', 'tcp', 'RealVNC Enterprise', 'None', 'None'),
(175, '129.59.86.61', '443', 'tcp', 'Apache httpd', 'None', 'Apache'),
(176, '129.59.214.31', '88', 'udp', 'None', 'None', 'None'),
(177, '129.59.230.96', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(178, '129.59.104.144', '443', 'tcp', 'nginx', 'None', 'nginx'),
(179, '129.59.233.32', '554', 'tcp', 'None', 'None', 'None'),
(180, '129.59.253.101', '5353', 'udp', 'None', 'None', 'None'),
(181, '129.59.250.146', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(182, '129.59.104.137', '22', 'tcp', 'OpenSSH', '7.2p2 Ubuntu-4ubuntu2.8', 'None'),
(183, '129.59.223.217', '88', 'udp', 'None', 'None', 'None'),
(184, '129.59.92.165', '5353', 'udp', 'None', 'None', 'None'),
(185, '129.59.120.62', '22', 'tcp', 'OpenSSH', '7.4', 'None'),
(186, '129.59.90.79', '21', 'tcp', 'None', 'None', 'None'),
(187, '129.59.89.48', '88', 'udp', 'None', 'None', 'None'),
(188, '129.59.37.141', '623', 'udp', 'None', 'None', 'None'),
(189, '129.59.108.126', '443', 'tcp', 'Microsoft IIS httpd', '8.0', 'Microsoft-IIS/8.0'),
(190, '129.59.154.104', '88', 'udp', 'None', 'None', 'None'),
(191, '129.59.199.225', '5353', 'udp', 'None', 'None', 'None'),
(192, '129.59.153.53', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(193, '129.59.202.139', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(194, '129.59.231.247', '5009', 'tcp', 'Apple AirPort', 'None', 'None'),
(195, '129.59.190.117', '5985', 'tcp', 'None', 'None', 'Microsoft-HTTPAPI/2.0'),
(196, '129.59.37.224', '88', 'udp', 'None', 'None', 'None'),
(197, '129.59.3.67', '22', 'tcp', 'Cisco SSH', '2.0', 'None'),
(198, '129.59.193.58', '5900', 'tcp', 'Apple remote desktop vnc', 'None', 'None'),
(199, '129.59.107.37', '2181', 'tcp', 'None', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `cve_info`
--

CREATE TABLE `cve_info` (
  `cve_id` int(5) NOT NULL,
  `entry_id` int(5) DEFAULT NULL,
  `cve` char(100) DEFAULT NULL,
  `summary` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cve_info`
--

INSERT INTO `cve_info` (`cve_id`, `entry_id`, `cve`, `summary`) VALUES
(1, 40, 'CVE-2014-0117', 'The mod_proxy module in the Apache HTTP Server 2.4.x before 2.4.10, when a reverse proxy is enabled, allows remote attackers to cause a denial of service (child-process crash) via a crafted HTTP Connection header.'),
(2, 40, 'CVE-2014-0118', 'The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size.'),
(3, 40, 'CVE-2016-0736', 'In Apache HTTP Server versions 2.4.0 to 2.4.23, mod_session_crypto was encrypting its data/cookie using the configured ciphers with possibly either CBC or ECB modes of operation (AES256-CBC by default), hence no selectable or builtin authenticated encryption. This made it vulnerable to padding oracle attacks, particularly with CBC.'),
(4, 40, 'CVE-2015-3185', 'The ap_some_auth_required function in server/request.c in the Apache HTTP Server 2.4.x before 2.4.14 does not consider that a Require directive may be associated with an authorization setting rather than an authentication setting, which allows remote attackers to bypass intended access restrictions in opportunistic circumstances by leveraging the presence of a module that relies on the 2.2 API behavior.'),
(5, 40, 'CVE-2015-3184', 'mod_authz_svn in Apache Subversion 1.7.x before 1.7.21 and 1.8.x before 1.8.14, when using Apache httpd 2.4.x, does not properly restrict anonymous access, which allows remote anonymous users to read hidden files via the path name.'),
(6, 40, 'CVE-2018-1312', 'In Apache httpd 2.2.0 to 2.4.29, when generating an HTTP Digest authentication challenge, the nonce sent to prevent reply attacks was not correctly generated using a pseudo-random seed. In a cluster of servers using a common Digest authentication configuration, HTTP requests could be replayed across servers by an attacker without detection.'),
(7, 40, 'CVE-2014-0098', 'The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation.'),
(8, 40, 'CVE-2016-8612', 'Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process.'),
(9, 40, 'CVE-2014-0226', 'Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c.'),
(10, 40, 'CVE-2014-3523', 'Memory leak in the winnt_accept function in server/mpm/winnt/child.c in the WinNT MPM in the Apache HTTP Server 2.4.x before 2.4.10 on Windows, when the default AcceptFilter is enabled, allows remote attackers to cause a denial of service (memory consumption) via crafted requests.'),
(11, 41, 'CVE-2017-12172', 'PostgreSQL 10.x before 10.1, 9.6.x before 9.6.6, 9.5.x before 9.5.10, 9.4.x before 9.4.15, 9.3.x before 9.3.20, and 9.2.x before 9.2.24 runs under a non-root operating system account, and database superusers have effective ability to run arbitrary code under that system account. PostgreSQL provides a script for starting the database server during system boot. Packages of PostgreSQL for many operating systems provide their own, packager-authored startup implementations. Several implementations use a log file name that the database superuser can replace with a symbolic link. As root, they open(), chmod() and/or chown() this log file name. This often suffices for the database superuser to escalate to root privileges when root starts the server.'),
(12, 41, 'CVE-2017-15098', 'Invalid json_populate_recordset or jsonb_populate_recordset function calls in PostgreSQL 10.x before 10.1, 9.6.x before 9.6.6, 9.5.x before 9.5.10, 9.4.x before 9.4.15, and 9.3.x before 9.3.20 can crash the server or disclose a few bytes of server memory.'),
(13, 42, 'CVE-2014-0117', 'The mod_proxy module in the Apache HTTP Server 2.4.x before 2.4.10, when a reverse proxy is enabled, allows remote attackers to cause a denial of service (child-process crash) via a crafted HTTP Connection header.'),
(14, 42, 'CVE-2014-0118', 'The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size.'),
(15, 42, 'CVE-2016-0736', 'In Apache HTTP Server versions 2.4.0 to 2.4.23, mod_session_crypto was encrypting its data/cookie using the configured ciphers with possibly either CBC or ECB modes of operation (AES256-CBC by default), hence no selectable or builtin authenticated encryption. This made it vulnerable to padding oracle attacks, particularly with CBC.'),
(16, 42, 'CVE-2015-3185', 'The ap_some_auth_required function in server/request.c in the Apache HTTP Server 2.4.x before 2.4.14 does not consider that a Require directive may be associated with an authorization setting rather than an authentication setting, which allows remote attackers to bypass intended access restrictions in opportunistic circumstances by leveraging the presence of a module that relies on the 2.2 API behavior.'),
(17, 42, 'CVE-2015-3184', 'mod_authz_svn in Apache Subversion 1.7.x before 1.7.21 and 1.8.x before 1.8.14, when using Apache httpd 2.4.x, does not properly restrict anonymous access, which allows remote anonymous users to read hidden files via the path name.'),
(18, 42, 'CVE-2018-1312', 'In Apache httpd 2.2.0 to 2.4.29, when generating an HTTP Digest authentication challenge, the nonce sent to prevent reply attacks was not correctly generated using a pseudo-random seed. In a cluster of servers using a common Digest authentication configuration, HTTP requests could be replayed across servers by an attacker without detection.'),
(19, 42, 'CVE-2014-0098', 'The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation.'),
(20, 42, 'CVE-2016-8612', 'Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process.'),
(21, 42, 'CVE-2014-0226', 'Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c.'),
(22, 42, 'CVE-2014-3523', 'Memory leak in the winnt_accept function in server/mpm/winnt/child.c in the WinNT MPM in the Apache HTTP Server 2.4.x before 2.4.10 on Windows, when the default AcceptFilter is enabled, allows remote attackers to cause a denial of service (memory consumption) via crafted requests.'),
(23, 43, 'CVE-2014-2532', 'sshd in OpenSSH before 6.6 does not properly support wildcards on AcceptEnv lines in sshd_config, which allows remote attackers to bypass intended environment restrictions by using a substring located before a wildcard character.'),
(24, 56, 'CVE-2014-0117', 'The mod_proxy module in the Apache HTTP Server 2.4.x before 2.4.10, when a reverse proxy is enabled, allows remote attackers to cause a denial of service (child-process crash) via a crafted HTTP Connection header.'),
(25, 56, 'CVE-2014-0118', 'The deflate_in_filter function in mod_deflate.c in the mod_deflate module in the Apache HTTP Server before 2.4.10, when request body decompression is enabled, allows remote attackers to cause a denial of service (resource consumption) via crafted request data that decompresses to a much larger size.'),
(26, 56, 'CVE-2016-0736', 'In Apache HTTP Server versions 2.4.0 to 2.4.23, mod_session_crypto was encrypting its data/cookie using the configured ciphers with possibly either CBC or ECB modes of operation (AES256-CBC by default), hence no selectable or builtin authenticated encryption. This made it vulnerable to padding oracle attacks, particularly with CBC.'),
(27, 56, 'CVE-2015-3185', 'The ap_some_auth_required function in server/request.c in the Apache HTTP Server 2.4.x before 2.4.14 does not consider that a Require directive may be associated with an authorization setting rather than an authentication setting, which allows remote attackers to bypass intended access restrictions in opportunistic circumstances by leveraging the presence of a module that relies on the 2.2 API behavior.'),
(28, 56, 'CVE-2015-3184', 'mod_authz_svn in Apache Subversion 1.7.x before 1.7.21 and 1.8.x before 1.8.14, when using Apache httpd 2.4.x, does not properly restrict anonymous access, which allows remote anonymous users to read hidden files via the path name.'),
(29, 56, 'CVE-2018-1312', 'In Apache httpd 2.2.0 to 2.4.29, when generating an HTTP Digest authentication challenge, the nonce sent to prevent reply attacks was not correctly generated using a pseudo-random seed. In a cluster of servers using a common Digest authentication configuration, HTTP requests could be replayed across servers by an attacker without detection.'),
(30, 56, 'CVE-2014-0098', 'The log_cookie function in mod_log_config.c in the mod_log_config module in the Apache HTTP Server before 2.4.8 allows remote attackers to cause a denial of service (segmentation fault and daemon crash) via a crafted cookie that is not properly handled during truncation.'),
(31, 56, 'CVE-2016-8612', 'Apache HTTP Server mod_cluster before version httpd 2.4.23 is vulnerable to an Improper Input Validation in the protocol parsing logic in the load balancer resulting in a Segmentation Fault in the serving httpd process.'),
(32, 56, 'CVE-2014-0226', 'Race condition in the mod_status module in the Apache HTTP Server before 2.4.10 allows remote attackers to cause a denial of service (heap-based buffer overflow), or possibly obtain sensitive credential information or execute arbitrary code, via a crafted request that triggers improper scoreboard handling within the status_handler function in modules/generators/mod_status.c and the lua_ap_scoreboard_worker function in modules/lua/lua_request.c.'),
(33, 56, 'CVE-2014-3523', 'Memory leak in the winnt_accept function in server/mpm/winnt/child.c in the WinNT MPM in the Apache HTTP Server 2.4.x before 2.4.10 on Windows, when the default AcceptFilter is enabled, allows remote attackers to cause a denial of service (memory consumption) via crafted requests.'),
(34, 103, 'CVE-2006-5541', 'backend/parser/parse_coerce.c in PostgreSQL 7.4.1 through 7.4.14, 8.0.x before 8.0.9, and 8.1.x before 8.1.5 allows remote authenticated users to cause a denial of service (daemon crash) via a coercion of an unknown element to ANYARRAY.'),
(35, 103, 'CVE-2006-5540', 'backend/parser/analyze.c in PostgreSQL 8.1.x before 8.1.5 allows remote authenticated users to cause a denial of service (daemon crash) via certain aggregate functions in an UPDATE statement, which are not properly handled during a \"MIN/MAX index optimization.\"'),
(36, 103, 'CVE-2007-3280', 'The Database Link library (dblink) in PostgreSQL 8.1 implements functions via CREATE statements that map to arbitrary libraries based on the C programming language, which allows remote authenticated superusers to map and execute a function from any library, as demonstrated by using the system function in libc.so.6 to gain shell access.'),
(37, 122, 'CVE-2018-15473', 'OpenSSH through 7.7 is prone to a user enumeration vulnerability due to not delaying bailout for an invalid authenticating user until after the packet containing the request has been fully parsed, related to auth2-gss.c, auth2-hostbased.c, and auth2-pubkey.c.'),
(38, 134, 'CVE-2019-6111', 'An issue was discovered in OpenSSH 7.9. Due to the scp implementation being derived from 1983 rcp, the server chooses which files/directories are sent to the client. However, the scp client only performs cursory validation of the object name returned (only directory traversal attacks are prevented). A malicious scp server (or Man-in-The-Middle attacker) can overwrite arbitrary files in the scp client target directory. If recursive operation (-r) is performed, the server can manipulate subdirectories as well (for example, to overwrite the .ssh/authorized_keys file).'),
(39, 134, 'CVE-2019-6110', 'In OpenSSH 7.9, due to accepting and displaying arbitrary stderr output from the server, a malicious server (or Man-in-The-Middle attacker) can manipulate the client output, for example to use ANSI control codes to hide additional files being transferred.'),
(40, 134, 'CVE-2018-20685', 'In OpenSSH 7.9, scp.c in the scp client allows remote SSH servers to bypass intended access restrictions via the filename of . or an empty filename. The impact is modifying the permissions of the target directory on the client side.'),
(41, 134, 'CVE-2019-6109', 'An issue was discovered in OpenSSH 7.9. Due to missing character encoding in the progress display, a malicious server (or Man-in-The-Middle attacker) can employ crafted object names to manipulate the client output, e.g., by using ANSI control codes to hide additional files being transferred. This affects refresh_progress_meter() in progressmeter.c.'),
(42, 150, 'CVE-2007-1890', 'Integer overflow in the msg_receive function in PHP 4 before 4.4.5 and PHP 5 before 5.2.1, on FreeBSD and possibly other platforms, allows context-dependent attackers to execute arbitrary code via certain maxsize values, as demonstrated by 0xffffffff.'),
(43, 150, 'CVE-2006-4625', 'PHP 4.x up to 4.4.4 and PHP 5 up to 5.1.6 allows local users to bypass certain Apache HTTP Server httpd.conf options, such as safe_mode and open_basedir, via the ini_restore function, which resets the values to their php.ini (Master Value) defaults.'),
(44, 170, 'CVE-2016-0777', 'The resend_bytes function in roaming_common.c in the client in OpenSSH 5.x, 6.x, and 7.x before 7.1p2 allows remote servers to obtain sensitive information from process memory by requesting transmission of an entire buffer, as demonstrated by reading a private key.');

-- --------------------------------------------------------

--
-- Table structure for table `historic_data`
--

CREATE TABLE `historic_data` (
  `date` date NOT NULL,
  `asset_total` int(11) NOT NULL,
  `vuln_total` int(11) NOT NULL,
  `port1` varchar(255) NOT NULL,
  `port2` varchar(255) NOT NULL,
  `port3` varchar(255) NOT NULL,
  `cve1` varchar(255) NOT NULL,
  `cve2` varchar(255) NOT NULL,
  `cve3` varchar(255) NOT NULL,
  `host1` varchar(255) NOT NULL,
  `host2` varchar(255) NOT NULL,
  `host3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historic_data`
--

INSERT INTO `historic_data` (`date`, `asset_total`, `vuln_total`, `port1`, `port2`, `port3`, `cve1`, `cve2`, `cve3`, `host1`, `host2`, `host3`) VALUES
('2020-01-01', 199, 11, '80', '443', '22', 'CVE-2014-0117', 'CVE-2016-8612', 'CVE-2016-0777', '129.59.86.35', '129.59.141.9', '129.59.73.149'),
('2020-02-01', 199, 6, '443', '80', '22', 'CVE-2014-0117', 'CVE-2016-8612', 'CVE-2016-8612', '129.59.141.9', '129.59.73.149', '129.59.151.61'),
('2020-03-01', 199, 14, '443', '22', '80', 'CVE-2014-0117', 'CVE-2016-8612', 'CVE-2016-8612', '129.59.73.149', '129.59.151.61', '129.59.104.49'),
('2020-04-17', 199, 9, '88', '5900', '443', 'CVE-2010-1256', 'CVE-2010-1256', 'CVE-2012-2531', '129.59.197.201', '129.59.141.59', '129.59.141.59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `username`, `password`) VALUES
(105, 'spencer', 'York', 'spencer', '$2y$10$T8hGzbEgJgOYZpkoqIGTp.91u/ZU3nkZaWxsLg6zPnEYhdTwDKRFu'),
(0, 'Admin', 'admin', 'admin', '$2y$10$wuwE2swzzWZlfOeX2skIReSudD57ZVdb/Mxo/AkbaQeR6r61pP2ZO'),
(0, 'DemoAdmin', 'DemoAdmin', 'demoadmin', '$2y$10$lU6CpFA2uxGgcvYGD/A8A..gMwizjNtRS/i2Vw3HnltpwA.TrjFii'),
(0, 'Schyler', 'Davis', 'SkyGuy', '$2y$10$b3YmWxbFMC/ZVHXGz5gSn.cy2b/Vq1oPspG5ZTtpscKX2hltHHgyu'),
(0, 'Paige', 'Weber', 'paigeweber', '$2y$10$RZ7j7N4bDCvR9mrcQvQw2OR0QeXmw8mMJUtKlyf0lSMmi6E1ruAZi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_info`
--
ALTER TABLE `asset_info`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `cve_info`
--
ALTER TABLE `cve_info`
  ADD PRIMARY KEY (`cve_id`),
  ADD KEY `entry_id` (`entry_id`);

--
-- Indexes for table `historic_data`
--
ALTER TABLE `historic_data`
  ADD PRIMARY KEY (`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_info`
--
ALTER TABLE `asset_info`
  MODIFY `entry_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `cve_info`
--
ALTER TABLE `cve_info`
  MODIFY `cve_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cve_info`
--
ALTER TABLE `cve_info`
  ADD CONSTRAINT `cve_info_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `asset_info` (`entry_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
