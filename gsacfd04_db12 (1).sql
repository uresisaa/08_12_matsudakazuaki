-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 17 日 04:51
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_db12`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `indate`) VALUES
(10, 'nissa', 'https://www.amazon.co.jp/%E3%82%B7%E3%83%A3%E3%83%BC%E3%83%9E%E3%83%B3%E3%82%AD%E3%83%B3%E3%82%B0-%E5%AE%8C%E5%85%A8%E7%89%88-1-%E3%82%B8%E3%83%A3%E3%83%B3%E3%83%97%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9/dp/4088742036', 'aaaaaaa', '2019-10-12 18:22:55'),
(11, 'シャーマンキング', 'https://www.fukuinkan.co.jp/book/?id=62', 'dwd', '2019-10-12 18:23:57'),
(12, 'マツダ', 'https://www.fukuinkan.co.jp/book/?id=62', 'aaa', '2019-10-13 13:34:45'),
(13, 'マツダ', 'https://www.wanichan.com/web/resources/tips/popup.htm', 'jojojoj', '2019-10-13 13:54:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(2, 'aiueo', 'kakikuko', 'sasisuseso', 0, 0),
(3, 'マツダ', 'fef', 'ささ', 1, 1),
(4, 'マツダ', 'fef', 'ささ', 0, 0),
(5, '松田一晃', 'fef', 'ささ', 1, 1),
(6, '松田一晃', 'aa', 'ss', 0, 0),
(7, '松田一晃', 'aa', 'ささ', 1, 1);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
