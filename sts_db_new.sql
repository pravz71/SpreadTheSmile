-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2018 at 02:54 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'stsdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"consignments\",\"contributors\",\"ngos\",\"orders\",\"pickup\",\"requests\",\"security_question\",\"users\",\"volunteers\"],\"table_structure[]\":[\"consignments\",\"contributors\",\"ngos\",\"orders\",\"pickup\",\"requests\",\"security_question\",\"users\",\"volunteers\"],\"table_data[]\":[\"consignments\",\"contributors\",\"ngos\",\"orders\",\"pickup\",\"requests\",\"security_question\",\"users\",\"volunteers\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'sts_db', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"phpmyadmin\",\"sts_db\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sts_db', 'pickup', '[]', '2018-04-28 05:20:04');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-04-28 12:52:52', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sts_db`
--
CREATE DATABASE IF NOT EXISTS `sts_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sts_db`;

-- --------------------------------------------------------

--
-- Table structure for table `consignments`
--

CREATE TABLE `consignments` (
  `id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ngo_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignments`
--

INSERT INTO `consignments` (`id`, `item`, `quantity`, `ngo_id`, `order_id`) VALUES
(1, 'Clothes(S)', 5, 2, 1),
(2, 'Clothes(L)', 6, 1, 1),
(3, 'Utensils', 1, 3, 1),
(4, 'Stationeries', 8, 0, 1),
(5, 'Clothes(S)', 1, 2, 2),
(6, 'Clothes(L)', 25, 2, 2),
(7, 'Clothes(S)', 10, 3, 3),
(8, 'Clothes(L)', 10, 2, 3),
(9, 'Clothes(S)', 10, 2, 4),
(10, 'Clothes(S)', 10, 1, 5),
(11, 'Clothes(S)', 10, 1, 6),
(12, 'Clothes(S)', 10, 1, 7),
(13, 'Clothes(S)', 10, 2, 8),
(14, 'Clothes(S)', 10, 2, 9),
(15, 'Clothes(S)', 10, 0, 10),
(16, 'Clothes(S)', 10, 1, 11),
(17, 'Clothes(L)', 10, 1, 11),
(18, 'Clothes(S)', 10, 1, 12),
(19, 'Clothes(S)', 4, 1, 13),
(20, 'Clothes(L)', 10, 2, 13),
(21, 'Utensils', 3, 0, 13),
(22, 'Clothes(S)', 10, 1, 14),
(23, 'Clothes(S)', 10, 1, 15),
(24, 'Clothes(S)', 10, 4, 16),
(25, 'Clothes(S)', 10, 8, 17),
(26, 'Clothes(L)', 10, 8, 17),
(27, 'Utensils', 10, 8, 17),
(28, 'Stationeries', 15, 1, 17),
(29, 'Blankets', 15, 8, 17),
(30, 'Clothes(S)', 1, 8, 18),
(31, 'Clothes(L)', 12, 5, 18),
(32, 'Clothes(S)', 1, 8, 19),
(33, 'Clothes(L)', 12, 5, 19),
(34, 'Clothes(S)', 1, 8, 20),
(35, 'Clothes(L)', 12, 5, 20),
(36, 'Clothes(S)', 1, 8, 21),
(37, 'Clothes(L)', 12, 5, 21),
(38, 'Clothes(S)', 1, 8, 22),
(39, 'Clothes(L)', 12, 5, 22),
(40, 'Clothes(S)', 1, 8, 23),
(41, 'Clothes(L)', 12, 5, 23),
(42, 'Clothes(S)', 1, 8, 24),
(43, 'Clothes(L)', 12, 5, 24),
(44, 'Clothes(S)', 10, 8, 25),
(45, 'Clothes(L)', 10, 5, 25),
(46, 'Clothes(S)', 10, 0, 26),
(47, 'Clothes(L)', 10, 0, 26),
(48, 'Utensils', 10, 0, 26),
(49, 'Stationeries', 10, 0, 26),
(50, 'Blankets', 10, 0, 26),
(51, 'Others', 10, 0, 26),
(52, 'Clothes(S)', 1, 5, 27),
(53, 'Clothes(L)', 10, 6, 27),
(54, 'Utensils', 10, 100, 27),
(55, 'Stationeries', 10, 2, 27),
(56, 'Blankets', 10, 8, 27),
(57, 'Others', 10, 1, 27),
(58, 'Clothes(S)', 12, 100, 30),
(59, 'Clothes(L)', 10, 5, 30),
(60, 'Utensils', 11, 5, 30),
(61, 'Blankets', 20, 8, 30),
(62, 'Clothes(S)', 12, 100, 31),
(63, 'Clothes(L)', 10, 5, 31),
(64, 'Utensils', 11, 5, 31),
(65, 'Blankets', 20, 8, 31),
(66, 'Clothes(S)', 12, 100, 32),
(67, 'Clothes(L)', 10, 5, 32),
(68, 'Utensils', 11, 5, 32),
(69, 'Blankets', 20, 8, 32),
(70, 'Clothes(S)', 12, 100, 33),
(71, 'Clothes(L)', 10, 5, 33),
(72, 'Utensils', 11, 5, 33),
(73, 'Blankets', 20, 8, 33),
(74, 'Clothes(S)', 12, 100, 34),
(75, 'Clothes(L)', 10, 5, 34),
(76, 'Utensils', 11, 5, 34),
(77, 'Blankets', 20, 8, 34);

-- --------------------------------------------------------

--
-- Table structure for table `contributors`
--

CREATE TABLE `contributors` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` int(11) NOT NULL,
  `sanswer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contributors`
--

INSERT INTO `contributors` (`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`) VALUES
(1, 'sandy@gmail.com', 'Sandeep Kumar', 2147483647, '2010-12-01', '123456', 1, '1234'),
(2, 'pravingupta11@gmail.com', 'Pravin Gupta', 2147483647, '2010-12-31', '123456', 1, 'hjgh'),
(3, 'sandyji@gmail.com', 'Sandeep Kumar', 2147483647, '2010-12-06', '123456', 1, 'cat'),
(4, 'sandy12@gmail.com', 'Sandeep Kumar', 2147483647, '2010-11-28', '123456', 1, '123');

-- --------------------------------------------------------

--
-- Table structure for table `ngos`
--

CREATE TABLE `ngos` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `district` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `squestion` int(10) NOT NULL,
  `sanswer` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngos`
--

INSERT INTO `ngos` (`id`, `username`, `name`, `mobile`, `district`, `password`, `squestion`, `sanswer`, `address`) VALUES
(1, 'contact@sts.org', 'Warehouse', 2455555, 'North 24 Parganas', '123456', 1, 'tom', 'D-31, Vaishno Devi Abasan, Samarpally, 700102 '),
(2, 'xyz@abc.com', 'XYZ', 2147483647, 'Darj', '123456', 1, '123', '123'),
(3, 'abcd@gmail.com', 'ABC', 2147483647, '24 Parganas', '123456', 1, '123', '123'),
(4, 'abcde@gmail.com', 'DEF', 2147483647, '24 Parganas', '123456', 1, '123456', '123456'),
(5, 'cod@g.com', 'CRY', 2147483647, '24 Parganas', '123456', 1, '123', '123'),
(6, 'dry@gmail.com', 'DRY', 2147483647, 'Dj', '123456', 1, '123', 'cloud'),
(7, 'fry@gmail.com', 'FRY', 2147483647, 'kolkata', '123456', 1, 'Tommy', 'Indrapuri Sipara,Behind Bapudham Motihari,Landmark-Tilaiya,Post-Rimbick,Paakur'),
(8, 'mohan@cheatfund.com', 'MOHAN_CHEATFUND', 2147483647, 'Kolkata', '123456', 1, 'Tommy', 'Salt lake');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `isPicked` varchar(4) NOT NULL,
  `isDelivered` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `contributor_id`, `volunteer_id`, `order_date`, `isPicked`, `isDelivered`) VALUES
(1, 2, 1, '2018-04-23', 'YES', 'Y'),
(2, 3, NULL, '2018-04-23', 'NO', 'NO'),
(3, 1, NULL, '2018-04-24', 'NO', 'NO'),
(4, 1, NULL, '2018-04-24', 'NO', 'NO'),
(5, 1, NULL, '2018-04-24', 'NO', 'NO'),
(6, 1, NULL, '2018-04-24', 'NO', 'NO'),
(7, 1, NULL, '2018-04-24', 'NO', 'NO'),
(8, 1, NULL, '2018-04-24', 'NO', 'NO'),
(9, 1, 1, '2018-04-24', 'YES', 'Y'),
(10, 1, 1, '2018-04-24', 'YES', 'Y'),
(11, 1, NULL, '2018-04-24', 'NO', 'NO'),
(12, 1, NULL, '2018-04-24', 'NO', 'NO'),
(13, 1, NULL, '2018-04-24', 'NO', 'NO'),
(14, 1, NULL, '2018-04-24', 'NO', 'NO'),
(15, 1, NULL, '2018-04-24', 'NO', 'NO'),
(16, 0, NULL, '2018-04-25', 'NO', 'NO'),
(17, 1, NULL, '2018-04-26', 'NO', 'NO'),
(18, 1, NULL, '2018-04-26', 'NO', 'NO'),
(19, 1, NULL, '2018-04-26', 'NO', 'NO'),
(20, 1, NULL, '2018-04-26', 'NO', 'NO'),
(21, 1, NULL, '2018-04-26', 'NO', 'NO'),
(22, 1, NULL, '2018-04-26', 'NO', 'NO'),
(23, 1, NULL, '2018-04-26', 'NO', 'NO'),
(24, 1, NULL, '2018-04-26', 'NO', 'NO'),
(25, 1, NULL, '2018-04-26', 'NO', 'NO'),
(26, 1, 1, '2018-04-26', 'YES', 'Y'),
(27, 1, 1, '2018-04-26', 'NO', 'NO'),
(28, 1, NULL, '2018-04-26', 'NO', 'NO'),
(29, 1, NULL, '2018-04-26', 'NO', 'NO'),
(30, 1, NULL, '2018-04-26', 'NO', 'NO'),
(31, 1, NULL, '2018-04-26', 'NO', 'NO'),
(32, 1, NULL, '2018-04-26', 'NO', 'NO'),
(33, 1, NULL, '2018-04-26', 'NO', 'NO'),
(34, 1, NULL, '2018-04-26', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `pickup`
--

CREATE TABLE `pickup` (
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickup`
--

INSERT INTO `pickup` (`order_id`, `name`, `phone`, `pincode`, `flat`, `street`, `pickup_date`, `pickup_time`) VALUES
(1, 'Pravin Gupta', 9876543210, 700102, 'BC-127', 'Samarpally krishnapur', '2018-04-12', '1 PM - 3 PM'),
(7, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-25', '7 AM - 9 AM'),
(8, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-10', '7 AM - 9 AM'),
(9, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-10', '7 AM - 9 AM'),
(10, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-18', '7 AM - 9 AM'),
(11, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-17', '7 AM - 9 AM'),
(12, 'Rahul', 2147483647, 700091, 'D-31', 'Samarpally', '2018-04-25', '7 AM - 9 AM'),
(13, 'Prem Prakash', 2147483647, 700102, '555555555555555555555555555555555555555555555555', 'AH-42', '1995-12-05', '3 PM - 5 PM'),
(14, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-25', '7 AM - 9 AM'),
(15, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42, Samarpally', '2018-04-24', '7 AM - 9 AM'),
(17, 'Mohan Kumar', 2147483647, 700102, 'gjsdgjsdgd', 'Jotish Villa, AG-214, Near Cheap Market', '2018-05-24', '9 AM - 11 AM'),
(18, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(19, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(20, 'waer', 2147483647, 445567, 'fdgfd', 'eeee', '2018-01-05', '7 AM - 9 AM'),
(21, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(22, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(23, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(24, 'war', 2147483647, 700102, 'rrrr', 'Jotish Villa, AG-214, Near Cheap Market', '2018-04-30', '7 AM - 9 AM'),
(25, 'Prem Prakash', 2147483647, 700102, 'D-31', 'AH-42', '2018-04-30', '7 AM - 9 AM'),
(26, 'jhjkesh', 2147483647, 700102, 'D-31', 'Jotish Villa, AG-214, Near Cheap Market', '2018-05-01', '7 AM - 9 AM'),
(27, 'Pravin', 2147483647, 700102, 'D-31', 'gh', '2018-05-01', '7 AM - 9 AM'),
(28, 'Prem Prakash', 2147483647, 700102, 'h', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(29, 'Prem Prakash', 2147483647, 700102, 'h', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(30, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(31, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(32, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(33, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM'),
(34, 'puhgddgj', 2147483647, 700102, 'gf', 'AH-42', '2018-05-02', '7 AM - 9 AM');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `ngo_id` int(11) NOT NULL,
  `ngo_name` varchar(100) NOT NULL,
  `s_clothes` int(11) NOT NULL,
  `l_clothes` int(11) NOT NULL,
  `utensils` int(11) NOT NULL,
  `stationeries` int(11) NOT NULL,
  `blankets` int(11) NOT NULL,
  `req_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`ngo_id`, `ngo_name`, `s_clothes`, `l_clothes`, `utensils`, `stationeries`, `blankets`, `req_date`) VALUES
(1, 'NGO1', 10, 10, 30, 0, 0, '2018-04-28'),
(2, 'NGO2', 10, 0, 0, 20, 0, '2018-04-25'),
(5, 'NGO3', 60, 51, 25, 20, 0, '2018-04-25'),
(6, 'NGO4', 83, 43, 43, 37, 0, '2018-04-26'),
(8, 'MOHAN_CHEATFUND', 23, 25, 66, 0, 20, '2018-04-26');

-- --------------------------------------------------------

--
-- Table structure for table `security_question`
--

CREATE TABLE `security_question` (
  `id` int(2) NOT NULL,
  `question` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `role`) VALUES
('abc@gmail.com', 'pppooo', 'contributor'),
('abcd@gmail.com', '123456', 'ngo'),
('abcde@gmail.com', '123456', 'ngo'),
('cod@g.com', '123456', 'ngo'),
('contact@cry.org', '123456', 'ngo'),
('d@g.com', '123456', 'ngo'),
('dhanraj@gmail.com', '123456', 'contributor'),
('dry@gmail.com', '123456', 'ngo'),
('fry@gmail.com', '123456', 'ngo'),
('io@h.com', '123456', 'volunteer'),
('mohan@cheatfund.com', '123456', 'ngo'),
('o@gg.com', '123456', 'volunteer'),
('op@qw.com', '123456', 'volunteer'),
('praving@gmail.com', '123456', 'volunteer'),
('pravingupta1071@gmail.com', 'pravin@123', 'admin'),
('pravingupta11@gmail.com', '123456', 'contributor'),
('praween.pro@gmail.com', 'praween@123', 'admin'),
('r@df.com', '123456', 'volunteer'),
('r@gb.com', '123456', 'volunteer'),
('rahufffl@gmail.com', '123456', 'volunteer'),
('rahul@gmail.com', '123456', 'volunteer'),
('rahularya@gmail.com', '123456', 'volunteer'),
('rahularyan@gmail.com', '123456', 'volunteer'),
('sa@g.com', '123456', 'contributor'),
('sandy12@gmail.com', '123456', 'contributor'),
('sandy@gmail.com', '123456', 'contributor'),
('sandyji@gmail.com', '123456', 'contributor'),
('xyz@abc.com', '123456', 'ngo');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(5) NOT NULL,
  `username` varchar(120) NOT NULL,
  `name` varchar(120) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(120) NOT NULL,
  `squestion` int(10) NOT NULL,
  `sanswer` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  `address` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `username`, `name`, `mobile`, `dob`, `password`, `squestion`, `sanswer`, `image`, `address`) VALUES
(1, 'rahularya@gmail.com', 'Rahul', 2147483647, '2010-12-06', '123456', 2, 'Tom', 0x4578616d5f466f726d2e706466, 'Patna'),
(2, 'praving@gmail.com', 'Pravin', 2147483647, '2010-12-09', '123456', 2, 'pika', 0x4578616d5f466f726d2e706466, 'Kolkata'),
(3, 'rahularyan@gmail.com', 'Rahul', 2147483647, '2010-12-14', '123456', 1, '123456', 0x53637265656e73686f74202832292e706e67, '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consignments`
--
ALTER TABLE `consignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contributors`
--
ALTER TABLE `contributors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ngos`
--
ALTER TABLE `ngos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickup`
--
ALTER TABLE `pickup`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`ngo_id`);

--
-- Indexes for table `security_question`
--
ALTER TABLE `security_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `contributors`
--
ALTER TABLE `contributors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ngos`
--
ALTER TABLE `ngos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pickup`
--
ALTER TABLE `pickup`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
