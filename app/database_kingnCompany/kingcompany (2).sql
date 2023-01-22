-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Nov-2022 às 17:35
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.4

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
(1, 1, 1, 1, '2022-11-01 20:44:52', NULL),
(2, 1, 1, 3, NULL, NULL),
(3, 1, 2, 6, '2022-11-02 00:00:00', NULL);

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
(1, 'Ismael Gomes Queta', 'I embraced the real estate market at the age of 20, having invested since then in my professionalization in this area, in order to be prepared to safely face any challenge presented. As a result, I have acquired several prestige awards and knowledge in different areas over the years. I have worked with owners and buyers from all over the world, facilitated by the fact that I know Portugal very well from north to south and speak Portuguese, English, French and Spanish.\n\nI am focused on providing a service of excellence and creating lasting bonds with those who trust in my services, identifying and analyzing each business I present as if it were an investment of my own. I offer a complete and differentiated service, so that you have as few worries as possible, whether you are buying/selling your own home or making an investment. I belong to Century21 Realty Art, a company with over 20 years of experience and, since 2011, the number 1 agency in the C21 Iberian network. With 10 branches in national territory and a total of +500 employees. When you work with me, you have all the support and structure of the Realty Art team at your disposal: - Legal; - Marketing; - Commercial; - Financial; - Administrative; - Credit intermediation; - Investment platform. If you want to buy/sell a property, need advice on a possible investment or know someone who has any of these needs, contact me through the means I make available and ensure you get the best deal possible. As I usually say: “Dare to dream, I’ll make it happen.', 1, '2022-11-01 14:33:42', NULL, 'ismael.png'),
(2, 'Daniel Almeida', 'Sou uma pessoa ambiciosa e disponível para aprender novas tecnologias, gosto de trabalhar numa equipa colaborativa com prazos e objetivos.\r\nGosto de promover bons ambientes e com profissionalismo.\r\nConsidero-me uma pessoa versátil para aprender novas tecnologias ou linguagens de programação tendo presentemente mais aptidões em VBA, HTML, PHP, JavaScript, PHPmyAdmin, Node.JS, utilizando o Visual Studio e Visual Studio Code.', 1, '2022-11-02 00:00:00', NULL, 'daniel.jpg');

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
(6, 'Web Developer', 'Web Developer', 1, '2022-11-01 20:44:16', NULL);

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
(14, '2022_11_06_201003_add_category_servicos_table', 2),
(15, '2022_11_07_141709_create_servicos_types_table', 3),
(16, '2022_11_07_143229_add_category_servicos_type_table', 3),
(17, '2022_11_08_141428_create_portugalInfo_table', 4),
(18, '2022_11_08_141821_create_portugalInfoTypes_table', 4),
(19, '2022_11_08_142643_add_category_portugalInfos_table', 5),
(20, '2022_11_09_160134_add_category_portugalinfotypes_table', 6);

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
-- Estrutura da tabela `portugalinfos`
--

CREATE TABLE `portugalinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portugalInfoNome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portugalInfodescricao` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `iconValuePortugalInfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `portugalinfos`
--

INSERT INTO `portugalinfos` (`id`, `portugalInfoNome`, `portugalInfodescricao`, `iconValuePortugalInfo`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'History', 'History is the study of change over time, and it covers all aspects of human society. Political, social, economic, scientific, technological, medical, cultural, intellectual, religious and military developments are all part of history.', 'fa fa-globe', 1, '2022-11-08 14:34:25', NULL),
(2, 'The Country', 'What are 4 things that define a country?\n\nA country may be a non-sovereign or historically sovereign political division (such as Korea), a physical territory with a government (such as Senegal), or a geographic region associated with certain distinct political, ethnic, or cultural characteristics (such as the Basque Country).', 'fa fa-sign-language', 1, '2022-11-08 14:36:33', NULL),
(3, 'Housing Costs', 'When you purchase a home, you pay for it each month. However, it\'s not just your mortgage payment that you pay. You also pay for insurance, property taxes, utilities and maintenance costs. When you\'re trying to budget for your future home, it can be hard to determine how much each one of those will cost a month.', 'fa fa-money', 1, '2022-11-08 14:38:55', NULL),
(4, 'Curiosities ‘n Tips', 'Curiosities ‘n Tips', 'fa fa-binoculars', 1, '2022-11-08 14:40:18', NULL),
(5, 'Shop, Eat ‘n Sleep', 'Shop, Eat ‘n Sleep', 'fa fa-shopping-bag', 1, '2022-11-08 14:45:37', NULL),
(6, 'Education ‘n Healthcare', 'Education ‘n Healthcare', 'fa fa-graduation-cap', 1, '2022-11-08 14:46:36', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `portugalinfotypes`
--

CREATE TABLE `portugalinfotypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `textPortugalInfoType` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgPortugalInfoType` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hyperlinkPortugalInfoType` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `htmlType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FK_id_portugalInfo` bigint(20) UNSIGNED NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `portugalinfotypes`
--

INSERT INTO `portugalinfotypes` (`id`, `textPortugalInfoType`, `imgPortugalInfoType`, `hyperlinkPortugalInfoType`, `htmlType`, `FK_id_portugalInfo`, `estadoID`, `created_at`, `updated_at`) VALUES
(1, 'Portugal was founded in 1143, the year the Treaty of Zamora was signed. The Treaty, signed between D. Afonso Henriques, the first king of Portugal, and Afonso VII of León and Castile, recognizes Portugal\'s legal status as an independent kingdom. In 1179 this status was confirmed by Pope Alexander III.', '', '', '<p>', 1, 1, '2022-11-10 09:01:43', NULL),
(2, 'During the centuries In the twelfth and thirteenth centuries, the Portuguese kings expanded their borders, until the conquest of the Algarve, consolidating a territory practically unchanged until today.', NULL, NULL, '<p>', 1, 1, '2022-11-10 09:18:47', NULL),
(3, 'In 1498 Vasco da Gama discovered the sea route to India, and in 1500 Pedro Álvares Cabral arrived in Brazil. The Portuguese would also reach Oman (1508), Malaya (1511), Timor (1512), China (1513) and Japan (1543). It was also a Portuguese, Fernão de Magalhães, who planned and commanded, between 1519 and 1522, the first voyage to circumnavigate the globe.', NULL, NULL, '<p>', 1, 1, '2022-11-10 09:48:06', NULL),
(4, NULL, 'portugalMap.jpg', NULL, '<img>', 1, 1, '2022-11-10 09:58:57', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descServicos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadoID` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `iconValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `descServicos`, `estadoID`, `created_at`, `updated_at`, `iconValue`) VALUES
(1, 'Investing', 'Investing', 1, '2022-11-06 19:45:30', NULL, 'fa fa-euro'),
(2, 'Buying Property', 'Buying Property', 1, '2022-11-06 19:46:03', NULL, 'fa fa-money'),
(3, 'Selling Property', 'Selling Property', 1, '2022-11-06 19:47:01', NULL, 'fa fa-home'),
(4, 'Rental', 'Rental', 1, '2022-11-06 19:47:21', NULL, 'fa fa-tags'),
(5, 'Services', 'Services', 1, '2022-11-06 19:47:32', NULL, 'fa fa-wrench');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_types`
--

CREATE TABLE `servicos_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeServicosTypes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricaoServicos` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `FK_id_servico` bigint(20) UNSIGNED NOT NULL,
  `FkIDestado` bigint(20) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `servicos_types`
--

INSERT INTO `servicos_types` (`id`, `nomeServicosTypes`, `descricaoServicos`, `created_at`, `updated_at`, `FK_id_servico`, `FkIDestado`) VALUES
(4, 'Business Plan', 'Executive Summary;\r\n\r\nCompany Description;\r\n\r\nProducts and Services;\r\n\r\nMarket analysis;\r\n\r\nStrategy and Implementation;\r\n\r\nOrganization and Management Team;\r\n\r\nFinancial plan and projections.', '2022-11-07 19:42:15', NULL, 1, 1),
(5, 'Resell', '', '2022-11-07 19:42:32', NULL, 1, 1),
(6, 'Rental Management', '1. Prepare the apartment, I usually recommend that it’s rented only with the kitchen equipped, to avoid any damaged furniture; 2. List and start promoting the property; 3. Selection of possible tenants- through a call or meeting, I will establish if the person matches the right profile before scheduling the visits; 4. Visits- the selected callers will; 5. Proposals- in this phase I will ask for documents and personal information that will help us understand more about the people; 6. Rental contract - all the bureaucracy will be handled by our agencies\' lawyers; 7. Management- in about 2 week I will finish my rental management course, and then I can guide you through what I can do to help. After leasing the apartment, we have to register it in the IRS and issue receipts for the rental payments (this is automatic) The tax costs depend on the contract length - 28% under 2 years; - 26% between 2 and 5 years; - 23% between 5 and 10 years; - 14% between 10 and 20 years; - 10% over 20 years. Other costs: - IMI (Tax Equity Value); - Management; - Condominium (owners\' association) fees; - Maintenance. And about what we also talked about, the hou', '2022-11-07 19:42:58', NULL, 1, 1),
(7, 'AirBnB', '', '2022-11-07 19:43:19', NULL, 1, 1),
(8, 'How to Buy', '1. Apartment search and visit scheduling; 2. Submission of acquisition proposal; 3. Negotiation and acceptance of the acquisition proposal; 4. Signature of the Promissory Contract and payment of 10% of the purchase price; 5. Negotiation and granting of bank loan (if needed); 6. Submission of documentation and request for evaluation and approval of the bank loan (if needed); 7. Credit approval and evaluation result (if needed); 8. Request for tax guides, preemptive rights and banks’ protocol; 9. Final deed. After the deed, we must register the contract in the finances, I can help you with this part. For purchase related fees, the ballpark figure is around 10% if the property price. Depending on the property value: - Transfer tax goes from 0% to 8%; - Legal fees from the notary and land registry are in-between 400€ and 1.500€; - State taxes can be up to 0.8%. You can make different simulations in this website: https://www.doutorfinancas.pt/simulador-imt/comment-page-7/?src=adw.aq-ch.search.dsa.aquisicaogen.b&gclid=CjwKCAjwhNWZBhB_EiwAPzlhNjlYr20eI3HqfU5ke3r-miub7bWHTv0uOGV1-pKLuu-TIqntqYDynxoCnKIQAvD_BwE\r\n\r\nOn completion of the sale, and the transfer of ownership, both parties sign the escritura (the title deeds) before a notary. The balance of the purchase price plus all fees and taxes is paid at this time.\r\n\r\nFor purchase related fees, the ballpark figure is 10%. Depending on declared value, transfer tax goes from 0% to 8%. Legal fees are 1% to 2%; notary and land registry fees around 2.5%; and annual local taxes can be up to 0.8%. Agents\' fees mostly range from 3% to 5%, though the seller pays these.', '2022-11-07 19:43:54', NULL, 2, 1),
(9, 'Mortgages', 'We look for the bank that offers the best conditions for your case. We have access to privileged channels from the main Portuguese banks and help negotiate with them the best conditions to obtain mortgage loans with the lowest possible spread.\r\n\r\nIn this way, you avoid bureaucracy, reduce procedural costs and, of course, obtain the best market conditions.', '2022-11-07 19:44:11', NULL, 2, 1),
(10, 'Market Trends', 'A real estate market analysis, also known as a comparative market analysis, is an analysis of current market values of properties, comparable to a property you are looking to buy or sell.\n\nA real estate market analysis should always be done it is done whenever you’re buying or selling a property, as it will help to understand the current market, how much similar properties are worth, if it is an investment property, how much you can charge for rent, etc.\n\nThe information gathered through a real estate market survey helps the seller choose a listing price and helps buyers see if the asking price is too high, low or reasonable.\n\nThere are several reasons to do this type of study, the main one is to have information that allows you to invest and buy safely. Other reasons also include:\n\n· To know if you should invest in one city instead of another;\n\n· To identify which elements hinder investment in certain places.\n\n· To know demographic aspects to determine the evolution of the area where you want to invest.\n\n· To have information about investment projects in certain areas and to know if in the future they will have a development that will increase the value of the properties.\n\nBy knowing the housing market prices, you will always have the opportunity to negotiate a lower price and avoid overpaying the market value of a property.\n\n· Property analysis: To conduct a real estate market analysis is to perform a property analysis. The area and neighborhood, lot size, construction time, services and amenities, etc. should be evaluated.\n\n· Evaluate the original price: Once you have performed the property analysis, search online for the original listing, if possible. This will give you a good idea of the overall condition of the home. Review the photos and descriptions for any updates, remodeling or potential problems.\n\n· Verify property value estimates: Use online resources to give you the estimated market value of the home. Since these are market value estimates, they may not be totally accurate, especially if changes have been made to the home. But this will provide a good starting number to continue your real estate market research.\n\n· Comparisons: Make a comparison of the property with others in the same area, aspects such as size, price and other elements will help you determine the value.\n\n· Decide the market value: According to all your research, you should have a price range for the value of your property. Take into account everything you have observed and analyzed and how it will affect the value.', '2022-11-07 19:44:29', NULL, 2, 1),
(11, 'Properties', '', '2022-11-07 19:44:40', NULL, 2, 1),
(12, 'Market Evaluation', '', '2022-11-07 19:45:14', NULL, 3, 1),
(13, 'Strategy', '', '2022-11-07 19:45:30', NULL, 3, 1),
(14, 'International Partnerships', '', '2022-11-07 19:45:45', NULL, 3, 1),
(15, 'Search', '', '2022-11-07 19:46:11', NULL, 4, 1),
(16, 'Transaction', '', '2022-11-07 19:46:20', NULL, 4, 1),
(17, 'Documents', '', '2022-11-07 19:46:28', NULL, 4, 1),
(18, 'Relocations', '', '2022-11-07 19:46:50', NULL, 5, 1),
(22, 'Visa Acquisition', '', '2022-11-07 19:51:17', NULL, 5, 1),
(23, 'Bank Account', '', '2022-11-07 19:51:35', NULL, 5, 1),
(24, 'NIF (Fiscal Number)', '', '2022-11-07 19:51:49', NULL, 5, 1),
(25, 'Accounting Support', '', '2022-11-07 19:51:59', NULL, 5, 1),
(26, 'Construction', '', '2022-11-07 19:52:08', NULL, 5, 1),
(27, 'Renovations', '', '2022-11-07 19:52:17', NULL, 5, 1);

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
(4, 'Whatsapp', 'WhatsApp é um aplicativo multiplataforma de mensagens instantâneas e chamadas de voz para smartphones. Além de mensagens de texto, os usuários podem enviar imagens, vídeos e documentos em PDF, além de fazer ligações grátis por meio de uma conexão com a in', 1, '2022-11-01 16:30:33', NULL, 'fa fa-whatsapp');

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
(4, 'https://www.instagram.com/31_almeida_01/', 2, 2, 1, '2022-11-02 13:09:46', NULL);

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
-- Índices para tabela `portugalinfos`
--
ALTER TABLE `portugalinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portugalinfo_estadoid_foreign` (`estadoID`);

--
-- Índices para tabela `portugalinfotypes`
--
ALTER TABLE `portugalinfotypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portugalinfotype_estadoid_foreign` (`estadoID`),
  ADD KEY `portugalinfotypes_fk_id_portugalinfo_foreign` (`FK_id_portugalInfo`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcoes`
--
ALTER TABLE `funcoes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `portugalinfos`
--
ALTER TABLE `portugalinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `portugalinfotypes`
--
ALTER TABLE `portugalinfotypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `servicos_types`
--
ALTER TABLE `servicos_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `social_media_configs`
--
ALTER TABLE `social_media_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `social_media_funcionario_configs`
--
ALTER TABLE `social_media_funcionario_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

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
-- Limitadores para a tabela `portugalinfos`
--
ALTER TABLE `portugalinfos`
  ADD CONSTRAINT `portugalinfo_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`);

--
-- Limitadores para a tabela `portugalinfotypes`
--
ALTER TABLE `portugalinfotypes`
  ADD CONSTRAINT `portugalinfotype_estadoid_foreign` FOREIGN KEY (`estadoID`) REFERENCES `estados` (`id`),
  ADD CONSTRAINT `portugalinfotypes_fk_id_portugalinfo_foreign` FOREIGN KEY (`FK_id_portugalInfo`) REFERENCES `portugalinfos` (`id`);

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
