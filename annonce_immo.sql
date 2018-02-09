-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 09 Février 2018 à 10:35
-- Version du serveur :  5.7.21-0ubuntu0.16.04.1
-- Version de PHP :  7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `annonce_immo`
--

-- --------------------------------------------------------

--
-- Structure de la table `adm_admin`
--

CREATE TABLE `adm_admin` (
  `adm_oid` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `adm_prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adm_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `adm_admin`
--

INSERT INTO `adm_admin` (`adm_oid`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `adm_prenom`, `adm_telephone`) VALUES
(1, 'admin0', 'admin0', 'admin0@mail.com', 'admin0@mail.com', 1, NULL, '$2y$13$NpAIJMGky7XQoaWS7PH.YOZcrN/eZRfq8YOizp.9cpTtZfo6wohBW', '2018-02-08 16:14:34', NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 'admin0', '0102030400'),
(2, 'admin1', 'admin1', 'admin1@mail.com', 'admin1@mail.com', 1, NULL, '$2y$13$2nPrPL1kn4KpAwE1RKxfk.FSjE38InSvlueJtODDbOVB2e0MFiJQO', NULL, NULL, NULL, 'a:0:{}', 'admin1', '0102030401'),
(3, 'admin2', 'admin2', 'admin2@mail.com', 'admin2@mail.com', 1, NULL, '$2y$13$FAL42Ng.PeZVqlPwv1qo7.Vv.Dyi3FMQg7gQl0in90zwEOfv0JmGq', NULL, NULL, NULL, 'a:0:{}', 'admin2', '0102030402'),
(4, 'admin3', 'admin3', 'admin3@mail.com', 'admin3@mail.com', 1, NULL, '$2y$13$Ii3Zea8PoNfNikiwQC4Rwukxc5EN.Bh8rX0/T504SKWx5zKEu0/w6', NULL, NULL, NULL, 'a:0:{}', 'admin3', '0102030403'),
(5, 'admin4', 'admin4', 'admin4@mail.com', 'admin4@mail.com', 1, NULL, '$2y$13$DQTPZn7p6dG8aa1taslMveK6BY3VvuxYDr9cqpg/h.3vdDy7N/dtG', '2018-02-01 22:16:24', NULL, NULL, 'a:0:{}', 'admin4', '0102030404');

-- --------------------------------------------------------

--
-- Structure de la table `annonce_photo`
--

CREATE TABLE `annonce_photo` (
  `annonce_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `annonce_photo`
--

INSERT INTO `annonce_photo` (`annonce_id`, `photo_id`) VALUES
(33, 52),
(33, 53),
(33, 54),
(34, 55),
(34, 56),
(34, 57),
(35, 58),
(35, 59),
(35, 60),
(36, 61),
(36, 62),
(36, 63),
(37, 64),
(37, 65),
(37, 66);

-- --------------------------------------------------------

--
-- Structure de la table `ann_annonce`
--

CREATE TABLE `ann_annonce` (
  `id` int(11) NOT NULL,
  `cli_oid` int(11) DEFAULT NULL,
  `adm_oid` int(11) DEFAULT NULL,
  `typ_oid` int(11) DEFAULT NULL,
  `ann_titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pieces` int(11) NOT NULL,
  `ann_prix` double NOT NULL,
  `ann_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `ann_annonce`
--

INSERT INTO `ann_annonce` (`id`, `cli_oid`, `adm_oid`, `typ_oid`, `ann_titre`, `pieces`, `ann_prix`, `ann_description`) VALUES
(33, 43, 1, 1, 'maison de campagne', 5, 200000, 'Contrairement à une opinion répandue, le Lorem Ipsum n\'est pas simplement du texte aléatoire. Il trouve ses racines dans une oeuvre de la littérature latine classique datant de 45 av. J.-C., le rendant vieux de 2000 ans. Un professeur du Hampden-Sydney College, en Virginie, s\'est intéressé à un des mots latins les plus obscurs, consectetur, extrait d\'un passage du Lorem Ipsum, et en étudiant tous les usages de ce mot dans la littérature classique, découvrit la source incontestable du Lorem Ipsum. Il provient en fait des sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" (Des Suprêmes Biens et des Suprêmes Maux) de Cicéron. Cet ouvrage, très populaire pendant la Renaissance, est un traité sur la théorie de l\'éthique. Les premières lignes du Lorem Ipsum, "Lorem ipsum dolor sit amet...", proviennent de la section 1.10.32.\r\n\r\nL\'extrait standard de Lorem Ipsum utilisé depuis le XVIè siècle est reproduit ci-dessous pour les curieux. Les sections 1.10.32 et 1.10.33 du "De Finibus Bonorum et Malorum" de Cicéron sont aussi reproduites dans leur version originale, accompagnée de la traduction anglaise de H. Rackham (1914).'),
(34, 44, 1, 2, 'appartement', 6, 800000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut magna enim. Sed vel mattis ligula. Nulla sem odio, egestas ut venenatis quis, pulvinar a lacus. Praesent pretium nulla ex, sed lacinia metus interdum sed. Sed quis tempor turpis, vitae sollicitudin risus. Fusce id massa a enim condimentum finibus. Nulla aliquet viverra maximus. Donec dictum sem ac nunc pretium, at euismod eros posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nDuis eget massa nisl. Nunc et placerat massa, eget feugiat tellus. Nullam a mauris diam. Quisque nulla nulla, feugiat vitae ipsum sit amet, sodales rhoncus sapien. Nullam rutrum tincidunt dolor, ac ullamcorper leo. Integer bibendum laoreet pulvinar. Morbi malesuada eget metus id efficitur. Fusce vitae mauris non massa semper rutrum. Integer quis accumsan purus, in rhoncus tortor. Vivamus non erat felis. Donec gravida ut eros in gravida. Proin pulvinar eu mi eu euismod. Quisque vulputate porttitor laoreet. Nulla facilisi. Vivamus sit amet dictum ligula, non imperdiet libero. Proin efficitur justo id orci consectetur bibendum.\r\n\r\nPraesent massa sem, rutrum eu ornare placerat, posuere et quam. Duis lacinia magna ac justo venenatis aliquam. Mauris et iaculis enim. In dui nisi, ullamcorper a efficitur sed, convallis a nisl. Nunc magna leo, eleifend eu nisl eu, elementum efficitur erat. Integer a massa eget arcu euismod convallis vitae ut odio. Suspendisse ut vehicula elit. Quisque eu pulvinar metus. Suspendisse vulputate, turpis non congue commodo, leo metus rhoncus enim, eu luctus lectus velit id sapien. Vivamus elementum eros quam, ut efficitur risus pellentesque nec.\r\n\r\nVivamus suscipit dignissim neque. Curabitur ultricies, enim sed dapibus iaculis, erat mi finibus lorem, ut pharetra ex ante quis orci. Quisque accumsan diam lacus, ac suscipit nulla efficitur in. Nulla varius arcu sit amet leo consectetur, id ullamcorper nunc tempor. Vivamus consectetur risus ante, sit amet consectetur augue feugiat sed. Nulla non est mi. Cras tincidunt non justo in vehicula. Morbi scelerisque vitae augue et malesuada. Fusce ut commodo arcu. Phasellus ornare orci justo, id mollis ligula lacinia a. Aliquam erat volutpat.\r\n\r\nAliquam maximus tincidunt nisi in malesuada. Sed accumsan odio bibendum, interdum dui a, imperdiet tortor. Curabitur molestie malesuada lacus, ultrices varius lacus vehicula quis. Integer mollis lectus ac neque malesuada, non dapibus metus faucibus. Donec dignissim, libero id vehicula malesuada, velit lacus euismod lacus, sed convallis lectus ex in lorem. Suspendisse rutrum ex augue, in pulvinar metus suscipit a. Nam quam ipsum, rhoncus eu neque et, laoreet imperdiet ipsum. Nullam elementum dolor eu augue tincidunt, a fermentum mi tristique.'),
(35, 45, 1, 1, 'superbe maison', 7, 800, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut magna enim. Sed vel mattis ligula. Nulla sem odio, egestas ut venenatis quis, pulvinar a lacus. Praesent pretium nulla ex, sed lacinia metus interdum sed. Sed quis tempor turpis, vitae sollicitudin risus. Fusce id massa a enim condimentum finibus. Nulla aliquet viverra maximus. Donec dictum sem ac nunc pretium, at euismod eros posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nDuis eget massa nisl. Nunc et placerat massa, eget feugiat tellus. Nullam a mauris diam. Quisque nulla nulla, feugiat vitae ipsum sit amet, sodales rhoncus sapien. Nullam rutrum tincidunt dolor, ac ullamcorper leo. Integer bibendum laoreet pulvinar. Morbi malesuada eget metus id efficitur. Fusce vitae mauris non massa semper rutrum. Integer quis accumsan purus, in rhoncus tortor. Vivamus non erat felis. Donec gravida ut eros in gravida. Proin pulvinar eu mi eu euismod. Quisque vulputate porttitor laoreet. Nulla facilisi. Vivamus sit amet dictum ligula, non imperdiet libero. Proin efficitur justo id orci consectetur bibendum.\r\n\r\nPraesent massa sem, rutrum eu ornare placerat, posuere et quam. Duis lacinia magna ac justo venenatis aliquam. Mauris et iaculis enim. In dui nisi, ullamcorper a efficitur sed, convallis a nisl. Nunc magna leo, eleifend eu nisl eu, elementum efficitur erat. Integer a massa eget arcu euismod convallis vitae ut odio. Suspendisse ut vehicula elit. Quisque eu pulvinar metus. Suspendisse vulputate, turpis non congue commodo, leo metus rhoncus enim, eu luctus lectus velit id sapien. Vivamus elementum eros quam, ut efficitur risus pellentesque nec.\r\n\r\nVivamus suscipit dignissim neque. Curabitur ultricies, enim sed dapibus iaculis, erat mi finibus lorem, ut pharetra ex ante quis orci. Quisque accumsan diam lacus, ac suscipit nulla efficitur in. Nulla varius arcu sit amet leo consectetur, id ullamcorper nunc tempor. Vivamus consectetur risus ante, sit amet consectetur augue feugiat sed. Nulla non est mi. Cras tincidunt non justo in vehicula. Morbi scelerisque vitae augue et malesuada. Fusce ut commodo arcu. Phasellus ornare orci justo, id mollis ligula lacinia a. Aliquam erat volutpat.\r\n\r\nAliquam maximus tincidunt nisi in malesuada. Sed accumsan odio bibendum, interdum dui a, imperdiet tortor. Curabitur molestie malesuada lacus, ultrices varius lacus vehicula quis. Integer mollis lectus ac neque malesuada, non dapibus metus faucibus. Donec dignissim, libero id vehicula malesuada, velit lacus euismod lacus, sed convallis lectus ex in lorem. Suspendisse rutrum ex augue, in pulvinar metus suscipit a. Nam quam ipsum, rhoncus eu neque et, laoreet imperdiet ipsum. Nullam elementum dolor eu augue tincidunt, a fermentum mi tristique.'),
(36, 46, 1, 2, 'appartement', 4, 500, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut magna enim. Sed vel mattis ligula. Nulla sem odio, egestas ut venenatis quis, pulvinar a lacus. Praesent pretium nulla ex, sed lacinia metus interdum sed. Sed quis tempor turpis, vitae sollicitudin risus. Fusce id massa a enim condimentum finibus. Nulla aliquet viverra maximus. Donec dictum sem ac nunc pretium, at euismod eros posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nDuis eget massa nisl. Nunc et placerat massa, eget feugiat tellus. Nullam a mauris diam. Quisque nulla nulla, feugiat vitae ipsum sit amet, sodales rhoncus sapien. Nullam rutrum tincidunt dolor, ac ullamcorper leo. Integer bibendum laoreet pulvinar. Morbi malesuada eget metus id efficitur. Fusce vitae mauris non massa semper rutrum. Integer quis accumsan purus, in rhoncus tortor. Vivamus non erat felis. Donec gravida ut eros in gravida. Proin pulvinar eu mi eu euismod. Quisque vulputate porttitor laoreet. Nulla facilisi. Vivamus sit amet dictum ligula, non imperdiet libero. Proin efficitur justo id orci consectetur bibendum.\r\n\r\nPraesent massa sem, rutrum eu ornare placerat, posuere et quam. Duis lacinia magna ac justo venenatis aliquam. Mauris et iaculis enim. In dui nisi, ullamcorper a efficitur sed, convallis a nisl. Nunc magna leo, eleifend eu nisl eu, elementum efficitur erat. Integer a massa eget arcu euismod convallis vitae ut odio. Suspendisse ut vehicula elit. Quisque eu pulvinar metus. Suspendisse vulputate, turpis non congue commodo, leo metus rhoncus enim, eu luctus lectus velit id sapien. Vivamus elementum eros quam, ut efficitur risus pellentesque nec.\r\n\r\nVivamus suscipit dignissim neque. Curabitur ultricies, enim sed dapibus iaculis, erat mi finibus lorem, ut pharetra ex ante quis orci. Quisque accumsan diam lacus, ac suscipit nulla efficitur in. Nulla varius arcu sit amet leo consectetur, id ullamcorper nunc tempor. Vivamus consectetur risus ante, sit amet consectetur augue feugiat sed. Nulla non est mi. Cras tincidunt non justo in vehicula. Morbi scelerisque vitae augue et malesuada. Fusce ut commodo arcu. Phasellus ornare orci justo, id mollis ligula lacinia a. Aliquam erat volutpat.\r\n\r\nAliquam maximus tincidunt nisi in malesuada. Sed accumsan odio bibendum, interdum dui a, imperdiet tortor. Curabitur molestie malesuada lacus, ultrices varius lacus vehicula quis. Integer mollis lectus ac neque malesuada, non dapibus metus faucibus. Donec dignissim, libero id vehicula malesuada, velit lacus euismod lacus, sed convallis lectus ex in lorem. Suspendisse rutrum ex augue, in pulvinar metus suscipit a. Nam quam ipsum, rhoncus eu neque et, laoreet imperdiet ipsum. Nullam elementum dolor eu augue tincidunt, a fermentum mi tristique.'),
(37, 47, 1, 2, 'maison en location', 5, 1200, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ut magna enim. Sed vel mattis ligula. Nulla sem odio, egestas ut venenatis quis, pulvinar a lacus. Praesent pretium nulla ex, sed lacinia metus interdum sed. Sed quis tempor turpis, vitae sollicitudin risus. Fusce id massa a enim condimentum finibus. Nulla aliquet viverra maximus. Donec dictum sem ac nunc pretium, at euismod eros posuere. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nDuis eget massa nisl. Nunc et placerat massa, eget feugiat tellus. Nullam a mauris diam. Quisque nulla nulla, feugiat vitae ipsum sit amet, sodales rhoncus sapien. Nullam rutrum tincidunt dolor, ac ullamcorper leo. Integer bibendum laoreet pulvinar. Morbi malesuada eget metus id efficitur. Fusce vitae mauris non massa semper rutrum. Integer quis accumsan purus, in rhoncus tortor. Vivamus non erat felis. Donec gravida ut eros in gravida. Proin pulvinar eu mi eu euismod. Quisque vulputate porttitor laoreet. Nulla facilisi. Vivamus sit amet dictum ligula, non imperdiet libero. Proin efficitur justo id orci consectetur bibendum.\r\n\r\nPraesent massa sem, rutrum eu ornare placerat, posuere et quam. Duis lacinia magna ac justo venenatis aliquam. Mauris et iaculis enim. In dui nisi, ullamcorper a efficitur sed, convallis a nisl. Nunc magna leo, eleifend eu nisl eu, elementum efficitur erat. Integer a massa eget arcu euismod convallis vitae ut odio. Suspendisse ut vehicula elit. Quisque eu pulvinar metus. Suspendisse vulputate, turpis non congue commodo, leo metus rhoncus enim, eu luctus lectus velit id sapien. Vivamus elementum eros quam, ut efficitur risus pellentesque nec.\r\n\r\nVivamus suscipit dignissim neque. Curabitur ultricies, enim sed dapibus iaculis, erat mi finibus lorem, ut pharetra ex ante quis orci. Quisque accumsan diam lacus, ac suscipit nulla efficitur in. Nulla varius arcu sit amet leo consectetur, id ullamcorper nunc tempor. Vivamus consectetur risus ante, sit amet consectetur augue feugiat sed. Nulla non est mi. Cras tincidunt non justo in vehicula. Morbi scelerisque vitae augue et malesuada. Fusce ut commodo arcu. Phasellus ornare orci justo, id mollis ligula lacinia a. Aliquam erat volutpat.\r\n\r\nAliquam maximus tincidunt nisi in malesuada. Sed accumsan odio bibendum, interdum dui a, imperdiet tortor. Curabitur molestie malesuada lacus, ultrices varius lacus vehicula quis. Integer mollis lectus ac neque malesuada, non dapibus metus faucibus. Donec dignissim, libero id vehicula malesuada, velit lacus euismod lacus, sed convallis lectus ex in lorem. Suspendisse rutrum ex augue, in pulvinar metus suscipit a. Nam quam ipsum, rhoncus eu neque et, laoreet imperdiet ipsum. Nullam elementum dolor eu augue tincidunt, a fermentum mi tristique.');

-- --------------------------------------------------------

--
-- Structure de la table `cli_client`
--

CREATE TABLE `cli_client` (
  `cli_oid` int(11) NOT NULL,
  `cli_nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cli_prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cli_telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `cli_client`
--

INSERT INTO `cli_client` (`cli_oid`, `cli_nom`, `cli_prenom`, `cli_telephone`) VALUES
(2, 'client1', 'client1', '0102030401'),
(3, 'client2', 'client2', '0102030402'),
(4, 'client3', 'client3', '0102030403'),
(5, 'client4', 'client4', '0102030404'),
(43, 'client 1', 'client 1', '05/85/74/96/58'),
(44, 'client 2', 'client 2', '05/96/45/85/74'),
(45, 'client 3', 'client 3', '06/85/74/45/69'),
(46, 'client 3', 'client 3', '05/85/45/65/25'),
(47, 'client 4', 'client 4', '04/85/96/45/14');

-- --------------------------------------------------------

--
-- Structure de la table `pho_photo`
--

CREATE TABLE `pho_photo` (
  `id` int(11) NOT NULL,
  `pho_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pho_nom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `pho_photo`
--

INSERT INTO `pho_photo` (`id`, `pho_file`, `pho_nom`, `updated_at`) VALUES
(52, '5a7b2a0db33c1564252427.jpg', 'face', '2018-02-07 17:32:13'),
(53, '5a7b2a0db3d7e186785431.jpg', 'dos', '2018-02-07 17:32:13'),
(54, '5a7b2a0db5a5c773653441.jpg', 'coter', '2018-02-07 17:32:13'),
(55, '5a7b2ae4cc58b592198261.jpg', 'dos', '2018-02-07 17:35:48'),
(56, '5a7b2ae4cd0e0169178434.jpg', 'face', '2018-02-07 17:35:48'),
(57, '5a7b2ae4ceea7034604951.jpg', 'coter', '2018-02-07 17:35:48'),
(58, '5a7b2b6a3ea58551053671.jpg', 'dos', '2018-02-07 17:38:02'),
(59, '5a7b2b6a3fbe8095880259.jpg', 'face', '2018-02-07 17:38:02'),
(60, '5a7b2b6a40a07951459983.jpg', 'coter', '2018-02-07 17:38:02'),
(61, '5a7b2d76eaa59969780180.jpg', 'dos', '2018-02-07 17:46:46'),
(62, '5a7b2d76eb13d642484972.jpg', 'face', '2018-02-07 17:46:46'),
(63, '5a7b2d76ec6cd070146341.jpg', 'coter', '2018-02-07 17:46:46'),
(64, '5a7b2e0f83302919661513.jpg', 'dos', '2018-02-07 17:49:19'),
(65, '5a7b2e0f84004092830790.jpg', 'face', '2018-02-07 17:49:19'),
(66, '5a7b2e0f854a4353072962.jpg', 'coter', '2018-02-07 17:49:19');

-- --------------------------------------------------------

--
-- Structure de la table `typ_type_annonce`
--

CREATE TABLE `typ_type_annonce` (
  `typ_oid` int(11) NOT NULL,
  `typ_nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `typ_type_annonce`
--

INSERT INTO `typ_type_annonce` (`typ_oid`, `typ_nom`) VALUES
(1, 'vente'),
(2, 'location');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `adm_admin`
--
ALTER TABLE `adm_admin`
  ADD PRIMARY KEY (`adm_oid`),
  ADD UNIQUE KEY `UNIQ_A025426492FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_A0254264A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_A0254264C05FB297` (`confirmation_token`);

--
-- Index pour la table `annonce_photo`
--
ALTER TABLE `annonce_photo`
  ADD PRIMARY KEY (`annonce_id`,`photo_id`),
  ADD KEY `IDX_33A4F878805AB2F` (`annonce_id`),
  ADD KEY `IDX_33A4F877E9E4C8C` (`photo_id`);

--
-- Index pour la table `ann_annonce`
--
ALTER TABLE `ann_annonce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_466D3B10E223B55D` (`cli_oid`),
  ADD KEY `IDX_466D3B106C6F80D9` (`adm_oid`),
  ADD KEY `IDX_466D3B107EB171C6` (`typ_oid`);

--
-- Index pour la table `cli_client`
--
ALTER TABLE `cli_client`
  ADD PRIMARY KEY (`cli_oid`),
  ADD UNIQUE KEY `UNIQ_FB2228D5195405D` (`cli_telephone`);

--
-- Index pour la table `pho_photo`
--
ALTER TABLE `pho_photo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4717995E9F1140E2` (`pho_file`);

--
-- Index pour la table `typ_type_annonce`
--
ALTER TABLE `typ_type_annonce`
  ADD PRIMARY KEY (`typ_oid`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `adm_admin`
--
ALTER TABLE `adm_admin`
  MODIFY `adm_oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `ann_annonce`
--
ALTER TABLE `ann_annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `cli_client`
--
ALTER TABLE `cli_client`
  MODIFY `cli_oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `pho_photo`
--
ALTER TABLE `pho_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT pour la table `typ_type_annonce`
--
ALTER TABLE `typ_type_annonce`
  MODIFY `typ_oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `annonce_photo`
--
ALTER TABLE `annonce_photo`
  ADD CONSTRAINT `FK_33A4F877E9E4C8C` FOREIGN KEY (`photo_id`) REFERENCES `pho_photo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_33A4F878805AB2F` FOREIGN KEY (`annonce_id`) REFERENCES `ann_annonce` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `ann_annonce`
--
ALTER TABLE `ann_annonce`
  ADD CONSTRAINT `FK_466D3B106C6F80D9` FOREIGN KEY (`adm_oid`) REFERENCES `adm_admin` (`adm_oid`),
  ADD CONSTRAINT `FK_466D3B107EB171C6` FOREIGN KEY (`typ_oid`) REFERENCES `typ_type_annonce` (`typ_oid`),
  ADD CONSTRAINT `FK_466D3B10E223B55D` FOREIGN KEY (`cli_oid`) REFERENCES `cli_client` (`cli_oid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
