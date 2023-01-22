-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Dez-2022 às 02:13
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kingcompany`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `buys`
--

CREATE TABLE `buys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `buys`
--

INSERT INTO `buys` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Mortgages', 'Mortgages', 1, NULL, NULL),
(2, 'Market Trends', 'Market Trends', 1, NULL, NULL),
(3, 'Properties', 'Properties', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `comunication_configs`
--

CREATE TABLE `comunication_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comunication_config_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comunication_config_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_chatings`
--

CREATE TABLE `email_chatings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeEstado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `nomeEstado`, `created_at`, `updated_at`) VALUES
(1, 'Ativo', '2022-11-01 13:28:13', NULL),
(2, 'Desativo', '2022-11-01 13:28:20', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcaofuncs`
--

CREATE TABLE `funcaofuncs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `FkIDFunc` bigint(20) UNSIGNED NOT NULL,
  `FkIDFuncao` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcaofuncs`
--

INSERT INTO `funcaofuncs` (`id`, `estadoID`, `FkIDFunc`, `FkIDFuncao`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 7, NULL, NULL),
(5, 1, 1, 8, NULL, NULL),
(6, 1, 2, 6, NULL, NULL),
(7, 1, 3, 7, NULL, NULL),
(8, 1, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeFuncionario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricaoFuncionario` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imgFuncionario` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nomeFuncionario`, `descricaoFuncionario`, `estadoID`, `created_at`, `updated_at`, `imgFuncionario`) VALUES
(1, 'Ismael Gomes Queta', 'I embraced the real estate market at the age of 20, having invested since then in my \r\nprofessionalization in this area, in order to be prepared to safely face any challenge presented. \r\nAs a result, I have acquired several prestige awards and knowledge in different areas over the \r\nyears.<br><br>\r\nI have worked with owners and buyers from all over the world, facilitated by the fact that I \r\nknow Portugal very well from north to south and speak Portuguese, English, French and \r\nSpanish.<br><br>\r\nI am focused on providing a service of excellence and creating lasting bonds with those who \r\ntrust in my services, identifying and analyzing each business I present as if it were an \r\ninvestment of my own.<br><br>\r\nI offer a complete and differentiated service, so that you have as few worries as possible, \r\nwhether you are buying/selling your own home or making an investment.<br><br>\r\nI work with Century21 Realty Art, a company with over 20 years of experience and, since 2011, \r\nthe number 1 agency in the C21 Iberian network. With 10 branches in national territory and a \r\ntotal of +500 employees.<br><br>\r\nIf you wish to buy/sell a property, need advice on a possible investment or know someone who \r\nhas any of these needs, contact us through the means we make available and ensure you get \r\nthe best deal possible.<br><br>\r\nAs I usually say:\r\n“Dare to dream, I’ll make it happen.”\r\n', 1, '2022-11-01 14:33:42', NULL, 'ismael.png'),
(2, 'Daniel Almeida', 'Sou uma pessoa ambiciosa e disponível para aprender novas tecnologias, gosto de trabalhar numa equipa colaborativa com prazos e objetivos.\r\nGosto de promover bons ambientes e com profissionalismo.\r\nConsidero-me uma pessoa versátil para aprender novas tecnologias ou linguagens de programação tendo presentemente mais aptidões em VBA, HTML, PHP, JavaScript, PHPmyAdmin, Node.JS, utilizando o Visual Studio e Visual Studio Code.', 1, '2022-11-02 00:00:00', NULL, ''),
(3, 'Osmar da Graça', 'I\'ve been in touch with real estate since I was 21 and immediately fell in \r\nlove with it, I find it quite rewarding helping people accomplish their \r\ngoals.<br><br>\r\nI’ve lived in three different countries, what helped me understand the \r\nstruggle of living in a foreign country.<br><br>\r\nI\'ve created various types of successful businesses, from cosmetics to \r\nclothing, and now I\'m in real estate, having already effectively negotiated \r\nvarious property acquisitions over the last three years, working with \r\nowners and buyers from all over the world.<br><br>\r\nMy career has been and continues to be built on the greatest degrees of \r\nhonesty, trust, respect and comprehension of my clients\' wants and \r\nneeds.<br><br>\r\nMy goal is to assist new and experienced investors, to give an unrivaled \r\nservice and to assist anyone who want to live or invest in Portugal to \r\nstart off on the right path.<br><br>', 1, '2022-12-05 19:54:08', NULL, ''),
(4, 'Orlando Júnior', '', 1, '2022-12-07 15:59:02', NULL, ''),
(5, 'Evandro Almeida', '', 1, '2022-12-07 15:59:53', NULL, ''),
(6, 'Nuno Monteiro', '', 1, '2022-12-07 16:00:48', NULL, ''),
(7, 'Darque Rodrigues', '', 1, '2022-12-07 16:01:21', NULL, ''),
(8, 'David Labossiere', '', 1, '2022-12-07 16:01:51', NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcoes`
--

CREATE TABLE `funcoes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeFuncao` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descFuncao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `funcoes`
--

INSERT INTO `funcoes` (`id`, `nomeFuncao`, `descFuncao`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Co-founder', 'Co-founder', 1, '2022-11-01 13:36:10', NULL),
(2, 'Vice-President', 'Vice-President', 1, '2022-11-01 13:36:10', NULL),
(3, 'Real Estate Consultant', 'Real Estate Consultant', 1, '2022-11-01 13:36:10', NULL),
(4, 'President', 'President', 1, '2022-11-01 13:36:10', NULL),
(5, 'Business Advisor', 'Business Advisor', 1, '2022-11-01 13:36:10', NULL),
(6, 'Web Developer', 'Web Developer', 1, '2022-11-01 20:44:16', NULL),
(7, 'International Relations', 'International Relations', 1, '2022-12-05 19:55:09', NULL),
(8, 'Real Estate Investment', 'Real Estate Investment', 1, '2022-12-05 19:56:33', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `invests`
--

CREATE TABLE `invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `invests`
--

INSERT INTO `invests` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Business Plan', 'Business Plan', 1, NULL, NULL),
(2, 'Off-Market Properties', 'Off-Market Properties', 1, NULL, NULL),
(3, 'Rental Management', 'Rental Management', 1, NULL, NULL),
(4, 'AirBnB Management', 'AirBnB Management', 1, NULL, NULL),
(5, 'Resale', 'Resale', 1, NULL, NULL),
(6, 'Construction', 'Construction', 1, NULL, NULL),
(7, 'Renovations', 'Renovations', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_27_095606_create_estados_table', 1),
(4, '2022_10_27_095700_create_funcionarios_table', 1),
(5, '2022_10_27_182721_create_servicos_table', 1),
(6, '2022_10_27_182845_create_funcoes_table', 1),
(7, '2022_11_01_141130_create_funcaoFuncs_table', 1),
(8, '2022_11_01_142235_create_email_chatings_table', 1),
(9, '2022_11_01_142529_create_comunication_configs_table', 1),
(10, '2022_11_01_143523_add_category_to_funcionarios_table', 1),
(11, '2022_11_01_161807_create_social_media_configs_table', 1),
(12, '2022_11_01_161827_create_social_media_funcionario_configs_table', 1),
(13, '2022_11_01_231240_add_category_to_social_media_configs_table', 1),
(14, '2022_11_06_201003_add_category_servicos_table', 1),
(15, '2022_11_07_141709_create_servicos_types_table', 1),
(16, '2022_11_07_143229_add_category_servicos_type_table', 1),
(17, '2022_12_05_200546_create_positons_table', 1),
(18, '2022_12_07_153324_create_position_func_table', 2),
(19, '2022_12_09_004742_create_invest_table', 3),
(20, '2022_12_09_004800_create_buy_table', 4),
(21, '2022_12_09_004809_create_sell_table', 4),
(22, '2022_12_09_004819_create_rent_table', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `position_func`
--

CREATE TABLE `position_func` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `FkIDFunc` bigint(20) UNSIGNED NOT NULL,
  `FkIDPosition` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `position_func`
--

INSERT INTO `position_func` (`id`, `estadoID`, `FkIDFunc`, `FkIDPosition`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, NULL, NULL),
(2, 1, 3, 2, NULL, NULL),
(3, 1, 2, 5, NULL, NULL),
(4, 1, 4, 6, NULL, NULL),
(5, 1, 5, 8, NULL, NULL),
(6, 1, 6, 9, '2022-12-07 16:11:59', NULL),
(7, 1, 7, 9, '2022-12-07 16:11:59', NULL),
(8, 1, 8, 9, '2022-12-07 16:11:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `positons`
--

CREATE TABLE `positons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `positionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `positionDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `positons`
--

INSERT INTO `positons` (`id`, `positionName`, `positionDescription`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Co-founder', 'Co-founder', 1, NULL, NULL),
(2, 'COO', 'COO', 1, NULL, NULL),
(3, 'CEO', 'CEO', 1, NULL, NULL),
(4, 'Co-founder', 'Co-founder', 1, NULL, NULL),
(5, 'Dev.', 'Developer', 1, NULL, NULL),
(6, 'Business', 'Business', 1, NULL, NULL),
(8, 'Account Manager', 'Account Manager', 1, NULL, NULL),
(9, 'Real Estate Investment', 'Account Manager', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rents`
--

CREATE TABLE `rents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `rents`
--

INSERT INTO `rents` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Search', 'Search', 1, NULL, NULL),
(2, 'Transaction', 'Transaction', 1, NULL, NULL),
(3, 'Documents', 'Documents', 1, NULL, NULL),
(4, 'Properties', 'Properties', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sells`
--

CREATE TABLE `sells` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sells`
--

INSERT INTO `sells` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Property Evaluation', 'Property Evaluation', 1, NULL, NULL),
(2, 'Energy Certificate', 'Energy Certificate', 1, NULL, NULL),
(3, 'Professional Photography and Video', 'Professional Photography and Video', 1, NULL, NULL),
(4, 'Strategy', 'Strategy', 1, NULL, NULL),
(5, 'International Partnerships', 'International Partnerships', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iconValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`, `iconValue`) VALUES
(1, 'Relocation', 'Relocation', 1, NULL, NULL, ''),
(2, 'Visa and Resident Permit', 'Visa and Resident Permit', 1, NULL, NULL, ''),
(3, 'Emigration Advisory', 'Emigration Advisory', 1, NULL, NULL, ''),
(4, 'Investment Plan', 'Investment Plan', 1, NULL, NULL, ''),
(5, 'Bank Account', 'Bank Account', 1, NULL, NULL, ''),
(6, 'NIF (PT Fiscal Number)', 'NIF (PT Fiscal Number)', 1, NULL, NULL, ''),
(7, 'Accounting Support', 'Accounting Support', 1, NULL, NULL, ''),
(8, 'Legal Support', 'Legal Support', 1, NULL, NULL, ''),
(9, 'Construction', 'Construction', 1, NULL, NULL, ''),
(10, 'Renovations', 'Renovations', 1, NULL, NULL, ''),
(11, 'Transport and Storage', 'Transport and Storage', 1, NULL, NULL, ''),
(12, 'Cleaning', 'Cleaning', 1, NULL, NULL, ''),
(13, 'Concierge', 'Concierge', 1, NULL, NULL, ''),
(14, 'Interior design', 'Interior design', 1, NULL, NULL, ''),
(15, 'Real Estate Management', 'Real Estate Management', 1, NULL, NULL, ''),
(16, 'Mentoring', 'Mentoring', 1, NULL, NULL, ''),
(17, 'Turnkey Service (Tv, Eletricity, Water, etc)', 'Turnkey Service (Tv, Eletricity, Water, etc)', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_types`
--

CREATE TABLE `servicos_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeServicosTypes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricaoServicos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `FK_id_servico` bigint(20) UNSIGNED NOT NULL,
  `FkIDestado` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `social_media_configs`
--

CREATE TABLE `social_media_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `socialMediaName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `socialMediaDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `iconValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `social_media_configs`
--

INSERT INTO `social_media_configs` (`id`, `socialMediaName`, `socialMediaDescription`, `estadoID`, `created_at`, `updated_at`, `iconValue`) VALUES
(1, 'Facebook', 'Facebook é uma mídia social e rede social virtual lançada em 4 de fevereiro de 2004, operado e de propriedade privada da Meta, Inc.. Em 4 de outubro de 2012, o Facebook atingiu a marca de 1 bilhão de usuários ativos, sendo por isso a maior rede social vir', 1, '2022-11-01 16:30:33', NULL, 'fa fa-facebook'),
(2, 'Instagram', 'O Instagram é uma rede social online de compartilhamento de fotos e vídeos entre seus usuários, que permite aplicar filtros digitais e compartilhá-los em uma variedade de serviços de redes sociais, como Facebook, Twitter, Tumblr e Flickr.', 1, '2022-11-01 16:30:33', NULL, 'fa fa-instagram'),
(3, 'YouTube', 'YouTube é uma plataforma de compartilhamento de vídeos com sede em San Bruno, Califórnia. O serviço foi criado por três ex-funcionários do PayPal - Chad Hurley, Steve Chen e Jawed Karim - em fevereiro de 2005.', 1, '2022-11-01 16:30:33', NULL, 'fa fa-youtube'),
(4, 'Whatsapp', 'WhatsApp é um aplicativo multiplataforma de mensagens instantâneas e chamadas de voz para smartphones. Além de mensagens de texto, os usuários podem enviar imagens, vídeos e documentos em PDF, além de fazer ligações grátis por meio de uma conexão com a in', 1, '2022-11-01 16:30:33', NULL, 'fa fa-whatsapp'),
(5, 'Linkedin', 'LinkedIn é uma rede social de negócios fundada em dezembro de 2002 e lançada em 5 de maio de 2003.', 1, NULL, NULL, 'fa-brands fa-linkedin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `social_media_funcionario_configs`
--

CREATE TABLE `social_media_funcionario_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `socialMediaLink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FkIdFuncionario` bigint(20) UNSIGNED NOT NULL,
  `FkIdSocialMedia` bigint(20) UNSIGNED NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `social_media_funcionario_configs`
--

INSERT INTO `social_media_funcionario_configs` (`id`, `socialMediaLink`, `FkIdFuncionario`, `FkIdSocialMedia`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/daniel.almeida.7393264', 2, 1, 1, '2022-11-02 12:34:53', NULL),
(2, 'https://www.youtube.com/channel/UCRsM2iutWHLZC37g1T6QVWQ', 2, 3, 1, '2022-11-02 12:58:47', NULL),
(3, 'https://wa.me/934427802', 2, 4, 1, '2022-11-02 13:06:21', NULL),
(4, 'https://www.instagram.com/31_almeida_01/', 2, 2, 1, '2022-11-02 13:09:46', NULL),
(5, 'https://www.linkedin.com/in/ismael-queta-real-estate/', 1, 5, 1, '2022-12-05 19:26:55', NULL),
(6, 'https://www.instagram.com/ismael.realestate/', 1, 2, 1, '2022-12-05 19:27:40', NULL),
(7, 'https://www.facebook.com/people/IsmaelRealEstate/100076318539689/', 1, 1, 1, '2022-12-05 19:27:40', NULL),
(8, 'https://api.whatsapp.com/send?phone=351967333803', 1, 4, 1, '2022-12-05 19:27:53', NULL),
(9, 'https://www.linkedin.com/in/osmar-graça-6b44b4143/?originalSubdomain=pt', 3, 5, 1, '2022-12-05 19:59:59', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `buys`
--
ALTER TABLE `buys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `buy_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `comunication_configs`
--
ALTER TABLE `comunication_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comunication_configs_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `email_chatings`
--
ALTER TABLE `email_chatings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcaofuncs`
--
ALTER TABLE `funcaofuncs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcaofuncs_estadoid_foreign` (`estadoID`),
  ADD KEY `funcaofuncs_fkidfunc_foreign` (`FkIDFunc`),
  ADD KEY `funcaofuncs_fkidfuncao_foreign` (`FkIDFuncao`);

--
-- Índices para tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcionarios_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `funcoes_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `invests`
--
ALTER TABLE `invests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invest_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `position_func`
--
ALTER TABLE `position_func`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_func_estadoid_foreign` (`estadoID`),
  ADD KEY `position_func_fkidfunc_foreign` (`FkIDFunc`),
  ADD KEY `position_func_fkidposition_foreign` (`FkIDPosition`);

--
-- Índices para tabela `positons`
--
ALTER TABLE `positons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positons_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicos_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `servicos_types`
--
ALTER TABLE `servicos_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicos_types_fkidestado_foreign` (`FkIDestado`),
  ADD KEY `servicos_types_fk_id_servico_foreign` (`FK_id_servico`);

--
-- Índices para tabela `social_media_configs`
--
ALTER TABLE `social_media_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_configs_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `social_media_funcionario_configs`
--
ALTER TABLE `social_media_funcionario_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_funcionario_configs_estadoid_foreign` (`estadoID`),
  ADD KEY `social_media_funcionario_configs_fkidsocialmedia_foreign` (`FkIdSocialMedia`),
  ADD KEY `social_media_funcionario_configs_fkidfuncionario_foreign` (`FkIdFuncionario`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `buys`
--
ALTER TABLE `buys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `comunication_configs`
--
ALTER TABLE `comunication_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `email_chatings`
--
ALTER TABLE `email_chatings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcaofuncs`
--
ALTER TABLE `funcaofuncs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `invests`
--
ALTER TABLE `invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `position_func`
--
ALTER TABLE `position_func`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `positons`
--
ALTER TABLE `positons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `sells`
--
ALTER TABLE `sells`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `servicos_types`
--
ALTER TABLE `servicos_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `social_media_configs`
--
ALTER TABLE `social_media_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `social_media_funcionario_configs`
--
ALTER TABLE `social_media_funcionario_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `buys`
--
ALTER TABLE `buys`
  ADD CONSTRAINT `buy_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `comunication_configs`
--
ALTER TABLE `comunication_configs`
  ADD CONSTRAINT `comunication_configs_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `funcaofuncs`
--
ALTER TABLE `funcaofuncs`
  ADD CONSTRAINT `funcaofuncs_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `funcaofuncs_fkidfunc_foreign` FOREIGN KEY (`FkIDFunc`) REFERENCES `funcionarios` (`id`),
  ADD CONSTRAINT `funcaofuncs_fkidfuncao_foreign` FOREIGN KEY (`FkIDFuncao`) REFERENCES `funcoes` (`id`);

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `funcionarios_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `funcoes`
--
ALTER TABLE `funcoes`
  ADD CONSTRAINT `funcoes_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `invests`
--
ALTER TABLE `invests`
  ADD CONSTRAINT `invest_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `position_func`
--
ALTER TABLE `position_func`
  ADD CONSTRAINT `position_func_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `position_func_fkidfunc_foreign` FOREIGN KEY (`FkIDFunc`) REFERENCES `funcionarios` (`id`),
  ADD CONSTRAINT `position_func_fkidposition_foreign` FOREIGN KEY (`FkIDPosition`) REFERENCES `positons` (`id`);

--
-- Limitadores para a tabela `positons`
--
ALTER TABLE `positons`
  ADD CONSTRAINT `positons_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `rent_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `sells`
--
ALTER TABLE `sells`
  ADD CONSTRAINT `sell_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `servicos_types`
--
ALTER TABLE `servicos_types`
  ADD CONSTRAINT `servicos_types_fk_id_servico_foreign` FOREIGN KEY (`FK_id_servico`) REFERENCES `servicos` (`id`),
  ADD CONSTRAINT `servicos_types_fkidestado_foreign` FOREIGN KEY (`FkIDestado`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `social_media_configs`
--
ALTER TABLE `social_media_configs`
  ADD CONSTRAINT `social_media_configs_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `social_media_funcionario_configs`
--
ALTER TABLE `social_media_funcionario_configs`
  ADD CONSTRAINT `social_media_funcionario_configs_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `social_media_funcionario_configs_fkidfuncionario_foreign` FOREIGN KEY (`FkIdFuncionario`) REFERENCES `funcionarios` (`id`),
  ADD CONSTRAINT `social_media_funcionario_configs_fkidsocialmedia_foreign` FOREIGN KEY (`FkIdSocialMedia`) REFERENCES `social_media_configs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
