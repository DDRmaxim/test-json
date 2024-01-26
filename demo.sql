-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 26 2024 г., 12:39
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ROOMS`
--

CREATE TABLE `ROOMS` (
  `ID_ROOMS` int(11) NOT NULL,
  `ROOMS_SHORT` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROOMS_FULL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ROOMS_COUNT` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ROOMS`
--

INSERT INTO `ROOMS` (`ID_ROOMS`, `ROOMS_SHORT`, `ROOMS_FULL`, `ROOMS_COUNT`) VALUES
(1, '1-комн.', '1-комнатная квартира', 1),
(2, '2-комн.', '2-комнатная квартира', 2),
(3, '3-комн.', '3-комнатная квартира', 3),
(4, '4+ комн.', '4+ комнатная квартира', 4),
(5, 'Студия', 'Квартира-студия', 0),
(6, 'Пентхаус', 'Пентхаус', 9),
(7, 'Кладовая', 'Кладовая', 5),
(9, 'Апартаменты', 'Апартаменты', 8),
(12, 'Квартира', 'Квартира', 2),
(13, 'Гостиничный номер', 'Гостиничный номер', 1),
(14, 'Коттедж', 'Коттедж', 5),
(15, 'Коммерция', 'Коммерческая недвижимость', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ROOMS`
--
ALTER TABLE `ROOMS`
  ADD PRIMARY KEY (`ID_ROOMS`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ROOMS`
--
ALTER TABLE `ROOMS`
  MODIFY `ID_ROOMS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
