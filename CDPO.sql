-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 16 2023 г., 13:45
-- Версия сервера: 10.7.5-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `CDPO`
--

-- --------------------------------------------------------

--
-- Структура таблицы `general_education_programs`
--

CREATE TABLE `general_education_programs` (
  `Id_Programs` int(11) NOT NULL,
  `Name_Programs` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img_Programs` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_Programs` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `general_education_programs`
--

INSERT INTO `general_education_programs` (`Id_Programs`, `Name_Programs`, `Img_Programs`, `Description_Programs`) VALUES
(1, 'dfgdfgdfg', 'dfgfdggdfg', 'dfgdfgdfg');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `Id_teachers` int(11) NOT NULL,
  `Name_teachers` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Surname_teachers` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Patronimyc_teachers` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Object_teachers` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `general_education_programs`
--
ALTER TABLE `general_education_programs`
  ADD PRIMARY KEY (`Id_Programs`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`Id_teachers`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `general_education_programs`
--
ALTER TABLE `general_education_programs`
  MODIFY `Id_Programs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `Id_teachers` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
