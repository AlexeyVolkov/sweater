-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 01:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sweater`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`user_id`, `following_user_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_29_133804_create_tweets_table', 1),
(5, '2020_06_01_111030_create_follows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'Dolorum sunt sit asperiores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(2, 2, 'Et odio molestiae totam alias consequatur.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(3, 2, 'Et porro nemo sed.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(4, 2, 'Corporis quis suscipit qui illum illo molestiae ut.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(5, 2, 'Amet asperiores sint qui itaque quam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(6, 2, 'Quia officia modi in rerum voluptate est.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(7, 2, 'Asperiores impedit qui expedita occaecati.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(8, 2, 'Illum eveniet nulla iusto laboriosam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(9, 2, 'Dolorem perspiciatis excepturi odio praesentium sit explicabo.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(10, 2, 'Accusamus earum sequi veniam odio eum ab.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(11, 3, 'Nihil rem distinctio saepe.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(12, 3, 'Excepturi velit voluptatem nesciunt unde et.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(13, 3, 'Vitae earum omnis quia amet tempore dolorem corporis.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(14, 3, 'Expedita error dolore rerum consequatur a repellat.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(15, 3, 'Similique expedita dolore placeat.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(16, 3, 'Ut consequatur laboriosam illum voluptatibus aliquid facilis nostrum.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(17, 3, 'Consequatur eos laboriosam tempora dolor et aliquam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(18, 3, 'Voluptatem eveniet sit quia fugit fugit sint non magni.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(19, 3, 'Fuga quidem autem omnis suscipit consequatur et dicta.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(20, 3, 'Numquam autem deserunt sint excepturi magni.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(21, 4, 'Id et est et et.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(22, 4, 'Perferendis et voluptas excepturi cum ratione enim sunt.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(23, 4, 'Architecto aut id nobis nihil.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(24, 4, 'Exercitationem excepturi ut natus sapiente.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(25, 4, 'Necessitatibus repellat quo voluptates dolores incidunt aliquam quas esse.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(26, 4, 'Rerum quaerat cumque architecto aperiam non consequatur.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(27, 4, 'Maxime quo hic eius.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(28, 4, 'Dolor quis praesentium animi ducimus eum excepturi.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(29, 4, 'Voluptatem accusantium iusto iusto quis consequuntur recusandae perferendis enim.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(30, 4, 'Quidem et et adipisci quis dolor.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(31, 5, 'Optio iste doloremque hic ut aperiam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(32, 5, 'Quod animi eligendi hic illum accusamus doloremque quaerat.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(33, 5, 'Omnis voluptatem nam perferendis consequatur.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(34, 5, 'Mollitia voluptas sit esse sapiente.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(35, 5, 'Ut eaque non nihil dolores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(36, 5, 'Est facilis et enim voluptate.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(37, 5, 'Voluptas id at rerum quod tenetur.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(38, 5, 'Officia id sit tempore provident.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(39, 5, 'Veniam enim voluptas autem nobis.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(40, 5, 'Officia alias quia veritatis sed sed.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(41, 6, 'Sed impedit et accusamus unde voluptatem magni.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(42, 6, 'Non beatae natus facilis reiciendis ut.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(43, 6, 'Maiores quis quidem ratione architecto suscipit.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(44, 6, 'Expedita ut unde velit omnis officia omnis aut quibusdam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(45, 6, 'Repellendus voluptas et fuga aut rerum.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(46, 6, 'Laborum molestiae sed beatae ducimus reiciendis deserunt.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(47, 6, 'Et quidem ex voluptates assumenda.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(48, 6, 'Necessitatibus aliquid non ea iusto veritatis aliquid incidunt.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(49, 6, 'Nulla et aut et assumenda.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(50, 6, 'Sit sed placeat non.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(51, 7, 'Accusamus numquam iste omnis.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(52, 7, 'Ut aspernatur iste et maiores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(53, 7, 'Qui eum voluptatem tempore laudantium ea.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(54, 7, 'Et consequatur et aut voluptatem corrupti possimus.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(55, 7, 'Modi culpa repellat tempore omnis non placeat quis amet.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(56, 7, 'Sunt aut at tenetur officia enim hic aut.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(57, 7, 'Quibusdam autem officia est possimus eum dolores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(58, 7, 'Placeat sit error quisquam eligendi laboriosam aliquam qui dolores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(59, 7, 'Rerum aliquid veritatis laboriosam nihil eum velit.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(60, 7, 'Magnam ipsum tempore perferendis et velit rerum repellat voluptas.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(61, 8, 'Omnis nesciunt voluptatibus voluptas ex quod nihil.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(62, 8, 'Aut incidunt omnis sunt beatae.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(63, 8, 'Accusamus aliquid nihil debitis magni sint.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(64, 8, 'Cum voluptates molestiae quis sed quasi cupiditate unde.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(65, 8, 'Alias ex alias in quasi.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(66, 8, 'Error hic sed quisquam mollitia aut.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(67, 8, 'Soluta velit suscipit enim illo molestiae assumenda.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(68, 8, 'Esse commodi et necessitatibus commodi.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(69, 8, 'Illum aut omnis voluptatem error quia quisquam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(70, 8, 'Aspernatur totam veniam rem voluptas eaque nostrum.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(71, 9, 'Nesciunt nostrum atque accusamus tenetur.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(72, 9, 'Id laborum quos numquam ea.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(73, 9, 'Nisi sed ut qui explicabo.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(74, 9, 'Et velit error molestiae.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(75, 9, 'Et omnis beatae error natus ut sunt asperiores.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(76, 9, 'Vel quod qui consequatur repellat quibusdam.', '2020-06-11 09:14:22', '2020-06-11 09:14:22'),
(77, 9, 'Ab quaerat quis deleniti et et voluptatum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(78, 9, 'Vitae quisquam illo consequatur consequatur est dolores.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(79, 9, 'Quia dolorem hic voluptatem cupiditate.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(80, 9, 'Quis expedita perspiciatis adipisci ut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(81, 10, 'Voluptas architecto autem ut aut ab vitae id.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(82, 10, 'Cupiditate pariatur minus beatae ut fuga sint error quaerat.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(83, 10, 'Fugit eum maxime officia animi laborum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(84, 10, 'Molestiae voluptas id modi assumenda dolore et.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(85, 10, 'Et quia ea pariatur dolor veritatis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(86, 10, 'Eos quod quas rerum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(87, 10, 'Repellat officiis atque sed ut illum laborum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(88, 10, 'Qui et repellendus atque facere sint rerum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(89, 10, 'Eaque sunt veniam libero alias reprehenderit.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(90, 10, 'Quia numquam vitae qui et repellendus vero.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(91, 11, 'Inventore cum aperiam aut minus non est quae ipsam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(92, 11, 'Corporis voluptas omnis eligendi voluptatum rerum tempora.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(93, 11, 'Amet laudantium et praesentium omnis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(94, 11, 'Facere error vero dolores rem odit ab.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(95, 11, 'Unde consequatur eos et libero ipsa qui.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(96, 11, 'Asperiores dolor velit voluptate aut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(97, 11, 'Labore ut beatae reiciendis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(98, 11, 'Sit cupiditate dolor qui commodi deleniti fuga.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(99, 11, 'Ut nulla repudiandae sequi quas.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(100, 11, 'Dolorem in dolor velit tempora blanditiis ducimus quasi ut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(101, 12, 'Id beatae commodi nisi provident voluptatibus et nesciunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(102, 12, 'Officia ut qui numquam distinctio.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(103, 12, 'Et odit magnam ratione et et et omnis officiis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(104, 12, 'Explicabo quia dolorem et eius velit dolores sit.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(105, 12, 'Quae numquam iure at commodi eligendi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(106, 12, 'Voluptatem aspernatur consectetur eum itaque sed.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(107, 12, 'Molestias autem magnam fuga.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(108, 12, 'Tempore ut iste atque odio tenetur distinctio.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(109, 12, 'Et nihil non debitis ducimus at aperiam corporis tempora.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(110, 12, 'Est sequi accusantium ullam quis voluptas autem quibusdam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(111, 13, 'Vero aperiam occaecati dolore nihil.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(112, 13, 'Earum voluptates qui aperiam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(113, 13, 'Corporis dolores adipisci totam dolore aliquid amet.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(114, 13, 'Velit non tempore saepe a.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(115, 13, 'Et fugiat et voluptates ullam tenetur.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(116, 13, 'Non sed veniam rem aut reprehenderit magnam rerum magni.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(117, 13, 'Assumenda aut porro omnis ut non id ad eum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(118, 13, 'Error possimus numquam et consequatur dolores sed.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(119, 13, 'Sint a quo nam nemo.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(120, 13, 'Porro tempora eius illum ut velit vel.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(121, 14, 'Magnam impedit qui quia qui quibusdam odit quod.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(122, 14, 'Provident sunt aliquid ex quas.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(123, 14, 'Sint numquam ut officia quam veritatis laudantium molestias.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(124, 14, 'Iste maiores amet corporis corporis possimus aliquam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(125, 14, 'Voluptatem est eum in rerum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(126, 14, 'Praesentium doloremque odio aut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(127, 14, 'Quibusdam in cum minus reprehenderit laborum dolores fuga.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(128, 14, 'Voluptas deserunt cum dolores velit facere cumque delectus cupiditate.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(129, 14, 'Officiis deserunt voluptatum minima qui qui id.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(130, 14, 'Eos aut est qui enim mollitia non cumque minus.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(131, 15, 'Impedit molestiae quam quidem.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(132, 15, 'Praesentium omnis doloribus quo illum mollitia.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(133, 15, 'Quia sint vitae voluptas nisi magni enim eos.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(134, 15, 'Ab ut qui laboriosam iure et expedita incidunt numquam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(135, 15, 'Iste mollitia dolorum quisquam magni dolores est.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(136, 15, 'Facilis rerum autem velit nisi facilis repudiandae voluptas.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(137, 15, 'Autem omnis ut ut repudiandae.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(138, 15, 'Inventore et aut quo.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(139, 15, 'Reiciendis rerum velit unde aliquid sint.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(140, 15, 'Illum porro tempora tempore et incidunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(141, 16, 'Exercitationem fuga dolorum saepe laudantium aut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(142, 16, 'Enim laudantium totam nihil omnis et expedita.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(143, 16, 'Est dignissimos voluptas impedit aut recusandae vero.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(144, 16, 'Ratione dolor et corporis dolore soluta.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(145, 16, 'Iusto non nulla ut quia laboriosam consequatur.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(146, 16, 'Dignissimos accusantium voluptatem voluptatibus.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(147, 16, 'Quia non velit consequatur quos voluptatem voluptatem cumque.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(148, 16, 'Et est sequi aspernatur eaque voluptas.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(149, 16, 'Et sint ipsam consequatur blanditiis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(150, 16, 'Nulla dolor enim voluptatem voluptate sit omnis provident eligendi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(151, 17, 'Corporis in est laudantium ut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(152, 17, 'Praesentium aliquid quis cumque aut dolorem ducimus ipsum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(153, 17, 'Non molestias laudantium nobis rerum inventore voluptatem officia.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(154, 17, 'Voluptatem eos ut non eaque ut dicta fuga nihil.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(155, 17, 'Ducimus adipisci asperiores doloribus officiis culpa quaerat fugit.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(156, 17, 'Quidem mollitia voluptatem quam aut ipsa sint.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(157, 17, 'Laudantium voluptas officia ratione aut consequuntur.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(158, 17, 'Laudantium sed sunt aut illum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(159, 17, 'Omnis nihil adipisci consequatur quibusdam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(160, 17, 'Ut placeat odio totam laborum consequatur animi porro.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(161, 18, 'Esse at incidunt ex aut voluptatibus qui quisquam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(162, 18, 'Magni a unde sit at ipsum consequatur rerum.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(163, 18, 'Est doloribus repudiandae nostrum in nulla.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(164, 18, 'Velit iure iste dolor rerum alias.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(165, 18, 'Accusantium rerum sapiente molestias repudiandae quo inventore dolor.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(166, 18, 'Eveniet quasi explicabo eaque non sed.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(167, 18, 'Eius esse ut qui aspernatur non.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(168, 18, 'Nobis laboriosam ipsam neque error voluptatem.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(169, 18, 'Qui eaque blanditiis dignissimos adipisci eius eius.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(170, 18, 'Illo dolores consequatur nostrum qui id qui sunt voluptatem.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(171, 19, 'Dolorem laborum repellendus non et tempora aut est.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(172, 19, 'Consequatur reprehenderit autem maxime beatae quasi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(173, 19, 'Esse in illum quisquam fuga ratione voluptatem magni nesciunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(174, 19, 'Quidem aspernatur asperiores autem voluptates quia pariatur.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(175, 19, 'Nihil voluptas unde harum laboriosam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(176, 19, 'Nulla assumenda tempore cupiditate dolor.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(177, 19, 'Deserunt sed qui ullam error ex sequi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(178, 19, 'Et quaerat optio atque eveniet aspernatur.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(179, 19, 'Ex quisquam consequatur et commodi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(180, 19, 'Dolorem est nam est.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(181, 20, 'Eum illum nihil qui voluptas consequatur facere at.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(182, 20, 'Voluptatem ea enim consequuntur odit.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(183, 20, 'Voluptatem autem nulla eum provident deserunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(184, 20, 'Recusandae et alias nihil ab et.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(185, 20, 'Repellendus dolores perspiciatis ipsa nihil sapiente eos est adipisci.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(186, 20, 'Saepe id non et aut necessitatibus voluptates id.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(187, 20, 'Quidem repellat tenetur provident error magnam.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(188, 20, 'Voluptatem sint qui quibusdam quibusdam odit sapiente.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(189, 20, 'Aliquid aliquid sunt repudiandae ut pariatur facere.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(190, 20, 'Non quas doloribus ipsam dolor recusandae eos.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(191, 21, 'Suscipit nisi reiciendis expedita illo.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(192, 21, 'Expedita iure quo autem blanditiis sed deserunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(193, 21, 'Inventore aut modi accusamus voluptatem id sequi perspiciatis.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(194, 21, 'Quia placeat vel et aspernatur excepturi neque ut.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(195, 21, 'Molestiae qui iure eveniet cum distinctio.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(196, 21, 'Ab voluptatem eligendi velit sed.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(197, 21, 'Est rem neque quia quam iste sunt.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(198, 21, 'Rerum qui magni nostrum delectus tempora dolor enim sit.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(199, 21, 'Aut consequuntur fuga molestiae vitae enim.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(200, 21, 'Doloremque nam aut ut sapiente commodi.', '2020-06-11 09:14:23', '2020-06-11 09:14:23'),
(201, 1, 'safasfasf', '2020-06-11 09:15:49', '2020-06-11 09:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `background`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'спортСпортович', 'Спорт Спортович', 'backgrounds/OCTHwouPu5WuWNKl5CjR0h1EXSEZzAOcnrBx6DKd.png', 'admin@asd.sd', NULL, '$2y$10$Ae//nMVsNTed.e/aJChTL.QfnXyV6wqGQOnVpyaYpgs9LNw142mn2', 'HBh0pb1rhWlWSPVnm7qUsjXtbcs2UAHD25hiU4OrQWXM7uAsm1bTz8jbYzSx', '2020-06-11 08:36:17', '2020-06-11 08:40:40'),
(2, 'bernier.kiarra', 'Prof. Myron Bosco MD', NULL, 'caleb.dach@example.com', '2020-06-11 08:43:09', '$2y$10$OCF09n/XKoB5ufnNcll2S.hDyCkPdxMvS.VvGTd6WdiAblf/pr7eC', 'ld0QvpDrwh', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(3, 'baumbach.heber', 'Kyra Huel', NULL, 'ooconner@example.net', '2020-06-11 08:43:09', '$2y$10$QthoQ6Su8a9Iseer3tN4tOGtqjp20Zcnq.7/y0BkvG0BBcD9ipj2q', 'KhSZwCAvbu', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(4, 'ckilback', 'Van Pfeffer PhD', NULL, 'destini.johnson@example.com', '2020-06-11 08:43:09', '$2y$10$syOxf7mzWpDka72Ommkx5uK6IQpUV7PSd8/lB9j.tKJiCJPPx79pK', 'g29BcgN7GX', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(5, 'hhand', 'Liliana Mann', NULL, 'yadira.tillman@example.net', '2020-06-11 08:43:10', '$2y$10$AKSh4GXCW.oeqwFtT0I.SuHDGhdC3sC.Ge16wObAN7KXsZE.uG7/y', 'OmIC7Y46B5', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(6, 'devon.hamill', 'Sadie Crona', NULL, 'koelpin.al@example.com', '2020-06-11 08:43:10', '$2y$10$tlycThOXU.RzyetQq0wqruIFCw0PGYHodSN.JZaUkFir93ltrHxpe', 'bwRCyxtAeV', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(7, 'ehegmann', 'Molly Pagac', NULL, 'schuyler.beatty@example.net', '2020-06-11 08:43:10', '$2y$10$BWoDudkbNrqsFuZyHdzhmOHFn8jjuigAUmHi5NyqA08xJ8SX3TdWW', 'rSZcVkrQf7', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(8, 'coreilly', 'Joaquin Wintheiser', NULL, 'jada47@example.net', '2020-06-11 08:43:10', '$2y$10$3yJQSH9mfkpHQcFVWtQer.wMMKFQ2/p1EqcBY5BIWq9p3HJZAb4HS', 'X67EvObQGF', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(9, 'fabiola43', 'Greta Von', NULL, 'mekhi.ohara@example.org', '2020-06-11 08:43:10', '$2y$10$30i5JD7N.F9M7IgTswKz2e/FHBpTv3raYg73yP6uphCo/ksrdmplS', 'Mh5dexvOrm', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(10, 'eino.moen', 'Muriel Schroeder', NULL, 'uosinski@example.org', '2020-06-11 08:43:10', '$2y$10$a2A3y7njEg0/pLumZVQrIezAREm7T/aq6XKf54Bmr66LhiFdO/sFu', 'PT2He3SnVu', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(11, 'hmedhurst', 'Dr. Selina Lesch', NULL, 'rosina.corwin@example.net', '2020-06-11 08:43:10', '$2y$10$NVFZDnQ84T4SbRlQPs2LX.2M19.qRxZer4AKBYf4hi2HdcUm3tI7i', 'Mb9JVYbtEg', '2020-06-11 08:43:10', '2020-06-11 08:43:10'),
(12, 'benny.hettinger', 'Sophie Cummerata', NULL, 'tbogisich@example.net', '2020-06-11 08:43:14', '$2y$10$.k9JySVaAzbUJCDglsTeiOajPDe83i0dQEnMRnlTqwoYFqhjYM4ba', 'e5m1BLPOJW', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(13, 'farrell.delphia', 'Jamarcus Schowalter', NULL, 'bartoletti.emilie@example.net', '2020-06-11 08:43:14', '$2y$10$wqmHsPL6l5Aq..1vjj85E.nkGRK1TfsphhdLX2BPBOBPnqnVdr026', 'r8SpK9nQ6Z', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(14, 'beulah88', 'Prof. Cyril Hane', NULL, 'enitzsche@example.org', '2020-06-11 08:43:14', '$2y$10$lcxrkhv9fhC.DDQAFckCk.L7GQWpUqNxzs5iP6cKv3i1E2YGoXoyO', 'quPiGO1RES', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(15, 'schimmel.holly', 'Anjali Spencer', NULL, 'habshire@example.org', '2020-06-11 08:43:14', '$2y$10$O3qtEnXNPYUhYPfkhKWRZuV1USECwm46929dFdcJynTWhmL9IhCBm', 'edWUpW8ZXZ', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(16, 'erwin80', 'Ashlee O\'Conner', NULL, 'gus53@example.org', '2020-06-11 08:43:14', '$2y$10$gjZa4CCghxcROyDPd.7qGulZZPh.Lf46WJf7DMcTZnOC0k0ZVeoja', 'His9RB8ckz', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(17, 'alana08', 'Kris Dach', NULL, 'bahringer.milan@example.com', '2020-06-11 08:43:14', '$2y$10$0bhTxWGV.Lwh09ML8fVpEOcKfnmWL1BcsP5guSoZjxjN6Bm/jZyyO', 'avowtn2RyH', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(18, 'lee29', 'Harold Satterfield III', NULL, 'marvin.rosemary@example.org', '2020-06-11 08:43:14', '$2y$10$1DEk0.DR4HlEdIoTBK3h6OiZISH6k/GMKYarEdJqoLyE9c3acUaD6', 'xrgu62FVCH', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(19, 'renner.abner', 'Sarah Waelchi', NULL, 'lilliana.hayes@example.net', '2020-06-11 08:43:14', '$2y$10$onzKePJfKJ.AI15cPlCO..olTPBFKiehsM2Nj38ygJzHDgDL9a9Va', '3yyByxZpN2', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(20, 'lina.tremblay', 'Lessie Brekke', NULL, 'garland44@example.com', '2020-06-11 08:43:14', '$2y$10$OFMSDu9cXnNVU7wQiT0aOOGltRLv2QrpdO26v8Ir7scvgO3qrAtse', 'YeaGncTBR5', '2020-06-11 08:43:14', '2020-06-11 08:43:14'),
(21, 'kspencer', 'Pearl Carter MD', NULL, 'ncormier@example.com', '2020-06-11 08:43:14', '$2y$10$jzU86MOh.psjD6gaLw7NUukpRG0tKBJsBldbwsOOO8kAsLni4pzjS', 'uxsyXax9UC', '2020-06-11 08:43:14', '2020-06-11 08:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
