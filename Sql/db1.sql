-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2019 at 11:37 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'admin', '12345admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblanimations`
--

CREATE TABLE `tblanimations` (
  `id` int(11) NOT NULL,
  `AnimationsTitle` varchar(150) DEFAULT NULL,
  `AnimationsCategory` int(11) DEFAULT NULL,
  `AnimationsOverview` longtext,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `RenderingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblanimations`
--

INSERT INTO `tblanimations` (`id`, `AnimationsTitle`, `AnimationsCategory`, `AnimationsOverview`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `RenderingDate`, `UpdationDate`) VALUES
(7, 'bernoullis principle', 1, 'Bernoulli\'s principle states that an increase in the speed of a fluid occurs simultaneously with a decrease in pressure or a decrease in the fluid\'s potential energy. put in another way, within a horizontal flow of fluid, points of higher fluid speed will have less pressure than points of slower fluid speed. Bernoulli\'s principle can be applied to many everyday situations. For example, this principle explains why airplane wings are curved along the top and why ships have to steer away from each other as they pass. The pressure above the wing is lower than below it, providing lift from underneath the wing.', 'Bernoulli\'s principle 3d animation.mp4', '', '', '', '', '2019-04-09 04:40:09', '2019-04-09 11:35:18'),
(8, 'Direct Current', 2, 'blah', 'Direct_Current_Electric_Motor_360P.mp4', '', '', '', '', '2019-04-09 04:47:52', '2019-04-09 04:53:23'),
(10, 'Mitosis', 3, 'Mitosis is a process where a single cell divides into two identical daughter cells (cell division). During mitosis one cell? divides once to form two identical cells. The major purpose of mitosis is for growth and to replace worn out cells.', 'mitosis 3d animation _Phases of mitosis_cell division.mp4', '', '', '', '', '2019-04-10 06:47:28', NULL),
(11, 'Ac Generator', 2, 'An AC generator is an electric generator that converts mechanical energy into electrical energy in form of alternative emf or alternating current. AC generator works on the principle of ”Electromagnetic Induction”.\r\n<Strong>Parts of an AC Generator</Strong>\r\n\r\nAn Ac generator consists of two poles i.e is the north pole and south pole of a magnet so that we can have a uniform magnetic field. There is also a coil which is rectangular in shape that is the armature. These coils are connected to the slip rings and attached to them are carbon brushes.\r\n\r\nThe slip rings are made of metal and are insulated from each other. The brushes are carbon brushes and one end of each brush connects to the ring and other connects to the circuit. The rectangular coils rotate about an axis which is perpendicular to the magnetic field.  There is also a shaft which rotates rapidly.\r\nWorking of an AC Generator\r\n\r\nWhen the armature rotates between the poles of the magnet upon an axis perpendicular to the magnetic field, the flux which links with the armature changes continuously. Due to this, an emf is induced in the armature. This produces an electric current through the galvanometer and the slip rings and brushes.\r\n\r\nThe galvanometer swings between the positive and negative values. This indicates that there is an alternating current flowing through the galvanometer.', 'AC Generator __ 3D Animation Video __ 3D video.mp4', '', '', '', '', '2019-04-10 07:40:45', NULL),
(12, 'Human Heart', 3, 'The human heart is an organ that pumps blood throughout the body via the circulatory system, supplying oxygen and nutrients to the tissues and removing carbon dioxide and other wastes. The human heart has four chambers: two upper chambers (the atria) and two lower ones (the ventricles), according to the National Institutes of Health. The right atrium and right ventricle together make up the \"right heart,\" and the left atrium and left ventricle make up the \"left heart.\" A wall of muscle called the septum separates the two sides of the heart.', '3D Human heart I Animation.mp4', '', '', '', '', '2019-04-10 07:43:19', NULL),
(13, 'Right hand grip', 1, 'ht', 'Right_Hand_Rule_360P.mp4', '', '', '', '', '2019-04-10 08:47:26', NULL),
(14, 'parts of a computer', 1, 'wertyufghjhgyfyug', 'Pascal\'s_law__-_Animated_and_explained_with_3d_program_480P-reformat-16842960.mp4', '', '', '', '', '2019-04-10 09:28:36', NULL),
(15, 'Wave Interfence', 1, '   bjdvubhchbhbadifhvubafdbvbaibhbdhbvhbvhbvhbvhbvhv', 'Wave_Interference_360P.mp4', '', '', '', '', '2019-04-25 09:12:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblapproved`
--

CREATE TABLE `tblapproved` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `AnimationId` int(11) DEFAULT NULL,
  `DateApproved` varchar(20) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapproved`
--

INSERT INTO `tblapproved` (`id`, `userEmail`, `AnimationId`, `DateApproved`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/01/2019', 1, '2019-01-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/01/2019', 2, '2019-01-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2019', 0, '2019-01-26 21:10:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategories`
--

CREATE TABLE `tblcategories` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategories`
--

INSERT INTO `tblcategories` (`id`, `CategoryName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Physics', '2019-01-18 09:22:38', '2019-01-18 09:22:38'),
(2, 'Automotive', '2019-03-02 09:44:28', NULL),
(3, 'Biology', '2019-03-02 09:44:28', NULL),
(4, 'Economics', '2019-03-02 15:22:29', NULL),
(5, 'Chemistry', '2019-03-12 14:27:58', NULL),
(6, 'Mathematics', '2019-03-12 14:35:25', NULL),
(7, 'Accounting', '2019-03-25 06:49:45', NULL),
(8, 'Geography', '2019-04-08 16:56:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Nairobi,Kenya', 'generalikym@gmail.com', '+2547627368');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Zelda Wema', 'zediwema@gmail.com', '+2547214748', 'I need an animation for the Bernouli`s principle. The animation should have the bernouli`s equations and explanation of how it works', '2019-01-18 10:03:07', 1),
(3, 'AK', 'anitta@gmail.com', '+2547897878', 'I need  an 3D animation of the Human Heart', '2019-04-10 07:45:40', 1),
(4, 'Hannah', 'hannah@gmail.com', '0724090731', 'parts of a computer', '2019-04-10 09:26:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to <span style=\"font-family: impact; font-style: italic;\">www.onlineanimatedteachingaids.com</span>\r\n	These terms and conditions outline the rules and regulations for the use of <span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">.com\'s</span> Website.  \r\n	 <span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">.com</span> is located at: \r\n	00208 , Dandora Nairobi - , Kenya\r\n	\r\n	By accessing this website we assume you accept these terms and conditions in full. Do not continue to use<span style=\"font-style: italic; font-family: &quot;times new roman&quot;;\"> </span><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">.com\'s</span> website \r\n	if you do not accept all of the terms and conditions stated on this page.\r\n	The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice\r\n	and any or all Agreements: “Client”, “You” and “Your” refers to you, the person accessing this website\r\n	and accepting the Company’s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers\r\n	to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves, or either the Client\r\n	or ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake\r\n	the process of our assistance to the Client in the most appropriate manner, whether by formal meetings\r\n	of a fixed duration, or any other means, for the express purpose of meeting the Client’s needs in respect\r\n	of provision of the Company’s stated services/products, in accordance with and subject to, prevailing law\r\n	of Kenya. Any use of the above terminology or other words in the singular, plural,\r\n	capitalisation and/or he/she or they, are taken as interchangeable and therefore as referring to same.<br><br>\r\n<strong><font color=\"#990000\">(2)COOKIES</font><br><br></strong>\r\n	We employ the use of cookies. By using <span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">.com`s</span> website you consent to the use of cookies \r\n	in accordance with <span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-family: &quot;times new roman&quot;; font-style: italic;\">.com’s</span> privacy policy.Most of the modern day interactive web sites\r\n	use cookies to enable us to retrieve user details for each visit. Cookies are used in some areas of our site\r\n	to enable the functionality of this area and ease of use for those people visiting. Some of our \r\n	affiliate / advertising partners may also use cookies.License\r\n	Unless otherwise stated, <span style=\"font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-style: italic;\">.com</span> and/or it’s licensors own the intellectual property rights for\r\n	all material on <span style=\"font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-style: italic;\">.com.</span> All intellectual property rights are reserved. You may view and/or print\r\n	pages from http://</font><span style=\"font-size: small;\">onlineanimatedteachingaids</span><font size=\"2\">.com for your own personal use subject to restrictions set in these terms and conditions.<br><br>\r\n	<strong><font color=\"#990000\">(3)You must not:</font><br><br></strong>\r\n	\r\n		Republish material from http://</font><span style=\"font-size: small;\">onlineanimatedteachingaids</span><font size=\"2\">.com\r\n		Sell, rent or sub-license material from http://</font><span style=\"font-size: small;\">onlineanimatedteachingaids</span><font size=\"2\">.com\r\n		Reproduce, duplicate or copy material from http://</font><span style=\"font-size: small;\">onlineanimatedteachingaids</span><font size=\"2\">.com\r\n	\r\n	Redistribute content from <span style=\"font-style: italic;\">www.</span></font><span style=\"font-size: small; font-style: italic;\">onlineanimatedteachingaids</span><font size=\"2\"><span style=\"font-style: italic;\">.com</span> (unless content is specifically made for redistribution).\r\nHyperlinking to our Content\r\n	\r\n		The following organizations may link to our Web site without prior written approval:\r\n			\r\n			Government agencies;\r\n			Search engines;\r\n			News organizations;\r\n			Online directory distributors when they list us in the directory may link to our Web site in the same\r\n				manner as they hyperlink to the Web sites of other listed businesses; and\r\n			Systemwide Accredited Businesses except soliciting non-profit organizations, charity shopping malls,\r\n				and charity fundraising groups which may not hyperlink to our Web site.\r\n			\r\n		\r\n	\r\n	\r\n		These organizations may link to our home page, to publications or to other Web site information so long\r\n			as the link: (a) is not in any way misleading; (b) does not falsely imply sponsorship, endorsement or\r\n			approval of the linking party and its products or services; and (c) fits within the context of the linking\r\n			party`s site.\r\n		\r\n		We may consider and approve in our sole discretion other link requests from the following types of organizations:\r\n			\r\n				commonly-known consumer and/or business information sources such as Chambers of Commerce, American\r\n					Automobile Association, AARP and Consumers Union;\r\n				dot.com community sites;\r\n				associations or other groups representing charities, including charity giving sites,\r\n				online directory distributors;\r\n				internet portals;\r\n				accounting, law and consulting firms whose primary clients are businesses; and\r\n				educational institutions and trade associations.\r\n			\r\n		\r\n	\r\n	We will approve link requests from these organizations if we determine that:<br><br> <strong>(a) the link would not reflect\r\n	unfavorably on us or our accredited businesses (for example, trade associations or other organizations\r\n	representing inherently suspect types of business, such as work-at-home opportunities, shall not be allowed\r\n	to link); <br><br>(b)the organization does not have an unsatisfactory record with us;<br><br> (c) the benefit to us from\r\n	the visibility associated with the hyperlink outweighs the absence of ; and <br>(d) where the\r\n	link is in the context of general resource information or is otherwise consistent with editorial content\r\n	in a newsletter or similar product furthering the mission of the organization.</strong>\r\n\r\n	These organizations may link to our home page, to publications or to other Web site information so long as\r\n	the link:<strong><br> (a) is not in any way misleading;<br> (b) does not falsely imply sponsorship, endorsement or approval\r\n	of the linking party and it products or services; and <br>(c) fits within the context of the linking party`s\r\n	site.</strong>\r\n\r\n	If you are among the organizations listed in paragraph 2 above and are interested in linking to our website,\r\n	you must notify us by sending an e-mail to&nbsp;</font><span style=\"font-size: small;\">onlineanimatedteachingaids</span><font size=\"2\">@hot.com.\r\n	Please include your name, your organization name, contact information (such as a phone number and/or e-mail\r\n	address) as well as the URL of your site, a list of any URLs from which you intend to link to our Web site,\r\n	and a list of the URL(s) on our site to which you would like to link. Allow 2-3 weeks for a response.\r\n\r\n	Approved organizations may hyperlink to our Web site as follows:\r\n\r\n	\r\n		By use of our corporate name; or\r\n		By use of the uniform resource locator (Web address) being linked to; or\r\n		By use of any other description of our Web site or material being linked to that makes sense within the\r\n			context and format of content on the linking party`s site.\r\n	\r\n	No use of <span style=\"font-style: italic;\">www.onlineanimatedteachingaids.com’s</span> logo or other artwork will be allowed for linking absent a trademark license\r\n	agreement.\r\nIframes\r\n	Without prior approval and express written permission, you may not create frames around our Web pages or\r\n	use other techniques that alter in any way the visual presentation or appearance of our Web site.\r\n										</font></p>\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><strong>Reservation of Rights</strong><br>\r\n	We reserve the right at any time and in its sole discretion to request that you remove all links or any particular\r\n	link to our Web site. You agree to immediately remove all links to our Web site upon such request. We also\r\n	reserve the right to amend these terms and conditions and its linking policy at any time. By continuing\r\n	to link to our Web site, you agree to be bound to and abide by these linking terms and conditions.<br><br>\r\n<span  text-align: left><strong>Removal of links from our website<br></strong></span>\r\n	If you find any link on our Web site or any linked web site objectionable for any reason, you may contact\r\n	us about this. We will consider requests to remove links but will have no obligation to do so or to respond\r\n	directly to you.\r\n	Whilst we endeavour to ensure that the information on this website is correct, we do not warrant its completeness\r\n	or accuracy; nor do we commit to ensuring that the website remains available or that the material on the\r\n	website is kept up to date.<br><br>\r\n<span  text-align: left><strong>Content Liability<br></strong></span>\r\n	We shall have no responsibility or liability for any content appearing on your Web site. You agree to indemnify\r\n	and defend us against all claims arising out of or based upon your Website. No link(s) may appear on any\r\n	page on your Web site or within any context containing content or materials that may be interpreted as\r\n	libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or\r\n	other violation of, any third party rights.<br><br>\r\n<span  text-align: left><strong>Disclaimer<br></strong></span>\r\n	To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website (including, without limitation, any warranties implied by law in respect of satisfactory quality, fitness for purpose and/or the use of reasonable care and skill). Nothing in this disclaimer will:\r\n	\r\n	limit or exclude our or your liability for death or personal injury resulting from negligence;\r\n	limit or exclude our or your liability for fraud or fraudulent misrepresentation;\r\n	limit any of our or your liabilities in any way that is not permitted under applicable law; or\r\n	exclude any of our or your liabilities that may not be excluded under applicable law.\r\n	\r\n	The limitations and exclusions of liability set out in this Section and elsewhere in this disclaimer: (a)\r\n	are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer or\r\n	in relation to the subject matter of this disclaimer, including liabilities arising in contract, in tort\r\n	(including negligence) and for breach of statutory duty.\r\n	To the extent that the website and the information and services on the website are provided free of charge,\r\n	we will not be liable for any loss or damage of any nature.</span>'),
(3, 'About Us ', 'aboutus', '																																																												<p></p><p><span style=\"color: rgb(0, 0, 0); text-align: justify;\"><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">At Online Animated Teaching Aids we cater for everyone.&nbsp; Making 3D animations that would help you understand some of the difficult concepts taught in class. Today\'s learners need more than printouts and PowerPoint presentations. They need active, dynamic content that keeps them engaged. Storytelling is most effective form of communication. Instead of talking at your learners, allow them to see the world through the eyes of accessible characters.&nbsp;</span></span></p><p><span style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">At Online Animated Teaching Aids our animators are eager to eager to cater for your academic needs. Our main goal is to assist teachers&nbsp;and students to understand some of the complicated concepts that are taught in class. Driven by an always-on mobile culture, learners today have an instant-gratification&nbsp; mindset and are easily distracted by email pings, text message, buzzes, and fitness tracker updates. This means every second counts when fighting for the attention, focus, and retention. Video allows you to pull attention away from everyday distractions and deliver engaging content.</span></span></p><p></p><div><div><br></div>\r\n										</div>\r\n										\r\n										'),
(4, 'FAQs', 'faqs', '																																								<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">ybyufgakscnahvc NCOLm N jb&nbsp;</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequest`
--

CREATE TABLE `tblrequest` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Request` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblrequest`
--

INSERT INTO `tblrequest` (`id`, `UserEmail`, `Request`, `PostingDate`, `status`) VALUES
(1, 'demo@gmail.com', 'Test Test', '2019-01-18 07:44:31', 1),
(2, 'amigo@gmail.com', 'I need an animation for the Bernouli`s principle. The animation should have the bernouli`s equations and explanation of how it works', '2019-01-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2019-01-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `username` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `username`, `email`, `password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Athana', 'demo@gmail.com', 'kym', '2019-01-17 19:59:27', '2019-04-10 04:58:15'),
(2, 'AK', 'anitta@gmail.com', '4321', '2019-01-17 20:00:49', '2019-04-10 04:58:07'),
(3, 'Amigo', 'amigo@gmail.com', '1234', '2019-01-17 20:01:43', '2019-04-10 04:57:55'),
(4, 'Abdi', 'abdiasis@gmail.com', '1234', '2019-01-17 20:03:36', '2019-04-10 04:57:47'),
(5, 'Kim', 'generalikym@gmail.com', '1234', '2019-03-19 15:24:47', '2019-04-10 04:57:26'),
(8, 'author', 'test@demo.com', '4321', '2019-04-10 03:52:23', '2019-04-10 04:57:20'),
(9, 'Uno', 'athanak@gmail.com', '1234', '2019-04-10 04:02:27', '2019-04-10 04:57:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblanimations`
--
ALTER TABLE `tblanimations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblapproved`
--
ALTER TABLE `tblapproved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategories`
--
ALTER TABLE `tblcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequest`
--
ALTER TABLE `tblrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblanimations`
--
ALTER TABLE `tblanimations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblapproved`
--
ALTER TABLE `tblapproved`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategories`
--
ALTER TABLE `tblcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblrequest`
--
ALTER TABLE `tblrequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
