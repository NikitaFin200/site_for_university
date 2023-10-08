-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 28 2023 г., 11:59
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

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
-- Структура таблицы `category_program`
--

CREATE TABLE `category_program` (
  `Id_category_program` int NOT NULL,
  `Name_category_program` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `category_program`
--

INSERT INTO `category_program` (`Id_category_program`, `Name_category_program`) VALUES
(1, 'general education programs'),
(2, 'advanced training program\r\n'),
(3, 'professional training'),
(4, 'program internship program');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `News_id` int NOT NULL,
  `News_header` varchar(70) NOT NULL,
  `News_mini_text` varchar(200) NOT NULL,
  `News_text` varchar(1000) NOT NULL,
  `News_img` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`News_id`, `News_header`, `News_mini_text`, `News_text`, `News_img`) VALUES
(1, 'Первый', 'аппапапа', 'апапапаппа', 'апапаапаппа'),
(2, 'Заголовок', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', ''),
(3, 'Заголовок', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', ''),
(4, 'Заголовок', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', ''),
(5, 'Заголовок', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', 'ТексттексттексттексттексттексттексттексттексттексттексттекстТексттексттексттексттексттексттексттексттексттексттексттекст', '');

-- --------------------------------------------------------

--
-- Структура таблицы `programs`
--

CREATE TABLE `programs` (
  `Id_Programs` int NOT NULL,
  `Name_Programs` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img_Programs` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_Programs` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `programs`
--

INSERT INTO `programs` (`Id_Programs`, `Name_Programs`, `Img_Programs`, `Description_Programs`, `target`) VALUES
(1, 'Первая программа', '', 'текст текст текст текст текст текст текст текст текст текст текст', 1),
(2, 'Вторая программа', '', 'текст текст текст текст текст текст текст текст текст текст текст', 2),
(3, 'Третья программа', '', 'текст текст текст текст текст текст текст текст текст текст текст', 3),
(4, 'Четвертая программа', '', 'текст текст текст текст текст текст текст текст текст текст текст', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `target`
--

CREATE TABLE `target` (
  `Id_target` int NOT NULL,
  `Name_target` varchar(200) NOT NULL,
  `Id_category_program` int NOT NULL,
  `text_target` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `target`
--

INSERT INTO `target` (`Id_target`, `Name_target`, `Id_category_program`, `text_target`) VALUES
(1, 'Подготовительные курсы', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(2, 'Подготовка к ОГЭ', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(3, 'Подготовка к ЕГЭ', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(4, 'Подготовка к олимпиадам\r\n', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(5, 'Подготовка к внутренним испытаниям СГУВТ', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(6, 'Общеразвивающие программы', 1, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(7, 'повыш квалиф', 2, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(8, 'проф под', 3, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис'),
(9, 'стаж', 4, 'ОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОписаниеОпис');

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

CREATE TABLE `teacher` (
  `Id_Teacher` int NOT NULL,
  `FIO` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Object` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`Id_Teacher`, `FIO`, `Img`, `Object`) VALUES
(1, 'Иванов Иван Иванович', 'teacher_1.png', 'математика'),
(2, 'Иванов Иван Иванович', 'teacher_1.png', 'русский'),
(3, 'Иванов Иван Иванович', 'teacher_1.png', 'англиский'),
(4, 'Иванов Иван Иванович', 'teacher_1.png', 'физика'),
(5, 'Иванов Иван Иванович', 'teacher_1.png', 'биология');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category_program`
--
ALTER TABLE `category_program`
  ADD PRIMARY KEY (`Id_category_program`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`News_id`);

--
-- Индексы таблицы `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`Id_Programs`);

--
-- Индексы таблицы `target`
--
ALTER TABLE `target`
  ADD PRIMARY KEY (`Id_target`);

--
-- Индексы таблицы `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Id_Teacher`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category_program`
--
ALTER TABLE `category_program`
  MODIFY `Id_category_program` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `News_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `programs`
--
ALTER TABLE `programs`
  MODIFY `Id_Programs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `target`
--
ALTER TABLE `target`
  MODIFY `Id_target` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Id_Teacher` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
