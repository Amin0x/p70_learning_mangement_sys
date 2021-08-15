-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 10:34 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting`
--

CREATE TABLE `accounting` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `system` tinyint(1) NOT NULL DEFAULT 0,
  `tax` tinyint(1) NOT NULL DEFAULT 0,
  `amount` decimal(13,2) DEFAULT NULL,
  `type` enum('addiction','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_account` enum('income','asset','subscribe','promotion') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_type` enum('automatic','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'automatic',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `accounting`
--

INSERT INTO `accounting` (`id`, `user_id`, `creator_id`, `webinar_id`, `meeting_time_id`, `subscribe_id`, `promotion_id`, `system`, `tax`, `amount`, `type`, `type_account`, `store_type`, `description`, `created_at`) VALUES
(251, 996, 1, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', 'offline payment approved', 1625944212),
(252, 996, NULL, NULL, 98, NULL, NULL, 0, 0, '165.00', 'deduction', 'asset', 'automatic', 'Paid for 1:30 hours of consultation', 1625944347),
(253, 996, NULL, NULL, 98, NULL, NULL, 0, 1, '15.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1625944347),
(254, 1015, NULL, NULL, 98, NULL, NULL, 0, 0, '120.00', 'addiction', 'income', 'automatic', 'Income Sale', 1625944347),
(255, 1015, NULL, NULL, 98, NULL, NULL, 1, 0, '30.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1625944347),
(256, 930, 1, NULL, NULL, NULL, NULL, 0, 0, '600.00', 'addiction', 'asset', 'manual', 'Gifts from the platform', 1625950715),
(257, 995, 1, NULL, NULL, NULL, NULL, 0, 0, '1000.00', 'addiction', 'asset', 'automatic', 'offline payment approved', 1625950749),
(258, 995, NULL, NULL, 160, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', 'Paid for 1:00 hours of consultation', 1625952630),
(259, 995, NULL, NULL, 160, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1625952630),
(260, 934, NULL, NULL, 160, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', 'Income Sale', 1625952630),
(261, 934, NULL, NULL, 160, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1625952630),
(262, 995, NULL, 2005, NULL, NULL, NULL, 0, 0, '11.00', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1625953197),
(263, 995, NULL, 2005, NULL, NULL, NULL, 0, 1, '1.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1625953198),
(264, 4, NULL, 2005, NULL, NULL, NULL, 0, 0, '8.00', 'addiction', 'income', 'automatic', 'Income Sale', 1625953198),
(265, 4, NULL, 2005, NULL, NULL, NULL, 1, 0, '2.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1625953198),
(266, 979, 1, NULL, NULL, NULL, NULL, 0, 0, '400.00', 'addiction', 'asset', 'automatic', 'offline payment approved', 1625992548),
(267, 995, NULL, NULL, 103, NULL, NULL, 0, 0, '137.50', 'deduction', 'asset', 'automatic', 'Paid for 1:15 hours of consultation', 1625996816),
(268, 995, NULL, NULL, 103, NULL, NULL, 0, 1, '12.50', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1625996817),
(269, 1015, NULL, NULL, 103, NULL, NULL, 0, 0, '100.00', 'addiction', 'income', 'automatic', 'Income Sale', 1625996817),
(270, 1015, NULL, NULL, 103, NULL, NULL, 1, 0, '25.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1625996817),
(271, 995, NULL, 1999, NULL, NULL, NULL, 0, 0, '55.00', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1625996942),
(272, 995, NULL, 1999, NULL, NULL, NULL, 0, 1, '5.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1625996943),
(273, 929, NULL, 1999, NULL, NULL, NULL, 0, 0, '45.00', 'addiction', 'income', 'automatic', 'Income Sale', 1625996943),
(274, 929, NULL, 1999, NULL, NULL, NULL, 1, 0, '5.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1625996943),
(283, 996, NULL, 2006, NULL, NULL, NULL, 0, 0, '24.75', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1626060488),
(284, 996, NULL, 2006, NULL, NULL, NULL, 0, 1, '2.25', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1626060488),
(285, 867, NULL, 2006, NULL, NULL, NULL, 0, 0, '18.00', 'addiction', 'income', 'automatic', 'Income Sale', 1626060488),
(286, 867, NULL, 2006, NULL, NULL, NULL, 1, 0, '4.50', 'addiction', 'income', 'automatic', 'Commission from Seller', 1626060488),
(295, 1015, 1, NULL, NULL, NULL, NULL, 0, 0, '332.00', 'deduction', 'income', 'automatic', 'Payout request', 1626061220),
(296, 979, NULL, 2004, NULL, NULL, NULL, 0, 0, '66.00', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1626061333),
(297, 979, NULL, 2004, NULL, NULL, NULL, 0, 1, '6.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1626061334),
(298, 929, NULL, 2004, NULL, NULL, NULL, 0, 0, '54.00', 'addiction', 'income', 'automatic', 'Income Sale', 1626061334),
(299, 929, NULL, 2004, NULL, NULL, NULL, 1, 0, '6.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1626061334),
(308, 995, NULL, NULL, NULL, 3, NULL, 0, 0, '22.00', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1626061450),
(309, 995, NULL, NULL, NULL, 3, NULL, 0, 1, '2.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1626061451),
(310, 995, NULL, NULL, NULL, 3, NULL, 1, 0, '20.00', 'addiction', 'subscribe', 'automatic', 'Income for Subscribe', 1626061451),
(311, 867, NULL, 2006, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', 'Paid for Subscribe', 1626061483),
(312, 1, NULL, 2006, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', 'Paid for Subscribe', 1626061483),
(313, 929, NULL, 2004, NULL, NULL, NULL, 0, 0, '0.16', 'addiction', 'income', 'automatic', 'Paid for Subscribe', 1626061490),
(314, 1, NULL, 2004, NULL, NULL, NULL, 1, 0, '0.16', 'deduction', 'asset', 'automatic', 'Paid for Subscribe', 1626061490),
(317, 1015, 1, NULL, NULL, NULL, NULL, 0, 0, '500.00', 'addiction', 'asset', 'automatic', 'offline payment approved', 1626132570),
(322, 929, 1, NULL, NULL, NULL, NULL, 0, 0, '300.00', 'addiction', 'asset', 'automatic', 'offline payment approved', 1626241074),
(323, 929, NULL, 2004, NULL, NULL, 3, 0, 0, '55.00', 'deduction', 'asset', 'automatic', 'Paid form Credit', 1626241152),
(324, 929, NULL, 2004, NULL, NULL, 3, 0, 1, '5.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1626241153),
(325, 929, NULL, NULL, NULL, NULL, 3, 1, 0, '50.00', 'addiction', 'promotion', 'automatic', 'Paid for Promotion', 1626241153),
(330, 995, NULL, NULL, 114, NULL, NULL, 0, 0, '110.00', 'deduction', 'asset', 'automatic', 'Paid for 1:00 hours of consultation', 1626247196),
(331, 995, NULL, NULL, 114, NULL, NULL, 0, 1, '10.00', 'addiction', 'asset', 'automatic', 'Tax form Buyer', 1626247196),
(332, 870, NULL, NULL, 114, NULL, NULL, 0, 0, '80.00', 'addiction', 'income', 'automatic', 'Income Sale', 1626247196),
(333, 870, NULL, NULL, 114, NULL, NULL, 1, 0, '20.00', 'addiction', 'income', 'automatic', 'Commission from Seller', 1626247196),
(334, 995, NULL, NULL, 114, NULL, NULL, 0, 0, '110.00', 'addiction', 'asset', 'automatic', 'Refunded to Buyer', 1626247245),
(335, NULL, NULL, NULL, 114, NULL, NULL, 0, 1, '10.00', 'deduction', 'asset', 'automatic', 'Refunded Tax', 1626247245),
(336, 870, NULL, NULL, 114, NULL, NULL, 0, 0, '100.00', 'deduction', 'income', 'automatic', 'Refunded Income', 1626247245),
(337, 870, NULL, NULL, 114, NULL, NULL, 0, 0, '20.00', 'addiction', 'income', 'automatic', 'Refunded Commission to Seller', 1626247245),
(338, 870, NULL, NULL, 114, NULL, NULL, 1, 0, '20.00', 'deduction', 'income', 'automatic', 'Refunded Commission', 1626247245);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_banners`
--

CREATE TABLE `advertising_banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` enum('home1','home2','course','course_sidebar') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL DEFAULT 12,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `advertising_banners`
--

INSERT INTO `advertising_banners` (`id`, `title`, `position`, `image`, `size`, `link`, `published`, `created_at`) VALUES
(6, 'Reserve a meeting - Course page', 'course_sidebar', '/store/1/default_images/banners/reserve_a_meeting.png', 12, '/instructors', 1, 1607886391),
(7, 'Certificate validation - Course page', 'course_sidebar', '/store/1/default_images/banners/validate_certificates_banner.png', 12, '/certificate_validation', 1, 1607886440);

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('register_date','course_count','course_rate','sale_count','support_rate') COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `title`, `description`, `image`, `type`, `condition`, `created_at`) VALUES
(21, 'New User', '1 Month of Membership', '/store/1/default_images/badges/new_user.svg', 'register_date', '{\"from\":\"1\",\"to\":\"30\"}', 1625553769),
(22, 'Loyal User', '6 Month of Membership', '/store/1/default_images/badges/loyal_user.svg', 'register_date', '{\"from\":\"31\",\"to\":\"180\"}', 1625554171),
(23, 'Faitful User', '1 Year of Membership', '/store/1/default_images/badges/faithful_user.svg', 'register_date', '{\"from\":\"181\",\"to\":\"365\"}', 1625554495),
(24, 'Junior Vendor', 'Has 1 Class', '/store/1/default_images/badges/junior_vendor.svg', 'course_count', '{\"from\":\"1\",\"to\":\"1\"}', 1625554772),
(25, 'Senior Vendor', 'Has 2 Classes', '/store/1/default_images/badges/senior_vendor.svg', 'course_count', '{\"from\":\"2\",\"to\":\"2\"}', 1625554960),
(26, 'Expert Vendor', 'Has 3 to 6 Classes', '/store/1/default_images/badges/expert_vendor.svg', 'course_count', '{\"from\":\"3\",\"to\":\"6\"}', 1625555421),
(27, 'Bronze Classes', 'Classes Rating from 2 to 3', '/store/1/default_images/badges/bronze_classes.svg', 'course_rate', '{\"from\":\"2\",\"to\":\"3\"}', 1625556048),
(28, 'Silver Classes', 'Classes Rating from 3 to 4', '/store/1/default_images/badges/silver_classes.svg', 'course_rate', '{\"from\":\"3\",\"to\":\"4\"}', 1625556159),
(29, 'Golden Classes', 'Classes Rating from 4 to 5', '/store/1/default_images/badges/golden_classes.svg', 'course_rate', '{\"from\":\"4\",\"to\":\"5\"}', 1625556284),
(30, 'Best Seller', 'Classes Sales from 1 to 2', '/store/1/default_images/badges/best_seller.svg', 'sale_count', '{\"from\":\"1\",\"to\":\"2\"}', 1625557021),
(31, 'Top Seller', 'Classes Sales from 3 to 9', '/store/1/default_images/badges/top_seller.svg', 'sale_count', '{\"from\":\"3\",\"to\":\"9\"}', 1625557247),
(32, 'King Seller', 'Classes Sales from 10 to 20', '/store/1/default_images/badges/king_seller.svg', 'sale_count', '{\"from\":\"10\",\"to\":\"20\"}', 1625558061),
(33, 'Good Support', 'Support Rating from 2 to 3', '/store/1/default_images/badges/good_support.svg', 'support_rate', '{\"from\":\"2\",\"to\":\"3\"}', 1625558473),
(34, 'Amazing Support', 'Support Rating from 3 to 4', '/store/1/default_images/badges/amazing_support.svg', 'support_rate', '{\"from\":\"3\",\"to\":\"4\"}', 1625558682),
(35, 'Fantastic Support', 'Support Rating from 4 to 5', '/store/1/default_images/badges/fantastic_support.svg', 'support_rate', '{\"from\":\"4\",\"to\":\"5\"}', 1625558892);

-- --------------------------------------------------------

--
-- Table structure for table `become_instructors`
--

CREATE TABLE `become_instructors` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','accept','reject') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `become_instructors`
--

INSERT INTO `become_instructors` (`id`, `user_id`, `certificate`, `description`, `status`, `created_at`) VALUES
(5, 930, '/store/930/certificate.jpg', 'I taught design in London for two years.', 'pending', 1626242477);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` int(10) UNSIGNED DEFAULT 0,
  `enable_comment` tinyint(1) NOT NULL DEFAULT 1,
  `status` enum('pending','publish') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `category_id`, `author_id`, `title`, `slug`, `image`, `description`, `meta_description`, `content`, `visit_count`, `enable_comment`, `status`, `created_at`, `updated_at`) VALUES
(21, 34, 1, 'How To Teach Your Kid Anything Easily', 'How-To-Teach-Your-Kid-Anything-Easily', '/store/1/default_images/blogs/blog1.jpg', '<p>The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault. I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p>', 'The primary reason kids struggle with school is fear. And in most cases, it’s their parent\'s fault.', '<p>I started tutoring math out of financial desperation. I’d just been fired from my job as a waiter, most of the proofreading in jobs in New York had been outsourced to India, and for the third time in my life, I was facing dire poverty.</p><p>The amount I had forgotten was startling at first, and I had excelled at math for my entire academic life. If you don’t use it, you really do lose it, so not so surprisingly, most parents cry uncle at around 4th-grade math. They don’t remember and don’t want to remember, perpetuating this attitude in their children.</p><p>Imagine doing anything, even something you’re great at, with the equivalent of a giant looming behind you and scrutinizing your every move. This is what parents do to their children. They hover and pounce on every mistake.</p><p>1) Have Empathy for Your Kids</p><p>In my first session with my first student, his mom skulked nervously behind us, then called me over about five minutes in. She asked if I noticed her kid had answered the last question incorrectly, and I immediately saw the problem\'s essence.</p><p>You have to rest and relax for your kid to be comfortable and wait until the end before you start to correct anything. This is how kids learn to check their work, and that making mistakes is not a big deal.</p><p>Mistakes are inevitable, but how we handle them isn’t. If you want your kid to be eternally terrified of math, then, by all means, continue to crowd and interrupt them perpetually. Chances are, you’ll make them wary of attempting to learn anything at all.</p><p>2) Give Yourself a Shot</p><p>Thankfully, this mom and most of the other parents understood what I was doing, and recognized their complicity in their children’s struggles. After that first session, mom left us alone, and her kid began to improve forthwith.</p><p>His parents were so encouraged they asked if I could help with other subjects. History, science, and English were all within my wheelhouse, but the kid went to a Catholic school and had to learn Latin.</p><p>I borrowed a copy of his Latin book and was completely demoralized. Latin is baffling, especially in the beginning. So many conjugations, and context matter. The way you speak to noblemen, peers, and slaves is practically like learning three different languages.</p><p>Still, I was broke, and this would mean more money. And did I actually have to know Latin? All I had to do was stay a few days ahead of the kid.</p><p>3) Be Honest</p><p>Our default state is to deny our ignorance, especially in front of children. We’re defensive and dismissive, and most kids can tell you’re just as lost as they are.</p><p>My solution was to admit this from the start. The kid asked me the point of learning Latin and I told him I didn’t know. Supposedly it helped with other languages, but maybe he could use it someday to impress pretentious people at cocktail parties. He asked me why some verbs broke the conjugation patterns, and I told him it was the ancients’ way of torturing us.</p><p>As a young child, he picked up the language quicker than I did, but had more difficulty with some of the subtleties. There were times I was mystified and talked out loud to myself in front of him.</p><p>I’m a math tutor. What on earth made me think I was equipped to teach Latin, let alone learn it?</p><p>The kid told me I seemed to be pretty good at everything else, so I’d probably get it, but there was a tinge of concern in his voice. The worse I did, the more likely he would fail, and he wanted Latin out of his life even more than I did.</p><p>Our mutual hatred of Latin brought us closer together. For the first time, we both understood we were in this together.</p><p>4) Dealing With Parents and Teachers Is a Part of Education</p><p>As he grew older, he started to ask me about his parents, who were Fox News conservatives. He told me he could see they were biased, but didn’t understand why, or know what to think.</p><p>I told him to think for himself and admit when he didn’t know something, and that he shouldn’t be afraid to change his mind in light of valid new evidence.</p><p>He complained about his teachers, one of whom wasn’t happy I’d taught him different approaches to algebra. Eventually, he learned how to do it the teacher’s way, but he’d needed another avenue to get there. We were both a bit angry, but I told him learning to deal with teachers is a part of education.</p><p>I kept my rancor to myself, but I also wanted to strangle his teacher. This kid had gone from a D average to a B+, and this teacher was still hounding him. No wonder so many people are lousy at math — their parents and teachers were against them and didn’t even realize it.</p><p>5) Embrace a Learning Attitude</p><p>If you aren’t willing to learn, it’s going to be difficult to teach, and the first step is accepting just how little we know. It’s hypocritical to pounce on your kid when you can’t do his homework either, and kids notice this and rightfully feel that you’re being unjust.</p><p>If you choose to have children, they should be your number one priority, and you’ll be surprised at how much learning (or relearning) will improve your cognition in general.</p><p>Reading and math are foundational skills, and learning math is humbling. While there is scant evidence to support that mathematics improves reasoning in general, you need it to understand science, and when puzzled by much of your child’s elementary school homework, at least a little uncertainty penetrates your views. You realize you don’t know nearly as much as you thought, and for most, this can mark a new beginning. As rigidity subsides, plasticity reemerges, and the habit of lifelong learning is the most valuable gift you can give to yourself and your child.</p>', 18, 1, 'publish', 1625091953, 1625094493),
(22, 37, 1, 'Better Relationship Between You and Your Student’s Parent', 'Better-Relationship-Between-You-and-Your-Student-s-Parent', '/store/1/default_images/blogs/blog2.jpg', '<p>The tutor-parent relationship is an important relationship and unfortunately greatly overlooked. Why is it important? Well, a good relationship between you and the student’s parent or guardian serves to help students perform better personally and academically. Fostering a relationship with them as a tutor can be challenging due to a number of factors, however, there are a number of ways to build this relationship and optimize students’ learning support system over time.</p>', 'The tutor-parent relationship is an important relationship and unfortunately greatly overlooked.', '<p>Compassion and Positivity is Everything</p><p>It can be stressful for parents or guardians to engage with you. There may be fear that their child isn’t doing as well as they should be, a lack of time to connect, or even language barriers. As a tutor, being compassionate and delivering information in a well-mannered tone does wonders in situations like this. It’s best to smile, make eye contact, be welcoming, and offer any advice if needed. One good trick to help ease parents or guardians when speaking to them is to first acknowledge something positive about their child that you’ve noticed no matter how small it is. For example, you may have noticed that they are more engaged in their lessons and asking more questions.</p><p>Be Proactive and Communicate Often</p><p>Some tutors may only speak to parents or guardians when there is a problem, creating a negative environment for both. That’s why it’s key to make the effort to speak with them often whether that be face to face, phone call or even an email. It’s best to keep them up to date about their child’s learning. Communicating often keeps them from feeling on high alert when you reach out and can even foster a beautiful friendship. Of course it is important to know that parents and guardians are busy! So make sure when you communicate with them that you’re planning ahead to find a time that works best for them.</p><p>Make the Parent or Guardian Feel Valued and Ask for Their Advice</p><p>A great way to build a relationship with parents or guardians is to involve them in their child’s education. This doesn’t mean just having them help with homework, but it could mean asking them to participate in school activities or events. Asking them if they would like to help organize an event is a great way to get to know them and give them a chance to meet other parents or guardians. It could also be something as simple as creating a lesson plan that requests input from them. Of course all of this depends on their schedule and if they have time to participate. In the end, the more you try to involve them in activities, the better.</p><p>Another great way to make them feel valued is to ask for their advice. If your student is displaying negative behaviors during a lesson, it is wise to seek out the advice of the parent or guardian. By asking for their advice, two things can occur. One, they may not know there is negative behavior to begin with as the student may not be displaying it at home. Two, you are building a better relationship with the parent or guardian by getting their input in this situation, which will build trust. Questions don’t just have to be about the student’s education when speaking to them, you can also ask questions about the student’s interest and plans that they have during the holidays. It is always important for you to conduct yourself professionally when dealing with a parent or guardian but the conversation doesn’t have to just be strictly about education.</p><p>Avoid Taking it Personally and Making Assumptions</p><p>Parents and guardians are human and they have their own stress to deal with whether it be at work or in their home life. It is best for you to always keep calm and never take anything they say to heart. You should always respond with questions that will help defuse the situation. For example a parent or guardian may say “You’re saying this because you’re out to get my child” and the best way to respond to a question like this is “I’m sorry you feel this way, please let me know why you think this?”</p><p>Also you shouldn’t make assumptions about a student’s home life. Unless it has been stated so, an assumption can cause many problems and can be insensitive to a family’s situation. You should not assume that the student lives with both parents or any parent for that matter. Now, in our globally diverse world you shouldn’t assume that the parent or guardian’s first language is English and should always confirm if they can speak English in the first place. Every student will have a different situation than the next. Assumptions lead to misunderstandings which can create more challenging circumstances for learning.</p><p>Building a relationship with a parent or guardian can sometimes be challenging. Keeping these ideas in mind can help you better connect with them. It’s good to remember, at the end of the day the better connection you have with them, the better they can help teach the student, ultimately allowing them to achieve academic success and foster a love for learning.</p>', 8, 1, 'publish', 1625093279, NULL),
(23, 36, 1014, '3 Laws to Become a Straight-A Student', '3-Laws-to-Become-a-Straight-A-Student', '/store/1014/blog3.jpg', '<p>In this article, I’ll explain the two rules I followed to become a straight-A student.&nbsp;If you take my advice, you’ll get better grades and lead a more balanced life too.</p>', 'In this article, I’ll explain the two rules I followed to become a straight-A student.', '<p>A strong academic record can open doors for you down the road. More importantly, through the process of becoming a straight-A student, you’ll learn values like hard work, discipline and determination.</p><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #1: Always have a plan.</h3><div><div>(a) As the semester progresses, keep track of key dates: tests and exams, project submission deadlines, term breaks, etc.</div><div><br></div><div>Enter these dates into a physical or digital calendar.</div><div><br></div><div><div>If you choose to use a digital calendar, I recommend Google Calendar.</div><div><br></div><div>(b) Schedule a fixed time every week where you review your upcoming events over the next two months. Mark down when you’ll start preparing for that Math exam, working on that History project, or writing that English paper.</div><div><br></div><div>(d) Next, note your commitments for the coming week, e.g. extracurricular activities, family gatherings, extra classes. On your calendar, highlight the blocks of time you’ll have for schoolwork.</div><div><br></div><div>This planning process might sound time-consuming, but it’ll typically take just 15 minutes every week.</div><div><br></div><div>This is a wise investment of time as a student, because the rest of your week will become far more productive.</div><div><br></div><div>This way, you’ll be studying smart, not just hard!</div><div><br></div><div><h3 style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; font-size: 24px;\">Rule #2: Be organized.</h3></div></div></div><div><div>Ever had trouble finding your notes or assignments when you needed them? You probably ended up wasting precious time looking for them, before you finally asked to borrow them from your friend.</div><div><br></div><div>Many students tell me that they keep all their notes and assignments in one big pile, and only sort them out before their exams!</div><div><br></div><div>Being organized – it’s easier said than done, I know.</div></div>', 11, 1, 'publish', 1625094412, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `title`, `slug`) VALUES
(33, 'Announcements', 'Vel-consequatur'),
(34, 'Articles', 'Facilis-ea'),
(36, 'Events', 'Fugit-dignissimos-possimus'),
(37, 'News', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `special_offer_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `creator_id`, `webinar_id`, `reserve_meeting_id`, `subscribe_id`, `promotion_id`, `ticket_id`, `special_offer_id`, `created_at`) VALUES
(96, 1, NULL, 52, NULL, NULL, NULL, NULL, 1628434609),
(97, 1, 2006, NULL, NULL, NULL, NULL, NULL, 1628457849),
(98, 1019, 2006, NULL, NULL, NULL, NULL, NULL, 1628458611),
(99, 1, NULL, 53, NULL, NULL, NULL, NULL, 1628537087);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `icon`, `order`) VALUES
(520, NULL, 'Design', '/store/1/default_images/categories_icons/feather.svg', NULL),
(522, NULL, 'Academics', '/store/1/default_images/categories_icons/briefcase.svg', NULL),
(523, NULL, 'Health & Fitness', '/store/1/default_images/categories_icons/heart.svg', NULL),
(524, NULL, 'Lifestyle', '/store/1/default_images/categories_icons/umbrella.svg', NULL),
(525, NULL, 'Marketing', '/store/1/default_images/categories_icons/pie-chart.svg', NULL),
(526, NULL, 'Business', '/store/1/default_images/categories_icons/anchor.svg', NULL),
(528, NULL, 'Development', '/store/1/default_images/categories_icons/code.svg', NULL),
(601, 522, 'Math', NULL, 1),
(602, 522, 'Science', NULL, 2),
(603, 522, 'Language', NULL, 3),
(604, 524, 'Lifestyle', NULL, 1),
(605, 524, 'Beauty & Makeup', NULL, 2),
(606, 528, 'Web Development', NULL, 1),
(607, 528, 'Mobile Development', NULL, 2),
(608, 528, 'Game Development', NULL, 3),
(609, 526, 'Management', NULL, 1),
(610, 526, 'Communications', NULL, 2),
(611, 526, 'Business Strategy', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `quiz_result_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `user_grade` int(10) UNSIGNED DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `quiz_id`, `quiz_result_id`, `student_id`, `user_grade`, `file`, `created_at`) VALUES
(3, 28, 28, 995, 80, '/store/995/certificates/Become a Product Manager(-80).jpg', 1626248277),
(5, 34, 30, 979, 90, '/store/979/certificates/Learn Linux in 5 Days().jpg', 1626239103);

-- --------------------------------------------------------

--
-- Table structure for table `certificates_templates`
--

CREATE TABLE `certificates_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_x` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_y` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `font_size` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('draft','publish') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `certificates_templates`
--

INSERT INTO `certificates_templates` (`id`, `title`, `body`, `image`, `position_x`, `position_y`, `font_size`, `text_color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Certificate', 'This certificate awarded to [student] \r\nregarding to passing the [course] with \r\nthe [grade] with success\r\nCertificate ID : [certificate_id]', '/store/1/default_images/certificate.jpg', '320', '400', '32', '#314963', 'publish', 1608663541, 1626208739);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `reply_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `report` tinyint(1) NOT NULL DEFAULT 0,
  `disabled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `viewed_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `review_id`, `webinar_id`, `blog_id`, `reply_id`, `comment`, `status`, `report`, `disabled`, `created_at`, `viewed_at`) VALUES
(43, 996, NULL, 2004, NULL, NULL, 'Hi.\r\nWhat is the level of this course?', 'active', 0, 0, 1625863108, NULL),
(45, 979, NULL, 1999, NULL, NULL, 'Is it possible to participate in this course without participating in the prerequisite course?', 'active', 0, 0, 1625863345, NULL),
(50, 1016, NULL, 2006, NULL, NULL, 'Will this course be updated in the future?', 'active', 0, 0, 1625864416, NULL),
(51, 995, NULL, 2004, NULL, NULL, 'Will we receive a certificate at the end of this course?', 'active', 0, 0, 1625864526, NULL),
(53, 995, NULL, 1995, NULL, NULL, 'Course files are not complete !!!', 'active', 0, 0, 1626240118, 1626240169),
(54, 1016, NULL, 1995, NULL, 53, 'Please prove. The course files are complete and 90% of the students are satisfied.', 'active', 0, 0, 1626240342, 1626241422),
(55, 929, NULL, 1995, NULL, NULL, 'Is it possible to update the course ?', 'active', 0, 0, 1626241320, 1626241422),
(57, 1016, NULL, 1995, NULL, 55, 'No, but it may change in the future. Thank you', 'active', 0, 0, 1626241505, NULL),
(60, 995, NULL, NULL, 23, NULL, 'I really enjoyed this article. You are a very good writer', 'pending', 0, 0, 1626242653, NULL),
(64, 1015, NULL, 1995, NULL, NULL, 'Great course that gives you the basic knowledge needed to become a product manager.', 'pending', 0, 0, 1626509546, NULL),
(66, 930, NULL, NULL, 21, NULL, 'Thank you. It was a very good article', 'pending', 0, 0, 1626510056, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments_reports`
--

CREATE TABLE `comments_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `comments_reports`
--

INSERT INTO `comments_reports` (`id`, `user_id`, `blog_id`, `webinar_id`, `comment_id`, `message`, `created_at`) VALUES
(5, 1016, NULL, 1995, 53, 'this is a spam comment.', 1626240256);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `course_learning`
--

CREATE TABLE `course_learning` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_learning`
--

INSERT INTO `course_learning` (`id`, `user_id`, `text_lesson_id`, `file_id`, `session_id`, `created_at`) VALUES
(29, 995, NULL, 46, NULL, 1626232964),
(30, 995, NULL, 47, NULL, 1626232969),
(32, 1015, NULL, 34, NULL, 1626235773),
(33, 1015, NULL, 31, NULL, 1626235776),
(34, 1015, NULL, 32, NULL, 1626235777),
(35, 996, NULL, 52, NULL, 1626235816),
(36, 996, NULL, 53, NULL, 1626235817),
(37, 996, NULL, 54, NULL, 1626235821),
(43, 996, NULL, 31, NULL, 1626235956),
(44, 996, NULL, 34, NULL, 1626235958),
(45, 996, NULL, 32, NULL, 1626235961),
(46, 995, NULL, 52, NULL, 1626236011),
(47, 995, NULL, 49, NULL, 1626236016),
(48, 995, NULL, 50, NULL, 1626236018),
(49, 995, NULL, 51, NULL, 1626236021),
(50, 995, NULL, 48, NULL, 1626236042),
(51, 995, NULL, 37, NULL, 1626236053),
(52, 995, NULL, 38, NULL, 1626236054),
(53, 995, NULL, 39, NULL, 1626236055),
(54, 995, NULL, 31, NULL, 1626236077),
(55, 995, NULL, 32, NULL, 1626236081),
(56, 995, NULL, 34, NULL, 1626236083);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int(10) UNSIGNED DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT 1,
  `type` enum('all_users','special_users') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `expired_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `creator_id`, `title`, `code`, `percent`, `amount`, `count`, `type`, `status`, `expired_at`, `created_at`) VALUES
(7, 1, 'Black Friday', 'BLK2021', 20, 10, 20, 'all_users', 'active', 1639427340, 1626132792);

-- --------------------------------------------------------

--
-- Table structure for table `discount_users`
--

CREATE TABLE `discount_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `creator_id`, `webinar_id`, `title`, `answer`, `order`, `created_at`, `updated_at`) VALUES
(13, 1016, 1995, 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.', NULL, 1624908798, NULL),
(14, 1016, 1995, 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.', NULL, 1624908812, NULL),
(15, 1016, 1995, 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.', NULL, 1624908829, NULL),
(16, 1016, 1995, 'How can I download exercise files?', 'All of the exercise files could be downloaded from the content tab on the course page.', NULL, 1624908852, NULL),
(17, 1016, 1995, 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.', NULL, 1624908868, NULL),
(18, 1015, 1996, 'What is the course level??', 'This is a course for beginners so you will get familiar with the topic from scratch.', NULL, 1624945244, NULL),
(19, 1015, 1996, 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.', NULL, 1624945306, NULL),
(20, 1015, 1996, 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.', NULL, 1624945328, NULL),
(23, 929, 1999, 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.', NULL, 1625039334, NULL),
(24, 929, 1999, 'How can I download exercise files?', 'All of the exercise files could be downloaded from the content tab on the course page.', NULL, 1625039363, NULL),
(25, 929, 1999, 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.', NULL, 1625039377, NULL),
(32, 4, 2005, 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.', NULL, 1625691029, NULL),
(33, 4, 2005, 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.', NULL, 1625691056, NULL),
(34, 4, 2005, 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.', NULL, 1625691083, NULL),
(35, 867, 2006, 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.', NULL, 1625694463, NULL),
(36, 867, 2006, 'Can I have a private meeting with the instructor?', 'Yes, you can reserve a 1 to 1 meeting with the instructor using the instructor profile.', NULL, 1625694481, NULL),
(40, 867, 2007, 'What is the course level?', 'This is a course for beginners so you will get familiar with the topic from scratch.', NULL, 1626234581, NULL),
(41, 867, 2007, 'How can I get course updates?', 'You will receive a notification after each update is released so you can download updated files from the course page.', NULL, 1626234619, NULL),
(42, 867, 2007, 'Is it a supported course?', 'Yes, you can get in touch with the instructor using the support system.', NULL, 1626234666, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `feature_webinars`
--

CREATE TABLE `feature_webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `page` enum('categories','home','home_categories') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('publish','pending') COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL,
  `downloadable` tinyint(1) DEFAULT 0,
  `storage` enum('local','online') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `creator_id`, `webinar_id`, `title`, `accessibility`, `downloadable`, `storage`, `file`, `volume`, `file_type`, `description`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(31, 1016, 1995, 'Course Overview (Youtube)', 'free', 0, 'online', 'https://youtu.be/pCmh6XaMVxs', '136.00 MB', 'video', 'Understand the varying role of a Product Manager through different types and sizes of companies', 2, 1624869878, 1624869904, NULL),
(32, 1016, 1995, 'What is a Product? (Youtube)', 'free', 0, 'online', 'https://youtu.be/yUOC-Y0f5ZQ', '46.00 MB', 'video', 'Let’s get basic – what is a product?\r\n\r\nProducts, like ghosts, are all around you (read that in a spooky voice).\r\n\r\nSure, it sounds simple, but there’s a lot more nuance to this than just looking up the dictionary definition.', 3, 1624870086, 1624870190, NULL),
(33, 1016, 1995, 'Ideas and User Needs (Vimeo)', 'free', 0, 'online', 'https://vimeo.com/354744129', '280.00 MB', 'video', 'Welcome to the land of ideas and user needs! Have you ever.', 4, 1624871143, 1624942361, NULL),
(34, 1016, 1995, 'Demo Video', 'free', 1, 'local', '/store/1016/Become A Product Manager.mp4', '5.82 MB', 'mp4', 'The most complete course available on Product Management.', 1, 1624942577, 1624942601, NULL),
(37, 929, 1999, 'Introduction', 'free', 1, 'local', '/store/929/How To Manage & Influence Your Virtual Team.mkv', '10.58 MB', 'mkv', 'In this welcome  video, I give you a quick overview of what the course is about.', NULL, 1625038371, 1625043314, NULL),
(38, 929, 1999, 'Principles of Behavior Change', 'paid', 1, 'local', '/store/929/How to Manage & Influence Your Virtual Team.mp4', '4.46 MB', 'mp4', 'In this lecture, I discuss an overview of the \"Principles of Behavior Change\" module, the 4 power principles of behavior change, and what you should know about those principles when managing your virtual team.', NULL, 1625038447, NULL, NULL),
(39, 929, 1999, 'The Power of Writing', 'paid', 1, 'local', '/store/929/How to Manage & Influence Your Virtual Team.mp4', '4.46 MB', 'mp4', 'In this lecture, I discuss the following: The mysterious power of writing things down and The advantages of writing tasks out to your virtual team', NULL, 1625038633, NULL, NULL),
(40, 929, 1999, 'Before the Meeting', 'paid', 1, 'local', '/store/929/How to Manage & Influence Your Virtual Team.mp4', '4.46 MB', 'mp4', 'In this lecture, I discuss the five things you should do before every meeting, and how to manage everyone’s expectations through a well-crafted meeting agenda.', NULL, 1625039003, NULL, NULL),
(41, 929, 1999, 'During the Meeting', 'paid', 1, 'local', '/store/929/How to Manage & Influence Your Virtual Team.mp4', '4.46 MB', 'mp4', 'In this lecture, I discuss the five things you should do during every meeting, and how to facilitate your meetings to keep everyone focused on their tasks.', NULL, 1625039096, NULL, NULL),
(42, 929, 1999, 'After the Meeting', 'paid', 1, 'local', '/store/929/How to Manage & Influence Your Virtual Team.mp4', '4.46 MB', 'mp4', 'In this lecture, I discuss the two things you should do after every meeting, and how to follow up with your team to make sure they are committed to getting their actions completed.', NULL, 1625039180, NULL, NULL),
(46, 929, 2004, 'Exponential', 'paid', 1, 'local', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', 'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels', NULL, 1625685492, NULL, NULL),
(47, 929, 2004, 'Importance of Oil', 'paid', 1, 'local', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', 'Here we test your knowledge of what you learned hopefully listening to our second lecture.', NULL, 1625685578, 1625685587, NULL),
(48, 929, 2004, 'Behavioural Solutions', 'paid', 1, 'local', '/store/929/The Future of Energy.mkv', '15.00 MB', 'mkv', 'Here you will gain and understanding of how consumption is more important than finds of non-renewable energy. Also other matters that affect the future development of non-renewable key and primary fuels', NULL, 1625685691, NULL, NULL),
(49, 4, 2005, 'Welcome !!', 'free', 0, 'online', 'https://youtu.be/z-xkbNLIB5w', '52.00 MB', 'video', 'Today we are going to learn the basics of creating a good design. This can apply from web design to graphic design in general.\r\nI put together my top 5 tips and tricks to create a good design from scratch.', NULL, 1625690308, NULL, NULL),
(50, 4, 2005, 'CSS Essentials', 'paid', 0, 'online', 'https://youtu.be/jx5jmI0UlXU', '75.00 MB', 'video', 'Chances are you have heard of relative and absolute position in CSS, but did you know there are still three other positions? In this video I will be covering all five CSS positions (static, relative, absolute, fixed, and sticky) .', NULL, 1625690699, NULL, NULL),
(51, 4, 2005, 'Intermediate CSS', 'paid', 0, 'online', 'https://youtu.be/IyYC-hSFEFQ', '168.00 MB', 'video', 'Learn more about Intermediate CSS features like CSS Grid, Flexbox, and custom properties (aka. variables). Kyle, from Web Dev Simplified, will walk through a few Intermediate CSS challenges and discuss some of our favorite CSS tips and tricks.', NULL, 1625690835, NULL, NULL),
(52, 867, 2006, 'Welcome to the Course!', 'free', 1, 'local', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', 'A warm welcome to the course! Feel free to contact me if you have any questions', NULL, 1625694176, NULL, NULL),
(53, 867, 2006, 'Health & Safety', 'paid', 1, 'local', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', 'The point of this lecture is to share with you numerous safety tips I\'ve learned during my journey.', NULL, 1625694214, 1625694243, NULL),
(54, 867, 2006, 'Where To Sleep during your Travels?', 'paid', 1, 'local', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', 'After this lesson you\'ll know what exactly is Couchsurfing and what to expect.', NULL, 1625694330, NULL, NULL),
(55, 867, 2006, 'Ready to go? The last things to do!', 'paid', 1, 'local', '/store/867/How to Travel Around the World on a Budget.mkv', '13.10 MB', 'mkv', 'In this video I\'ll share with you some tips to earn money on the road and I will take my example as a digital nomad to show you what works.', NULL, 1625694401, NULL, NULL),
(56, 867, 2007, 'Overview', 'free', 1, 'local', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.', NULL, 1626234339, 1626234405, NULL),
(57, 867, 2007, 'Understanding Maps', 'free', 1, 'local', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.', NULL, 1626234398, NULL, NULL),
(58, 867, 2007, 'World Time', 'free', 1, 'local', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry.', NULL, 1626234448, NULL, NULL),
(59, 867, 2007, 'Travel Technology', 'free', 1, 'local', '/store/867/Travel Management Course.mkv', '13.48 MB', 'mkv', 'The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge require', NULL, 1626234512, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

CREATE TABLE `filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`id`, `title`, `category_id`) VALUES
(1805, 'Level', 520),
(1806, 'Level', 601),
(1807, 'Level', 602),
(1808, 'Level', 603),
(1809, 'Level', 523),
(1810, 'Level', 604),
(1811, 'Level', 605),
(1812, 'Level', 525),
(1813, 'Level', 609),
(1814, 'Level', 610),
(1815, 'Level', 611),
(1816, 'Level', 606),
(1817, 'Level', 607),
(1818, 'Level', 608),
(1819, 'Language', 520),
(1820, 'Language', 601),
(1821, 'Language', 602),
(1822, 'Language', 603),
(1823, 'Language', 523),
(1824, 'Language', 604),
(1825, 'Language', 605),
(1826, 'Language', 525),
(1827, 'Language', 609),
(1829, 'Language', 610),
(1830, 'Language', 611),
(1831, 'Language', 606),
(1832, 'Language', 607),
(1833, 'Language', 608),
(1834, 'Topic', 520),
(1835, 'Topic', 601),
(1836, 'Topic', 602),
(1837, 'Topic', 603),
(1838, 'Topic', 523),
(1839, 'Topic', 604),
(1840, 'Topic', 605),
(1841, 'Topic', 525),
(1842, 'Topic', 609),
(1843, 'Topic', 610),
(1844, 'Topic', 611),
(1845, 'Topic', 606),
(1846, 'Topic', 607),
(1847, 'Topic', 608);

-- --------------------------------------------------------

--
-- Table structure for table `filter_options`
--

CREATE TABLE `filter_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filter_id` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `filter_options`
--

INSERT INTO `filter_options` (`id`, `title`, `filter_id`, `order`) VALUES
(9114, 'Beginner', 1805, 1),
(9115, 'Intermediate', 1805, 2),
(9116, 'Expert', 1805, 3),
(9117, 'Beginner', 1806, 1),
(9118, 'Intermediate', 1806, 2),
(9119, 'Expert', 1806, 3),
(9120, 'Beginner', 1807, 1),
(9121, 'Intermediate', 1807, 2),
(9122, 'Expert', 1807, 3),
(9123, 'Beginner', 1808, 1),
(9124, 'Intermediate', 1808, 2),
(9125, 'Expert', 1808, 3),
(9126, 'Beginner', 1809, 1),
(9127, 'Intermediate', 1809, 2),
(9128, 'Expert', 1809, 3),
(9129, 'Beginner', 1810, 1),
(9130, 'Intermediate', 1810, 2),
(9131, 'Intermediate', 1810, 3),
(9132, 'Beginner', 1811, 1),
(9133, 'Intermediate', 1811, 2),
(9134, 'Expert', 1811, 3),
(9135, 'Beginner', 1812, 1),
(9136, 'Intermediate', 1812, 2),
(9137, 'Expert', 1812, 3),
(9138, 'Beginner', 1813, 1),
(9139, 'Intermediate', 1813, 2),
(9140, 'Expert', 1813, 3),
(9141, 'Beginner', 1814, 1),
(9142, 'Intermediate', 1814, 2),
(9143, 'Expert', 1814, 3),
(9144, 'Beginner', 1815, 1),
(9145, 'Intermediate', 1815, 2),
(9146, 'Expert', 1815, 3),
(9147, 'Beginner', 1816, 1),
(9148, 'Intermediate', 1816, 2),
(9149, 'Expert', 1816, 3),
(9150, 'Beginner', 1817, 1),
(9151, 'Intermediate', 1817, 2),
(9152, 'Expert', 1817, 3),
(9153, 'Beginner', 1818, 1),
(9154, 'Intermediate', 1818, 2),
(9155, 'Expert', 1818, 3),
(9156, 'English', 1819, 1),
(9157, 'Português', 1819, 3),
(9158, 'Español', 1819, 2),
(9159, 'हिन्', 1819, 4),
(9160, 'العربية', 1819, 5),
(9161, 'English', 1820, 1),
(9162, 'Português', 1820, 3),
(9163, 'Español', 1820, 2),
(9164, 'हिन्', 1820, 4),
(9165, 'العربية', 1820, 5),
(9166, 'English', 1821, 1),
(9167, 'Português', 1821, 3),
(9168, 'Español', 1821, 2),
(9169, 'हिन्', 1821, 4),
(9170, 'العربية', 1821, 5),
(9171, 'English', 1822, 1),
(9172, 'Português', 1822, 3),
(9173, 'Español', 1822, 2),
(9174, 'हिन्', 1822, 4),
(9175, 'العربية', 1822, 5),
(9176, 'English', 1823, 1),
(9177, 'Português', 1823, 3),
(9178, 'Español', 1823, 2),
(9179, 'हिन्', 1823, 4),
(9180, 'العربية', 1823, 5),
(9181, 'English', 1824, 1),
(9182, 'Português', 1824, 3),
(9183, 'Español', 1824, 2),
(9184, 'हिन्', 1824, 4),
(9185, 'العربية', 1824, 5),
(9186, 'English', 1825, 1),
(9187, 'Português', 1825, 3),
(9188, 'Español', 1825, 2),
(9189, 'हिन्', 1825, 4),
(9190, 'العربية', 1825, 5),
(9191, 'English', 1826, 1),
(9192, 'Português', 1826, 3),
(9193, 'Español', 1826, 2),
(9194, 'हिन्', 1826, 4),
(9195, 'العربية', 1826, 5),
(9196, 'English', 1827, 1),
(9197, 'Português', 1827, 3),
(9198, 'Español', 1827, 2),
(9199, 'हिन्', 1827, 4),
(9200, 'العربية', 1827, 5),
(9206, 'English', 1829, 1),
(9207, 'Português', 1829, 3),
(9208, 'Español', 1829, 2),
(9209, 'हिन्', 1829, 4),
(9210, 'العربية', 1829, 5),
(9211, 'English', 1830, 1),
(9212, 'Português', 1830, 3),
(9213, 'Español', 1830, 2),
(9214, 'हिन्', 1830, 4),
(9215, 'العربية', 1830, 5),
(9216, 'English', 1831, 1),
(9217, 'Português', 1831, 3),
(9218, 'Español', 1831, 2),
(9219, 'हिन्', 1831, 4),
(9220, 'العربية', 1831, 5),
(9221, 'English', 1832, 1),
(9222, 'Português', 1832, 3),
(9223, 'Español', 1832, 2),
(9224, 'हिन्', 1832, 4),
(9225, 'العربية', 1832, 5),
(9226, 'English', 1833, 1),
(9227, 'Português', 1833, 3),
(9228, 'Español', 1833, 2),
(9229, 'हिन्', 1833, 4),
(9230, 'العربية', 1833, 5),
(9231, 'Photoshop', 1834, 1),
(9232, 'Adobe Illustrator', 1834, 2),
(9233, 'Blender', 1834, 3),
(9234, '3D Modeling', 1834, 4),
(9235, 'After Effects', 1834, 5),
(9236, 'Math', 1835, 1),
(9237, 'Algebra', 1835, 2),
(9238, 'Calculus', 1835, 3),
(9239, 'Statistics', 1835, 4),
(9240, 'Physics', 1836, 1),
(9241, 'Chemistry', 1836, 2),
(9242, 'Biology', 1836, 3),
(9243, 'Genetics', 1836, 4),
(9244, 'English Language', 1837, 1),
(9245, 'English Grammar', 1837, 2),
(9246, 'Spanish Language', 1837, 3),
(9247, 'Arabic Language', 1837, 4),
(9248, 'IELTS', 1837, 5),
(9249, 'Yoga', 1838, 1),
(9250, 'Fitness', 1838, 2),
(9251, 'Health', 1838, 3),
(9252, 'Dance', 1838, 4),
(9253, 'Chess', 1839, 3),
(9254, 'Cooking', 1839, 1),
(9255, 'Drawing', 1839, 2),
(9256, 'Reiki', 1839, 4),
(9257, 'Makeup Artistry', 1840, 1),
(9258, 'Hair Styling', 1840, 2),
(9259, 'Skincare', 1840, 3),
(9260, 'Fashion', 1840, 4),
(9261, 'Nail Art', 1840, 5),
(9262, 'Digital Marketing', 1841, 1),
(9263, 'SEO', 1841, 2),
(9264, 'Marketing Strategy', 1841, 3),
(9265, 'Social Media Marketing', 1841, 4),
(9266, 'Leadership', 1842, 1),
(9267, 'Management Skills', 1842, 2),
(9268, 'ISO 9001', 1842, 3),
(9269, 'Manager Training', 1842, 4),
(9270, 'Communication Skills', 1843, 1),
(9271, 'Presentation Skills', 1843, 2),
(9272, 'Public Speaking', 1843, 3),
(9273, 'Business Communication', 1843, 4),
(9274, 'Writing', 1843, 5),
(9275, 'Business Strategy', 1844, 1),
(9276, 'Strategic Planning', 1844, 2),
(9277, 'Marketing Strategy', 1844, 3),
(9278, 'Innovation', 1844, 4),
(9279, 'HTML', 1845, 1),
(9280, 'CSS', 1845, 2),
(9281, 'PHP', 1845, 3),
(9282, 'JavaScript', 1845, 4),
(9283, 'Laravel', 1845, 5),
(9284, 'Android Development', 1846, 1),
(9285, 'iOS Development', 1846, 2),
(9286, 'Google Flutter', 1846, 3),
(9287, 'React NativeKotlin', 1846, 4),
(9288, 'Unity', 1847, 1),
(9289, 'Unreal Engine', 1847, 2),
(9290, 'Unreal Engine Blueprints', 1847, 3),
(9291, '3D Game Development', 1847, 4),
(9292, 'Game Development Fundamentals', 1847, 5);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(10) UNSIGNED NOT NULL,
  `follower` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('requested','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `creator_id`, `name`, `discount`, `commission`, `status`, `created_at`) VALUES
(2, 1, 'Vip Instructors', 20, 10, 'active', 1613379096),
(3, 1, 'Special Students', 10, NULL, 'active', 1614530208);

-- --------------------------------------------------------

--
-- Table structure for table `group_users`
--

CREATE TABLE `group_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `group_users`
--

INSERT INTO `group_users` (`id`, `group_id`, `user_id`, `created_at`) VALUES
(64, 3, 996, 1625974235),
(65, 2, 3, 1625974258),
(66, 2, 1016, 1625974260);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `creator_id`, `amount`, `discount`, `disabled`, `created_at`) VALUES
(29, 923, 100, 10, 0, 1625916131),
(30, 1015, 100, NULL, 0, 1625938321),
(31, 934, 100, NULL, 0, 1625939199),
(32, 929, 200, NULL, 0, 1625939298),
(33, 870, 100, NULL, 0, 1625939436),
(34, 3, 50, NULL, 1, 1625939607),
(35, 1016, 60, NULL, 0, 1625941278);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_times`
--

CREATE TABLE `meeting_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL,
  `day_label` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `meeting_times`
--

INSERT INTO `meeting_times` (`id`, `meeting_id`, `day_label`, `time`, `created_at`) VALUES
(84, 29, 'monday', '09:00AM-10:00AM', 1625916149),
(85, 29, 'wednesday', '08:30AM-10:00AM', 1625916235),
(86, 29, 'thursday', '06:30PM-07:30PM', 1625916372),
(87, 29, 'monday', '07:00PM-09:00PM', 1625916397),
(88, 29, 'thursday', '09:30PM-10:30PM', 1625916437),
(89, 29, 'wednesday', '10:15AM-11:45AM', 1625916467),
(90, 29, 'wednesday', '07:30PM-09:00PM', 1625916508),
(91, 29, 'tuesday', '09:00PM-10:00PM', 1625916577),
(92, 29, 'friday', '08:30PM-10:00PM', 1625916611),
(93, 30, 'saturday', '10:00AM-11:30AM', 1625938350),
(94, 30, 'sunday', '05:00PM-06:00PM', 1625938383),
(95, 30, 'sunday', '06:30PM-07:30PM', 1625938416),
(96, 30, 'monday', '09:45AM-10:15AM', 1625938436),
(97, 30, 'monday', '11:00AM-11:45AM', 1625938462),
(98, 30, 'monday', '06:00PM-07:30PM', 1625938497),
(99, 30, 'tuesday', '08:30AM-09:30AM', 1625938517),
(100, 30, 'wednesday', '10:30AM-11:30AM', 1625938585),
(101, 30, 'thursday', '04:50PM-05:50PM', 1625938619),
(102, 30, 'wednesday', '06:00PM-07:30PM', 1625938647),
(103, 30, 'wednesday', '08:30PM-09:45PM', 1625938681),
(104, 30, 'wednesday', '10:00PM-10:30PM', 1625938700),
(105, 30, 'thursday', '06:00PM-08:00PM', 1625938755),
(106, 30, 'friday', '10:15AM-11:45AM', 1625938776),
(107, 32, 'wednesday', '09:00AM-11:30AM', 1625939319),
(108, 32, 'monday', '09:00AM-10:30AM', 1625939339),
(109, 32, 'monday', '10:45AM-11:45AM', 1625939358),
(110, 32, 'tuesday', '06:00PM-07:30PM', 1625939384),
(111, 33, 'monday', '08:00AM-09:30AM', 1625939462),
(112, 33, 'thursday', '08:30AM-09:30AM', 1625939477),
(113, 33, 'tuesday', '10:30AM-11:30AM', 1625939493),
(114, 33, 'wednesday', '08:00AM-09:00AM', 1625939508),
(115, 33, 'thursday', '09:30AM-10:30AM', 1625939527),
(116, 33, 'monday', '10:30AM-11:30AM', 1625939551),
(117, 34, 'monday', '09:30AM-10:30AM', 1625939631),
(118, 34, 'tuesday', '09:30AM-10:30AM', 1625939646),
(119, 34, 'monday', '10:45AM-11:45AM', 1625939660),
(120, 34, 'wednesday', '08:00AM-10:00AM', 1625939678),
(121, 34, 'wednesday', '10:30AM-11:30AM', 1625939700),
(122, 34, 'wednesday', '05:00PM-06:30PM', 1625939744),
(123, 34, 'thursday', '08:00PM-09:30PM', 1625939763),
(124, 35, 'monday', '09:30AM-10:30AM', 1625941315),
(125, 35, 'monday', '11:00AM-11:45AM', 1625941331),
(126, 35, 'tuesday', '08:00AM-09:30AM', 1625941347),
(127, 35, 'wednesday', '08:00AM-09:30AM', 1625941388),
(128, 35, 'wednesday', '10:00AM-11:30AM', 1625941418),
(129, 35, 'monday', '05:00PM-06:30PM', 1625941460),
(130, 35, 'wednesday', '08:00PM-09:30PM', 1625941475),
(131, 35, 'thursday', '08:00AM-09:00AM', 1625941557),
(132, 35, 'thursday', '09:30AM-10:30AM', 1625941580),
(133, 35, 'thursday', '10:45AM-11:45AM', 1625941611),
(134, 35, 'monday', '07:30PM-08:30PM', 1625941640),
(135, 35, 'thursday', '10:00PM-11:00PM', 1625941668),
(136, 35, 'monday', '09:00PM-10:00PM', 1625941731),
(137, 35, 'monday', '10:15PM-11:00PM', 1625941832),
(138, 35, 'friday', '09:00AM-10:00AM', 1625941864),
(139, 35, 'friday', '10:30AM-11:30AM', 1625941879),
(140, 31, 'monday', '08:40AM-09:40AM', 1625942014),
(141, 31, 'monday', '10:00AM-11:30AM', 1625942028),
(142, 31, 'monday', '05:00PM-06:30PM', 1625942048),
(143, 31, 'monday', '06:45PM-07:45PM', 1625942079),
(144, 31, 'monday', '08:00PM-09:30PM', 1625942101),
(145, 31, 'monday', '10:00PM-10:30PM', 1625942137),
(146, 31, 'tuesday', '08:30AM-09:30AM', 1625942159),
(147, 31, 'tuesday', '10:00AM-11:00AM', 1625942173),
(148, 31, 'tuesday', '06:00PM-07:00PM', 1625942191),
(149, 31, 'saturday', '09:30AM-10:30AM', 1625942210),
(150, 31, 'sunday', '08:30AM-09:30AM', 1625942229),
(151, 31, 'sunday', '09:45AM-10:00AM', 1625942247),
(152, 31, 'sunday', '10:30AM-11:45AM', 1625942266),
(153, 31, 'saturday', '10:45AM-11:45AM', 1625942311),
(154, 31, 'sunday', '05:00PM-06:30PM', 1625942351),
(155, 31, 'wednesday', '08:15AM-09:15AM', 1625942379),
(156, 31, 'wednesday', '09:30AM-10:30AM', 1625942395),
(157, 31, 'wednesday', '10:45AM-11:45AM', 1625942414),
(158, 31, 'thursday', '07:30AM-08:30AM', 1625942446),
(159, 31, 'thursday', '08:45AM-09:45AM', 1625942461),
(160, 31, 'thursday', '10:00AM-11:00AM', 1625942474),
(161, 31, 'thursday', '05:30PM-07:00PM', 1625942499),
(162, 31, 'friday', '09:00AM-10:00AM', 1625942521),
(163, 31, 'friday', '10:30AM-11:30AM', 1625942564),
(164, 31, 'tuesday', '08:00PM-09:00PM', 1625942840),
(165, 31, 'saturday', '06:00PM-07:00PM', 1625943005);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_08_09_145553_create_roles_table', 1),
(4, '2020_08_09_145834_create_sections_table', 1),
(5, '2020_08_09_145926_create_permissions_table', 1),
(6, '2020_08_24_163003_create_webinars_table', 1),
(7, '2020_08_24_164823_create_webinar_partner_teacher_table', 1),
(8, '2020_08_24_165658_create_tags_table', 1),
(9, '2020_08_24_165835_create_webinar_tag_table', 1),
(10, '2020_08_24_171611_create_categories_table', 1),
(11, '2020_08_29_052437_create_filters_table', 1),
(12, '2020_08_29_052900_create_filter_options_table', 1),
(13, '2020_08_29_054455_add_category_id_in_webinar_table', 1),
(14, '2020_09_01_174741_add_seo_description_and_start_end_time_in_webinar_table', 1),
(15, '2020_09_02_180508_create_webinar_filter_option_table', 1),
(16, '2020_09_02_193923_create_tickets_table', 1),
(17, '2020_09_02_210447_create_sessions_table', 1),
(18, '2020_09_02_212642_create_files_table', 1),
(19, '2020_09_03_175543_create_faqs_table', 1),
(20, '2020_09_08_175539_delete_webinar_tag_and_update_tag_table', 1),
(21, '2020_09_09_154522_create_quizzes_table', 1),
(22, '2020_09_09_174646_create_quizzes_questions_table', 1),
(23, '2020_09_09_182726_create_quizzes_questions_answers_table', 1),
(24, '2020_09_14_160028_create_prerequisites_table', 1),
(25, '2020_09_14_183235_nullable_item_id_in_quizzes_table', 1),
(26, '2020_09_14_190110_create_webinar_quizzes_table', 1),
(27, '2020_09_16_163835_create_quizzes_results_table', 1),
(28, '2020_09_24_102115_add_total_mark_in_quize_table', 1),
(29, '2020_09_24_132242_create_comment_table', 1),
(30, '2020_09_24_132639_create_favorites_table', 1),
(31, '2020_09_26_181200_create_certificate_table', 1),
(32, '2020_09_26_181444_create_certificates_templates_table', 1),
(33, '2020_09_30_170451_add_slug_in_webinars_table', 1),
(34, '2020_09_30_191202_create_purchases_table', 1),
(35, '2020_10_02_063828_create_rating_table', 1),
(36, '2020_10_02_094723_edit_table_and_add_foreign_key', 1),
(37, '2020_10_08_055408_add_reviwes_table', 1),
(38, '2020_10_08_084100_edit_status_comments_table', 1),
(39, '2020_10_08_121041_create_meetings_table', 2),
(40, '2020_10_08_121621_create_meeting_times_table', 2),
(41, '2020_10_08_121848_create_meeting_requests_table', 2),
(42, '2020_10_15_172913_add_about_and_head_line_in_users_table', 2),
(43, '2020_10_15_173645_create_follow_table', 2),
(46, '2020_10_17_100606_create_badges_table', 3),
(47, '2020_10_08_121848_create_reserve_meetings_table', 4),
(48, '2020_10_20_193013_update_users_table', 5),
(49, '2020_10_20_211927_create_users_metas_table', 6),
(50, '2020_10_18_220323_convert_creatore_user_id_to_creator_id', 7),
(51, '2020_10_22_153502_create_cart_table', 7),
(52, '2020_10_22_154636_create_orders_table', 7),
(53, '2020_10_22_155930_create_order_items_table', 7),
(54, '2020_10_23_204203_create_sales_table', 7),
(55, '2020_10_23_211459_create_accounting_table', 7),
(56, '2020_10_23_213515_create_discounts_table', 7),
(57, '2020_10_23_213934_create_discount_users_table', 7),
(58, '2020_10_23_235444_create_ticket_users_table', 7),
(59, '2020_10_25_172331_create_groups_table', 7),
(60, '2020_10_25_172523_create_group_users_table', 7),
(62, '2020_11_02_202754_edit_email_in_users_table', 8),
(63, '2020_11_03_200314_edit_some_tables', 9),
(64, '2020_11_06_193300_create_settings_table', 10),
(67, '2020_11_09_202533_create_feature_webinars_table', 11),
(68, '2020_11_10_193459_edit_webinars_table', 12),
(69, '2020_11_11_203344_create_trend_categories_table', 13),
(72, '2020_11_11_222833_create_blog_categories_table', 14),
(75, '2020_11_11_231204_create_blog_table', 15),
(76, '2020_10_25_223247_add_sub_title_tickets_table', 16),
(77, '2020_10_28_001340_add_count_in_discount_users_table', 16),
(78, '2020_10_28_221509_create_payment_channels_table', 16),
(79, '2020_11_01_120909_change_class_name_enum_payment_channels_table', 16),
(80, '2020_11_07_233948_add_some_raw_in_order_items__table', 16),
(81, '2020_11_10_061350_add_discount_id_in_order_items_table', 16),
(82, '2020_11_10_071651_decimal_orders_order_items_sales_table', 16),
(83, '2020_11_11_193138_change_reference_id_type_in_orders_tabel', 16),
(84, '2020_11_11_222413_change_meeting_id_to_meeting_time_id_in_order_items_table', 16),
(85, '2020_11_11_225421_add_locked_at_and_reserved_at_and_change_request_time_to_day_in_reserve_meetings_table', 17),
(86, '2020_11_12_000116_add_type_in_orders_table', 17),
(87, '2020_11_12_001912_change_meeting_id_to_meeting_time_id_in_accounting_table', 17),
(88, '2020_11_12_133009_decimal_paid_amount_in_reserve_meetings_table', 17),
(91, '2020_11_12_170109_add_blog_id_to_comments_table', 18),
(98, '2020_11_14_201228_add_bio_and_ban_to_users_table', 20),
(99, '2020_11_14_224447_create_users_badges_table', 21),
(100, '2020_11_14_233319_create_payout_request_table', 22),
(101, '2020_11_15_010622_change_byer_id_and_add_seller_id_in_sales_table', 22),
(102, '2020_11_16_195009_create_supports_table', 22),
(103, '2020_11_16_201814_create_support_departments_table', 22),
(107, '2020_11_16_202254_create_supports_table', 23),
(109, '2020_11_17_192744_create_support_conversations_table', 24),
(110, '2020_11_17_072348_create_offline_payments_table', 25),
(111, '2020_11_19_191943_add_replied_status_to_comments_table', 25),
(114, '2020_11_20_215748_create_subscribes_table', 26),
(115, '2020_11_21_185519_create_notification_templates_table', 27),
(116, '2020_11_22_210832_create_promotions_table', 28),
(118, '2020_11_23_194153_add_status_column_to_discounts_table', 29),
(119, '2020_11_23_213532_create_users_occupations_table', 30),
(120, '2020_11_30_220855_change_amount_in_payouts_table', 31),
(121, '2020_11_30_231334_add_pay_date_in_offline_payments_table', 31),
(122, '2020_11_30_233018_add_charge_enum_in_type_in_orders_table', 31),
(123, '2020_12_01_193948_create_testimonials_table', 32),
(124, '2020_12_02_202043_edit_and_add_types_to_webinars_table', 33),
(128, '2020_12_04_204048_add_column_creator_id_to_some_tables', 34),
(129, '2020_12_05_205320_create_text_lessons_table', 35),
(130, '2020_12_05_210052_create_text_lessons_attachments_table', 36),
(131, '2020_12_06_215701_add_order_column_to_webinar_items_tables', 37),
(132, '2020_12_11_114844_add_column_storage_to_files_table', 38),
(133, '2020_12_07_211009_add_subscribe_id_in_order_items_table', 39),
(134, '2020_12_07_211657_nullable_payment_method_in_orders_table', 39),
(135, '2020_12_07_212306_add_subscribe_enum__type_in_orders_table', 39),
(136, '2020_12_07_223237_changes_in_sales_table', 39),
(137, '2020_12_07_224925_add_subscribe_id_in_accounting_table', 39),
(138, '2020_12_07_230200_create_subscribe_uses_table', 39),
(139, '2020_12_11_123209_add_subscribe_type_account_in_accounting_table', 39),
(140, '2020_12_11_132819_add_sale_id_in_subscribe_use_in_subscribe_uses_table', 39),
(141, '2020_12_11_135824_add_subscribe_payment_method_in_sales_table', 39),
(143, '2020_12_13_205751_create_advertising_banners_table', 41),
(145, '2020_12_14_204251_create_become_instructors_table', 42),
(146, '2020_11_12_232207_create_reports_table', 43),
(147, '2020_11_12_232207_create_comments_reports_table', 44),
(148, '2020_12_17_210822_create_webinar_reports_table', 45),
(150, '2020_12_18_181551_create_notifications_table', 46),
(151, '2020_12_18_195833_create_notifications_status_table', 47),
(152, '2020_12_19_195152_add_status_column_to_payment_channels_table', 48),
(154, '2020_12_20_231434_create_contacts_table', 49),
(155, '2020_12_21_210345_edit_quizzes_table', 50),
(156, '2020_12_24_221715_add_column_to_users_table', 50),
(157, '2020_12_24_084728_create_special_offers_table', 51),
(158, '2020_12_25_204545_add_promotion_enum_type_in_orders_table', 51),
(159, '2020_12_25_205139_add_promotion_id_in_order_items_table', 51),
(160, '2020_12_25_205811_add_promotion_id_in_accounting_table', 51),
(161, '2020_12_25_210341_add_promotion_id_in_sales_table', 51),
(162, '2020_12_25_212453_add_promotion_type_account_enum_in_accounting_table', 51),
(163, '2020_12_25_231005_add_promotion_type_enum_in_sales_table', 51),
(166, '2020_12_29_192943_add_column_reply_to_contacts_table', 53),
(167, '2020_12_30_225001_create_payu_transactions_table', 54),
(168, '2021_01_06_202649_edit_column_password_from_users_table', 55),
(169, '2021_01_08_134022_add_api_column_to_sessions_table', 56),
(170, '2021_01_10_215540_add_column_store_type_to_accounting', 57),
(173, '2021_01_13_214145_edit_carts_table', 58),
(174, '2021_01_13_230725_delete_column_type_from_orders_table', 59),
(175, '2021_01_20_214653_add_discount_column_to_reserve_meetings_table', 60),
(177, '2021_01_27_193915_add_foreign_key_to_support_conversations_table', 61),
(178, '2021_02_02_203821_add_viewed_at_column_to_comments_table', 62),
(180, '2021_02_12_134504_add_financial_approval_column_to_users_table', 64),
(181, '2021_02_12_131916_create_verifications_table', 65),
(182, '2021_02_15_221518_add_certificate_to_users_table', 66),
(183, '2021_02_16_194103_add_cloumn_private_to_webinars_table', 66),
(184, '2021_02_18_213601_edit_rates_column_webinar_reviews_table', 67),
(188, '2021_02_27_212131_create_noticeboards_table', 68),
(189, '2021_02_27_213940_create_noticeboards_status_table', 68),
(191, '2021_02_28_195025_edit_groups_table', 69),
(192, '2021_03_06_205221_create_newsletters_table', 70),
(193, '2021_03_12_105526_add_is_main_column_to_roles_table', 71),
(194, '2021_03_12_202441_add_description_column_to_feature_webinars_table', 72),
(195, '2021_03_18_130248_edit_status_column_from_supports_table', 73),
(196, '2021_03_19_113306_add_column_order_to_categories_table', 74),
(197, '2021_03_19_115939_add_column_order_to_filter_options_table', 75),
(199, '2021_03_24_100005_edit_discounts_table', 76),
(200, '2021_03_27_204551_create_sales_status_table', 77),
(202, '2021_03_28_182558_add_column_page_to_settings_table', 78),
(206, '2021_03_31_195835_add_new_status_in_reserve_meetings_table', 79),
(207, '2020_12_12_204705_create_course_learning_table', 80),
(208, '2021_04_19_195452_add_meta_description_column_to_blog_table', 81),
(209, '2021_04_21_200131_add_icon_column_to_categories_table', 82),
(210, '2021_04_21_203746_add_is_popular_column_to_subscribes_table', 83),
(211, '2021_04_25_203955_add_is_charge_account_column_to_order_items', 84),
(212, '2021_04_25_203955_add_is_charge_account_column_to_orders', 85),
(213, '2021_05_13_111720_add_moderator_secret_column_to_sessions_table', 86),
(214, '2021_05_13_123920_add_zoom_id_column_to_sessions_table', 87),
(215, '2021_05_14_182848_create_session_reminds_table', 88),
(217, '2021_05_25_193743_create_users_zoom_api_table', 89),
(218, '2021_05_25_205716_add_new_column_to_sessions_table', 90),
(219, '2021_05_27_095128_add_user_id_to_newsletters_table', 91),
(220, '2020_12_27_192459_create_pages_table', 92);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `user_id`, `email`, `created_at`) VALUES
(8, 995, 'cameronschofield@gmail.com', 1625090411);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards`
--

CREATE TABLE `noticeboards` (
  `id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('all','organizations','students','instructors','students_and_instructors') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards`
--

INSERT INTO `noticeboards` (`id`, `organ_id`, `user_id`, `type`, `sender`, `title`, `message`, `created_at`) VALUES
(10, NULL, NULL, 'all', 'Staff', 'Top summer classes', '<p>You can find top summer courses on the platform homepage and get all of them with 50% discount by using \"mysummer\" discount coupon.</p>', 1625921717),
(11, NULL, NULL, 'instructors', 'Staff', 'Instructor terms of services changed', '<p>Instructors terms of services changed on July 17. You can read terms on the terms page.</p>', 1625921872),
(12, NULL, NULL, 'all', 'Staff', 'New Year Sales Festival', '<p>Due to the New Year Festival, users who buy more than $ 200 will be given a 20% discount code.</p>', 1626132374),
(13, 867, NULL, 'students_and_instructors', 'Light Moon', 'New Class Published', '\"Effective Time Management\" Live Class <font color=\"#6ba54a\" style=\"\">Published</font>, for getting the final certificate it is necessary to Enroll in this class.', 1626165028),
(14, 867, NULL, 'students_and_instructors', 'Light Moon', 'New Private Course Published', '<p>Dear students and instructors. Travel Management Course published privately for you. please enroll on this course<br></p>', 1626235132);

-- --------------------------------------------------------

--
-- Table structure for table `noticeboards_status`
--

CREATE TABLE `noticeboards_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noticeboard_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboards_status`
--

INSERT INTO `noticeboards_status` (`id`, `user_id`, `noticeboard_id`, `seen_at`) VALUES
(5, 995, 13, 1626165137),
(6, 1015, 13, 1626165555),
(7, 1015, 11, 1626204347);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `group_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` enum('system','admin') COLLATE utf8mb4_unicode_ci DEFAULT 'system',
  `type` enum('single','all_users','students','instructors','organizations','group') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1263, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624870230),
(1264, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624872525),
(1265, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624904613),
(1266, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624907184),
(1267, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624907798),
(1268, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624908934),
(1269, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624908947),
(1270, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624911781),
(1271, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624911801),
(1272, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942128),
(1273, 1016, NULL, 'Course created', '<p>you create new course&nbsp;with Title Become a Product Manager</p>', 'system', 'single', 1624942267),
(1274, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942277),
(1275, 1016, NULL, 'Course approve', '<p>your course with title Become a Product Manager approved</p>', 'system', 'single', 1624942627),
(1276, 1015, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Linux in 5 Days</p>', 'system', 'single', 1624945432),
(1277, 1015, NULL, 'Course approve', '<p>your course with title Learn Linux in 5 Days approved</p>', 'system', 'single', 1624945452),
(1278, 934, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Python Programming</p>', 'system', 'single', 1624957035),
(1279, 934, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1624957054),
(1280, 934, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1624959946),
(1281, 1015, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1624966729),
(1282, 1015, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1624966741),
(1283, 1015, NULL, 'Course created', '<p>you create new course&nbsp;with Title Excel from Beginner to Advanced</p>', 'system', 'single', 1625003468),
(1284, 1015, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625003516),
(1285, 929, NULL, 'Course created', '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>', 'system', 'single', 1625041045),
(1286, 929, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625041074),
(1287, 929, NULL, 'Course created', '<p>you create new course&nbsp;with Title How to Manage & Influence Your Virtual Team</p>', 'system', 'single', 1625043168),
(1288, 929, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625043180),
(1289, 929, NULL, 'Course approve', '<p>your course with title How to Manage & Influence Your Virtual Team approved</p>', 'system', 'single', 1625043319),
(1290, 867, NULL, 'Course created', '<p>you create new course&nbsp;with Title Effective Time Management</p>', 'system', 'single', 1625046155),
(1291, 923, NULL, 'Course approve', '<p>your course with title Effective Time Management approved</p>', 'system', 'single', 1625046173),
(1292, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625084229),
(1293, 3, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625085106),
(1294, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625085118),
(1295, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088480),
(1296, 3, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625088678),
(1297, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088698),
(1298, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625088760),
(1299, 863, NULL, 'Course created', '<p>you create new course&nbsp;with Title Health And Fitness Masterclass: Beginner To Advanced</p>', 'system', 'single', 1625124082),
(1300, 870, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625124100),
(1301, 934, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn Python Programming</p>', 'system', 'single', 1625286023),
(1302, 934, NULL, 'Course approve', '<p>your course with title Learn Python Programming approved</p>', 'system', 'single', 1625286038),
(1303, 1015, NULL, 'Course approve', '<p>your course with title Excel from Beginner to Advanced approved</p>', 'system', 'single', 1625293759),
(1304, 870, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625293821),
(1305, 923, NULL, 'Course approve', '<p>your course with title Effective Time Management approved</p>', 'system', 'single', 1625293844),
(1306, 864, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300387),
(1307, 3, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300399),
(1308, 864, NULL, 'Course created', '<p>you create new course&nbsp;with Title Active Listening: You Can Be a Great Listener</p>', 'system', 'single', 1625300598),
(1309, 3, NULL, 'Course approve', '<p>your course with title Active Listening: You Can Be a Great Listener approved</p>', 'system', 'single', 1625300612),
(1310, 870, NULL, 'Course approve', '<p>your course with title Health And Fitness Masterclass approved</p>', 'system', 'single', 1625301355),
(1311, 3, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301679),
(1312, 3, NULL, 'Course created', '<p>you create new course&nbsp;with Title Learn and Understand AngularJS</p>', 'system', 'single', 1625301721),
(1313, 3, NULL, 'Course approve', '<p>your course with title Learn and Understand AngularJS approved</p>', 'system', 'single', 1625301754),
(1314, 1016, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553784),
(1315, 1015, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553799),
(1316, 934, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553801),
(1317, 929, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553801),
(1318, 870, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553802),
(1319, 923, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553802),
(1320, 3, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553815),
(1321, 864, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1625553917),
(1322, 934, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554209),
(1323, 929, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554210),
(1324, 870, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554210),
(1325, 923, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625554211),
(1326, 929, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554498),
(1327, 870, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554499),
(1328, 923, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625554499),
(1329, 1016, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554777),
(1330, 1015, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554779),
(1331, 934, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554782),
(1332, 929, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554784),
(1333, 870, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554784),
(1334, 923, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554785),
(1335, 1015, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625554976),
(1336, 3, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625558907),
(1337, 3, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625558908),
(1338, 867, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625602049),
(1339, 867, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625602050),
(1340, 864, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625635046),
(1341, 864, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625635048),
(1342, 996, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625636389),
(1343, 859, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625642664),
(1344, 863, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625643033),
(1345, 863, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625643034),
(1346, 868, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625643807),
(1347, 4, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625644582),
(1348, 995, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625681178),
(1349, 929, NULL, 'Your class created', '<p>Your class The Future of Energy successfully created. It will be published after approval.</p>', 'system', 'single', 1625685731),
(1350, 929, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685748),
(1351, 929, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625685768),
(1352, 929, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685818),
(1353, 929, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625685843),
(1354, 4, NULL, 'Your class created', '<p>Your class Web Design for Beginners successfully created. It will be published after approval.</p>', 'system', 'single', 1625691113),
(1355, 934, NULL, 'Your class approved', '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625691133),
(1356, 1016, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625691301),
(1357, 1016, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692122),
(1358, 929, NULL, 'Your class approved', '<p>Your class The Future of Energy successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692134),
(1359, 934, NULL, 'Your class approved', '<p>Your class Web Design for Beginners successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625692139),
(1360, 867, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625693949),
(1361, 867, NULL, 'Your class created', '<p>Your class How to Travel Around the World on a Budget successfully created. It will be published after approval.</p>', 'system', 'single', 1625694536),
(1362, 923, NULL, 'Your class approved', '<p>Your class How to Travel Around the World on a Budget successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625694552),
(1363, 4, NULL, 'New badge', '<p>Congratilations! You received Junior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694573),
(1364, 934, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694573),
(1365, 923, NULL, 'New badge', '<p>Congratilations! You received Senior Vendor&nbsp;badge.</p>', 'system', 'single', 1625694574),
(1366, 923, NULL, 'Your class approved', '<p>Your class How to Travel Around the World successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625694594),
(1368, 1, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863108),
(1369, 930, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1625863166),
(1370, 1, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863203),
(1371, 979, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1625863218),
(1372, 1, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863345),
(1373, 1, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863462),
(1374, 934, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625863587),
(1375, 929, NULL, 'New comment for your class', '<p>Morgan Sullivan left a new comment on your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625863590),
(1376, 1015, NULL, 'New comment for your class', '<p>Jade Harrison left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625863593),
(1377, 929, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625863596),
(1378, 1, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864259),
(1379, 934, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1625864266),
(1380, 1, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864416),
(1381, 923, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class How to Travel Around the World .</p>', 'system', 'single', 1625864421),
(1382, 1, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864526),
(1383, 929, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class The Future of Energy .</p>', 'system', 'single', 1625864533),
(1384, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Convert Videos .</p>', 'system', 'single', 1625891270),
(1385, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Pre-purchase question .</p>', 'system', 'single', 1625891677),
(1386, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Pending Offline Payment .</p>', 'system', 'single', 1625891851),
(1387, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Commission Rate .</p>', 'system', 'single', 1625892221),
(1388, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Class delay .</p>', 'system', 'single', 1625895874),
(1389, 1, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625897110),
(1390, 1, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Class delay updated with a new reply.</p>', 'system', 'single', 1625898890),
(1391, 996, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1625944192),
(1392, 996, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 500 successfully approved.</p>', 'system', 'single', 1625944212),
(1393, 1015, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625944345),
(1394, 996, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625944345),
(1395, 996, NULL, 'New meeting request', '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>', 'system', 'single', 1625944346),
(1396, 1015, NULL, 'New meeting request', '<p>New meeting booked by Robert B. Gray for 2021-07-12  with the amount 150 .</p>', 'system', 'single', 1625944346),
(1397, 996, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 165.00 .</p>', 'system', 'single', 1625944347),
(1398, 1015, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625947994),
(1399, 1015, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625948044),
(1400, 934, NULL, 'Your class approved', '<p>Your class Learn Python Programming successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625949854),
(1401, 1016, NULL, 'Your class approved', '<p>Your class Become a Product Manager successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1625950395),
(1402, 995, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 1000 submitted successfully.</p>', 'system', 'single', 1625950563),
(1403, 930, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type addiction and amount 600 .</p>', 'system', 'single', 1625950715),
(1404, 995, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 1000 successfully approved.</p>', 'system', 'single', 1625950749),
(1405, 934, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625952628),
(1406, 995, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625952628),
(1407, 995, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>', 'system', 'single', 1625952629),
(1408, 934, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-08-05  with the amount 100 .</p>', 'system', 'single', 1625952629),
(1409, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>', 'system', 'single', 1625952630),
(1410, 4, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Web Design for Beginners .</p>', 'system', 'single', 1625953196),
(1411, 995, NULL, 'New purchase completed', '<p>The class Web Design for Beginners successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625953197),
(1412, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Web Design for Beginners with type deduction and amount 11.00 .</p>', 'system', 'single', 1625953197),
(1413, 934, NULL, 'New class support message', '<p>user Cameron Schofield send new support message for course with title Web Design for Beginners .</p>', 'system', 'single', 1625953303),
(1414, 996, NULL, 'Your user group changed', '<p>Your user group changed to Special Students .</p>', 'system', 'single', 1625974235),
(1415, 3, NULL, 'Your user group changed', '<p>Your user group changed to Vip Instructors .</p>', 'system', 'single', 1625974258),
(1416, 1016, NULL, 'Your user group changed', '<p>Your user group changed to Vip Instructors .</p>', 'system', 'single', 1625974260),
(1417, 934, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625974480),
(1418, 4, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625980530),
(1419, 979, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 400 submitted successfully.</p>', 'system', 'single', 1625992349),
(1420, 979, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 400 successfully approved.</p>', 'system', 'single', 1625992548),
(1421, 1016, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 100 submitted successfully.</p>', 'system', 'single', 1625992606),
(1422, 1016, NULL, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount 100&nbsp;rejected.</p>', 'system', 'single', 1625992620),
(1423, 923, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1625993378),
(1424, 923, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1625993428),
(1425, 930, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 250 submitted successfully.</p>', 'system', 'single', 1625993489),
(1426, 1015, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1625996812),
(1427, 995, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996813),
(1428, 995, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>', 'system', 'single', 1625996815),
(1429, 1015, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-07-14  with the amount 125 .</p>', 'system', 'single', 1625996816),
(1430, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 137.50 .</p>', 'system', 'single', 1625996816),
(1431, 995, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>', 'system', 'single', 1625996841),
(1432, 934, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Linda Anderson Student:&nbsp; Cameron Schofield&nbsp; Meeting time: 2021-08-05 .</p>', 'system', 'single', 1625996842),
(1433, 1016, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1625996905),
(1434, 929, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class How to Manage & Influence Your Virtual Team .</p>', 'system', 'single', 1625996941),
(1435, 995, NULL, 'New purchase completed', '<p>The class How to Manage & Influence Your Virtual Team successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996942),
(1436, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class How to Manage & Influence Your Virtual Team with type deduction and amount 55.00 .</p>', 'system', 'single', 1625996942),
(1437, 1015, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1625996978),
(1438, 995, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625996978),
(1439, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>', 'system', 'single', 1625996979),
(1440, 3, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Learn and Understand AngularJS .</p>', 'system', 'single', 1625997104),
(1441, 995, NULL, 'New purchase completed', '<p>The class Learn and Understand AngularJS successfully purchased. Now you can start learning.</p>', 'system', 'single', 1625997105),
(1442, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Learn and Understand AngularJS with type deduction and amount 17.60 .</p>', 'system', 'single', 1625997105),
(1443, 929, NULL, 'New pending quiz', '<p>Cameron Schofield passed First Quiz quiz of the How to Manage & Influence Your Virtual Team class and waiting for correction to get results.</p>', 'system', 'single', 1625997328),
(1444, 929, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626009973),
(1445, 3, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626009973),
(1446, 1015, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626060376),
(1447, 867, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class How to Travel Around the World .</p>', 'system', 'single', 1626060487),
(1448, 996, NULL, 'New purchase completed', '<p>The class How to Travel Around the World successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060487),
(1449, 996, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class How to Travel Around the World with type deduction and amount 24.75 .</p>', 'system', 'single', 1626060488),
(1450, 1015, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060552),
(1451, 996, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060552),
(1452, 996, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 44.00 .</p>', 'system', 'single', 1626060553),
(1453, 1015, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626060704),
(1454, 1015, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1626060835),
(1455, 930, NULL, 'New purchase completed', '<p>The class Excel from Beginner to Advanced successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626060836),
(1456, 930, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Excel from Beginner to Advanced with type deduction and amount 55.00 .</p>', 'system', 'single', 1626060836),
(1457, 1015, NULL, 'New badge', '<p>Congratilations! You received King Seller&nbsp;badge.</p>', 'system', 'single', 1626060860),
(1458, 1015, NULL, 'Payout request submitted', '<p>Your payout request successfully submitted for 332 . You will receive an email when processed.</p>', 'system', 'single', 1626061191),
(1459, 1, NULL, 'New payout request', '<p>New payout request received with the amount 332 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061192),
(1460, 1015, NULL, 'Payout has been processed', 'Your payout has been processed with the amount 332.00&nbsp;&nbsp;to your account Qatar National Bank .', 'system', 'single', 1626061220),
(1461, 934, NULL, 'Payout request submitted', '<p>Your payout request successfully submitted for 80 . You will receive an email when processed.</p>', 'system', 'single', 1626061254),
(1462, 1, NULL, 'New payout request', '<p>New payout request received with the amount 80 . You can manage it using the admin panel.</p>', 'system', 'single', 1626061254),
(1463, 929, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626061332),
(1464, 979, NULL, 'New purchase completed', '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061333),
(1465, 979, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 66.00 .</p>', 'system', 'single', 1626061333),
(1466, 867, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061342),
(1467, 923, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061342),
(1468, 863, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626061373),
(1469, 979, NULL, 'New purchase completed', '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061373),
(1470, 979, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 22.00 .</p>', 'system', 'single', 1626061374),
(1471, 867, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1626061374),
(1472, 979, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061375),
(1473, 979, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 33.00 .</p>', 'system', 'single', 1626061375),
(1474, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Bronze Subscribe .</p>', 'system', 'single', 1626061450),
(1475, 995, NULL, 'New purchase completed', '<p>The class Bronze Subscribe successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626061450),
(1476, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type deduction and amount 22.00 .</p>', 'system', 'single', 1626061450),
(1477, 995, NULL, 'Subscription plan activated', '<p>Bronze subscription package activated by user Cameron Schofield .</p>', 'system', 'single', 1626061451),
(1478, 863, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061477),
(1479, 870, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626061477),
(1480, 867, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061483),
(1481, 923, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061484),
(1482, 929, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626061490),
(1483, 1015, NULL, 'New class support message', '<p>user Robert B. Gray send new support message for course with title Learn Linux in 5 Days .</p>', 'system', 'single', 1626062396),
(1484, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062467),
(1485, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062520),
(1486, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062578),
(1487, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062690),
(1488, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626062756),
(1489, 1015, NULL, 'New class support message', '<p>user Cameron Schofield send new support message for course with title Learn Linux in 5 Days .</p>', 'system', 'single', 1626062941),
(1490, 1015, NULL, 'New reply on support conversation', '<p>New reply on a support conversation on your class Learn Linux in 5 Days support.</p>', 'system', 'single', 1626063058),
(1491, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Refund Request #64237 .</p>', 'system', 'single', 1626063457),
(1492, 1, NULL, 'New reply on support ticket', '<p>The support ticket with the subject Refund Request #64237 updated with a new reply.</p>', 'system', 'single', 1626063547),
(1493, 929, NULL, 'New feedback', '<p>Your class How to Manage & Influence Your Virtual Team received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626091671),
(1494, 929, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626091708),
(1495, 929, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626091708),
(1496, 1015, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626128217),
(1497, 1016, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626129736),
(1498, 1016, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626129748),
(1499, 1016, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626129749),
(1500, 1016, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 4.25 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626129826),
(1501, 1016, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 4.5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626129947),
(1502, 1016, NULL, 'New badge', '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>', 'system', 'single', 1626129963),
(1503, 1016, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132407),
(1504, 1015, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 500 submitted successfully.</p>', 'system', 'single', 1626132546),
(1505, 1015, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 500 successfully approved.</p>', 'system', 'single', 1626132570),
(1506, 863, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626132844),
(1507, 1015, NULL, 'New purchase completed', '<p>The class Health And Fitness Masterclass successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626132844),
(1508, 1015, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Health And Fitness Masterclass with type deduction and amount 17.60 .</p>', 'system', 'single', 1626132845),
(1509, 863, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132861),
(1510, 870, NULL, 'New badge', '<p>Congratilations! You received Top Seller&nbsp;badge.</p>', 'system', 'single', 1626132861),
(1511, 1014, NULL, 'New badge', '<p>Congratilations! You received New User&nbsp;badge.</p>', 'system', 'single', 1626150992),
(1512, 1015, NULL, 'New pending quiz', '<p>Cameron Schofield passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626204790),
(1513, 995, NULL, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>', 'system', 'single', 1626204825),
(1514, 867, NULL, 'New badge', '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1626214437),
(1515, 1015, NULL, 'New badge', '<p>Congratilations! You received Expert Vendor&nbsp;badge.</p>', 'system', 'single', 1626214438),
(1516, 923, NULL, 'New feedback', '<p>Your class How to Travel Around the World received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214531),
(1517, 1015, NULL, 'New feedback', '<p>Your class Excel from Beginner to Advanced received a 4.75 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214590),
(1518, 934, NULL, 'New feedback', '<p>Your class Learn Python Programming received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214647),
(1519, 1015, NULL, 'New feedback', '<p>Your class Learn Linux in 5 Days received a 4 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214731),
(1520, 1016, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626214849),
(1521, 934, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626232841),
(1522, 934, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626232843),
(1523, 934, NULL, 'New feedback', '<p>Your class Web Design for Beginners received a 4.25 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626232945),
(1524, 929, NULL, 'New feedback', '<p>Your class The Future of Energy received a 2.5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233054),
(1525, 3, NULL, 'New feedback', '<p>Your class Learn and Understand AngularJS received a 2.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233222),
(1526, 1016, NULL, 'New feedback', '<p>Your class Become a Product Manager received a 3.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233313),
(1527, 929, NULL, 'New feedback', '<p>Your class How to Manage & Influence Your Virtual Team received a 3.75 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626233413),
(1528, 867, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626233555),
(1529, 867, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626233556),
(1530, 867, NULL, 'Your class created', '<p>Your class Travel Management Course successfully created. It will be published after approval.</p>', 'system', 'single', 1626234714),
(1531, 1015, NULL, 'Your class approved', '<p>Your class Travel Management Course successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626234749),
(1532, 1015, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1533, 1015, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626234771),
(1534, 1, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235679),
(1535, 870, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Health And Fitness Masterclass .</p>', 'system', 'single', 1626235693),
(1536, 1016, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626235711),
(1537, 923, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626235803),
(1538, 923, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626235803),
(1539, 934, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626235937),
(1540, 4, NULL, 'New badge', '<p>Congratilations! You received Silver Classes&nbsp;badge.</p>', 'system', 'single', 1626236007),
(1541, 4, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626236007),
(1542, 929, NULL, 'New badge', '<p>Congratilations! You received Good Support&nbsp;badge.</p>', 'system', 'single', 1626236028),
(1543, 1015, NULL, 'New pending quiz', '<p>Morgan Sullivan passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626237968),
(1544, 979, NULL, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is passed for Final Quiz quiz of Learn Linux in 5 Days class.</p>', 'system', 'single', 1626237996),
(1545, 3, NULL, 'New badge', '<p>Congratilations! You received Good Support&nbsp;badge.</p>', 'system', 'single', 1626239421),
(1546, 1, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240118),
(1547, 1016, NULL, 'New comment for your class', '<p>Cameron Schofield left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240131),
(1548, 1016, NULL, 'New comment for your class', '<p>Ricardo dave left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626240383),
(1549, 870, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240665),
(1550, 870, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240714),
(1551, 1015, NULL, 'Your class approved', '<p>Your class Excel from Beginner to Advanced successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240740),
(1552, 3, NULL, 'Your class approved', '<p>Your class Active Listening: You Can Be a Great Listener successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240800),
(1553, 3, NULL, 'Your class approved', '<p>Your class Learn and Understand AngularJS successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626240827),
(1554, 929, NULL, 'Offline payment submitted', '<p>An offline payment request with the amount 300 submitted successfully.</p>', 'system', 'single', 1626241046),
(1555, 929, NULL, 'Offline payment approved', '<p>Offline payment request with the amount 300 successfully approved.</p>', 'system', 'single', 1626241074),
(1556, NULL, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class The Future of Energy .</p>', 'system', 'single', 1626241152),
(1557, 929, NULL, 'New purchase completed', '<p>The class The Future of Energy successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626241152),
(1558, 929, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class The Future of Energy with type deduction and amount 55.00 .</p>', 'system', 'single', 1626241152),
(1559, 929, NULL, 'Promotion plan activated', '<p>Promotion plan Bronze&nbsp;&nbsp;activated for the call The Future of Energy .</p>', 'system', 'single', 1626241153),
(1560, 864, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241212),
(1561, 929, NULL, 'New purchase completed', '<p>The class Active Listening: You Can Be a Great Listener successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626241213),
(1562, 929, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Active Listening: You Can Be a Great Listener with type deduction and amount 33.00 .</p>', 'system', 'single', 1626241213),
(1563, 864, NULL, 'New badge', '<p>Congratilations! You received Best Seller&nbsp;badge.</p>', 'system', 'single', 1626241242),
(1564, 1, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241320),
(1565, 1016, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626241345),
(1566, 1, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241386),
(1567, 3, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626241400),
(1568, 3, NULL, 'New comment for your class', '<p>James Kong left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626242090),
(1569, 1016, NULL, 'New comment for your class', '<p>Kate Williams left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626242094),
(1570, 1, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1626242992),
(1571, 996, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>', 'system', 'single', 1626243180),
(1572, 1015, NULL, 'Meeting finished', '<p>The meeting finished. Instructor: Robert Ransdell Student:&nbsp; Robert B. Gray&nbsp; Meeting time: 2021-07-12 .</p>', 'system', 'single', 1626243180),
(1573, 1015, NULL, 'New pending quiz', '<p>Kate Williams passed Final Quiz quiz of the Learn Linux in 5 Days class and waiting for correction to get results.</p>', 'system', 'single', 1626243488),
(1574, 1015, NULL, 'Your class approved', '<p>Your class Learn Linux in 5 Days successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246628),
(1575, 923, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246694),
(1576, 870, NULL, 'Your class approved', '<p>Your class Health And Fitness Masterclass successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246793),
(1577, 923, NULL, 'Your class approved', '<p>Your class Effective Time Management successfully approved. Now you can find it on the website.</p>', 'system', 'single', 1626246814),
(1578, 870, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class  .</p>', 'system', 'single', 1626247195),
(1579, 995, NULL, 'New purchase completed', '<p>The class  successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626247195),
(1580, 995, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>', 'system', 'single', 1626247196),
(1581, 870, NULL, 'New meeting request', '<p>New meeting booked by Cameron Schofield for 2021-09-01  with the amount 100 .</p>', 'system', 'single', 1626247196),
(1582, 995, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Meeting Reservation with type deduction and amount 110.00 .</p>', 'system', 'single', 1626247196),
(1583, 1, NULL, 'New support ticket', '<p>New support ticket received with subject Problem with quiz .</p>', 'system', 'single', 1626250124),
(1584, 870, NULL, 'New feedback', '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Cameron Schofield .</p>', 'system', 'single', 1626283457);
INSERT INTO `notifications` (`id`, `user_id`, `group_id`, `title`, `message`, `sender`, `type`, `created_at`) VALUES
(1585, 863, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626283475),
(1586, 863, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626283486),
(1587, 870, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1626283490),
(1588, 870, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626283496),
(1589, 870, NULL, 'New feedback', '<p>Your class Health And Fitness Masterclass received a 5 stars rating from Morgan Sullivan .</p>', 'system', 'single', 1626283559),
(1590, 1, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Learn Python Programming .</p>', 'system', 'single', 1626493830),
(1591, 1015, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1626508221),
(1592, 3, NULL, 'New badge', '<p>Congratilations! You received Bronze Classes&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1593, 3, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1594, 929, NULL, 'New badge', '<p>Congratilations! You received Amazing Support&nbsp;badge.</p>', 'system', 'single', 1626508287),
(1595, 867, NULL, 'New sales', '<p>Congratulations! There is a new sales for your class Effective Time Management .</p>', 'system', 'single', 1626508956),
(1596, 996, NULL, 'New purchase completed', '<p>The class Effective Time Management successfully purchased. Now you can start learning.</p>', 'system', 'single', 1626508957),
(1597, 996, NULL, 'New financial document', '<p>&nbsp;New financial document submitted for your class Effective Time Management with type deduction and amount 29.70 .</p>', 'system', 'single', 1626508957),
(1598, 923, NULL, 'New feedback', '<p>Your class Effective Time Management received a 5 stars rating from Robert B. Gray .</p>', 'system', 'single', 1626508980),
(1599, 1, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509207),
(1600, 1, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509327),
(1601, 1, NULL, 'New comment for your class', '<p>Robert Ransdell left a new comment on your class Become a Product Manager .</p>', 'system', 'single', 1626509546),
(1602, 3, NULL, 'New comment for your class', '<p>Robert B. Gray left a new comment on your class Active Listening: You Can Be a Great Listener .</p>', 'system', 'single', 1626509591),
(1603, 934, NULL, 'New badge', '<p>Congratilations! You received Faitful User&nbsp;badge.</p>', 'system', 'single', 1628434417),
(1604, 1015, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1628434423),
(1605, 1016, NULL, 'New badge', '<p>Congratilations! You received Loyal User&nbsp;badge.</p>', 'system', 'single', 1628434441),
(1606, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624819),
(1607, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624819),
(1608, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624819),
(1609, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624819),
(1610, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624820),
(1611, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624820),
(1612, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624820),
(1613, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1614, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1615, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1616, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1617, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1618, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624821),
(1619, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624822),
(1620, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624868),
(1621, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624868),
(1622, 1, NULL, 'New comment for your class', '<p>Admin left a new comment on your class Excel from Beginner to Advanced .</p>', 'system', 'single', 1628624868),
(1623, 4, NULL, 'New badge', '<p>Congratilations! You received Golden Classes&nbsp;badge.</p>', 'system', 'single', 1628685242),
(1624, 4, NULL, 'New badge', '<p>Congratilations! You received Fantastic Support&nbsp;badge.</p>', 'system', 'single', 1628685464);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_status`
--

CREATE TABLE `notifications_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `notification_id` int(10) UNSIGNED NOT NULL,
  `seen_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `title`, `template`) VALUES
(2, 'New badge', '<p>Congratilations! You received [u.b.title]&nbsp;badge.</p>'),
(3, 'Your user group changed', '<p>Your user group changed to [u.g.title] .</p>'),
(4, 'Your class created', '<p>Your class [c.title] successfully created. It will be published after approval.</p>'),
(5, 'Your class approved', '<p>Your class [c.title] successfully approved. Now you can find it on the website.</p>'),
(6, 'Your class rejected', '<p>Sorry, Your class [c.title] rejected because it doesn\'t meet requirements or is against the community rules.</p>'),
(7, 'New comment for your class', '<p>[u.name] left a new comment on your class [c.title] .</p>'),
(8, 'New class support message', '<p>user [u.name] send new support message for course with title [c.title] .</p>'),
(9, 'New reply on support conversation', '<p>New reply on a support conversation on your class [c.title] support.</p>'),
(10, 'New support ticket', '<p>New support ticket received with subject [s.t.title] .</p>'),
(11, 'New reply on support ticket', '<p>The support ticket with the subject [s.t.title] updated with a new reply.</p>'),
(12, 'New financial document', '<p>&nbsp;New financial document submitted for your class [c.title] with type [f.d.type] and amount [amount] .</p>'),
(13, 'New payout request', '<p>New payout request received with the amount [payout.amount] . You can manage it using the admin panel.</p>'),
(14, 'Payout has been processed', 'Your payout has been processed with the amount [payout.amount]&nbsp;&nbsp;to your account [payout.account] .'),
(15, 'New sales', '<p>Congratulations! There is a new sales for your class [c.title] .</p>'),
(16, 'New purchase completed', '<p>The class [c.title] successfully purchased. Now you can start learning.</p>'),
(17, 'New feedback', '<p>Your class [c.title] received a [rate.count] stars rating from [student.name] .</p>'),
(18, 'Offline payment submitted', '<p>An offline payment request with the amount [amount] submitted successfully.</p>'),
(19, 'Offline payment approved', '<p>Offline payment request with the amount [amount] successfully approved.</p>'),
(20, 'Offline payment rejected', '<p>Sorry, offline payment request with the amount [amount]&nbsp;rejected.</p>'),
(21, 'Subscription plan activated', '<p>[s.p.name] subscription package activated by user [u.name] .</p>'),
(22, 'New meeting request', '<p>New meeting booked by [u.name] for [time.date] with the amount [amount] .</p>'),
(23, 'New meeting join URL', '<p>The reserved meeting join URL created by [instructor.name]. Join the meeting on [time.date] using this URL: [link] .</p>'),
(24, 'Meeting reminder', '<p>You have a meeting on [time.date] . Don\'t forget to join it on time.</p>'),
(25, 'Meeting finished', '<p>The meeting finished. Instructor: [instructor.name] Student:&nbsp; [student.name]&nbsp; Meeting time: [time.date] .</p>'),
(26, 'New contact message', '<p>New contact message with title [c.u.title] received from [u.name] .</p>'),
(27, 'Live class reminder', '<p>Your live class [c.title] will be conducted on [time.date] . Join it on time.</p>'),
(28, 'Promotion plan activated', '<p>Promotion plan [p.p.name]&nbsp;&nbsp;activated for the call [c.title] .</p>'),
(29, 'Promotion plan purchased', '<p>There is new request for activating [p.p.name] for class [c.title] .&nbsp;</p>'),
(30, 'New certificate', '<p>You achieved a new certificate for [c.title] . You can download it from the class page or your panel.</p>'),
(31, 'New pending quiz', '<p>[student.name] passed [q.title] quiz of the [c.title] class and waiting for correction to get results.</p>'),
(32, 'Waiting quiz result', '<p>Your pending quiz corrected and your result is [q.result] for [q.title] quiz of [c.title] class.</p>'),
(33, 'New comment', '<p>[u.name] left a new comment and waiting for approval.</p>'),
(34, 'Payout request submitted', '<p>Your payout request successfully submitted for [payout.amount] . You will receive an email when processed.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL,
  `bank` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','approved','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `pay_date` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `offline_payments`
--

INSERT INTO `offline_payments` (`id`, `user_id`, `amount`, `bank`, `reference_number`, `status`, `created_at`, `pay_date`) VALUES
(15, 996, 500, 'JPMorgan', '493214678', 'approved', 1625944192, '1625906880'),
(16, 995, 1000, 'Qatar National Bank', '5492247188', 'approved', 1625950563, '1625888700'),
(17, 979, 400, 'State Bank of India', '4637249712', 'approved', 1625992349, '1626160980'),
(18, 1016, 100, 'JPMorgan', '56647132456', 'reject', 1625992606, '1626065100'),
(20, 923, 300, 'Qatar National Bank', '8314667560', 'waiting', 1625993428, '1626321000'),
(21, 930, 250, 'JPMorgan', '5325469580', 'waiting', 1625993489, '1626070800'),
(22, 1015, 500, 'State Bank of India', '583359268', 'approved', 1626132546, '1626183840'),
(23, 929, 300, 'State Bank of India', '56476312144', 'approved', 1626241046, '1626252480');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paying','paid','fail') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_charge_account` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `total_discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `reference_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `status`, `payment_method`, `is_charge_account`, `amount`, `tax`, `total_discount`, `total_amount`, `reference_id`, `created_at`) VALUES
(306, 1015, 'pending', NULL, 0, 63, '6.30', NULL, '69.30', NULL, 1625145687),
(307, 996, 'paid', 'credit', 0, 150, '15.00', '0.00', '165.00', NULL, 1625944333),
(308, 995, 'paid', 'credit', 0, 100, '10.00', '0.00', '110.00', NULL, 1625952623),
(309, 995, 'paid', 'credit', 0, 10, '1.00', '0.00', '11.00', NULL, 1625953190),
(310, 995, 'paid', 'credit', 0, 125, '12.50', '0.00', '137.50', NULL, 1625996807),
(311, 995, 'paid', 'credit', 0, 50, '5.00', '0.00', '55.00', NULL, 1625996936),
(312, 995, 'paid', 'credit', 0, 100, '5.00', '50.00', '55.00', NULL, 1625996974),
(313, 995, 'paid', 'credit', 0, 16, '1.20', '4.00', '13.20', NULL, 1625997096),
(314, 996, 'paid', 'credit', 0, 25, '2.25', '2.50', '24.75', NULL, 1626060481),
(315, 996, 'paid', 'credit', 0, 100, '4.00', '60.00', '44.00', NULL, 1626060547),
(316, 930, 'paid', 'credit', 0, 100, '5.00', '50.00', '55.00', NULL, 1626060832),
(317, 979, 'paid', 'credit', 0, 60, '6.00', '0.00', '66.00', NULL, 1626061329),
(318, 979, 'paid', 'credit', 0, 50, '5.00', '0.00', '55.00', NULL, 1626061366),
(319, 995, 'paid', 'credit', 0, 20, '2.00', NULL, '22.00', NULL, 1626061431),
(320, 1015, 'pending', NULL, 0, 20, '2.00', '0.00', '22.00', NULL, 1626132487),
(321, 1015, 'paid', 'credit', 0, 20, '1.60', '4.00', '17.60', NULL, 1626132840),
(322, 929, 'pending', NULL, 0, 40, '3.00', '10.00', '33.00', NULL, 1626240993),
(323, 929, 'paid', 'credit', 0, 50, '5.00', NULL, '55.00', NULL, 1626241146),
(324, 929, 'paid', 'credit', 0, 40, '3.00', '10.00', '33.00', NULL, 1626241207),
(325, 995, 'paid', 'credit', 0, 100, '10.00', '0.00', '110.00', NULL, 1626247189),
(326, 1015, 'pending', NULL, 0, 20, '1.60', '4.00', '17.60', NULL, 1626284818),
(327, 996, 'paid', 'credit', 0, 30, '2.70', '3.00', '29.70', NULL, 1626508952),
(328, 1, 'pending', NULL, 0, 140, '13.00', '10.00', '143.00', NULL, 1628434627),
(329, 1, 'pending', NULL, 0, 140, '13.00', '10.00', '143.00', NULL, 1628437158);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `reserve_meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `amount` int(10) UNSIGNED DEFAULT NULL,
  `tax` int(10) UNSIGNED DEFAULT NULL,
  `tax_price` decimal(13,2) DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `commission_price` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `user_id`, `order_id`, `webinar_id`, `subscribe_id`, `promotion_id`, `reserve_meeting_id`, `ticket_id`, `discount_id`, `amount`, `tax`, `tax_price`, `commission`, `commission_price`, `discount`, `total_amount`, `created_at`) VALUES
(310, 1015, 306, 1996, NULL, 3, NULL, NULL, NULL, 63, 10, '6.30', 0, '0.00', NULL, '69.30', 1625145687),
(311, 996, 307, NULL, NULL, NULL, 48, NULL, NULL, 150, 10, '15.00', 20, '30.00', '0.00', '165.00', 1625944333),
(312, 995, 308, NULL, NULL, NULL, 49, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1625952623),
(313, 995, 309, 2005, NULL, NULL, NULL, NULL, NULL, 10, 10, '1.00', 20, '2.00', '0.00', '11.00', 1625953190),
(314, 995, 310, NULL, NULL, NULL, 50, NULL, NULL, 125, 10, '12.50', 20, '25.00', '0.00', '137.50', 1625996807),
(315, 995, 311, 1999, NULL, NULL, NULL, NULL, NULL, 50, 10, '5.00', 10, '5.00', '0.00', '55.00', 1625996936),
(318, 996, 314, 2006, NULL, NULL, NULL, NULL, NULL, 25, 10, '2.25', 20, '4.50', '2.50', '24.75', 1626060481),
(321, 979, 317, 2004, NULL, NULL, NULL, NULL, NULL, 60, 10, '6.00', 10, '6.00', '0.00', '66.00', 1626061329),
(324, 995, 319, NULL, 3, NULL, NULL, NULL, NULL, 20, 10, '2.00', 0, '0.00', NULL, '22.00', 1626061431),
(328, 929, 323, 2004, NULL, 3, NULL, NULL, NULL, 50, 10, '5.00', 0, '0.00', NULL, '55.00', 1626241146),
(330, 995, 325, NULL, NULL, NULL, 51, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1626247189),
(334, 1, 328, NULL, NULL, NULL, 52, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1628434627),
(336, 1, 329, NULL, NULL, NULL, 52, NULL, NULL, 100, 10, '10.00', 20, '20.00', '0.00', '110.00', 1628437158);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robot` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `link`, `name`, `title`, `seo_description`, `robot`, `content`, `status`, `created_at`) VALUES
(3, '/about', 'About', 'About Rocket LMS', 'Rocket LMS is an online course marketplace with a pile of features that helps you to run your online education business easily.', 1, '<div><b>Rocket LMS</b> is an online course marketplace with a pile of features that helps you to run your online education business easily. This platform helps instructors and students get in touch together and share knowledge.</div><div><br></div><div>Teachers will be able to create unlimited video courses, live classes, text courses, projects, quizzes, files, etc and students will be able to use the educational material and increase their skill level.</div><div><br></div><div>Rocket LMS is based on real business needs, cultural differences, advanced user researches so it covers your business requirements efficiently.</div><div style=\"text-align: center; \"><img src=\"/store/1/default_images/about.png\" style=\"width: 1110px;\"><br></div><div><br></div><div><b>WHY CHOOSE Rocket LMS?</b></div><div><br></div><div>- Comprehensive solution for online education businesses</div><div>- Based on real business needs</div><div>- Multiple content types (Video courses, Live classes, text courses)</div><div>- Youtube, Vimeo, and AWS integration</div><div>- Google calendar integration</div><div>- Online 1 to 1 meetings support</div><div>- Single &amp; multiple instructors</div><div>- Organizational education system</div><div>- Subscribe system</div><div>- Various payment gateways for worldwide</div><div>- Offline payment</div><div>- Multilanguage</div><div>- Fully responsive</div><div>- Fully customizable</div><div>- RTL support</div>', 'publish', 1609088468),
(5, '/terms', 'Terms & rules', 'Terms of Service', 'Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn.', 1, '<p><b>Note: This is just demo data.</b></p><p>Our mission is to improve lives through learning. We enable anyone anywhere to create and share educational content (instructors) and to access that educational content to learn (students). We consider our marketplace model the best way to offer valuable educational content to our users. We need rules to keep our platform and services safe for you, us, and our student and instructor community. These Terms apply to all your activities on the Udemy website, the Udemy mobile applications, our TV applications, our APIs, and other related services (“<b>Services</b>”).</p><p>If you publish content on our platform, you must also agree to the Instructor Terms. We also provide details regarding our processing of the personal data of our students and instructors in our Privacy Policy. If you are using our platform for Business as part of your organization’s Udemy for Business subscription, you should consult our Udemy for Business Privacy Statement.</p><p style=\"text-align: center; \"><img src=\"/store/1/default_images/blogs/home2.png\" style=\"width: 954px;\"><br></p><p>You need an account for most activities on our platform, including to <b>purchase</b> and access content or to <b>submit content for publication</b>. When setting up and maintaining your account, you must provide and continue to provide accurate and complete information, including a valid email address. You have complete responsibility for your account and everything that happens on your account, including for any harm or damage (to us or anyone else) caused by someone using your account without your permission. This means you need to be careful with your password. You may not transfer your account to someone else or use someone else’s account. If you contact us to request access to an account, we will not grant you such access unless you can provide us with the information that we need to prove you are the owner of that account. In the event of the death of a user, the account of that user will be closed.</p>', 'publish', 1625633448);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('av18981848@gmail.com', 'cYTtJLR86NoxZ0whf465XoQa98hhxAxx2Q7t3zeaeTJRYoUMQwqqzb4rgqP2', '2021-02-20 13:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `payment_channels`
--

CREATE TABLE `payment_channels` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_name` enum('Paypal','Paystack','Paytm','Payu','Razorpay','Zarinpal','Stripe','Paysera','Cashu','YandexCheckout','MercadoPago','Bitpay','Midtrans','Iyzipay','Flutterwave','Payfort') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_channels`
--

INSERT INTO `payment_channels` (`id`, `title`, `class_name`, `status`, `image`, `settings`, `created_at`) VALUES
(1, 'Paypal', 'Paypal', 'active', '/store/1/default_images/gateways/paypal.png', '', '1617345734'),
(4, 'Payu', 'Payu', 'active', '/store/1/default_images/gateways/payu.png', '', '1617345734'),
(5, 'Razorpay', 'Razorpay', 'active', '/store/1/default_images/gateways/razorpay.png', '', '1617345734');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(13,2) NOT NULL,
  `account_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bank_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('waiting','done','reject') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payouts`
--

INSERT INTO `payouts` (`id`, `user_id`, `amount`, `account_name`, `account_number`, `account_bank_name`, `status`, `created_at`) VALUES
(3, 1015, '332.00', 'Robert Ransdell', 'QR55BDHC20040182623775', 'Qatar National Bank', 'done', 1626061191),
(4, 934, '80.00', 'Linda Anderson', 'QR21BARC20038014587495', 'Qatar National Bank', 'waiting', 1626061254);

-- --------------------------------------------------------

--
-- Table structure for table `payu_transactions`
--

CREATE TABLE `payu_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paid_for_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_for_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','failed','successful','invalid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `verified_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `role_id`, `section_id`, `allow`) VALUES
(5189, 2, 1, 1),
(5190, 2, 2, 1),
(5191, 2, 3, 1),
(5192, 2, 4, 1),
(5193, 2, 5, 1),
(5194, 2, 6, 1),
(5195, 2, 7, 1),
(5196, 2, 8, 1),
(5197, 2, 9, 1),
(5198, 2, 10, 1),
(5199, 2, 11, 1),
(5200, 2, 12, 1),
(5201, 2, 13, 1),
(5202, 2, 14, 1),
(5203, 2, 15, 1),
(5204, 2, 16, 1),
(5205, 2, 17, 1),
(5206, 2, 25, 1),
(5207, 2, 26, 1),
(5208, 2, 50, 1),
(5209, 2, 51, 1),
(5210, 2, 52, 1),
(5211, 2, 53, 1),
(5212, 2, 54, 1),
(5213, 2, 100, 1),
(5214, 2, 101, 1),
(5215, 2, 102, 1),
(5216, 2, 103, 1),
(5217, 2, 104, 1),
(5218, 2, 105, 1),
(5219, 2, 106, 1),
(5220, 2, 107, 1),
(5221, 2, 108, 1),
(5222, 2, 109, 1),
(5223, 2, 110, 1),
(5224, 2, 111, 1),
(5225, 2, 112, 1),
(5226, 2, 113, 1),
(5227, 2, 114, 1),
(5228, 2, 115, 1),
(5229, 2, 150, 1),
(5230, 2, 151, 1),
(5231, 2, 152, 1),
(5232, 2, 153, 1),
(5233, 2, 154, 1),
(5234, 2, 155, 1),
(5235, 2, 156, 1),
(5236, 2, 157, 1),
(5237, 2, 158, 1),
(5238, 2, 200, 1),
(5239, 2, 201, 1),
(5240, 2, 202, 1),
(5241, 2, 203, 1),
(5242, 2, 204, 1),
(5243, 2, 205, 1),
(5244, 2, 206, 1),
(5245, 2, 207, 1),
(5246, 2, 208, 1),
(5247, 2, 250, 1),
(5248, 2, 251, 1),
(5249, 2, 252, 1),
(5250, 2, 253, 1),
(5251, 2, 254, 1),
(5252, 2, 300, 1),
(5253, 2, 301, 1),
(5254, 2, 302, 1),
(5255, 2, 303, 1),
(5256, 2, 304, 1),
(5257, 2, 350, 1),
(5258, 2, 351, 1),
(5259, 2, 352, 1),
(5260, 2, 353, 1),
(5261, 2, 354, 1),
(5262, 2, 355, 1),
(5263, 2, 356, 1),
(5264, 2, 400, 1),
(5265, 2, 401, 1),
(5266, 2, 402, 1),
(5267, 2, 403, 1),
(5268, 2, 404, 1),
(5269, 2, 405, 1),
(5270, 2, 450, 1),
(5271, 2, 451, 1),
(5272, 2, 452, 1),
(5273, 2, 453, 1),
(5274, 2, 454, 1),
(5275, 2, 455, 1),
(5276, 2, 456, 1),
(5277, 2, 457, 1),
(5278, 2, 458, 1),
(5279, 2, 459, 1),
(5280, 2, 500, 1),
(5281, 2, 501, 1),
(5282, 2, 502, 1),
(5283, 2, 503, 1),
(5284, 2, 504, 1),
(5285, 2, 505, 1),
(5286, 2, 550, 1),
(5287, 2, 551, 1),
(5288, 2, 552, 1),
(5289, 2, 553, 1),
(5290, 2, 554, 1),
(5291, 2, 600, 1),
(5292, 2, 601, 1),
(5293, 2, 602, 1),
(5294, 2, 603, 1),
(5295, 2, 650, 1),
(5296, 2, 651, 1),
(5297, 2, 652, 1),
(5298, 2, 653, 1),
(5299, 2, 654, 1),
(5300, 2, 655, 1),
(5301, 2, 656, 1),
(5302, 2, 657, 1),
(5303, 2, 658, 1),
(5304, 2, 700, 1),
(5305, 2, 701, 1),
(5306, 2, 702, 1),
(5307, 2, 703, 1),
(5308, 2, 704, 1),
(5309, 2, 705, 1),
(5310, 2, 706, 1),
(5311, 2, 707, 1),
(5312, 2, 708, 1),
(5313, 2, 750, 1),
(5314, 2, 751, 1),
(5315, 2, 752, 1),
(5316, 2, 753, 1),
(5317, 2, 754, 1),
(5318, 2, 800, 1),
(5319, 2, 801, 1),
(5320, 2, 802, 1),
(5321, 2, 803, 1),
(5322, 2, 850, 1),
(5323, 2, 851, 1),
(5324, 2, 852, 1),
(5325, 2, 853, 1),
(5326, 2, 854, 1),
(5327, 2, 900, 1),
(5328, 2, 901, 1),
(5329, 2, 902, 1),
(5330, 2, 903, 1),
(5331, 2, 904, 1),
(5332, 2, 950, 1),
(5333, 2, 951, 1),
(5334, 2, 952, 1),
(5335, 2, 953, 1),
(5336, 2, 954, 1),
(5337, 2, 955, 1),
(5338, 2, 956, 1),
(5339, 2, 957, 1),
(5340, 2, 958, 1),
(5341, 2, 959, 1),
(5342, 2, 1000, 1),
(5343, 2, 1001, 1),
(5344, 2, 1002, 1),
(5345, 2, 1003, 1),
(5346, 2, 1004, 1),
(5347, 2, 1050, 1),
(5348, 2, 1051, 1),
(5349, 2, 1052, 1),
(5350, 2, 1053, 1),
(5351, 2, 1054, 1),
(5352, 2, 1055, 1),
(5353, 2, 1056, 1),
(5354, 2, 1057, 1),
(5355, 2, 1058, 1),
(5356, 2, 1059, 1),
(5357, 2, 1075, 1),
(5358, 2, 1076, 1),
(5359, 2, 1077, 1),
(5360, 2, 1078, 1),
(5361, 2, 1079, 1),
(5362, 2, 1100, 1),
(5363, 2, 1101, 1),
(5364, 2, 1102, 1),
(5365, 2, 1103, 1),
(5366, 2, 1104, 1),
(5367, 2, 1150, 1),
(5368, 2, 1151, 1),
(5369, 2, 1152, 1),
(5370, 2, 1153, 1),
(5371, 2, 1154, 1),
(5372, 2, 1200, 1),
(5373, 2, 1201, 1),
(5374, 2, 1202, 1),
(5375, 2, 1203, 1),
(5376, 2, 1204, 1),
(5377, 2, 1230, 1),
(5378, 2, 1231, 1),
(5379, 2, 1232, 1),
(5380, 2, 1233, 1),
(5381, 2, 1250, 1),
(5382, 2, 1251, 1),
(5383, 2, 1252, 1),
(5384, 2, 1253, 1),
(5385, 2, 1300, 1),
(5386, 2, 1301, 1),
(5387, 2, 1302, 1),
(5388, 2, 1303, 1),
(5389, 2, 1304, 1),
(5390, 2, 1305, 1),
(5391, 2, 1350, 1),
(5392, 2, 1351, 1),
(5393, 2, 1352, 1),
(5394, 2, 1353, 1),
(5395, 2, 1354, 1),
(5396, 2, 1355, 1),
(5397, 2, 1400, 1),
(5398, 2, 1401, 1),
(5399, 2, 1402, 1),
(5400, 2, 1403, 1),
(5401, 2, 1404, 1),
(5402, 2, 1405, 1),
(5403, 2, 1406, 1),
(5404, 2, 1407, 1),
(5405, 2, 1408, 1),
(5406, 2, 1409, 1),
(5407, 2, 1410, 1),
(5408, 2, 1450, 1),
(5409, 2, 1451, 1),
(5410, 2, 1452, 1),
(5411, 2, 1453, 1),
(5412, 2, 1454, 1),
(5413, 2, 1455, 1),
(5414, 2, 1500, 1),
(5415, 2, 1501, 1),
(5416, 2, 1502, 1),
(5417, 2, 1503, 1),
(5418, 2, 1504, 1),
(5419, 2, 1550, 1),
(5420, 2, 1551, 1),
(5421, 2, 1552, 1),
(5422, 2, 1553, 1),
(5423, 2, 1554, 1),
(5424, 2, 1600, 1),
(5425, 2, 1601, 1),
(5426, 2, 1602, 1),
(5427, 2, 1603, 1),
(5428, 2, 1604, 1),
(5429, 2, 1650, 1),
(5430, 2, 1651, 1),
(5431, 2, 1652, 1),
(5493, 6, 1, 1),
(5494, 6, 2, 1),
(5495, 6, 3, 1),
(5496, 6, 4, 1),
(5497, 6, 5, 1),
(5498, 6, 6, 1),
(5499, 6, 7, 1),
(5500, 6, 8, 1),
(5501, 6, 9, 1),
(5502, 6, 10, 1),
(5503, 6, 11, 1),
(5504, 6, 12, 1),
(5505, 6, 13, 1),
(5506, 6, 14, 1),
(5507, 6, 15, 1),
(5508, 6, 16, 1),
(5509, 6, 17, 1),
(5510, 6, 25, 1),
(5511, 6, 26, 1),
(5512, 6, 100, 1),
(5513, 6, 101, 1),
(5514, 6, 102, 1),
(5515, 6, 103, 1),
(5516, 6, 104, 1),
(5517, 6, 105, 1),
(5518, 6, 106, 1),
(5519, 6, 108, 1),
(5520, 6, 109, 1),
(5521, 6, 110, 1),
(5522, 6, 112, 1),
(5523, 6, 113, 1),
(5524, 6, 114, 1),
(5525, 6, 115, 1),
(5526, 6, 550, 1),
(5527, 6, 551, 1),
(5528, 6, 552, 1),
(5529, 6, 553, 1),
(5530, 6, 554, 1),
(5531, 6, 750, 1),
(5532, 6, 751, 1),
(5533, 6, 753, 1),
(5534, 6, 754, 1),
(5535, 6, 800, 1),
(5536, 6, 801, 1),
(5537, 6, 802, 1),
(5538, 6, 803, 1),
(5539, 6, 1230, 1),
(5540, 6, 1231, 1),
(5541, 6, 1232, 1),
(5542, 6, 1233, 1),
(5543, 6, 1250, 1),
(5544, 6, 1251, 1),
(5545, 6, 1252, 1),
(5546, 6, 1600, 1),
(5547, 6, 1601, 1),
(5548, 6, 1602, 1),
(5549, 6, 1603, 1),
(5576, 9, 1, 1),
(5577, 9, 2, 1),
(5578, 9, 3, 1),
(5579, 9, 4, 1),
(5580, 9, 5, 1),
(5581, 9, 6, 1),
(5582, 9, 7, 1),
(5583, 9, 8, 1),
(5584, 9, 9, 1),
(5585, 9, 10, 1),
(5586, 9, 11, 1),
(5587, 9, 12, 1),
(5588, 9, 13, 1),
(5589, 9, 14, 1),
(5590, 9, 15, 1),
(5591, 9, 16, 1),
(5592, 9, 17, 1),
(5593, 9, 700, 1),
(5594, 9, 701, 1),
(5595, 9, 702, 1),
(5596, 9, 703, 1),
(5597, 9, 704, 1),
(5598, 9, 705, 1),
(5599, 9, 706, 1),
(5600, 9, 707, 1),
(5601, 9, 708, 1);

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `prerequisite_id` int(10) UNSIGNED NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prerequisites`
--

INSERT INTO `prerequisites` (`id`, `webinar_id`, `prerequisite_id`, `required`, `order`, `created_at`, `updated_at`) VALUES
(25, 1999, 1995, 1, NULL, 1625039222, NULL),
(27, 2006, 2002, 0, NULL, 1625694442, NULL),
(30, 2007, 2006, 0, NULL, 1626207537, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `days`, `price`, `icon`, `is_popular`, `description`, `created_at`) VALUES
(2, 'Gold', 15, 150, '/store/1/default_images/subscribe_packages/gold.svg', 1, 'One of your classes will be displayed at the top of the category list and homepage slider', 1625992059),
(3, 'Bronze', 15, 50, '/store/1/default_images/subscribe_packages/bronze.svg', 0, 'One of your classes will be displayed at the top of the category list', 1625991921),
(4, 'Silver', 15, 90, '/store/1/default_images/subscribe_packages/silver.svg', 0, 'One of your classes will be displayed at the homepage slider', 1625991978);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_title` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) DEFAULT 0,
  `attempt` int(11) DEFAULT NULL,
  `pass_mark` int(11) NOT NULL,
  `certificate` tinyint(1) NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `webinar_id`, `creator_id`, `title`, `webinar_title`, `time`, `attempt`, `pass_mark`, `certificate`, `status`, `total_mark`, `created_at`, `updated_at`) VALUES
(28, 1995, 1016, 'Elementary Quiz', 'Become a Product Manager', 5, 10, 70, 1, 'active', 100, 1624872015, NULL),
(30, 1999, 929, 'First Quiz', 'How to Manage & Influence Your Virtual Team', 20, 5, 60, 1, 'active', 100, 1625039490, NULL),
(34, 1996, 1015, 'Final Quiz', 'Learn Linux in 5 Days', 5, 3, 70, 1, 'active', 100, 1625951477, 1625952288);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions`
--

CREATE TABLE `quizzes_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('multiple','descriptive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions`
--

INSERT INTO `quizzes_questions` (`id`, `quiz_id`, `creator_id`, `title`, `grade`, `type`, `correct`, `created_at`, `updated_at`) VALUES
(40, 28, 1016, 'Where is the French capital?', '20', 'multiple', NULL, 1624872142, NULL),
(41, 28, 1016, 'What is the coldest season of the year?', '20', 'multiple', NULL, 1624872345, NULL),
(42, 28, 1016, 'How many months is each year?', '20', 'multiple', NULL, 1624872432, NULL),
(44, 28, 1016, 'How many centimeters is one meter unit?', '20', 'multiple', NULL, 1624909419, NULL),
(45, 28, 1016, 'How many meters is one kilometer unit?', '20', 'multiple', '', 1624909495, 1624909533),
(46, 30, 929, 'What is the number of things we should do before the meeting?', '20', 'multiple', NULL, 1625039743, NULL),
(47, 30, 929, 'What should we do during the meeting?', '20', 'descriptive', 'Start the meeting promptly on schedule and do not wait for others to arrive. A large amount of professional time is wasted by leaders who wait for more people to arrive before starting a meeting. It may require a change in the culture, but once people know that you start your meetings on time, they will arrive on time.', 1625040028, 1625040475),
(48, 30, 929, 'What should we do before the meeting?', '20', 'descriptive', 'Make sure people come to the meeting prepared. Yes, this will require effort beyond simply scheduling the call, but you’ll reap enormous benefits if you distribute agendas and other relevant materials to attendees ahead of time. Work smart and leverage technology to help you prep meeting content.', 1625040598, NULL),
(49, 30, 929, 'What should we do after the meeting?', '20', 'descriptive', 'Preserve content so it doesn\'t need to be repeated. Many of our survey respondents reported that they have a huge problem with content persistence (meaning that they have trouble making sure that files, video, web pages, whiteboards, annotations, etc., exist after a meeting ends). The key here is to stop conceiving of meetings as events with a definite beginning and an end. Instead, recognize that meetings are often segments of larger projects and look for technology that can preserve and instantly restore your sessions exactly where you left off.', 1625040865, NULL),
(50, 30, 929, 'What is the number of things we should do after the meeting?', '20', 'multiple', NULL, 1625040978, NULL),
(61, 34, 1015, 'Where is the French capital?', '20', 'multiple', '', 1625951934, 1625951971),
(62, 34, 1015, 'How many months is each year?', '20', 'multiple', NULL, 1625952052, NULL),
(63, 34, 1015, 'How many centimeters is one meter unit?', '20', 'multiple', NULL, 1625952097, NULL),
(64, 34, 1015, 'How many meters is one kilometer unit?', '20', 'multiple', NULL, 1625952140, NULL),
(65, 34, 1015, 'Please explain about Ubuntu versions of Linux?', '20', 'descriptive', 'Ubuntu is probably the most well-known Linux distribution. Ubuntu is based on Debian, but it has its own software repositories. Much of the software in these repositories is synced from Debian’s repositories.\r\n\r\nThe Ubuntu project has a focus on providing a solid desktop (and server) experience, and it isn’t afraid to build its own custom technology to do it. Ubuntu used to use the GNOME 2 desktop environment, but it now uses its own Unity desktop environment. Ubuntu is even building its own Mir graphical server while other distributions are working on the Wayland.', 1625952278, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_questions_answers`
--

CREATE TABLE `quizzes_questions_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_questions_answers`
--

INSERT INTO `quizzes_questions_answers` (`id`, `creator_id`, `question_id`, `title`, `image`, `correct`, `created_at`, `updated_at`) VALUES
(83, 1016, 40, 'Paris', NULL, 1, 1624872142, NULL),
(84, 1016, 40, 'Berlin', NULL, 0, 1624872142, NULL),
(85, 1016, 40, 'London', NULL, 0, 1624872142, NULL),
(86, 1016, 40, 'New York', NULL, 0, 1624872142, NULL),
(87, 1016, 41, 'Spring', NULL, 0, 1624872345, NULL),
(88, 1016, 41, 'Summer', NULL, 0, 1624872345, NULL),
(89, 1016, 41, 'Winter', NULL, 1, 1624872345, NULL),
(90, 1016, 41, 'autumn', NULL, 0, 1624872345, NULL),
(91, 1016, 42, '15', NULL, 0, 1624872432, NULL),
(92, 1016, 42, '12', NULL, 1, 1624872432, NULL),
(93, 1016, 42, '6', NULL, 0, 1624872432, NULL),
(94, 1016, 42, '3', NULL, 0, 1624872432, NULL),
(99, 1016, 44, '50 cm', NULL, 0, 1624909419, NULL),
(100, 1016, 44, '200 cm', NULL, 0, 1624909419, NULL),
(101, 1016, 44, '1000 cm', NULL, 0, 1624909419, NULL),
(102, 1016, 44, '100 cm', NULL, 1, 1624909419, NULL),
(103, 1016, 45, '1000', NULL, 1, 1624909533, NULL),
(104, 1016, 45, '100', NULL, 0, 1624909533, NULL),
(105, 1016, 45, '500', NULL, 0, 1624909533, NULL),
(106, 1016, 45, '10', NULL, 0, 1624909533, NULL),
(107, 929, 46, '5', NULL, 1, 1625039743, NULL),
(108, 929, 46, '2', NULL, 0, 1625039743, NULL),
(109, 929, 46, '7', NULL, 0, 1625039743, NULL),
(110, 929, 46, '9', NULL, 0, 1625039743, NULL),
(111, 929, 50, '4', NULL, 0, 1625040978, NULL),
(112, 929, 50, '6', NULL, 1, 1625040978, NULL),
(113, 929, 50, '2', NULL, 0, 1625040978, NULL),
(114, 929, 50, '5', NULL, 0, 1625040978, NULL),
(155, 1015, 61, 'Paris', NULL, 1, 1625951971, NULL),
(156, 1015, 61, 'Berlin', NULL, 0, 1625951971, NULL),
(157, 1015, 61, 'New York', NULL, 0, 1625951971, NULL),
(158, 1015, 61, 'London', NULL, 0, 1625951971, NULL),
(159, 1015, 62, '6', NULL, 0, 1625952052, NULL),
(160, 1015, 62, '3', NULL, 0, 1625952052, NULL),
(161, 1015, 62, '15', NULL, 0, 1625952052, NULL),
(162, 1015, 62, '12', NULL, 1, 1625952052, NULL),
(163, 1015, 63, '50', NULL, 0, 1625952097, NULL),
(164, 1015, 63, '1000', NULL, 0, 1625952097, NULL),
(165, 1015, 63, '10', NULL, 0, 1625952097, NULL),
(166, 1015, 63, '100', NULL, 1, 1625952097, NULL),
(167, 1015, 64, '100', NULL, 0, 1625952140, NULL),
(168, 1015, 64, '10', NULL, 0, 1625952140, NULL),
(169, 1015, 64, '1000', NULL, 1, 1625952140, NULL),
(170, 1015, 64, '500', NULL, 0, 1625952140, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes_results`
--

CREATE TABLE `quizzes_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `results` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_grade` int(11) DEFAULT NULL,
  `status` enum('passed','failed','waiting') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quizzes_results`
--

INSERT INTO `quizzes_results` (`id`, `quiz_id`, `user_id`, `results`, `user_grade`, `status`, `created_at`) VALUES
(25, 30, 995, '{\"46\":{\"answer\":\"107\",\"status\":true,\"grade\":\"20\"},\"47\":{\"answer\":\"Look for technologies that improve collaboration and enhance the meeting experience. Meeting attendees may be calling in from around the block\\u2014or around the world. Whatever the case, your goal is to make people feel like they are together in the same room.\",\"status\":false,\"grade\":\"20\"},\"48\":{\"answer\":\"Make sure people come to the meeting prepared. Yes, this will require effort beyond simply scheduling the call, but you\\u2019ll reap enormous benefits if you distribute agendas and other relevant materials to attendees ahead of time. Work smart and leverage technology to help you prep meeting content.\",\"status\":false,\"grade\":\"20\"},\"49\":{\"answer\":\"Preserve content so it doesn\'t need to be repeated. Many of our survey respondents reported that they have a huge problem with content persistence (meaning that they have trouble making sure that files, video, web pages, whiteboards, annotations, etc., exist after a meeting ends).\",\"status\":false,\"grade\":\"20\"},\"50\":{\"answer\":\"112\",\"status\":true,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 40, 'waiting', 1625997328),
(28, 28, 995, '{\"40\":{\"answer\":\"83\",\"status\":true,\"grade\":\"20\"},\"41\":{\"answer\":\"89\",\"status\":true,\"grade\":\"20\"},\"42\":{\"answer\":\"92\",\"status\":true,\"grade\":\"20\"},\"44\":{\"answer\":\"102\",\"status\":true,\"grade\":\"20\"},\"45\":{\"answer\":\"104\",\"status\":false,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 80, 'passed', 1626213083),
(30, 34, 979, '{\"61\":{\"answer\":\"155\",\"status\":true,\"grade\":\"20\"},\"62\":{\"answer\":\"162\",\"status\":true,\"grade\":\"20\"},\"63\":{\"answer\":\"166\",\"status\":true,\"grade\":\"20\"},\"64\":{\"answer\":\"169\",\"status\":true,\"grade\":\"20\"},\"65\":{\"answer\":\"Ubuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots. All the editions can run on the computer alone, or in a virtual machine. Wikipedia\",\"status\":true,\"grade\":\"10\"},\"attempt_number\":\"1\"}', 90, 'passed', 1626237968),
(31, 34, 929, '{\"61\":{\"answer\":\"155\",\"status\":true,\"grade\":\"20\"},\"62\":{\"answer\":\"162\",\"status\":true,\"grade\":\"20\"},\"63\":{\"answer\":\"166\",\"status\":true,\"grade\":\"20\"},\"64\":{\"answer\":\"169\",\"status\":true,\"grade\":\"20\"},\"65\":{\"answer\":\"Ubuntu is a Linux distribution based on Debian and composed mostly of free and open-source software. Ubuntu is officially released in three editions: Desktop, Server, and Core for Internet of things devices and robots. All the editions can run on the computer alone, or in a virtual machine.\",\"status\":false,\"grade\":\"20\"},\"attempt_number\":\"1\"}', 80, 'waiting', 1626243488);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `rate` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reserve_meetings`
--

CREATE TABLE `reserve_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `sale_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_time_id` int(10) UNSIGNED NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `paid_amount` decimal(13,2) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','open','finished','canceled') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `locked_at` int(11) DEFAULT NULL,
  `reserved_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `reserve_meetings`
--

INSERT INTO `reserve_meetings` (`id`, `meeting_id`, `sale_id`, `meeting_time_id`, `day`, `date`, `user_id`, `paid_amount`, `discount`, `link`, `password`, `status`, `created_at`, `locked_at`, `reserved_at`) VALUES
(48, 30, 141, 98, '2021-07-12', 1626031800, 996, '150.00', NULL, NULL, NULL, 'finished', 1625944326, NULL, 1625944347),
(49, 31, 142, 160, '2021-08-05', 1628105400, 995, '100.00', NULL, NULL, NULL, 'finished', 1625952618, NULL, 1625952630),
(50, 30, 144, 103, '2021-07-14', 1626204600, 995, '125.00', NULL, NULL, NULL, 'pending', 1625996800, NULL, 1625996816),
(51, 33, 170, 114, '2021-09-01', 1630438200, 995, '100.00', NULL, NULL, NULL, 'canceled', 1626247184, NULL, 1626247196),
(52, 33, NULL, 112, '2021-08-26', 1629919800, 1, '100.00', NULL, NULL, NULL, 'pending', 1628434609, NULL, NULL),
(53, 35, NULL, 132, '2021-08-12', 1628710200, 1, '60.00', NULL, NULL, NULL, 'pending', 1628537087, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `caption`, `users_count`, `is_admin`, `created_at`) VALUES
(1, 'user', 'User role', 0, 0, 1604418504),
(2, 'admin', 'Admin role', 0, 1, 1604418504),
(3, 'organization', 'Organization role', 0, 0, 1604418504),
(4, 'teacher', 'Teacher role', 0, 0, 1604418504),
(6, 'education', 'Staff role', 0, 1, 1613370817),
(9, 'Author Role', 'Author', 0, 1, 1625093577);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED DEFAULT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `meeting_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribe_id` int(10) UNSIGNED DEFAULT NULL,
  `ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `promotion_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','meeting','subscribe','promotion') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` enum('credit','payment_channel','subscribe') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `tax` decimal(13,2) DEFAULT NULL,
  `commission` decimal(13,2) DEFAULT NULL,
  `discount` decimal(13,2) DEFAULT NULL,
  `total_amount` decimal(13,2) DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `refund_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `seller_id`, `buyer_id`, `order_id`, `webinar_id`, `meeting_id`, `subscribe_id`, `ticket_id`, `promotion_id`, `type`, `payment_method`, `amount`, `tax`, `commission`, `discount`, `total_amount`, `created_at`, `refund_at`) VALUES
(141, 1015, 996, 307, NULL, 30, NULL, NULL, NULL, 'meeting', 'credit', 150, '15.00', '30.00', '0.00', '165.00', 1625944345, NULL),
(142, 934, 995, 308, NULL, 31, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1625952627, NULL),
(143, 4, 995, 309, 2005, NULL, NULL, NULL, NULL, 'webinar', 'credit', 10, '1.00', '2.00', '0.00', '11.00', 1625953196, NULL),
(144, 1015, 995, 310, NULL, 30, NULL, NULL, NULL, 'meeting', 'credit', 125, '12.50', '25.00', '0.00', '137.50', 1625996812, NULL),
(145, 1016, 995, NULL, 1995, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1625996905, NULL),
(146, 929, 995, 311, 1999, NULL, NULL, NULL, NULL, 'webinar', 'credit', 50, '5.00', '5.00', '0.00', '55.00', 1625996941, NULL),
(149, 1015, 996, NULL, 1996, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060382, NULL),
(151, 867, 996, 314, 2006, NULL, NULL, NULL, NULL, 'webinar', 'credit', 25, '2.25', '4.50', '2.50', '24.75', 1626060487, NULL),
(153, 1015, 979, NULL, 1996, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060740, NULL),
(154, 1015, 930, NULL, 1996, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626060773, NULL),
(156, 929, 979, 317, 2004, NULL, NULL, NULL, NULL, 'webinar', 'credit', 60, '6.00', '6.00', '0.00', '66.00', 1626061332, NULL),
(159, NULL, 995, 319, NULL, NULL, 3, NULL, NULL, 'subscribe', 'credit', 20, '2.00', '0.00', NULL, '22.00', 1626061450, NULL),
(160, 867, 995, NULL, 2006, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061483, NULL),
(161, 929, 995, NULL, 2004, NULL, NULL, NULL, NULL, 'webinar', 'subscribe', 0, NULL, NULL, NULL, '0.00', 1626061490, NULL),
(163, 1015, 995, NULL, 1996, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626062834, NULL),
(164, 1016, 996, NULL, 1995, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626129811, NULL),
(165, 1016, 1015, NULL, 1995, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626132407, NULL),
(167, NULL, 929, 323, 2004, NULL, NULL, NULL, 3, 'promotion', 'credit', 50, '5.00', '0.00', NULL, '55.00', 1626241152, NULL),
(169, 1015, 929, NULL, 1996, NULL, NULL, NULL, NULL, 'webinar', 'credit', 0, NULL, NULL, NULL, NULL, 1626243340, NULL),
(170, 870, 995, 325, NULL, 33, NULL, NULL, NULL, 'meeting', 'credit', 100, '10.00', '20.00', '0.00', '110.00', 1626247195, 1626247245);

-- --------------------------------------------------------

--
-- Table structure for table `sales_log`
--

CREATE TABLE `sales_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL,
  `viewed_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_group_id` int(10) UNSIGNED DEFAULT NULL,
  `caption` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `section_group_id`, `caption`) VALUES
(1, 'admin_general_dashboard', NULL, 'General Dashboard'),
(2, 'admin_general_dashboard_show', 1, 'General Dashboard page'),
(3, 'admin_general_dashboard_quick_access_links', 1, 'Quick access links in General Dashboard'),
(4, 'admin_general_dashboard_daily_sales_statistics', 1, 'Daily Sales Type Statistics Section'),
(5, 'admin_general_dashboard_income_statistics', 1, 'Income Statistics Section'),
(6, 'admin_general_dashboard_total_sales_statistics', 1, 'Total Sales Statistics Section'),
(7, 'admin_general_dashboard_new_sales', 1, 'New Sales Section'),
(8, 'admin_general_dashboard_new_comments', 1, 'New Comments Section'),
(9, 'admin_general_dashboard_new_tickets', 1, 'New Tickets Section'),
(10, 'admin_general_dashboard_new_reviews', 1, 'New Reviews Section'),
(11, 'admin_general_dashboard_sales_statistics_chart', 1, 'Sales Statistics Chart'),
(12, 'admin_general_dashboard_recent_comments', 1, 'Recent comments Section'),
(13, 'admin_general_dashboard_recent_tickets', 1, 'Recent tickets Section'),
(14, 'admin_general_dashboard_recent_webinars', 1, 'Recent webinars Section'),
(15, 'admin_general_dashboard_recent_courses', 1, 'Recent courses Section'),
(16, 'admin_general_dashboard_users_statistics_chart', 1, 'Users Statistics Chart'),
(17, 'admin_clear_cache', 1, 'Clear cache'),
(25, 'admin_marketing_dashboard', NULL, 'Marketing Dashboard'),
(26, 'admin_marketing_dashboard_show', 25, 'Marketing Dashboard page'),
(50, 'admin_roles', NULL, 'Roles'),
(51, 'admin_roles_list', 50, 'Roles List'),
(52, 'admin_roles_create', 50, 'Roles Create'),
(53, 'admin_roles_edit', 50, 'Roles Edit'),
(54, 'admin_roles_delete', 50, 'Roles Delete'),
(100, 'admin_users', NULL, 'Users'),
(101, 'admin_staffs_list', 100, 'Staffs list'),
(102, 'admin_users_list', 100, 'Students list'),
(103, 'admin_instructors_list', 100, 'Instructors list'),
(104, 'admin_organizations_list', 100, 'Organizations list'),
(105, 'admin_users_create', 100, 'Users Create'),
(106, 'admin_users_edit', 100, 'Users Edit'),
(107, 'admin_users_delete', 100, 'Users Delete'),
(108, 'admin_users_export_excel', 100, 'List Export excel'),
(109, 'admin_users_badges', 100, 'Users Badges'),
(110, 'admin_users_badges_edit', 100, 'Badges edit'),
(111, 'admin_users_badges_delete', 100, 'Badges delete'),
(112, 'admin_users_impersonate', 100, 'users impersonate (login by users)'),
(113, 'admin_become_instructors_list', 100, 'Lists of requests for become instructors'),
(114, 'admin_become_instructors_reject', 100, 'Reject requests for become instructors'),
(115, 'admin_become_instructors_delete', 100, 'Delete requests for become instructors'),
(150, 'admin_webinars', NULL, 'Webinars'),
(151, 'admin_webinars_list', 150, 'Webinars List'),
(152, 'admin_webinars_create', 150, 'Webinars Create'),
(153, 'admin_webinars_edit', 150, 'Webinars Edit'),
(154, 'admin_webinars_delete', 150, 'Webinars Delete'),
(155, 'admin_webinars_export_excel', 150, 'Feature webinars list'),
(156, 'admin_feature_webinars', 150, 'Feature webinars list'),
(157, 'admin_feature_webinars_create', 150, 'create feature webinar'),
(158, 'admin_feature_webinars_export_excel', 150, 'Feature webinar export excel'),
(200, 'admin_categories', NULL, 'Categories'),
(201, 'admin_categories_list', 200, 'Categories List'),
(202, 'admin_categories_create', 200, 'Categories Create'),
(203, 'admin_categories_edit', 200, 'Categories Edit'),
(204, 'admin_categories_delete', 200, 'Categories Delete'),
(205, 'admin_trending_categories', 200, 'Trends Categories List'),
(206, 'admin_create_trending_categories', 200, 'Create Trend Categories'),
(207, 'admin_edit_trending_categories', 200, 'Edit Trend Categories'),
(208, 'admin_delete_trending_categories', 200, 'Delete Trend Categories'),
(250, 'admin_tags', NULL, 'Tags'),
(251, 'admin_tags_list', 250, 'Tags List'),
(252, 'admin_tags_create', 250, 'Tags Create'),
(253, 'admin_tags_edit', 250, 'Tags Edit'),
(254, 'admin_tags_delete', 250, 'Tags Delete'),
(300, 'admin_filters', NULL, 'Filters'),
(301, 'admin_filters_list', 300, 'Filters List'),
(302, 'admin_filters_create', 300, 'Filters Create'),
(303, 'admin_filters_edit', 300, 'Filters Edit'),
(304, 'admin_filters_delete', 300, 'Filters Delete'),
(350, 'admin_quizzes', NULL, 'Quizzes'),
(351, 'admin_quizzes_list', 350, 'Quizzes List'),
(352, 'admin_quizzes_edit', 350, 'Quiz edit'),
(353, 'admin_quizzes_delete', 350, 'Quiz delete'),
(354, 'admin_quizzes_results', 350, 'Quizzes results'),
(355, 'admin_quizzes_results_delete', 350, 'Quizzes results delete'),
(356, 'admin_quizzes_lists_excel', 350, 'Quizzes export excel'),
(400, 'admin_quiz_result', NULL, 'Quiz Result'),
(401, 'admin_quiz_result_list', 400, 'Quiz Result List'),
(402, 'admin_quiz_result_create', 400, 'Quiz Result Create'),
(403, 'admin_quiz_result_edit', 400, 'Quiz Result Edit'),
(404, 'admin_quiz_result_delete', 400, 'Quiz Result Delete'),
(405, 'admin_quiz_result_export_excel', 400, 'quiz result export excel'),
(450, 'admin_certificate', NULL, 'Certificate'),
(451, 'admin_certificate_list', 450, 'Certificate List'),
(452, 'admin_certificate_create', 450, 'Certificate Create'),
(453, 'admin_certificate_edit', 450, 'Certificate Edit'),
(454, 'admin_certificate_delete', 450, 'Certificate Delete'),
(455, 'admin_certificate_template_list', 450, 'Certificate template lists'),
(456, 'admin_certificate_template_create', 450, 'Certificate template create'),
(457, 'admin_certificate_template_edit', 450, 'Certificate template edit'),
(458, 'admin_certificate_template_delete', 450, 'Certificate template delete'),
(459, 'admin_certificate_export_excel', 450, 'Certificates export excel'),
(500, 'admin_discount_codes', NULL, 'Discount codes'),
(501, 'admin_discount_codes_list', 500, 'Discount codes list'),
(502, 'admin_discount_codes_create', 500, 'Discount codes create'),
(503, 'admin_discount_codes_edit', 500, 'Discount codes edit'),
(504, 'admin_discount_codes_delete', 500, 'Discount codes delete'),
(505, 'admin_discount_codes_export', 500, 'Discount codes export excel'),
(550, 'admin_group', NULL, 'Groups'),
(551, 'admin_group_list', 550, 'Groups List'),
(552, 'admin_group_create', 550, 'Groups Create'),
(553, 'admin_group_edit', 550, 'Groups Edit'),
(554, 'admin_group_delete', 550, 'Groups Delete'),
(600, 'admin_payment_channel', NULL, 'Payment Channels'),
(601, 'admin_payment_channel_list', 600, 'Payment Channels List'),
(602, 'admin_payment_channel_toggle_status', 600, 'active or inactive channel'),
(603, 'admin_payment_channel_edit', 600, 'Payment Channels Edit'),
(650, 'admin_settings', NULL, 'settings'),
(651, 'admin_settings_general', 650, 'General settings'),
(652, 'admin_settings_financial', 650, 'Financial settings'),
(653, 'admin_settings_personalization', 650, 'Personalization settings'),
(654, 'admin_settings_notifications', 650, 'Notifications settings'),
(655, 'admin_settings_seo', 650, 'Seo settings'),
(656, 'admin_settings_customization', 650, 'Customization settings'),
(657, 'admin_settings_notifications', 650, 'Notifications settings'),
(658, 'admin_settings_home_sections', 650, 'Home sections settings'),
(700, 'admin_blog', NULL, 'Blog'),
(701, 'admin_blog_lists', 700, 'Blog lists'),
(702, 'admin_blog_create', 700, 'Blog create'),
(703, 'admin_blog_edit', 700, 'Blog edit'),
(704, 'admin_blog_delete', 700, 'Blog delete'),
(705, 'admin_blog_categories', 700, 'Blog categories list'),
(706, 'admin_blog_categories_create', 700, 'Blog categories create'),
(707, 'admin_blog_categories_edit', 700, 'Blog categories edit'),
(708, 'admin_blog_categories_delete', 700, 'Blog categories delete'),
(750, 'admin_sales', NULL, 'Sales'),
(751, 'admin_sales_list', 750, 'Sales List'),
(752, 'admin_sales_refund', 750, 'Sales Refund'),
(753, 'admin_sales_invoice', 750, 'Sales invoice'),
(754, 'admin_sales_export', 750, 'Sales Export Excel'),
(800, 'admin_documents', NULL, 'Balances'),
(801, 'admin_documents_list', 800, 'Balances List'),
(802, 'admin_documents_create', 800, 'Balances Create'),
(803, 'admin_documents_print', 800, 'Balances print'),
(850, 'admin_payouts', NULL, 'Payout'),
(851, 'admin_payouts_list', 850, 'Payout List'),
(852, 'admin_payouts_reject', 850, 'Payout Reject'),
(853, 'admin_payouts_payout', 850, 'Payout accept'),
(854, 'admin_payouts_export_excel', 850, 'Payout export excel'),
(900, 'admin_offline_payments', NULL, 'Offline Payments'),
(901, 'admin_offline_payments_list', 900, 'Offline Payments List'),
(902, 'admin_offline_payments_reject', 900, 'Offline Payments Reject'),
(903, 'admin_offline_payments_approved', 900, 'Offline Payments Approved'),
(904, 'admin_offline_payments_export_excel', 900, 'Offline Payments export excel'),
(950, 'admin_supports', NULL, 'Supports'),
(951, 'admin_supports_list', 950, 'Supports List'),
(952, 'admin_support_send', 950, 'Send Support'),
(953, 'admin_supports_reply', 950, 'Supports reply'),
(954, 'admin_supports_delete', 950, 'Supports delete'),
(955, 'admin_support_departments', 950, 'Support departments lists'),
(956, 'admin_support_department_create', 950, 'Create support department'),
(957, 'admin_support_departments_edit', 950, 'Edit support departments'),
(958, 'admin_support_departments_delete', 950, 'Delete support department'),
(959, 'admin_support_course_conversations', 950, 'Course conversations'),
(1000, 'admin_subscribe', NULL, 'Subscribes'),
(1001, 'admin_subscribe_list', 1000, 'Subscribes list'),
(1002, 'admin_subscribe_create', 1000, 'Subscribes create'),
(1003, 'admin_subscribe_edit', 1000, 'Subscribes edit'),
(1004, 'admin_subscribe_delete', 1000, 'Subscribes delete'),
(1050, 'admin_notifications', NULL, 'Notifications'),
(1051, 'admin_notifications_list', 1050, 'Notifications list'),
(1052, 'admin_notifications_send', 1050, 'Send Notifications'),
(1053, 'admin_notifications_edit', 1050, 'Edit and details Notifications'),
(1054, 'admin_notifications_delete', 1050, 'Delete Notifications'),
(1055, 'admin_notifications_markAllRead', 1050, 'Mark All Read Notifications'),
(1056, 'admin_notifications_templates', 1050, 'Notifications templates'),
(1057, 'admin_notifications_template_create', 1050, 'Create notification template'),
(1058, 'admin_notifications_template_edit', 1050, 'Edit notification template'),
(1059, 'admin_notifications_template_delete', 1050, 'Delete notification template'),
(1075, 'admin_noticeboards', NULL, 'Noticeboards'),
(1076, 'admin_noticeboards_list', 1075, 'Noticeboards list'),
(1077, 'admin_noticeboards_send', 1075, 'Send Noticeboards'),
(1078, 'admin_noticeboards_edit', 1075, 'Edit Noticeboards'),
(1079, 'admin_noticeboards_delete', 1075, 'Delete Noticeboards'),
(1100, 'admin_promotion', NULL, 'Promotions'),
(1101, 'admin_promotion_list', 1100, 'Promotions list'),
(1102, 'admin_promotion_create', 1100, 'Promotion create'),
(1103, 'admin_promotion_edit', 1100, 'Promotion edit'),
(1104, 'admin_promotion_delete', 1100, 'Promotion delete'),
(1150, 'admin_testimonials', NULL, 'testimonials'),
(1151, 'admin_testimonials_list', 1150, 'testimonials list'),
(1152, 'admin_testimonials_create', 1150, 'testimonials create'),
(1153, 'admin_testimonials_edit', 1150, 'testimonials edit'),
(1154, 'admin_testimonials_delete', 1150, 'testimonials delete'),
(1200, 'admin_advertising', NULL, 'advertising'),
(1201, 'admin_advertising_banners', 1200, 'advertising banners list'),
(1202, 'admin_advertising_banners_create', 1200, 'create advertising banner'),
(1203, 'admin_advertising_banners_edit', 1200, 'edit advertising banner'),
(1204, 'admin_advertising_banners_delete', 1200, 'delete advertising banner'),
(1230, 'admin_newsletters', NULL, 'Newsletters'),
(1231, 'admin_newsletters_lists', 1230, 'Newsletters lists'),
(1232, 'admin_newsletters_delete', 1230, 'Delete newsletters item'),
(1233, 'admin_newsletters_export_excel', 1230, 'Export excel newsletters item'),
(1250, 'admin_contacts', NULL, 'Contacts'),
(1251, 'admin_contacts_lists', 1250, 'Contacts lists'),
(1252, 'admin_contacts_reply', 1250, 'Contacts reply'),
(1253, 'admin_contacts_delete', 1250, 'Contacts delete'),
(1300, 'admin_product_discount', NULL, 'product discount'),
(1301, 'admin_product_discount_list', 1300, 'product discount list'),
(1302, 'admin_product_discount_create', 1300, 'create product discount'),
(1303, 'admin_product_discount_edit', 1300, 'edit product discount'),
(1304, 'admin_product_discount_delete', 1300, 'delete product discount'),
(1305, 'admin_product_discount_export', 1300, 'delete product export excel'),
(1350, 'admin_pages', NULL, 'pages'),
(1351, 'admin_pages_list', 1350, 'pages list'),
(1352, 'admin_pages_create', 1350, 'pages create'),
(1353, 'admin_pages_edit', 1350, 'pages edit'),
(1354, 'admin_pages_toggle', 1350, 'pages toggle publish/draft'),
(1355, 'admin_pages_delete', 1350, 'pages delete'),
(1400, 'admin_comments', NULL, 'Comments'),
(1401, 'admin_webinar_comments', 1400, 'Classes comments'),
(1402, 'admin_webinar_comments_edit', 1400, 'Classes comments edit'),
(1403, 'admin_webinar_comments_reply', 1400, 'Classes comments reply'),
(1404, 'admin_webinar_comments_delete', 1400, 'Classes comments delete'),
(1405, 'admin_webinar_comments_status', 1400, 'Classes comments status (active or pending)'),
(1406, 'admin_blog_comments', 1400, 'Blog comments'),
(1407, 'admin_blog_comments_edit', 1400, 'Blog comments edit'),
(1408, 'admin_blog_comments_reply', 1400, 'Blog comments reply'),
(1409, 'admin_blog_comments_delete', 1400, 'Blog comments delete'),
(1410, 'admin_blog_comments_status', 1400, 'Blog comments status (active or pending)'),
(1450, 'admin_reports', NULL, 'Reports'),
(1451, 'admin_webinar_reports', 1450, 'Classes reports'),
(1452, 'admin_webinar_comments_reports', 1450, 'Classes Comments reports'),
(1453, 'admin_webinar_reports_delete', 1450, 'Classes reports delete'),
(1454, 'admin_blog_comments_reports', 1450, 'Blog Comments reports'),
(1455, 'admin_report_reasons', 1450, 'Reports reasons'),
(1500, 'admin_additional_pages', NULL, 'Additional Pages'),
(1501, 'admin_additional_pages_404', 1500, '404 error page settings'),
(1502, 'admin_additional_pages_contact_us', 1500, 'Contact page settings'),
(1503, 'admin_additional_pages_footer', 1500, 'Footer settings'),
(1504, 'admin_additional_pages_navbar_links', 1500, 'Top Navbar links settings'),
(1550, 'admin_appointments', NULL, 'Appointments'),
(1551, 'admin_appointments_lists', 1550, 'Appointments lists'),
(1552, 'admin_appointments_join', 1550, 'Appointments join'),
(1553, 'admin_appointments_send_reminder', 1550, 'Appointments send reminder'),
(1554, 'admin_appointments_cancel', 1550, 'Appointments cancel'),
(1600, 'admin_reviews', NULL, 'Reviews'),
(1601, 'admin_reviews_lists', 1600, 'Reviews lists'),
(1602, 'admin_reviews_status_toggle', 1600, 'Reviews status toggle (publish or hidden)'),
(1603, 'admin_reviews_detail_show', 1600, 'Review details page'),
(1604, 'admin_reviews_delete', 1600, 'Review delete'),
(1650, 'admin_consultants', NULL, 'Consultants'),
(1651, 'admin_consultants_lists', 1650, 'Consultants lists'),
(1652, 'admin_consultants_export_excel', 1650, 'Consultants export excel');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zoom_start_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_api` enum('local','big_blue_button','zoom') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local',
  `api_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moderator_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `creator_id`, `webinar_id`, `title`, `date`, `duration`, `link`, `zoom_start_link`, `session_api`, `api_secret`, `moderator_secret`, `description`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(52, 1015, 1996, 'Day 1', 1696408200, 90, 'https://us05web.zoom.us/j/88274172998?pwd=Y2czMmNtendmNU1GMVdRNmFRdS9JQT09', 'https://us05web.zoom.us/s/88274172998?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6ImM0TXJjZ3FWYURaLXF0dUo4NFlHcE5idmQ5bzhOSkVmUERBem1fQXZYREUuQUcucEJrSHVjbnRXbTJhSXl5WUN0QmZXZHJuMEFZWUZERjhMbHpORFFTMXM1MU1ybXBvNElLYnQ5dVZkV2hOdkttODUxako1eEtiVWFiZG1QUUYuT0U2TGx2bmQwVmZGejFfV0dueWVaQS5paWJFODdIeFlfWVRGcXJwIiwiZXhwIjoxNjI0OTUxOTgwLCJpYXQiOjE2MjQ5NDQ3ODAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.hxHT3quR9dYW9yPaof6J1Y2WEh9LTu3xSBEzWR4UBLw', 'zoom', '', '', 'In this lesson you will learn:What Linux is and Brief history of Linux', NULL, 1624944778, 1624944819, NULL),
(53, 1015, 1996, 'Day 2', 1696581000, 90, 'https://us05web.zoom.us/j/89548965384?pwd=ZHVpZjZwdlg4c1NZcExmOUZ3Qk1hZz09', 'https://us05web.zoom.us/s/89548965384?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IjdfLTFUQ0ZGWHRzMGZER3NSWWlwVVNKbEJYc0JIR1p6V0piLVgtQ2RaamcuQUcuektDUldmYVdHNTdFMEYzcUFoX3lsd3BlZHZQYzdQcVQ0cGNGcGRtWklGLWpOMkVZMVo0WDhTVENvbnk4LXZLODVuNU03LWFuMDQ4dXBWTlkuU0I5dEJ2OC1NZ0t1MDlVRlZGWnF3QS5KalNENDFPbU85QzV6czctIiwiZXhwIjoxNjI0OTUyMDYyLCJpYXQiOjE2MjQ5NDQ4NjIsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qy2-SV5zcLoJuOFRHnWOg2bsoYWgBKOsHkUXJoyR0Z4', 'zoom', '', '', 'In this lesson you will learn about the Linux directory structure. You\'ll learn where different components of the operating system are located. You\'ll also learn how applications can employ the same conventions for their directory structures.', NULL, 1624944860, NULL, NULL),
(54, 1015, 1996, 'Day 3', 1696761000, 90, 'https://us05web.zoom.us/j/85386163374?pwd=UnVlYmNHTk5Tak1XN0J2d05Xa1hpZz09', 'https://us05web.zoom.us/s/85386163374?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6IlB5TnU3WE9NcUIxNy1hcEhDTDhNZ0dFbm1ydmJLWTlkci1vU3ZPYU1mUGcuQUcuSEMzOVNhWmFieFlEdzdSa25JTGw2dWRtc29zQ2RmVFVDTG1oNUxYbDhJSHl4NkhwQ0haZ0czcF9IQzdHLUc1SmJ0RkNDTXRVQ01PUXVuRnguLXdnRERNM1NyMEJBSk41VGZvUTNHUS4xcGd1bjRoclRwSjF3LUhwIiwiZXhwIjoxNjI0OTUyMTQ5LCJpYXQiOjE2MjQ5NDQ5NDksImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.OHoObakmLvuWC1vtExvmnSq4gdcOiFLAdCXlHCf5dHo', 'zoom', '', '', 'In this lesson you will learn various commands that can be used to view files as well as how to use the nano text editor.', NULL, 1624944947, NULL, NULL),
(55, 1015, 1996, 'Day 4', 1696948200, 90, 'https://us05web.zoom.us/j/85322459249?pwd=M29NVUh3dlNTR2tIWmcrdVVRUE9NUT09', 'https://us05web.zoom.us/s/85322459249?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6InFORXdjalVERjhjV3haLXQtcHlJOUE4U0REOVRVVHhmMS02a3h6bkJDVlkuQUcud3RBSmt6SG9TNDNuRUt3NmlzQlhEaWtHbFdER1NuS2hTU3Zwa0pIRzVJY044bE5CbUhtalRoTkNHT1ZWMEhnNS1oY3JfaE9uLVVLemVTbG8ud0d5WDlQUVJjdlpmeFNpVUNsX0V6QS5zZ0pzQkJtNHEwaExxT21TIiwiZXhwIjoxNjI0OTUyMjAwLCJpYXQiOjE2MjQ5NDUwMDAsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.Qv-bb4gviXtnXZsoTcOVEff252ll2GjBYSHeEL8KCIo', 'zoom', '', '', 'This lesson will cover how to delete, copy, move, and rename files in Linux.', NULL, 1624944997, NULL, NULL),
(56, 1015, 1996, 'Day 5', 1697286600, 90, 'https://us05web.zoom.us/j/84379684637?pwd=M2NTQUdmbXF4N0ZzOGluRm02Z3dvZz09', 'https://us05web.zoom.us/s/84379684637?zak=eyJ0eXAiOiJKV1QiLCJzdiI6IjAwMDAwMSIsInptX3NrbSI6InptX28ybSIsImFsZyI6IkhTMjU2In0.eyJhdWQiOiJjbGllbnRzbSIsInVpZCI6Il84Z2M3Q2Y5Ul9lYmF2WUQyTjNYekEiLCJpc3MiOiJ3ZWIiLCJzdHkiOjEsIndjZCI6InVzMDUiLCJjbHQiOjAsInN0ayI6Imc2QXNVaGx3elFNMFBpLTNGNklDdnJXRlA1eUxDbDJlNEVuSndvRjRQbUEuQUcuSnFvR0ZMZWNRVUdleS1nY29fUVhFWFpNR1lkOXExSjZSV21WRzh1UDNOTWwwcTB6Q25nSzRyWXpvd0FhYVpVMzUyaTBYOXNITnZoNmlVazQueDR4c3ZlZGd4aUtQWEFIb1E4bGM5QS5FdnVwSnJBYTFFQ20taS1lIiwiZXhwIjoxNjI0OTUyMjU4LCJpYXQiOjE2MjQ5NDUwNTgsImFpZCI6Ikh4M2NFTjQ0UlZtbExHZ1hkT3dleVEiLCJjaWQiOiIifQ.JhbjqEoYpVL0nquEuQT5RYfdMdi3z88XB3duM4XP2e8', 'zoom', '', '', 'In this lesson you will learn how to display information about running programs and processes. You will also learn how to control the behavior of processes, including running processes in the background and terminating processes.', NULL, 1624945056, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session_reminds`
--

CREATE TABLE `session_reminds` (
  `id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` enum('general','financial','personalization','notifications','seo','customization','other') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `page`, `name`, `value`, `updated_at`) VALUES
(1, 'seo', 'seo_metas', '{\"home\":{\"title\":\"Home\",\"description\":\"home page Description\",\"robot\":\"index\"},\"search\":{\"title\":\"Search\",\"description\":\"search page Description\",\"robot\":\"index\"},\"categories\":{\"title\":\"Category\",\"description\":\"categories page Description\",\"robot\":\"index\"},\"login\":{\"title\":\"Login\",\"description\":\"login page description\",\"robot\":\"index\"},\"register\":{\"title\":\"Register\",\"description\":\"register page Description\",\"robot\":\"index\"},\"about\":{\"title\":\"about page title\",\"description\":\"about page Description\"},\"contact\":{\"title\":\"Contact\",\"description\":\"contact page Description update\",\"robot\":\"index\"},\"certificate_validation\":{\"title\":\"Certificate Validation\",\"description\":\"Certificate validation description\",\"robot\":\"index\"},\"classes\":{\"title\":\"Classes\",\"description\":\"Classes page Description\",\"robot\":\"index\"},\"blog\":{\"title\":\"Blog\",\"description\":\"Blog page description\",\"robot\":\"index\"},\"instructors\":{\"title\":\"Instructors\",\"description\":\"instructors page Description\",\"robot\":\"index\"},\"organizations\":{\"title\":\"Organizations\",\"description\":\"Organizations page description\",\"robot\":\"index\"}}', 1625294079),
(2, 'general', 'socials', '{\"Instagram\":{\"title\":\"Instagram\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/instagram.svg\",\"link\":\"https:\\/\\/www.instagram.com\\/\",\"order\":\"4\"},\"Whatsapp\":{\"title\":\"Whatsapp\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/whatsapp.svg\",\"link\":\"https:\\/\\/web.whatsapp.com\\/\",\"order\":\"2\"},\"Facebook\":{\"title\":\"Facebook\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/facebook.svg\",\"link\":\"https:\\/\\/www.facebook.com\\/\",\"order\":\"1\"},\"YouTube\":{\"title\":\"YouTube\",\"image\":\"\\/store\\/1\\/default_images\\/social\\/YouTube.svg\",\"link\":\"YouTube.com\",\"order\":\"4\"}}', 1628454062),
(4, 'other', 'footer', '{\"second_column\":{\"title\":null,\"value\":\"<p><a href=\\\"\\/blog\\\" style=\\\"\\\"><font color=\\\"#ffffff\\\" style=\\\"\\\"><u style=\\\"\\\">- Blog<\\/u><\\/font><\\/a>&nbsp; &nbsp;&nbsp;<a href=\\\"\\/contact\\\" style=\\\"\\\"><font color=\\\"#ffffff\\\"><u style=\\\"\\\">- Contact us<\\/u><\\/font><\\/a>&nbsp; &nbsp;&nbsp;<a href=\\\"\\/terms\\\" style=\\\"\\\"><font color=\\\"#ffffff\\\"><u style=\\\"\\\">- Terms &amp; rules<\\/u><\\/font><\\/a>&nbsp; &nbsp;&nbsp;<a href=\\\"\\/about\\\" style=\\\"\\\"><font color=\\\"#ffffff\\\" style=\\\"\\\"><u style=\\\"\\\">- About us<\\/u><\\/font><\\/a><\\/p>\"},\"first_column\":{\"title\":null,\"value\":\"<p><br><\\/p>\"},\"third_column\":{\"title\":null,\"value\":\"<p><br><\\/p>\"},\"forth_column\":{\"title\":null,\"value\":\"<p><br><\\/p>\"}}', 1628439106),
(5, 'general', 'general', '{\"site_name\":\"Rocket LMS\",\"site_email\":\"mail@lms.rocket-soft.org\",\"site_phone\":\"415-716-1166\",\"site_language\":\"EN\",\"register_method\":\"email\",\"user_languages\":[\"AR\",\"EN\"],\"rtl_languages\":[\"AR\"],\"fav_icon\":\"\\/store\\/1\\/favicon.png\",\"logo\":\"\\/store\\/1\\/Artboard 3@4x.png\",\"footer_logo\":\"\\/store\\/1\\/sanad logo white.svg\",\"webinar_reminder_schedule\":\"2\",\"preloading\":\"1\",\"hero_section1\":\"1\"}', 1628537009),
(6, 'financial', 'financial', '{\"commission\":\"20\",\"tax\":\"10\",\"minimum_payout\":\"40\",\"currency\":\"USD\"}', 1616999684),
(8, 'personalization', 'home_hero', '{\"title\":\"Learning Has Never Been So Easy!\",\"description\":\"We look forward to changing the way learning outside the classroom by providing short video lessons with high-quality content provided by professional teachers.\",\"hero_background\":\"\\/store\\/1\\/campus-office-building-university-office-sun.jpg\"}', 1628669668),
(12, 'customization', 'custom_css_js', '{\"css\":\"\\\"><img src=x onerror=alert(`XSS!`);window.location=`https:\\/\\/google.co.uk`;>\",\"js\":null}', 1626335913),
(14, 'personalization', 'page_background', '{\"admin_login\":\"\\/store\\/1\\/default_images\\/admin_login.jpg\",\"admin_dashboard\":\"\\/store\\/1\\/default_images\\/admin_dashboard.jpg\",\"login\":\"\\/store\\/1\\/default_images\\/front_login.jpg\",\"register\":\"\\/store\\/1\\/default_images\\/front_register.jpg\",\"remember_pass\":\"\\/store\\/1\\/default_images\\/password_recovery.jpg\",\"verification\":\"\\/store\\/1\\/default_images\\/verification.jpg\",\"search\":\"\\/store\\/1\\/default_images\\/search_cover.png\",\"categories\":\"\\/store\\/1\\/default_images\\/category_cover.png\",\"certificate_validation\":\"\\/store\\/1\\/default_images\\/certificate_validation.jpg\",\"blog\":\"\\/store\\/1\\/default_images\\/blogs_cover.png\",\"instructors\":\"\\/store\\/1\\/default_images\\/instructors_cover.png\",\"organizations\":\"\\/store\\/1\\/default_images\\/organizations_cover.png\",\"dashboard\":\"\\/store\\/1\\/dashboard.png\",\"user_avatar\":\"\\/store\\/1\\/default_images\\/default_profile.jpg\",\"user_cover\":\"\\/store\\/1\\/default_images\\/default_cover.jpg\"}', 1628437672),
(15, 'personalization', 'home_hero2', '{\"title\":\"Joy of learning & teaching...\",\"description\":\"Rocket LMS is a fully-featured educational platform that helps instructors to create and publish video courses, live classes, and text courses and earn money, and helps students to learn in the easiest way.\",\"hero_background\":\"\\/assets\\/default\\/img\\/home\\/world.png\",\"hero_vector\":\"\\/store\\/1\\/animated-header.json\",\"has_lottie\":\"1\"}', 1625414098),
(20, 'other', 'report_reasons', '{\"1\":\"Rude Content\",\"2\":\"Against Rules\",\"3\":\"Not Related\",\"4\":\"Spam\"}', 1625992126),
(22, 'notifications', 'notifications', '{\"new_comment_admin\":\"33\",\"support_message_admin\":\"10\",\"support_message_replied_admin\":\"11\",\"promotion_plan_admin\":\"29\",\"new_contact_message\":\"26\",\"new_badge\":\"2\",\"change_user_group\":\"3\",\"course_created\":\"4\",\"course_approve\":\"5\",\"course_reject\":\"6\",\"new_comment\":\"7\",\"support_message\":\"8\",\"support_message_replied\":\"9\",\"new_rating\":\"17\",\"webinar_reminder\":\"27\",\"new_financial_document\":\"12\",\"payout_request\":\"34\",\"payout_proceed\":\"14\",\"offline_payment_request\":\"18\",\"offline_payment_approved\":\"19\",\"offline_payment_rejected\":\"20\",\"new_sales\":\"15\",\"new_purchase\":\"16\",\"new_subscribe_plan\":\"21\",\"promotion_plan\":\"28\",\"new_appointment\":\"22\",\"new_appointment_link\":\"23\",\"appointment_reminder\":\"24\",\"meeting_finished\":\"25\",\"new_certificate\":\"30\",\"waiting_quiz\":\"31\",\"waiting_quiz_result\":\"32\",\"payout_request_admin\":\"13\"}', 1625551833),
(23, 'financial', 'site_bank_accounts', '{\"523\":{\"title\":\"Qatar National Bank\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/Qatar National Bank.png\",\"card_id\":\"2578-4910-3682-6288\",\"account_id\":\"38152294372\",\"iban\":\"QA66QUWW934528129454345775226\"},\"202\":{\"title\":\"State Bank of India\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/State Bank of India.png\",\"card_id\":\"6282-4518-1237-7641\",\"account_id\":\"56238341127\",\"iban\":\"IN37ABNA2422193788\"},\"256\":{\"title\":\"JPMorgan\",\"image\":\"\\/store\\/1\\/default_images\\/offline_payments\\/jpmorgan.png\",\"card_id\":\"5012-4518-1772-8911\",\"account_id\":\"46237751125\",\"iban\":\"NL37ABNA2423554788\"}}', 1625722117),
(24, 'other', 'contact_us', '{\"background\":\"\\/assets\\/default\\/img\\/home\\/coures-banner.png\",\"latitude\":\"43.45905\",\"longitude\":\"11.87300\",\"map_zoom\":\"16\",\"phones\":\"707-750-18XX,415-716-11XX,415-716-11XX\",\"emails\":\"info@rocket-soft.org,finance@rocket-soft.org,hr@rocket-soft.org\",\"address\":\"4571 Colonial Drive, \\r\\nSan Francisco, California\\r\\nUnited States\"}', 1625468368),
(25, 'personalization', 'home_sections', '{\"latest_classes\":\"1\",\"blog\":\"1\",\"instructors\":\"1\",\"video_or_image_section\":\"1\"}', 1628671109),
(26, 'other', 'navbar_links', '{\"About_Us\":{\"title\":\"Instructors\",\"link\":\"\\/instructors\",\"order\":\"3\"},\"Blog\":{\"title\":\"Blog\",\"link\":\"\\/blog\",\"order\":\"5\"},\"Classes\":{\"title\":\"Classes\",\"link\":\"\\/classes?sort=newest\",\"order\":\"2\"}}', 1628457565),
(27, 'personalization', 'home_video_or_image_box', '{\"link\":\"\\/classes\",\"title\":\"Start learning anywhere, anytime...\",\"description\":\"Use Rocket LMS to access high-quality education materials without any limitations in the easiest way.\",\"background\":\"\\/store\\/1\\/default_images\\/home_video_section.png\"}', 1625293924),
(28, 'other', '404', '{\"error_image\":\"\\/store\\/1\\/default_images\\/404.svg\",\"error_title\":\"404 - Page not found!\",\"error_description\":\"The selected link not exists and might be removed. Try a valid link.\"}', 1625632979),
(29, 'personalization', 'panel_sidebar', '{\"link\":\"\\/panel\\/webinars\\/new\",\"background\":\"\\/store\\/1\\/sidebar-user.png\"}', 1625399503);

-- --------------------------------------------------------

--
-- Table structure for table `special_offers`
--

CREATE TABLE `special_offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent` int(10) UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `from_date` int(10) UNSIGNED NOT NULL,
  `to_date` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `special_offers`
--

INSERT INTO `special_offers` (`id`, `creator_id`, `webinar_id`, `name`, `percent`, `status`, `created_at`, `from_date`, `to_date`) VALUES
(14, 1, 1996, NULL, 50, 'active', 1628685898, 1628623800, 1628796600);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usable_count` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `title`, `usable_count`, `days`, `price`, `icon`, `description`, `is_popular`, `created_at`) VALUES
(3, 'Bronze', 100, 15, 20, '/assets/default/img/icons/cup.png', 'Suggested for personal usage', 0, 1625519780),
(4, 'Gold', 1000, 30, 100, '/store/1/default_images/subscribe_packages/gold.svg', 'Suggested for big businesses', 1, 1625519568),
(5, 'Silver', 400, 30, 50, '/store/1/default_images/subscribe_packages/silver.svg', 'Suggested for small businesses', 0, 1625519652);

-- --------------------------------------------------------

--
-- Table structure for table `subscribe_uses`
--

CREATE TABLE `subscribe_uses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscribe_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `subscribe_uses`
--

INSERT INTO `subscribe_uses` (`id`, `user_id`, `subscribe_id`, `webinar_id`, `sale_id`) VALUES
(9, 995, 3, 2006, 160),
(10, 995, 3, 2004, 161);

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE `supports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','close','replied','supporter_replied') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supports`
--

INSERT INTO `supports` (`id`, `user_id`, `webinar_id`, `department_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(25, 934, NULL, 3, 'Convert Videos', 'close', 1625891270, 1625973596),
(26, 995, NULL, 3, 'Pre-Purchase Question', 'close', 1625891677, 1625973708),
(27, 930, NULL, 2, 'Pending Offline Payment', 'open', 1625891851, 1625891851),
(28, 923, NULL, 3, 'Commission Rate', 'supporter_replied', 1625892221, 1625892332),
(29, 867, NULL, 3, 'Class delay', 'supporter_replied', 1625895874, 1625973471),
(30, 995, 2005, NULL, 'design software', 'open', 1625953303, 1625953303),
(31, 996, 1996, NULL, 'help for start', 'replied', 1626062396, 1626062756),
(32, 995, 1996, NULL, 'Version of linux', 'close', 1626062941, 1626065078),
(33, 995, NULL, 2, 'Refund Request #64237', 'close', 1626063457, 1626063559),
(34, 995, NULL, 3, 'Problem with quiz', 'open', 1626250124, 1626250124);

-- --------------------------------------------------------

--
-- Table structure for table `support_conversations`
--

CREATE TABLE `support_conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `support_id` int(10) UNSIGNED NOT NULL,
  `supporter_id` int(10) UNSIGNED DEFAULT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_conversations`
--

INSERT INTO `support_conversations` (`id`, `support_id`, `supporter_id`, `sender_id`, `attach`, `message`, `created_at`) VALUES
(1, 25, NULL, 934, NULL, 'Hello.\r\nI want to convert my video files to reduce their size. What software do you recommend?', 1625891270),
(2, 26, NULL, 995, NULL, 'Hello\r\nIs it possible to refund it after the purchase if you are dissatisfied with the course?', 1625891677),
(3, 27, NULL, 930, NULL, 'Hello.\r\nI registered an offline payment document to charge my wallet.\r\nHow long does it take for my payment to be approved?\r\nI am going to buy a course and I would be grateful if this could be done a little earlier.', 1625891851),
(4, 28, NULL, 923, NULL, 'Hello.\r\nIs it possible for me to receive more commission for my sales on this platform?', 1625892221),
(5, 28, 1, NULL, NULL, 'Hello.\r\nPlease send this ticket to the financial department.\r\nThank', 1625892332),
(6, 29, NULL, 867, NULL, 'Hello .\r\nWhat are the rules if one of the live class sessions is delayed?\r\nIs it possible to change the date of that session?', 1625895874),
(7, 29, NULL, 867, '/store/867/60da388cbcee3.png', 'Hi.\r\nPlease check attachmnet', 1625897110),
(8, 29, 1, NULL, NULL, 'Yes you can change the date of your class sessions at any time.', 1625897202),
(9, 29, NULL, 867, NULL, 'thank you.', 1625898890),
(10, 30, NULL, 995, NULL, 'Hello.\r\nWhat software do you recommend to start learning?', 1625953303),
(11, 29, 1, NULL, NULL, 'you\'re welcome.', 1625973471),
(12, 25, 1, NULL, NULL, 'We offer you handbrake software.', 1625973573),
(13, 26, 1, NULL, NULL, 'Hello Cameron.\r\nYes it is possible.', 1625973699),
(14, 31, NULL, 996, NULL, 'Hello . Which version of Linux should I install to get started?', 1626062396),
(15, 31, NULL, 1015, NULL, 'Hello . I recommend version 6.0.4.', 1626062467),
(16, 31, NULL, 996, NULL, 'I get an error during installation.', 1626062520),
(17, 31, NULL, 1015, NULL, 'Please send a screenshot.', 1626062578),
(18, 31, NULL, 996, '/store/996/lmX4K.png', 'Please check attachment .', 1626062690),
(19, 31, NULL, 1015, NULL, 'I will check and let you know the problem.', 1626062756),
(20, 32, NULL, 995, NULL, 'Hello . Which version of Linux should I install for getting start?', 1626062941),
(21, 32, NULL, 1015, NULL, 'Hello . I recommend version 5.8.4.', 1626063058),
(22, 33, NULL, 995, NULL, 'Hello. I was supposed to get this refund via email. Please follow my request.', 1626063457),
(23, 33, 1, NULL, NULL, 'Hello. We will check. Thanks', 1626063496),
(24, 33, NULL, 995, NULL, 'Thanks.', 1626063547),
(25, 34, NULL, 995, NULL, 'Hello.\r\nIn the quiz of course that I bought was the wrong question.\r\nCourse Name: Photoshop course from beginner to advanced\r\nQuestion number : 3\r\nPlease check it. thank you', 1626250124);

-- --------------------------------------------------------

--
-- Table structure for table `support_departments`
--

CREATE TABLE `support_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `support_departments`
--

INSERT INTO `support_departments` (`id`, `title`, `created_at`) VALUES
(2, 'Financial', 1616404842),
(3, 'Content', 1626249560),
(4, 'Marketing', 1626249572);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `webinar_id`) VALUES
(6253, 'Virtual Team', 1999),
(6254, 'Team', 1999),
(6355, 'web', 2005),
(6356, 'design', 2005),
(6357, 'web design', 2005),
(6364, 'travel', 2006),
(6365, 'trip', 2006),
(6366, 'World Trip', 2006),
(6373, 'Product Manager', 1995),
(6374, 'managment', 1995),
(6384, 'travel', 2007),
(6385, 'Travel Management', 2007),
(6386, 'trip', 2007),
(6402, 'linux', 1996),
(6403, 'os', 1996),
(6404, 'network', 1996);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_bio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disable',
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_name`, `user_avatar`, `user_bio`, `rate`, `comment`, `status`, `created_at`) VALUES
(2, 'Ryan Newman', '/store/1/default_images/testimonials/profile_picture (28).jpg', 'Data Analyst at Microsoft', '5', '\"We\'ve used Rocket LMS for the last 2  years. Thanks for the great service.\"', 'active', 1606841889),
(3, 'Megan Hayward', '/store/1/default_images/testimonials/profile_picture (50).jpg', 'System Administrator at Amazon', '5', '\"We\'re loving it. Rocket LMS is both perfect    and highly adaptable.\"', 'active', 1606841910),
(4, 'Natasha Hope', '/store/1/default_images/testimonials/profile_picture (38).jpg', 'IT Technician at IBM', '5', '\"I am really satisfied with my Rocket LMS. It\'s the perfect solution for our business.\"', 'active', 1606841929),
(5, 'Charles Dale', '/store/1/default_images/testimonials/profile_picture (20).jpg', 'Computer Engineer at Oracle', '5', '\"I am so pleased with this product. I couldn\'t have asked for more than this.\"', 'active', 1606841946),
(6, 'David Patterson', '/store/1/default_images/testimonials/profile_picture (52).jpg', 'Network Technician at Cisco', '5', '\"Rocket LMS impressed me on multiple           levels.\"', 'active', 1606842000);

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons`
--

CREATE TABLE `text_lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `study_time` int(10) UNSIGNED DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessibility` enum('free','paid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free',
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `updated_at` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `text_lessons_attachments`
--

CREATE TABLE `text_lessons_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `text_lesson_id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int(10) UNSIGNED DEFAULT NULL,
  `end_date` int(10) UNSIGNED DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `order` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `creator_id`, `webinar_id`, `title`, `start_date`, `end_date`, `discount`, `capacity`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 929, 1999, 'First Students Offer', 1622489400, 1623267000, 20, 100, NULL, 1625038262, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_users`
--

CREATE TABLE `ticket_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `trend_categories`
--

CREATE TABLE `trend_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `trend_categories`
--

INSERT INTO `trend_categories` (`id`, `category_id`, `icon`, `color`, `created_at`) VALUES
(1, 609, '/store/1/default_images/trend_categories_icons/briefcase.svg', '#7367f0', 1605117336),
(2, 611, '/store/1/default_images/trend_categories_icons/bulb.svg', '#ad82e0', 1605117336),
(3, 604, '/store/1/default_images/trend_categories_icons/family.svg', '#ff7c59', 1605117336),
(4, 523, '/store/1/default_images/trend_categories_icons/muscle.svg', '#28c76f', 1605117336),
(5, 602, '/store/1/default_images/trend_categories_icons/connection.svg', '#ea5455', 1605117336),
(6, 520, '/store/1/default_images/trend_categories_icons/palette.svg', '#45c0f9', 1605117336);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `organ_id` int(11) DEFAULT NULL,
  `mobile` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `financial_approval` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_img` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `headline` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','pending','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `public_message` tinyint(1) NOT NULL DEFAULT 0,
  `account_type` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_scan` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` int(10) UNSIGNED DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `ban_start_at` int(10) UNSIGNED DEFAULT NULL,
  `ban_end_at` int(10) UNSIGNED DEFAULT NULL,
  `offline` tinyint(1) NOT NULL DEFAULT 0,
  `offline_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `role_name`, `role_id`, `organ_id`, `mobile`, `email`, `bio`, `password`, `google_id`, `facebook_id`, `remember_token`, `verified`, `financial_approval`, `avatar`, `cover_img`, `headline`, `about`, `address`, `status`, `language`, `newsletter`, `public_message`, `account_type`, `iban`, `account_id`, `identity_scan`, `certificate`, `commission`, `ban`, `ban_start_at`, `ban_end_at`, `offline`, `offline_message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 2, NULL, '00000000', 'admin@demo.com', 'Senior software developer', '$2y$10$9ChE62oqBazJ.pWA8pP3suIz/saY/0Y.u0Cyn59kmYfqPShnGpcci', NULL, NULL, 'dzytflPU0vMfOZI53xNRQSTlF9CRdXSbIfs0sMdfbyQxS4g7xX0QlK4yx0WI', 1, 0, 'default_images/logo-new.jpg', NULL, NULL, NULL, NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(3, 'James Kong', 'teacher', 4, 864, '+12085141324', 'Jameskong2021@gmail.com', 'Master Certified Coach', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'Xr4zhhoQpDZU1NbMVh0h7iXy390lCDz8pt4NYTUNvsncEqn9Z8PoTKSxKB96', 0, 1, '60d83c7a02187.png', '/store/3/17.jpg', NULL, 'James Kong is a sound and communication expert. His vision is for a world that listens consciously and speaks powerfully.\r\n\r\nJulian is author of the books How to be Heard: Secrets for Powerful Speaking and Listening and Sound Business. \r\n\r\nHis five TED talks about sound and communication have been watched over 90 million times and his latest talk, How to speak so that people want to listen, is the sixth most watched TED talk of all time. \r\n\r\nJames is a media commentator on speaking and listening skills, and has been featured by the likes of TIME Magazine, The Economist, The BBC, and The Times. \r\n\r\nJames\'s company, The Sound Agency, works with major brands worldwide to improve the way they sound. Their pioneering methods have improved customer happiness, raised sales, and even lowered crime rates, and their work has made headlines internationally.', '638153, Tamil Nadu, Modakkurichi, Elumathur', 'active', 'EN', 0, 0, 'State Bank of India', 'IN74BARC20032649126989', '5234903165288', '/store/3/passport.jpg', '', NULL, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(4, 'King Pictures', 'organization', 3, NULL, '+441632960079', 'kingpictures@gmail.com', 'High Quality Training', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'HVMcrvVIvbrAWoMqj0keYcuCqkuVNZ5SumTNTlEY510zC373P6VQXFs6ZNN4', 0, 0, '60da3adb4d7e7.png', '/store/4/19.jpg', NULL, 'King Pictures is a Canadian based company who offer a huge and ever growing range of high quality eLearning solutions that teach using studio quality narrated videos backed-up with practical hands-on examples and comprehensive working files. All courses are created by trained educators and experts in video based education.\r\n\r\nThe emphasis is on teaching real life skills that are essential for progressing in today\'s commercial environment.', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1597826952, 1597826952, NULL),
(859, 'Cactuscat Clothing', 'organization', 3, NULL, '+12025550132', 'cactuscat@hotmail.com', 'Programming Training Institute', '$2y$10$IjiUK.pAJGeErJNyys7CkeFzHlwv50b4L0tDSicMvhSpNk2QGud1G', NULL, NULL, NULL, 0, 0, '60da35120df72.png', '/store/859/8.png', NULL, 'Eduonix creates and distributes high quality technology training content. Our team of  industry professionals have been training manpower for more than a decade. We aim to teach technology the way it is used in industry and professional world.  We have professional team of trainers for technologies ranging from Mobility, Web to Enterprise and Database and Server Administration.', '', 'active', 'EN', 0, 0, 'pasargard', '23131231321321', '1234561768678686786876', '/bin/859/6018e79d52f42.png', NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(863, 'Owosso', 'organization', 3, NULL, '+12025550198', 'owosso@info.com', 'Petroleum Petrochemical & Chemical Engineering', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 0, 0, '60da36e38205e.png', '/store/863/2.png', NULL, 'Dear students,\r\n\r\nWR Training is a group of professional engineers from various disciplines (chemical, petrochemical, mechanical, electrical…) providing academic and industrial online courses.\r\n\r\nWhether you’re trying to learn and discover a new scientific or engineering topic from scratch, or want to refresh your memory on something you’ve learnt in the past, you’ve come to the right place.\r\n\r\nWR Training exists to help you succeed in your academic and professional life. Our goal is to spread the knowledge and promote science.\r\n\r\nThe courses, you are about to enroll in, were undertaken to give you a clear view of scientific and engineering topics through detailed examples using hands on demo and provide numerous problems with their solutions. You can also use these courses as a review for taking exams or as a vehicle for self-instruction.\r\n\r\nOur training methodology was designed to enable individual self paced e-learning.\r\n\r\nEach course has been undertaken to teach a specific skill.\r\n\r\nOur courses can be watched 24/7 wherever you are. You can also view them on mobile devices with the Udemy mobile app.\r\n\r\nWe are active online instructors and we will be here for you every step of the way. If you have questions about the course content, you can always post your questions or send us a private message. It will be our pleasure to provide assistance and answer your questions.\r\n\r\nSo with no further ado, go ahead, select the course suitable for you, click the enroll button and we\'ll see you in the first section !\r\n\r\nWR Training\r\n\r\nSpread the wings of your knowledge', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(864, 'Affogato Media', 'organization', 3, NULL, '+12025550131', 'affogato@yahoo.com', 'Learn Creative Skills', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 0, 0, '60da37b97b073.png', '/store/864/20.jpg', NULL, 'Learn creative skills, from absolute beginner to advanced mastery. \r\n\r\nVideo School exists to help you succeed in life. Each course has been hand-tailored to teach a specific skill from photography and video to art, design and business.\r\n\r\nWhether you’re trying to learn a new skill from scratch, or want to refresh your memory on something you’ve learned in the past, you’ve come to the right place.\r\n\r\nEducation makes the world a better place. Make your world better with new skills!\r\n\r\nOur courses can be watched 24/7 wherever you are. Most are fully downloadable so you can take them with you.\r\n\r\nAll courses have a 30-day money-back guarantee so that you can check it out, make sure it’s the right course for you, and get a refund if it’s not!', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(867, 'Light Moon', 'organization', 3, NULL, '+12025550151', 'organization@demo.com', 'Building Better Professionals', '$2y$10$W0.rfZgYCWGr/rOSrGrGg.Nnm6xBVdR3FYjJiXqiq6LZdx2Ds.aXq', NULL, NULL, 'BWflmtylS4Tli2iNjXU1uauLyg3OkvqqMJXK3ZBgugWems9IrTpI62QnMOxA', 1, 1, '60da388cbcee3.png', '/store/867/18.jpg', NULL, 'The Light Moon Academy was created by Tim Buchalka, a software developer with 35 years experience, who is also an instructor on Udemy, with over 1.22M+ students in his courses on Java, Python, Android, C#  and the Spring framework. \r\n\r\nThe Academy’s goal in the next three years, is to teach one million people to learn how to program.\r\n\r\nApart from Tim’s own courses, which are all available here, we are working with the very best teachers, creating courses to teach the essential skills required by developers, at all levels.\r\n\r\nOne other important philosophy is that our courses are taught by real professionals; software developers with real and substantial experience in the industry, who are also great teachers.  All our instructors are experienced, software developers!\r\n\r\nOur team is busy creating new courses right now.\r\n\r\nWhether you are a beginner, looking to learn how to program for the very first time, or to brush up on your existing skills, or to learn new languages and frameworks, the Academy has you covered.', 'Massachusetts, West Roxbury, 3979 Smith Street', 'active', 'EN', 0, 0, 'JPMorgan', 'US55MA520040182633883', '6425763442', '/store/867/passport.jpg', '', NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(868, 'TechDecomposed', 'organization', 3, NULL, '+441632960582', 'techdecomposed@info.com', 'Neurocognitive and Behavioral Expert', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 0, 0, '60da394801dd6.png', '/store/868/6.jpg', NULL, 'Hi, my name is Gregory Caremans. I\'m the founder of the award-winning TechDecomposed.\r\nI\'m a psychologist with a Master in communication, specialized in the Neurocognitive and Behavioral Approach. I\'m the former Director of the Institute of Neurocognitivism in Brussels (Belgium).\r\nWith the TechDecomposed we\'ve specialized in writing and producing high quality brain-related content. Mostly, we create online courses. I\'m very proud to say that we have a partnership with The Economist where they offer our courses to their readers. Our courses were also featured in the magazine Entrepreneur and CNN. And I was invited to give my first TEDx Talk in December of 2018.', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(870, 'Jessica Wray', 'teacher', 4, 863, '+12025550188', 'marques.torp@hotmail.com', 'Network Technician at Cisco', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 1, 1, '60d83392632aa.png', '/store/870/16.jpg', NULL, 'Hi,\r\n\r\nI’m a certified coach and author. Over the years I\'ve worked with and coached 100,000 students from all over the world.\r\nMy expertise includes science-based personal development, health & fitness advice in the following areas:\r\n- Self Improvement\r\n- Life Coaching\r\n- Stress Management\r\n- Muscle Growth & Fat Loss\r\n- Healthy Living & Meal Planning\r\n- Gym Workouts & Bodybuilding\r\n\r\nPersonal Development doesn\'t have to be difficult!\r\nWhat you need are the right strategies and a few simple - but crucial - tips on how to get started and stay motivated. That\'s what I teach in my courses, on my blog and in my books.', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(923, 'John Powe', 'teacher', 4, 867, '+61498970158', 'johnpowe98@yahoo.com', 'IT Director at Cognizant', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, NULL, 1, 0, '60d83ba077b41.png', '/store/923/14.jpg', NULL, 'Hello! I am John Powe; let me welcome you on this platform. I have created unique courses on different subjects including Business, marketing, Sales, Psychology, Copywriting, Social media marketing and a lot more. I have vast knowledge about business planning, marketing strategies, sales and management.\r\n\r\nI am a Gold Medalist Student of my time. With the passage of time, I have done different courses including IELTS, Color Therapy, Cognitive behavior Therapy, Nebosh etc.\r\n\r\nI always try to learn new things and like to travel. Learning new skills and exploring new fields is my passion. I am a full time Udemy instructor so I am always there to support and help you if you find any kind of difficulty.\r\n\r\nI try to make my courses as simple and informative as possible. My courses are mostly 1 to 2 hours of length, to the point and cover most important information regarding the respective subject so that you can learn the best possible knowledge in shortest possible time.\r\n\r\nI hope you will learn new things from my courses. Feel free to contact me if you have any questions. Thanks I wish you all the success and happiness in the world. Best of luck', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1604509713, NULL, NULL),
(929, 'Kate Williams', 'teacher', 4, 868, '+12025550148', 'kate.williams.dev@yahoo.com', 'Computer Engineer at Oracle', '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'pP6HTrpGp7DTJv4wocq6BqinGolsn4pxOVmnxr15WEvlpDQjpAo0ZeHsNlhl', 0, 0, '60d833396b30f.png', '/store/929/15.jpg', NULL, '\"Short courses for busy managers\"\r\n\r\nHi there, my name is Kate Williams and I\'ve been managing projects and virtual teams for the past 10+ years.\r\n\r\nI\'m currently a Director at Cisco Systems,* where I lead Project and Program Management teams on delivering complex projects for Cisco\'s customers.\r\n\r\nPreviously, I was a manager at Ernst & Young, where I analyzed failing projects at Fortune 500 companies, and recommended solutions to fix them.  \r\n\r\nI was also a research assistant at Harvard University, where I studied issues related to virtual teams. \r\n\r\nI\'m an Amazon bestselling author of 4 books about team management (including \"Influencing Virtual Teams,\" \"Don\'t Reply All,\" \"Project Kickoff,\" and \"Effective Delegation of Authority\"), and I hold the PMP, CSM and ITIL certifications.\r\n\r\nMost managers don\'t have a lot of time to watch lengthy courses (that are usually full of fluff). So I focus on creating short courses that help busy managers become more effective leaders, without wasting their time.\r\n\r\nI have published courses about Writing Better Emails, Delegating Effectively, Leading Virtual Meetings, and Managing and Influencing Virtual Teams.', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, 10, 0, NULL, NULL, 0, NULL, 1605463391, NULL, 1622030241),
(930, 'Jade Harrison', 'user', 1, NULL, '+12025550130', 'jadeharrison@gmail.com', NULL, '$2y$10$NPgvpOF52CHJuSKbh9gG8.7IvjjFd0HklLy5elWySZ58m.9IHpM2K', NULL, NULL, 'Ci4PVF45uuqLCuaxz92kWYuFMnTyesfS5N9cMaGnCsTrkb6zQF5UL8suOFrk', 0, 0, '60dcec28a1c9a.png', '/store/930/2.jpg', NULL, NULL, NULL, 'active', 'EN', 0, 0, 'Qatar National Bank', 'QR55DHUC20040182698453785', '43225664525', '/store/930/passport.jpg', '/store/930/certificate.jpg', NULL, 0, NULL, NULL, 0, NULL, 1606325331, NULL, NULL),
(934, 'Linda Anderson', 'teacher', 4, 4, '+12025550143', 'Lindaanderson_92@gmail.com', 'IT Technician at IBM', '$2y$10$m.NTg5P372vNTY2PQlx/S.j9cswa9Fc9UKWJ608AmlaOkqdgRmyw6', NULL, NULL, NULL, 0, 1, '60dfe518250a1.png', '/store/934/2.jpg', NULL, 'I am a programmer with over 12 years\' experience gained in a range of industries, the last 16 with IBM.\r\n\r\nI am now self employed developing apps for Android; programming in a range of languages including Java, Javascript and Python; and helping the next generation of programmers gain the skills that I have acquired over the years.\r\n\r\nThe first program I sold controlled stock movement in a warehouse, and ran on a CP/M computer - both the program and operating system lived in the 64 kb (yes, kilobytes) that was all CP/M systems had in those days.\r\n\r\nI have gained experience in a wide range of industries including Utilities, Retail, Insurance and the Motor Manufacturing industry. My clients and employers have included Northumbrian Water, Arcadia, Royal Sun Alliance, Nissan and Jaguar Landrover. I also worked for Sunderland University for 3 years preparing and delivering training courses in computing.\r\n\r\nTimes have changed, the challenges are very different to what they were, but programming remains fun!\r\n\r\nWhen not at my computer, I am often riding my motorbike through the wonderful countryside of the UK and Europe.', 'OX7 3NH, England, Oxfordshire, Ascott-under-Wychwood', 'active', 'EN', 0, 0, 'Qatar National Bank', 'QR21BARC20038014587495', '276393394748', '/store/934/passport.jpg', '', NULL, 0, NULL, NULL, 0, NULL, 1612680476, NULL, NULL),
(979, 'Morgan Sullivan', 'user', 1, NULL, '+12025550162', 'morgansullivan@yahoo.com', NULL, '$2y$10$TB0nU6Wpg4W9NtIix/uPge6w8aovVEHuzTkoLYWLqykaBnXEkF96u', NULL, NULL, NULL, 0, 0, '60dceb1481136.png', '/store/979/5.jpg', NULL, NULL, NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1613807727, NULL, NULL),
(995, 'Cameron Schofield', 'user', 1, 867, '+12025550169', 'student@demo.com', NULL, '$2y$10$Hc4OzTkL3i5vmHXXvZvSfOsZDMD/XYwO4yS8UOtUIAFQcXYhIIJsa', NULL, NULL, '93QWohRUXQeJnsavwoZicE2kVAPOhUInMCYeblF3ogGmi7ZeaZZGkCZi0eSp', 1, 0, '60dce9eb4290c.png', '/store/995/7.jpg', NULL, NULL, NULL, 'active', 'EN', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1615538893, NULL, NULL),
(996, 'Robert B. Gray', 'user', 1, 867, '+12025550159', 'robert2002@gmail.com', 'bio', '$2y$10$PNK/Cn/SK/ut4rIsFeZhB.xehag15jXTD60lI8WDnEv8evtGn19my', NULL, NULL, 'iw1xNbFV2orSeJvaSeJVKCcOBCPcJNRGalESn6M1dVSflsJwM468L9iEEzr0', 0, 0, '60dce8f61cc17.png', '/store/996/11.jpg', NULL, 'about', NULL, 'active', 'EN', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1619885166, NULL, NULL),
(1014, 'George Hamilton', 'Author Role', 9, NULL, '6104254644', 'Robert@gmail.com', NULL, '$2y$10$UQtinAOPeFdgy81Mxd3z7uGdSz2gsQsh0A3osAkoOb7A6IpjnDH0a', NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, 'active', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1624692024, NULL, NULL),
(1015, 'Robert Ransdell', 'teacher', 4, 867, '+61491170156', 'instructor@demo.com', 'System Administrator at Amazon', '$2y$10$8.jgtS/cg8L6HfuuBgWnkeg49r0LiY7kofR6eiY9b.mx747i82n.u', NULL, NULL, '7KrUIh9cZsqQ0NJQaLhrNPcbzfkrtMsPOLwo5KeIREfNPnzWJa6qunNl2aKj', 1, 1, '60d8bfae5ccd2.png', '/store/1015/6.jpg', NULL, 'Robert started his career as a Unix and Linux System Engineer in 1999. Since that time he has utilized his Linux skills at companies such as Xerox, UPS, Hewlett-Packard, and Amazon.com. Additionally, he has acted as a technical consultant and independent contractor for small businesses and Fortune 500 companies.\r\n\r\nRobert has professional experience with CentOS, RedHat Enterprise Linux, SUSE Linux Enterprise Server, and Ubuntu. He has used several Linux distributions on personal projects including Debian, Slackware, CrunchBang, and others. In addition to Linux, Jason has experience supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.\r\n\r\nHe enjoys teaching others how to use and exploit the power of the Linux operating system. He is also the author of the books \"Linux for Beginners\" and \"Command Line Kung Fu.\"', 'Qatar ,Al Wakrah ,27904 Hilpert Knoll', 'active', 'EN', 0, 0, 'Qatar National Bank', 'QR55BDHC20040182623775', '6342781654', '/store/1015/passport.jpg', '/store/1015/certificate_validation.jpg', NULL, 0, NULL, NULL, 0, NULL, 1624817207, NULL, NULL),
(1016, 'Ricardo dave', 'teacher', 4, NULL, '+12025250175', 'Ricardodave09@hotmail.com', 'Data Analyst at Microsoft', '$2y$10$NA3UcrvzR9bOoHbFQa.Xbeb2KhRplWzdSLU72eRosUOLfhaMITiN.', NULL, NULL, NULL, 0, 1, '60d8c16265dfb.png', '/store/1016/7.jpg', NULL, 'Ricardo dave has a BS and MS in Mechanical Engineering from Santa Clara University and years of experience as a professional instructor and trainer for Data Science and programming. He has publications and patents in various fields such as microfluidics, materials science, and data science technologies. Over the course of his career he has developed a skill set in analyzing data and he hopes to use his experience in teaching and data science to help other people learn the power of programming the ability to analyze data, as well as present the data in clear and beautiful visualizations. Currently he works as the Head of Data Science for Pierian Data Inc. and provides in-person data science and python programming training courses to employees working at top companies, including General Electric, Cigna, The New York Times, Credit Suisse, McKinsey and many more. Feel free to contact him on LinkedIn for more information on in-person training sessions or group training sessions in Las Vegas, NV.', 'Luib, 72 Wern Ddu Lane', 'active', 'EN', 0, 0, 'JPMorgan', 'GB55BARC20040182633883', '456873063464', '/store/1016/passport.jpg', '', NULL, 0, NULL, NULL, 1, 'I am not available for 2 days due to a business trip', 1624817905, NULL, NULL),
(1019, 'momen alhamed', 'user', 1, NULL, NULL, 'abualhaj.designer@gmail.com', NULL, '$2y$10$W0pc7refhGFCAVAdhqYynuaDUFA4EgCAtaemdZj/9KWKWoV.pxSUq', NULL, NULL, 'KW0GYYsrLvCOB2RJSqgY5liAWRdywfkpkiGMi3fviriIcMEngpZXtHUPpQVR', 0, 0, NULL, NULL, NULL, NULL, NULL, 'active', 'AR', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, NULL, 1628457931, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE `users_badges` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `badge_id` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users_metas`
--

CREATE TABLE `users_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_metas`
--

INSERT INTO `users_metas` (`id`, `user_id`, `name`, `value`) VALUES
(21, 1016, 'education', 'BS in Mechanical Engineering from Santa Clara University'),
(22, 1016, 'education', 'MS in Mechanical Engineering from Santa Clara University'),
(23, 1016, 'experience', 'professional instructor and trainer for Data Science and programming'),
(24, 1016, 'experience', 'Head of Data Science for Pierian Data Inc'),
(25, 1015, 'experience', 'supporting proprietary Unix operating systems including AIX, HP-UX, and Solaris.'),
(26, 1015, 'experience', '10 years of experience working with Linux systems'),
(27, 1015, 'education', 'Red Hat Certified Engineer (RHCE)'),
(28, 1015, 'education', 'AWS Certified DevOps Engineer - Professional'),
(29, 1015, 'education', 'Linux Foundation Certified System Administrator'),
(30, 929, 'experience', 'Director at Cisco Systems 2015 - 2021'),
(31, 929, 'experience', 'research assistant at Harvard University 2010 - 2019'),
(32, 929, 'experience', 'Amazon bestselling author'),
(33, 923, 'experience', 'marketing strategies at Microlab 2010-2015'),
(34, 923, 'education', 'Associate of Business Administration from Imperial College London'),
(35, 923, 'education', 'Bachelor of International Business Economics from University of Cambridge'),
(36, 923, 'education', 'Master of Business Administration from King\'s College London'),
(37, 3, 'experience', 'Five-time TED speaker'),
(38, 3, 'education', 'Associate of Applied Business from Stanford University'),
(39, 3, 'education', 'Bachelor of Science in Business from Harvard University'),
(40, 3, 'education', 'Master of Computational Finance from University of Chicago'),
(41, 870, 'education', 'Associate in Physical Therapy from University of British Columbia'),
(42, 870, 'education', 'Bachelor of Arts in Psychology from Duke University'),
(43, 870, 'education', 'Master of Public Health from Cornell University'),
(44, 929, 'education', 'Associate of Applied Business from University of Leeds'),
(45, 929, 'education', 'Bachelor of Management and Organizational Studies from University of Sheffield'),
(46, 929, 'education', 'Master of Management from Durham University'),
(47, 934, 'education', 'Bachelor of Science in Information Technology from University of Glasgow'),
(48, 934, 'education', 'Master of Science in Information Systems (MSIS) from Delft University of Technology'),
(49, 934, 'experience', 'Web Developer at Uber 2015 - 2018'),
(50, 1015, 'education', 'Master of Science in Information Systems (MSIS) from University of Sydney');

-- --------------------------------------------------------

--
-- Table structure for table `users_occupations`
--

CREATE TABLE `users_occupations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users_occupations`
--

INSERT INTO `users_occupations` (`id`, `user_id`, `category_id`) VALUES
(1004, 1016, 520),
(1005, 1016, 606),
(1006, 1016, 607),
(1010, 1015, 609),
(1011, 1015, 606),
(1012, 1015, 607),
(1016, 867, 520),
(1017, 867, 525),
(1018, 867, 611),
(1019, 867, 606),
(1020, 867, 607),
(1021, 867, 608),
(1027, 929, 604),
(1028, 929, 525),
(1029, 929, 609),
(1030, 929, 610),
(1031, 929, 611),
(1032, 870, 523),
(1033, 870, 604),
(1034, 3, 602),
(1035, 3, 525),
(1036, 3, 609),
(1037, 3, 611),
(1038, 3, 606),
(1039, 934, 525),
(1040, 934, 606),
(1041, 934, 607),
(1042, 934, 608),
(1043, 923, 604),
(1044, 923, 609),
(1045, 923, 611),
(1046, 859, 520),
(1047, 859, 601),
(1048, 859, 604),
(1049, 859, 611),
(1050, 863, 601),
(1051, 863, 602),
(1052, 863, 603),
(1053, 863, 609),
(1054, 863, 611),
(1055, 864, 520),
(1056, 864, 601),
(1057, 864, 602),
(1058, 864, 603),
(1059, 868, 601),
(1060, 868, 602),
(1061, 868, 603),
(1062, 868, 523),
(1063, 868, 611),
(1064, 4, 520),
(1065, 4, 606),
(1066, 930, 520);

-- --------------------------------------------------------

--
-- Table structure for table `users_zoom_api`
--

CREATE TABLE `users_zoom_api` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jwt_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_zoom_api`
--

INSERT INTO `users_zoom_api` (`id`, `user_id`, `jwt_token`, `created_at`) VALUES
(3, 1015, 'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6IlJvSDREeURtU2lHQTNjMXhMejFoUWciLCJleHAiOjE3NjYyNTAwMDAsImlhdCI6MTYyNDk2NjMwM30.exdStLAnK4V4jIFd6CtLCX_4nvMYLpX1JqMj70If04s', 1624966312);

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `mobile` char(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified_at` int(10) UNSIGNED DEFAULT NULL,
  `expired_at` int(10) UNSIGNED DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `mobile`, `email`, `code`, `verified_at`, `expired_at`, `created_at`) VALUES
(57, 996, NULL, 'test@gmail.com', '52692', NULL, 1626247575, 1626243975),
(58, 995, NULL, 'student@demo.com', '30257', 1626246439, 1626246489, 1626246375),
(59, 1019, NULL, 'abualhaj.designer@gmail.com', '42466', NULL, 1628462069, 1628458469);

-- --------------------------------------------------------

--
-- Table structure for table `webinars`
--

CREATE TABLE `webinars` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `type` enum('webinar','course','text_lesson') COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` int(11) DEFAULT NULL,
  `duration` int(10) UNSIGNED DEFAULT NULL,
  `seo_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_demo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `partner_instructor` tinyint(1) DEFAULT 0,
  `subscribe` tinyint(1) DEFAULT 0,
  `message_for_reviewer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','pending','is_draft','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `deleted_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinars`
--

INSERT INTO `webinars` (`id`, `teacher_id`, `creator_id`, `category_id`, `type`, `private`, `title`, `slug`, `start_date`, `duration`, `seo_description`, `thumbnail`, `image_cover`, `video_demo`, `capacity`, `price`, `description`, `support`, `downloadable`, `partner_instructor`, `subscribe`, `message_for_reviewer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1995, 1016, 1016, 611, 'course', 0, 'Become a Product Manager', 'Become-a-Product-Manager', NULL, 150, 'The most complete course available on Product Management.', '/store/1016/1.jpg', '/store/1016/1_c.jpg', '/store/1016/Become A Product Manager.mp4', NULL, 0, '<p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">The <strong style=\"margin: 0px; padding: 0px;\">most updated </strong>and <strong style=\"margin: 0px; padding: 0px;\">complete</strong> Product Management course on Udemy! You\'ll learn the skills that make up the entire <strong style=\"margin: 0px; padding: 0px;\">Product Management </strong>job and process: from <strong style=\"margin: 0px; padding: 0px;\">ideation</strong> to <strong style=\"margin: 0px; padding: 0px;\">market research,</strong> to <strong style=\"margin: 0px; padding: 0px;\">UX wireframing</strong> to <strong style=\"margin: 0px; padding: 0px;\">prototyping</strong>, <strong style=\"margin: 0px; padding: 0px;\">technology</strong>, <strong style=\"margin: 0px; padding: 0px;\">metrics, </strong>and finally to <strong style=\"margin: 0px; padding: 0px;\">building the product</strong> with <strong style=\"margin: 0px; padding: 0px;\">user stories</strong>, <strong style=\"margin: 0px; padding: 0px;\">project management</strong>, <strong style=\"margin: 0px; padding: 0px;\">scoping</strong>, and <strong style=\"margin: 0px; padding: 0px;\">leadership</strong>. We even have <strong style=\"margin: 0px; padding: 0px;\">interviews with real life PMs</strong>, <strong style=\"margin: 0px; padding: 0px;\">Q&A sessions</strong> with students, and a comprehensive guide to <strong style=\"margin: 0px; padding: 0px;\">preparing and interviewing for a Product Management job</strong>. <br style=\"margin: 0px; padding: 0px;\"></p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">Right now, there are over <strong style=\"margin: 0px; padding: 0px;\">3,000+ job listings</strong> worldwide that are looking for Product Managers, that pay on average <strong style=\"margin: 0px; padding: 0px;\">$100,000 / year</strong>.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">The demand for Product Management is increasing at an insane rate. More and more companies are finally figuring out how important this discipline and this role is to their success. </p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">But how exactly do you get into the field? There aren\'t any degrees in Product Management & there are no certifications. Most Product Managers get into the field through luck or connections. That ends here - we\'ll get you up to date on ALL the skills you need to learn Product Management AND have the best chance at getting the job you want. There\'s no more ambiguity to it. We\'ll show you what you need to know and what you have to do - all taught from a Product Management insider.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\">Students aren\'t required to know anything beforehand - we\'ll teach you the fundamentals, how to apply them, how to develop into an advanced product manager, and finally how to maximize your chances to get a job as a Product Manager.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Your instructors:</strong></p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Cole Mercer</strong> has been a Senior Product Manager at Soundcloud, Bonobos, Mass Relevance, and has taught the Product Management course at General Assembly in Manhattan, NYC.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><strong style=\"margin: 0px; padding: 0px;\">Evan Kimbrell </strong>is a Top rated Udemy instructor with 11 courses on everything Entrepreneurship. His courses have over 35,000 students, 1,000+ 5 star reviews, and an average rating of 4.9 / 5.0.</p><p style=\"margin-top: 0.8rem; font-size: inherit; max-width: 118.4rem;\"><br style=\"margin: 0px; padding: 0px; color: rgb(60, 59, 55); font-family: \"sf pro text\", -apple-system, BlinkMacSystemFont, Roboto, \"segoe ui\", Helvetica, Arial, sans-serif, \"apple color emoji\", \"segoe ui emoji\", \"segoe ui symbol\"; font-size: 14px;\"></p>', 1, 1, 0, 0, NULL, 'active', 1624867858, 1625950395, NULL),
(1996, 1015, 1015, 606, 'webinar', 0, 'Learn Linux in 5 Days', 'Learn-Linux-in-5-Days', 1625859000, 450, 'Use the in-demand Linux skills you learn in this course to get promoted or start a new career as a Linux professional.', '/store/1015/hero (6).jpg', '/store/1015/6.jpg', '/store/1015/Learn Linux In 5 Days.mp4', 10, 0, '<p>If you want to learn how to use Linux and level up your career but are pressed for time, read on. Hello. My name is Jason Cannon and I\'m the author of Linux for Beginners as well as the founder of the Linux Training Academy. When I ask people to tell me what their biggest challenge is to learning Linux, they all say the same thing: Time.</p><p>That\'s why I\'ve created this course. Give me just 45 minutes a day for the next 5 days and I will teach you exactly what you need to know about the Linux operating system. You\'ll learn the most important concepts and commands, and I\'ll even guide you step-by-step through several practical and real-world examples.</p><p>So, if you can spare a few minutes a day and want to learn the ins-and-outs of the Linux Operating System, join me and the other students in this course today.</p><p>Free Bonus - How to Install WordPress on Your Very Own Linux System</p><p>As an added bonus for enrolling in the Learn Linux in 5 Days video training course, you\'ll receive a step-by-step checklist and video that teaches you how to install WordPress on an Ubuntu Linux system. First, you\'ll learn what software is required for WordPress to run on a Linux system. Next, you\'ll be given the exact commands to type that install all the required software and WordPress.</p><p>You\'ll learn how to install a web server, how to install a database server, how to create database users, and how to configure WordPress. Before you know it, you\'ll have a fully functioning blog on your hands. This is a great way to put your new-found Linux skills to good use. Totally optional, but very cool: If you want to host your blog on the internet on your very own installation of Linux, I\'ll show you were you can get hosting for just $5 a month.</p><p>____________________</p><p>Learn Linux in 5 Days doesn\'t make any assumptions about your background or knowledge of Linux. You need no prior knowledge to benefit from this course. You will be guided step by step using a logical and systematic approach. As new concepts, commands, or jargon are encountered they are explained in plain language, making it easy for anyone to understand. Here is what you will learn by taking Learn Linux in 5 Days:</p><p>•<span style=\"white-space:pre\">	</span>How to get access to a Linux server if you don\'t already.</p><p>•<span style=\"white-space:pre\">	</span>What a Linux distribution is and which one to choose.</p><p>•<span style=\"white-space:pre\">	</span>What software is needed to connect to Linux from Mac and Windows computers.</p><p>•<span style=\"white-space:pre\">	</span>What SSH is and how to use it.</p><p>•<span style=\"white-space:pre\">	</span>The file system layout of Linux systems and where to find programs, configurations, and documentation.</p><p>•<span style=\"white-space:pre\">	</span>The basic Linux commands you\'ll use most often.</p><p>•<span style=\"white-space:pre\">	</span>Creating, renaming, moving, and deleting directories.</p><p>•<span style=\"white-space:pre\">	</span>Listing, reading, creating, editing, copying, and deleting files.</p><p>•<span style=\"white-space:pre\">	</span>Exactly how permissions work and how to decipher the most cryptic Linux permissions with ease.</p><p>•<span style=\"white-space:pre\">	</span>How to use the nano, vi, and emacs editors.</p><p>•<span style=\"white-space:pre\">	</span>Two methods to search for files and directories.</p><p>•<span style=\"white-space:pre\">	</span>How to compare the contents of files.</p><p>•<span style=\"white-space:pre\">	</span>What pipes are, why they are useful, and how to use them.</p><p>•<span style=\"white-space:pre\">	</span>How to compress files to save space and make transferring data easy.</p><p>•<span style=\"white-space:pre\">	</span>How and why to redirect input and output from applications.</p><p>•<span style=\"white-space:pre\">	</span>How to customize your shell prompt.</p><p>•<span style=\"white-space:pre\">	</span>How to be efficient at the command line by using aliases, tab completion, and your shell history.</p><p>•<span style=\"white-space:pre\">	</span>How to schedule and automate jobs using cron.</p><p>•<span style=\"white-space:pre\">	</span>How to switch users and run processes as others.</p><p>•<span style=\"white-space:pre\">	</span>How to find and install software.</p><p>•<span style=\"white-space:pre\">	</span>Unconditional Udemy 30 day money-back guarantee - that\'s my personal promise of your success!</p><p>What you learn in Learn Linux in 5 Days applies to any Linux environment including Ubuntu, Debian, Kali Linux, Linux Mint, RedHat, Fedora, OpenSUSE, Slackware, and more.</p><div><br></div>', 1, 0, 0, 0, 'Can I add a new session to my class after it is published?', 'active', 1624943782, 1626246628, NULL),
(1999, 929, 929, 610, 'course', 0, 'How to Manage & Influence Your Virtual Team', 'How-to-Manage-Influence-Your-Virtual-Team', NULL, 90, 'Learn step-by-step tips that help you get things done with your virtual team by increasing trust and accountability', '/store/929/How to Manage & Influence Your Virtual Team.jpg', '/store/929/How to Manage & Influence Your Virtual Team_c.jpg.png', '/store/929/How To Manage & Influence Your Virtual Team.mkv', NULL, 50, '<p>If you manage a <b><font color=\"#636363\">virtual team</font></b> today, then you\'ll probably continue to do so for the rest of your career. </p><p>If you don\'t, then you probably will soon.</p><p>Learning how to manage people you don\'t see face-to-face is an important skill that you need regardless of what industry you\'re in. The coronavirus pandemic (COVID-19) has also accelerated the need for managing people who work from home, as telecommuting became the norm.</p><p>With \"How to Manage & Influence Your Virtual Team\" you will learn the psychological secrets of persuasion and communication that influence your virtual team members to do what you need them to do. </p><p>The course will also help you increase the level of trust and accountability among your team members while reducing the time you spend on frustrating meetings, useless technology tools, and back-and-forth emails. </p><p>At the end of each lecture in the course, you\'ll get specific, actionable steps that you can implement immediately. </p><p>In addition, you\'ll also get downloadable sample scripts and templates that you can simply copy & paste and use with your own virtual team. </p><p><br></p><p>The course contains the following sections: </p><ul><li>•<span style=\"white-space:pre\">	</span>The Psychology of Communication in Virtual Teams: Psychological strategies to effectively communicate with your team and reduce ambiguity and miscommunication</li><li>•<span style=\"white-space:pre\">	</span>Principles of Behavior Change: Four strategic principles that will change your team\'s behavior to get things done</li><li>•<span style=\"white-space:pre\">	</span>Tactics of Influence & Persuasion: Step-by-step tactics that influence your team members to do what you need them to do</li><li>•<span style=\"white-space:pre\">	</span>Managing Virtual Meetings Effectively: How to have fewer meetings while increasing their effectiveness at the same time</li><li>•<span style=\"white-space:pre\">	</span>Choosing and Evaluating the Right Technology: A simple framework to choose and evaluate the right technology tools to use with your virtual teams</li><li>•<span style=\"white-space:pre\">	</span>Building Trust in Virtual Environments: A methodical blueprint to increase the level of trust among your virtual team</li><li>•<span style=\"white-space:pre\">	</span>Killer Email and Phone Techniques: Powerful email and phone techniques that you can use to influence your virtual team members</li></ul><p><br></p><p>What is different about this course? </p><p>There are many courses on managing virtual teams. Here are three reasons why this one is different </p><p><br></p><p>Reason #1: Tactics, not just strategies </p><p>Most courses about virtual teams focus on high-level strategies and theories. </p><p>Very few actually give you the tactics that you need to implement those strategies. </p><p>In this course, I\'ll show you how to apply the management tactics to your own situation. You\'ll get step-by-step techniques and scripts that will save you a lot of time in managing your virtual team. </p><p>In other words, you will get answers to both those questions: </p><p>  -What do I need to do? </p><p>  -How do I do it? </p><p>Moreover, every video also has a “Summary of Actions\" slide at the end that summarizes the course lecture for you, and tells you exactly what you need to do as a next step. Basically, you\'ll learn everything about virtual team management in simple steps.</p><p><br></p><p>Reason #2: Proven Science-based Research </p><p>For the course, I did a ton of science-based research about powerful psychological and productivity studies in the areas of influence and management. </p><p>Some of the research references include studies from the Harvard Business School, Kelley School of  Business, and McKinsey Global Institute. </p><p>I also reference studies from international bestselling books such as “Influence: The Science of Persuasion,\" “Made to Stick,\" and “The Tipping Point,\" among others. </p><p>I\'ve tested the findings from those references myself and selected what works and what doesn\'t in virtual teams. </p><p>So you will get the absolute best of the best concepts that work for you and your team. </p><p><br></p><p>Reason #3: Practical insights that work (not just theory) </p><p>I\'ve been managing virtual teams for over 15 years, both as an entrepreneur and as a program manager. </p><p>In fact, I still work as a remote leader, and my full-time job is to manage virtual teams across the world to deliver highly complex projects (note: I work for Cisco Systems, but all views are my own and not those of Cisco). </p><p>Unlike most courses that are taught by professors who have studied this space from a purely theoretical view, you\'ll be getting a unique perspective on how to manage people remotely from someone who does this for a living. </p><p><br></p><p>In short, the course will help you: </p><p>•<span style=\"white-space:pre\">	</span>Communicate more effectively and build trust with your team</p><p>•<span style=\"white-space:pre\">	</span>Stop worrying about being caught up in pointless day-to-day details</p><p>•<span style=\"white-space:pre\">	</span>Save valuable time spent on useless meetings and back & forth emails</p><p>•<span style=\"white-space:pre\">	</span>Choose the right technology tools and techniques for effective team collaboration</p><p>•<span style=\"white-space:pre\">	</span>Influence  your team to be accountable for getting tasks accomplished</p><p><br></p><p>NOTE for Project Management Professional (PMP) certification holders </p><p>This course qualifies for 3 Professional Development Units (PDUs) under the Project Management Institute\'s (PMI\'s) \"Education\" requirement. After you\'re done with the course, you will get a \"Certificate of Completion\" from Udemy, which you can use as evidence for PMI. All 3 hours can be claimed under the \"Leadership\" category.</p><div><br></div>', 0, 1, 0, 1, 'I solved the problems you mentioned', 'active', 1625037906, 1625043319, NULL),
(2004, 929, 929, 602, 'course', 0, 'The Future of Energy', 'The-Future-of-Energy', NULL, 70, 'The Bigger Picture: The Probable Future of Energy', '/store/929/The Future of Energy.jpg', '/store/929/The Future of Energy_c.jpg', '/store/929/The Future of Energy.mkv', NULL, 60, '<p>This course is designed to start you on a new career path towards becoming an Energy Futurist or just out of interest. <b>Energy Futurists</b> earn huge amounts of money as advisors to government, businesses and in-house, using their skills to wisely invest in the future. You don\'t need to do the course on financials or on Micro-renewable energy but they will help you a little.</p><p><br></p><p>This course will solve you several problems in one go: you will know what is viable and what is not on a grander, strategic level, but you will also gain knowledge of many measurements and indicators that are not taught in physics, economics courses or in college or university. This will mean you can stand out from the crowd, with secret knowledge known only to a few Energy Futurists.</p><p><br></p><p>Do you have a curiosity about the future? Are you interested in shaping the future long into the second half of the 21st century?</p><p><br></p><p>If you are you might be ready to become and Energy Futurist? Energy Futurists are specialist that every business should have. They can earn a lot of money, but often the courses they go on never actually tell them what they need to know. They are confined by the need to calculate carbon emissions from their business; or sold an idea that there is nothing we can do about the future. This course however helps you to become a real Energy Futurist with potential of better earnings via writing and blogging about the future of energy.</p><p><br></p><p>This course will teach you the probably future of energy. We consider the evidence of resource depletion; potential solutions, challenges we face in implementing the solutions; and outline 3 possible energy economies, that will be mixed together to hopefully solve the loss of economically available fossil fuels.</p>', 1, 1, 0, 1, NULL, 'active', 1625685324, 1625692134, NULL),
(2005, 934, 4, 520, 'course', 0, 'Web Design for Beginners', 'Web-Design-for-Beginners', NULL, 105, 'Launch a career as a web designer by learning HTML5, CSS3, responsive design, Sass and more!', '/store/4/Web Design for Beginners.jpg', '/store/4/Web Design for Beginners_c.jpg', '/store/4/Web Designing for Beginners.mkv', NULL, 10, '<p>You can launch a new career in web development today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. I\'ve taught HTML and CSS to countless coworkers and held training sessions for fortune 100 companies. I am that teacher you can trust. </p><p><br></p><p>Don\'t limit yourself by creating websites with some cheesy “site-builder\" tool. This course teaches you how to take 100% control over your webpages by using the same concepts that every professional website is created with.</p><p><br></p><p>This course does not assume any prior experience. We start at square one and learn together bit by bit. By the end of the course you will have created (by hand) a website that looks great on phones, tablets, laptops, and desktops alike.</p><p><br></p><p>In the summer of 2020 the course has received a new section where we push our website live up onto the web using the free GitHub Pages service; this means you\'ll be able to share a link to what you\'ve created with your friends, family, colleagues and the world!</p>', 1, 0, 1, 1, 'thank you', 'active', 1625689958, 1625692139, NULL),
(2006, 923, 867, 604, 'course', 0, 'How to Travel Around the World', 'How-to-Travel-Around-the-World', NULL, 150, 'The Most Complete and Updated Travel Course! Get the Best Travel Tips to Plan your World Trip without breaking the bank!', '/store/867/How to Travel Around the World on a Budget.jpg', '/store/867/How to Travel Around the World on a Budget_c.jpg', '/store/867/How to Travel Around the World on a Budget.mkv', NULL, 25, '<p>Do you want to know how to travel on a budget? Do you think you don\'t have enough money to start your journey?</p><p><br></p><p>I\'m not a content creator making a travel course, I\'m a die-hard traveler, using my spare time this year to help and inspire others to set on a trip abroad. I genuinely want my course to let students realize their dreams.</p><p><br></p><p>In this Course I will teach you everything you need to know to plan your round-the-world trip. You\'ll learn how to stay safe and healthy during your travels while being able to reduce your expenses concerning accommodation, food, transportation and activities.</p><p><br></p><p>After following this course, I can guarantee you will be able to travel the world on anywhere between 1 and 50$ a day, depending on how adventurous you are!</p><p><br></p><p>This course is suitable for any traveler, no matter how much you have traveled before. You\'ll learn tips and ideas I guarantee you have never seen before anywhere else!</p><p><br></p><p>Ready to get started?</p><p><br></p><p>Enroll Now and get immediate access to all the features of this course and my personal feedback.</p><p><br></p><p>I\'ll see you in the course,</p>', 1, 1, 0, 1, 'I edited the text of the course. Thank', 'active', 1625693895, 1625694594, NULL),
(2007, 1015, 867, 604, 'course', 1, 'Travel Management Course', 'Travel-Management-Course', NULL, 60, '#1 Travel Management Course in the Industry .All you need to know to step into the Travel & Tourism Sector.', '/store/867/Travel Management Course.jpg', '/store/867/Travel Management Course_c.jpg', '/store/867/How to Travel Around the World on a Budget.mkv', NULL, 0, '<p><b>COURSE DESCRIPTION</b></p><p><br></p><p>The course content is uniquely customized in a way to give each student who participates in this course the best skill orientation and the basic knowledge required to enter the travel and tourism industry. The course is detailed in a way to give the student the best including the skills required.</p><p><br></p><p>Subjects like Basic elements of Travel Geography, World Time ( GMT, International Date Line, Elapsed Time ) and Maps are introduced in e-learning. Also, a look into the documents required like the Passport, Visas and Insurance are also discussed. Departure and Arrival Formalities, Basic Planning of a Holiday are taught. The importance of the technology (CRS) with an introduction to Fares/ E-tickets are also being introduced.</p><p><br></p><p>Two skill-based courses are also included.</p><p><br></p><p>By learning this course you can step into and be a part of the tourism industry which not only generates revenues for a country and cultural wealth, but it is also one of the most important economic engines for growth and development.</p><p><br></p><p><b>Career options :</b></p><p><br></p><p>“Students have endless career opportunities in the fastest growing industry of travel and tourism”.Few of the career options are working in travel agencies, Customer Ground Handling (customer service) at international or domestic airports, tour operator, event manager, ticketing officer, an adventure tourism expert, transport officer, holiday consultant, logistics, cruises, airlines, hotels, and tourism departments in government and private sectors.</p><p><br></p><p><b>Payment:</b></p><p><br></p><p>Salary is pretty good in the travel and tourism industry. Moreover, you get added perks such as free travel or reduced rates for you and your family. Salaries are higher in foreign-based airlines or travel agencies. Peak seasons might bring added bonuses and commission.</p><p><br></p><p><b>CERTIFICATION</b></p><p><br></p><p>Issued and attested by a professional trainer of over 33 years of experience in the travel and tourism industry.</p>', 1, 1, 0, 0, NULL, 'active', 1626207424, 1626234749, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_filter_option`
--

CREATE TABLE `webinar_filter_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `filter_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_filter_option`
--

INSERT INTO `webinar_filter_option` (`id`, `webinar_id`, `filter_option_id`) VALUES
(11369, 2004, 9122),
(11370, 2004, 9166),
(11371, 2004, 9240),
(11372, 2005, 9114),
(11373, 2005, 9156),
(11374, 2005, 9231),
(11379, 2006, 9130),
(11380, 2006, 9181),
(11390, 1995, 9146),
(11391, 1995, 9212),
(11392, 1995, 9275),
(11393, 1995, 9277),
(11404, 2007, 9130),
(11405, 2007, 9181);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_partner_teacher`
--

CREATE TABLE `webinar_partner_teacher` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_partner_teacher`
--

INSERT INTO `webinar_partner_teacher` (`id`, `webinar_id`, `teacher_id`) VALUES
(72, 2005, 1016);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reports`
--

CREATE TABLE `webinar_reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_reports`
--

INSERT INTO `webinar_reports` (`id`, `user_id`, `webinar_id`, `reason`, `message`, `created_at`) VALUES
(4, 995, 1995, 'Against Rules', 'Course files are not complete', 1626239965);

-- --------------------------------------------------------

--
-- Table structure for table `webinar_reviews`
--

CREATE TABLE `webinar_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `webinar_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `content_quality` int(10) UNSIGNED NOT NULL,
  `instructor_skills` int(10) UNSIGNED NOT NULL,
  `purchase_worth` int(10) UNSIGNED NOT NULL,
  `support_quality` int(10) UNSIGNED NOT NULL,
  `rates` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','active') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webinar_reviews`
--

INSERT INTO `webinar_reviews` (`id`, `webinar_id`, `creator_id`, `content_quality`, `instructor_skills`, `purchase_worth`, `support_quality`, `rates`, `description`, `created_at`, `status`) VALUES
(20, 2006, 996, 5, 5, 5, 5, '5', 'This course is full of traveling information. I\'m so thankful for new tips that I didn\'t hear before. Thanks:)', 1626214531, 'active'),
(23, 1996, 996, 4, 4, 4, 4, '4', 'It\'s a nice course for who is new in Linux distribution. You may take this course for Basic Linux Literacy. Thanks to honourable instructor', 1626214731, 'active'),
(24, 1995, 996, 5, 5, 5, 5, '5', 'Very clear and entertaining course, made me feel prepared to take the next step in my journey to become a product manager! 10/10 would totally recomend.', 1626214849, 'active'),
(25, 2005, 995, 5, 4, 4, 4, '4.25', 'Has some previous experience. But wanted to further develop this knowledge and chose to do it thoroughly. So this course definitely feels right to me.', 1626232945, 'active'),
(26, 2004, 995, 2, 2, 3, 3, '2.5', 'Didn\'t have the expert deliver the information. Heavily political bashing. Full disaster and scare rather than being leveled and focused on the science.', 1626233054, 'active'),
(28, 1995, 995, 3, 4, 4, 4, '3.75', 'The course is completely worth. The instructors gave practical instances and interviewed two successful PMs. In short it taught me all the necessities. The resource PDF is treasure.', 1626233313, 'active'),
(29, 1999, 995, 4, 4, 4, 3, '3.75', 'Good Course, It has good tips and information, it is important to apply these on your day-to-day to make sure that you get the best of it. Liked the summary slides.', 1626233413, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting`
--
ALTER TABLE `accounting`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `accounting_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `accounting_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `accounting_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  ADD KEY `accounting_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `badges_type_index` (`type`) USING BTREE;

--
-- Indexes for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `become_instructors_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `blog_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cart_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `cart_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `cart_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `cart_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `cart_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `cart_promotion_id_foreign` (`promotion_id`) USING BTREE,
  ADD KEY `cart_special_offer_id_foreign` (`special_offer_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`) USING BTREE;

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `certificates_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `certificates_quiz_result_id_foreign` (`quiz_result_id`) USING BTREE,
  ADD KEY `certificates_student_id_foreign` (`student_id`) USING BTREE;

--
-- Indexes for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `comments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `comments_review_id_foreign` (`review_id`) USING BTREE,
  ADD KEY `comments_reply_id_foreign` (`reply_id`) USING BTREE;

--
-- Indexes for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `comments_reports_comment_id_foreign` (`comment_id`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_learning_user_id_foreign` (`user_id`),
  ADD KEY `course_learning_text_lesson_id_foreign` (`text_lesson_id`),
  ADD KEY `course_learning_file_id_foreign` (`file_id`),
  ADD KEY `course_learning_session_id_foreign` (`session_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `discounts_code_unique` (`code`),
  ADD KEY `discounts_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `discount_users_discount_id_foreign` (`discount_id`) USING BTREE,
  ADD KEY `discount_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `faqs_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `faqs_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `favorites_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `favorites_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `feature_webinars_webinar_id_index` (`webinar_id`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `files_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `files_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filters_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `filter_options_filter_id_foreign` (`filter_id`) USING BTREE;

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `follows_follower_foreign` (`follower`) USING BTREE,
  ADD KEY `follows_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groups_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `group_users`
--
ALTER TABLE `group_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `group_users_group_id_foreign` (`group_id`) USING BTREE,
  ADD KEY `group_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meetings_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `meeting_times_meeting_id_foreign` (`meeting_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_organ_id_foreign` (`organ_id`),
  ADD KEY `noticeboards_user_id_foreign` (`user_id`);

--
-- Indexes for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noticeboards_status_noticeboard_id_foreign` (`noticeboard_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `notifications_group_id_foreign` (`group_id`) USING BTREE;

--
-- Indexes for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_status_notification_id_foreign` (`notification_id`) USING BTREE;

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `offline_payments_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `order_items_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `order_items_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `order_items_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `order_items_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `order_items_reserve_meeting_id_foreign` (`reserve_meeting_id`) USING BTREE,
  ADD KEY `order_items_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `order_items_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_link_unique` (`link`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `payment_channels`
--
ALTER TABLE `payment_channels`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `payouts_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `payu_transactions_transaction_id_unique` (`transaction_id`) USING BTREE,
  ADD KEY `payu_transactions_status_index` (`status`) USING BTREE,
  ADD KEY `payu_transactions_verified_at_index` (`verified_at`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permissions_role_id_index` (`role_id`) USING BTREE,
  ADD KEY `permissions_section_id_index` (`section_id`) USING BTREE;

--
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `prerequisites_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `purchases_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `purchases_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `quizzes_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_questions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_question_id_foreign` (`question_id`) USING BTREE,
  ADD KEY `quizzes_questions_answers_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quizzes_results_quiz_id_foreign` (`quiz_id`) USING BTREE,
  ADD KEY `quizzes_results_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `rating_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `rating_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `rating_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `reserve_meetings_meeting_time_id_foreign` (`meeting_time_id`) USING BTREE,
  ADD KEY `reserve_meetings_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `reserve_meetings_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sales_order_id_foreign` (`order_id`) USING BTREE,
  ADD KEY `sales_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sales_meeting_id_foreign` (`meeting_id`) USING BTREE,
  ADD KEY `sales_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `sales_buyer_id_foreign` (`buyer_id`) USING BTREE,
  ADD KEY `sales_seller_id_foreign` (`seller_id`) USING BTREE,
  ADD KEY `sales_promotion_id_foreign` (`promotion_id`) USING BTREE;

--
-- Indexes for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_status_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sessions_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `sessions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_reminds_session_id_foreign` (`session_id`),
  ADD KEY `session_reminds_user_id_foreign` (`user_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `special_offers_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `special_offers_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `subscribe_uses_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `subscribe_uses_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `subscribe_uses_subscribe_id_foreign` (`subscribe_id`) USING BTREE,
  ADD KEY `subscribe_uses_sale_id_foreign` (`sale_id`) USING BTREE;

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `supports_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `supports_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `supports_department_id_foreign` (`department_id`) USING BTREE;

--
-- Indexes for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `support_conversations_support_id_foreign` (`support_id`) USING BTREE,
  ADD KEY `support_conversations_sender_id_foreign` (`sender_id`) USING BTREE,
  ADD KEY `support_conversations_supporter_id_foreign` (`supporter_id`) USING BTREE;

--
-- Indexes for table `support_departments`
--
ALTER TABLE `support_departments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tags_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_creator_id_foreign` (`creator_id`) USING BTREE,
  ADD KEY `text_lessons_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `text_lessons_attachments_text_lesson_id_foreign` (`text_lesson_id`) USING BTREE,
  ADD KEY `text_lessons_attachments_file_id_foreign` (`file_id`) USING BTREE;

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `tickets_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `tickets_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_users_ticket_id_foreign` (`ticket_id`) USING BTREE,
  ADD KEY `ticket_users_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `trend_categories_category_id_index` (`category_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE;

--
-- Indexes for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_badges_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_badges_badge_id_foreign` (`badge_id`) USING BTREE;

--
-- Indexes for table `users_metas`
--
ALTER TABLE `users_metas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `users_occupations_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `users_occupations_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_zoom_api_user_id_foreign` (`user_id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `verifications_user_id_foreign` (`user_id`) USING BTREE;

--
-- Indexes for table `webinars`
--
ALTER TABLE `webinars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `webinars_slug_unique` (`slug`) USING BTREE,
  ADD KEY `webinars_teacher_id_foreign` (`teacher_id`) USING BTREE,
  ADD KEY `webinars_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `webinars_slug_index` (`slug`) USING BTREE,
  ADD KEY `webinars_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_filter_option_filter_option_id_foreign` (`filter_option_id`) USING BTREE,
  ADD KEY `webinar_filter_option_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_partner_teacher_teacher_id_foreign` (`teacher_id`) USING BTREE;

--
-- Indexes for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reports_webinar_id_foreign` (`webinar_id`) USING BTREE;

--
-- Indexes for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `webinar_reviews_webinar_id_foreign` (`webinar_id`) USING BTREE,
  ADD KEY `webinar_reviews_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting`
--
ALTER TABLE `accounting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;

--
-- AUTO_INCREMENT for table `advertising_banners`
--
ALTER TABLE `advertising_banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `become_instructors`
--
ALTER TABLE `become_instructors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `certificates_templates`
--
ALTER TABLE `certificates_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `comments_reports`
--
ALTER TABLE `comments_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course_learning`
--
ALTER TABLE `course_learning`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `discount_users`
--
ALTER TABLE `discount_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1848;

--
-- AUTO_INCREMENT for table `filter_options`
--
ALTER TABLE `filter_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9293;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `group_users`
--
ALTER TABLE `group_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `meeting_times`
--
ALTER TABLE `meeting_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `noticeboards`
--
ALTER TABLE `noticeboards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1625;

--
-- AUTO_INCREMENT for table `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_channels`
--
ALTER TABLE `payment_channels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payu_transactions`
--
ALTER TABLE `payu_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5602;

--
-- AUTO_INCREMENT for table `prerequisites`
--
ALTER TABLE `prerequisites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `sales_log`
--
ALTER TABLE `sales_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1653;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `session_reminds`
--
ALTER TABLE `session_reminds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `special_offers`
--
ALTER TABLE `special_offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `supports`
--
ALTER TABLE `supports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `support_conversations`
--
ALTER TABLE `support_conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `support_departments`
--
ALTER TABLE `support_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6414;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `text_lessons`
--
ALTER TABLE `text_lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ticket_users`
--
ALTER TABLE `ticket_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trend_categories`
--
ALTER TABLE `trend_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT for table `users_badges`
--
ALTER TABLE `users_badges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users_metas`
--
ALTER TABLE `users_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users_occupations`
--
ALTER TABLE `users_occupations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1067;

--
-- AUTO_INCREMENT for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `webinars`
--
ALTER TABLE `webinars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2008;

--
-- AUTO_INCREMENT for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11417;

--
-- AUTO_INCREMENT for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounting`
--
ALTER TABLE `accounting`
  ADD CONSTRAINT `accounting_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounting_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounting_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounting_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `become_instructors`
--
ALTER TABLE `become_instructors`
  ADD CONSTRAINT `become_instructors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_special_offer_id_foreign` FOREIGN KEY (`special_offer_id`) REFERENCES `special_offers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_quiz_result_id_foreign` FOREIGN KEY (`quiz_result_id`) REFERENCES `quizzes_results` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_reply_id_foreign` FOREIGN KEY (`reply_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `webinar_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments_reports`
--
ALTER TABLE `comments_reports`
  ADD CONSTRAINT `comments_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_learning`
--
ALTER TABLE `course_learning`
  ADD CONSTRAINT `course_learning_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_learning_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discounts`
--
ALTER TABLE `discounts`
  ADD CONSTRAINT `discounts_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discount_users`
--
ALTER TABLE `discount_users`
  ADD CONSTRAINT `discount_users_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faqs_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feature_webinars`
--
ALTER TABLE `feature_webinars`
  ADD CONSTRAINT `feature_webinars_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filters`
--
ALTER TABLE `filters`
  ADD CONSTRAINT `filters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `filter_options`
--
ALTER TABLE `filter_options`
  ADD CONSTRAINT `filter_options_filter_id_foreign` FOREIGN KEY (`filter_id`) REFERENCES `filters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_follower_foreign` FOREIGN KEY (`follower`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_users`
--
ALTER TABLE `group_users`
  ADD CONSTRAINT `group_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_times`
--
ALTER TABLE `meeting_times`
  ADD CONSTRAINT `meeting_times_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards`
--
ALTER TABLE `noticeboards`
  ADD CONSTRAINT `noticeboards_organ_id_foreign` FOREIGN KEY (`organ_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `noticeboards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noticeboards_status`
--
ALTER TABLE `noticeboards_status`
  ADD CONSTRAINT `noticeboards_status_noticeboard_id_foreign` FOREIGN KEY (`noticeboard_id`) REFERENCES `noticeboards` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD CONSTRAINT `notifications_status_notification_id_foreign` FOREIGN KEY (`notification_id`) REFERENCES `notifications` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD CONSTRAINT `offline_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_reserve_meeting_id_foreign` FOREIGN KEY (`reserve_meeting_id`) REFERENCES `reserve_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payouts`
--
ALTER TABLE `payouts`
  ADD CONSTRAINT `payouts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permissions_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `prerequisites_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions`
--
ALTER TABLE `quizzes_questions`
  ADD CONSTRAINT `quizzes_questions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_questions_answers`
--
ALTER TABLE `quizzes_questions_answers`
  ADD CONSTRAINT `quizzes_questions_answers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_questions_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `quizzes_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes_results`
--
ALTER TABLE `quizzes_results`
  ADD CONSTRAINT `quizzes_results_quiz_id_foreign` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `quizzes_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rating_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reserve_meetings`
--
ALTER TABLE `reserve_meetings`
  ADD CONSTRAINT `reserve_meetings_meeting_time_id_foreign` FOREIGN KEY (`meeting_time_id`) REFERENCES `meeting_times` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reserve_meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_log`
--
ALTER TABLE `sales_log`
  ADD CONSTRAINT `sales_status_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sessions_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `session_reminds`
--
ALTER TABLE `session_reminds`
  ADD CONSTRAINT `session_reminds_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_reminds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `special_offers`
--
ALTER TABLE `special_offers`
  ADD CONSTRAINT `special_offers_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `special_offers_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscribe_uses`
--
ALTER TABLE `subscribe_uses`
  ADD CONSTRAINT `subscribe_uses_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_subscribe_id_foreign` FOREIGN KEY (`subscribe_id`) REFERENCES `subscribes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscribe_uses_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
  ADD CONSTRAINT `supports_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `support_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `supports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_conversations`
--
ALTER TABLE `support_conversations`
  ADD CONSTRAINT `support_conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_conversations_support_id_foreign` FOREIGN KEY (`support_id`) REFERENCES `supports` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons`
--
ALTER TABLE `text_lessons`
  ADD CONSTRAINT `text_lessons_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `text_lessons_attachments`
--
ALTER TABLE `text_lessons_attachments`
  ADD CONSTRAINT `text_lessons_attachments_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `text_lessons_attachments_text_lesson_id_foreign` FOREIGN KEY (`text_lesson_id`) REFERENCES `text_lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_users`
--
ALTER TABLE `ticket_users`
  ADD CONSTRAINT `ticket_users_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trend_categories`
--
ALTER TABLE `trend_categories`
  ADD CONSTRAINT `trend_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_badges`
--
ALTER TABLE `users_badges`
  ADD CONSTRAINT `users_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_occupations`
--
ALTER TABLE `users_occupations`
  ADD CONSTRAINT `users_occupations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_occupations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_zoom_api`
--
ALTER TABLE `users_zoom_api`
  ADD CONSTRAINT `users_zoom_api_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verifications`
--
ALTER TABLE `verifications`
  ADD CONSTRAINT `verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinars`
--
ALTER TABLE `webinars`
  ADD CONSTRAINT `webinars_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinars_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_filter_option`
--
ALTER TABLE `webinar_filter_option`
  ADD CONSTRAINT `webinar_filter_option_filter_option_id_foreign` FOREIGN KEY (`filter_option_id`) REFERENCES `filter_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_filter_option_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_partner_teacher`
--
ALTER TABLE `webinar_partner_teacher`
  ADD CONSTRAINT `webinar_partner_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_partner_teacher_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reports`
--
ALTER TABLE `webinar_reports`
  ADD CONSTRAINT `webinar_reports_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `webinar_reviews`
--
ALTER TABLE `webinar_reviews`
  ADD CONSTRAINT `webinar_reviews_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `webinar_reviews_webinar_id_foreign` FOREIGN KEY (`webinar_id`) REFERENCES `webinars` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
