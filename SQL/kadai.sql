-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 12 月 02 日 05:36
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `order_users`
--

CREATE TABLE `order_users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created_time` date NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `order_users`
--

INSERT INTO `order_users` (`id`, `name`, `email`, `password`, `created_time`, `update_time`) VALUES
(1, '永村奨平', 'shohei.nagamura@gmail.com', 'nagamura7641', '2022-12-01', '2022-12-01 20:49:36'),
(2, '永村義美', 'test@gmail.com', 'test7641', '2022-12-01', '2022-12-01 20:53:29'),
(3, 'テスト1', 'hoge@gmail.com', 'hoge1234', '2022-12-01', '2022-12-01 21:27:02'),
(4, 'test2', 'hoge2@gamil', 'fuga5', '2022-12-01', '2022-12-01 21:27:50');

-- --------------------------------------------------------

--
-- テーブルの構造 `seller_users`
--

CREATE TABLE `seller_users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `business_name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `career` varchar(500) DEFAULT NULL,
  `pr` varchar(500) DEFAULT NULL,
  `image` mediumblob DEFAULT NULL,
  `created_time` date NOT NULL,
  `update_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `seller_users`
--

INSERT INTO `seller_users` (`id`, `name`, `email`, `password`, `business_name`, `address`, `career`, `pr`, `image`, `created_time`, `update_time`) VALUES
(1, 'teppei', 'tetu@gmail.com', 'test1234', NULL, NULL, NULL, NULL, NULL, '2022-12-01', '2022-12-01 21:28:42'),
(2, 'ホリちゃん', 'hori@gmail.com', 'hori1234', NULL, NULL, NULL, NULL, NULL, '2022-12-01', '2022-12-01 22:37:58'),
(3, 'テスト3', 'test3@gmail.com', 'teset31234', NULL, NULL, NULL, NULL, NULL, '2022-12-02', '2022-12-02 01:51:00'),
(4, 'test4', 'test4@gmail.com', 'test1234', NULL, NULL, NULL, NULL, NULL, '2022-12-02', '2022-12-02 02:21:31'),
(5, 'テスト５', 'test5@gmail.com', 'test51234', NULL, NULL, NULL, NULL, NULL, '2022-12-02', '2022-12-02 02:25:34');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `order_users`
--
ALTER TABLE `order_users`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `seller_users`
--
ALTER TABLE `seller_users`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `order_users`
--
ALTER TABLE `order_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `seller_users`
--
ALTER TABLE `seller_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
