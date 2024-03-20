-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 24, 2024 at 10:47 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lowkalo`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `alert` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `name_ar`, `short`, `short_ar`, `image_path`, `body`, `body_ar`, `question`, `question_ar`, `created_at`, `updated_at`, `slug`, `type`) VALUES
(2, 'Accounting', 'المحاسبة', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'accounting', 'front-of-house'),
(3, 'Point of sale (POS)', 'نقاط البيع (POS)', 'A POS or point of sale is a device that is used to process transactions by retail customers.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '/images/services/pos-image.png', 'A POS is the point in your restaurant where you make a sale. It’s   designed to facilitate sales transactions at the point of purchase,  process payment, manage table, and  manage restaurants inventory beside many more . ', 'تعتبر نقاط البيع العقل للمطاعم والكافيهات لإدارتها العديد من العمليات المهمة كتسجل طلبات العملاء، مراقبة المخزون و طباعة الفواتير و اصدار تقارير المبيعات.  تعتبر أيضا حلقة الوصل - في البرامج السحابية- بينها و بين البرامج الاخرى كالبرامج المحاسبية وبرامج الولاء والعديد من البرامج الاخرى .   النقطة التي تتم فيها عملية البيع قد تكون عن طريق موظف يقوم بتسجيل الطلبات في برنامج نقاط البيع، او عن طريق جهاز الخدمة الذاتية (Kiosk) او عن طريق الطلب الرقمي عن طريق الجوال     ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:47:29', '2023-04-06 10:47:29', 'point-of-sale', 'front-of-house'),
(4, 'Payment Terminal', 'محطة الدفع', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:49:42', '2023-04-06 10:49:42', 'payment-terminal', 'front-of-house'),
(5, 'Delivery Management', 'إدارة طلبات التوصيل', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'delivery-management', 'front-of-house'),
(6, 'Loyalty', 'برامج الولاء\r\n', 'A loyalty program implemented by businesses to encourage customers to make purchases and to retain them.', 'برامج الولاء تعتبر من استراتيجيات التسويق المستخدمة لتشيجع العملاء على الشراء وللمحافظة على العملاء ', '/images/services/loyalty-image.png', 'A loyalty program implemented by businesses to encourage customers to make purchases and to retain them.', 'برامج الولاء تعتبر من استراتيجيات التسويق المستخدمة لتشيجع العملاء على الشراء وللمحافظة على العملاء ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'loyalty', 'front-of-house'),
(7, 'Online Ordering ( Website & Mobile App)', 'طلبات الاونلاين ( عن طريق الموقع او تطبيق الجوال)  ', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '/images/services/online-ordering-image.png', 'online ordering software  allows restaurants to have their own branded applications and websites', 'توفر هذا الخدمة موقع  الكتروني وتطبيق بالجوال خاص بمشروعك يساعدك على استقبال الطلبات مباشرة من العملاء', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'online-ordering', 'front-of-house'),
(8, 'Food Delivery Aggregators\r\n', 'منصات توصيل الطعام\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'food-delivery-aggregators', 'front-of-house'),
(9, 'Back of House\r\n', 'Back of House\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'back-of-house', 'back-of-house\n'),
(10, 'Digital Menu\r\n', 'القوائم الرقمية\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:51:36', '2023-04-06 10:51:36', 'digital-menu', 'front-of-house'),
(11, 'Data & Analytics\r\n', 'إدارة وتحليل البيانات\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'data-and-analytics', 'front-of-house'),
(12, 'ERP', 'تخطيط موارد المؤسسات\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'erp', 'front-of-house'),
(13, 'Digital Receipts\r\n', 'الفواتير الرقمية\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'digital-receipts', 'front-of-house'),
(14, 'Supplier Aggregators\r\n', 'منصات الموردين\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'supplier-aggregators', 'front-of-house'),
(15, 'Ordering Platforms Management\r\n', 'إدارة منصات الطلب\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'ordering-platforms-management', 'front-of-house'),
(16, 'Survey', 'استبيانات', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'survey', 'front-of-house'),
(17, 'Table Reservation\r\n', 'حجز الطاولات\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'table-reservation', 'front-of-house'),
(18, 'HR', 'الموارد البشرية\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'hr', 'front-of-house'),
(19, 'Payroll and Attendance\r\n', 'الرواتب والحضور\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'payroll-and-attendance', 'front-of-house'),
(20, 'Marketing', 'تسويق\r\n', 'Keep track of revenue and expenses efficiently in one place.', 'نقطة البيع أو نقطة البيع هي جهاز يتم استخدامه لمعالجة المعاملات من قبل عملاء التجزئة.', '', 'Restaurant accounting and finance tallies, tracks, and ultimately optimizes every dollar that comes in and leaves your restaurant. Keeping that record — of transactions, tips, payroll, inventory and more — will let you keep your business humming along, while providing data that you can use to analyze your restaurant’s performance and make it more profitable. Without the right systems in place, keeping track of revenue and expenses can be an incredibly burdensome task for restaurant operators. The right accounting software solution will be tailored specifically to the needs of restaurant operators, helping to make sure all your data is seamlessly tracked in one place, giving you efficient, accessible insights into your finances.', 'تقوم محاسبة المطعم والتمويل بإحصاءات وتتبع وتحسين كل دولار يأتي ويخرج من مطعمك. سيتيح لك الاحتفاظ بهذا السجل - من المعاملات والنصائح وكشوف المرتبات والمخزون والمزيد - الحفاظ على نشاطك التجاري ، مع توفير البيانات التي يمكنك استخدامها لتحليل أداء مطعمك وجعله أكثر ربحية. بدون وجود الأنظمة المناسبة ، يمكن أن يكون تتبع الإيرادات والمصروفات مهمة مرهقة للغاية لمشغلي المطاعم. سيتم تصميم حل برنامج المحاسبة المناسب خصيصًا لتلبية احتياجات مشغلي المطاعم ، مما يساعد على التأكد من تتبع جميع بياناتك بسلاسة في مكان واحد ، مما يمنحك رؤى فعالة وسهلة الوصول إلى أموالك.', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'marketing', 'front-of-house'),
(21, 'Queuing', 'نظام إدارة قوائم الانتظار', 'designed to capture, control and automate the restaurant\'s queuing process ', 'تم تصميمه لالتقاط عملية الانتظار في المطعم والتحكم فيها وأتمتتها', '', 'designed to capture, control and automate the restaurant\'s queuing process ', 'تم تصميمه لالتقاط عملية الانتظار في المطعم والتحكم فيها وأتمتتها', 'What is queuing software for restaurants?', 'ما هو برنامج queuing للمطاعم؟', NULL, NULL, 'queuing', 'front-of-house'),
(22, 'Mobile Application', 'تطبيق جوال', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'mobile-app', 'front-of-house'),
(23, 'Self-service kiosks', 'أكشاك الخدمة الذاتية', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'self-service-kiosks', 'front-of-house'),
(24, 'Wi-Fi and connectivity solutions', 'حلول الواي فاي والاتصال', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'wifi-and-connectivity-solutions', 'front-of-house'),
(25, 'Communication and communication solutions', 'حلول الاتصال والاتصال', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'communication-and-communication-solutions', 'front-of-house'),
(26, 'Workforce analysis tools', 'أدوات تحليل القوى العاملة', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'workforce-analysis-tools', 'front-of-house'),
(27, 'Warehouse management software', 'برامج إدارة المخازن', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'warehouse-management-software', 'back-of-house'),
(28, 'Financial management programs', 'برامج الإدارة المالية', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'financial-management-programs', 'back-of-house'),
(29, 'Waste management solutions', 'حلول إدارة النفايات', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'waste-management-solutions', 'back-of-house'),
(30, 'Employee scheduling and management tools', 'أدوات جدولة وإدارة الموظفين', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'employee-scheduling-and-management-tools', 'back-of-house'),
(31, 'Supply chain and vendor management tools', 'أدوات إدارة سلسلة التوريد والبائعين', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'supply-chain-and-vendor-management-tools', 'back-of-house'),
(32, 'Digital health and safety training platforms', 'منصات التدريب على الصحة والسلامة الرقمية', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'digital-health-and-safety-training-platforms', 'back-of-house'),
(33, 'Food safety and compliance programs', 'برامج سلامة الأغذية والامتثال', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'food-safety-and-compliance-programs', 'back-of-house'),
(34, 'Sustainability and environmental solutions', 'حلول الاستدامة والبيئة', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', '', 'It includes all your accounting and finance processes, allowing you to track costs and expenses across various cost categories within your Profit and Loss statement (P&L).', 'تسهل البرامج المحاسبية عمليات تسجيل التكاليف والنفقات عبر فئات متنوعة داخل بيان الارباح والخسائر الخاصة بمشروعك  ', 'What is accounting and finance software for restaurants?', 'ما هو برنامج المحاسبة والتمويل للمطاعم؟', '2023-04-06 10:43:25', '2023-04-06 10:43:25', 'sustainability-and-environmental-solutions', 'back-of-house');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'abbas', 'abbas@gmail.com', '0511111111', '2023-03-11 15:12:24', '2023-03-11 15:12:24'),
(2, 'abbas', 'abbas@gmail.com', '0511111111', '2023-03-11 15:12:35', '2023-03-11 15:12:35'),
(3, 'abbas', 'abbas@gmail.com', '0511111111', '2023-03-11 15:12:47', '2023-03-11 15:12:47'),
(4, 'abbas2', 'abbas@gmail.com', '05444444443', '2023-03-11 15:16:08', '2023-03-11 15:16:08'),
(5, 'omer', 'omae@gmaik.com', '0544444444', '2023-03-11 15:17:06', '2023-03-11 15:17:06'),
(6, 'omer', 'omaros2022@gmail.com', '20544444444', '2023-03-11 15:17:13', '2023-03-11 15:17:13'),
(7, 'abbas23', 'abbas2@gmail.com', '0544444444', '2023-03-11 15:17:47', '2023-03-11 15:17:47'),
(8, 'abbas', 'omae@gmaik.com', '0544444444', '2023-03-11 15:17:55', '2023-03-11 15:17:55'),
(9, 'omer', 'omae@gmaik.com', '0544444444', '2023-03-11 15:18:04', '2023-03-11 15:18:04'),
(10, 'omer', 'omae@gmaik.com', '0511111111', '2023-03-11 15:18:21', '2023-03-11 15:18:21'),
(11, 'omer', 'omaros20222@gmail.com', '054444444433', '2023-03-11 19:27:49', '2023-03-11 19:27:49'),
(12, 'omer', 'omae09@gmaik.com', '05444448444', '2023-03-12 15:09:53', '2023-03-12 15:09:53'),
(13, 'omer', 'omarte@gmaik.com', '05111111110', '2023-03-12 15:10:05', '2023-03-12 15:10:05'),
(14, 'Omar Osama', 'omaros202190@gmail.com', '0988888888', '2023-03-13 04:13:02', '2023-03-13 04:13:02'),
(15, 'omer', 'omaros200021@gmail.com', '0565565666', '2023-03-13 04:13:59', '2023-03-13 04:13:59'),
(16, 'omer', 'omaros290021@gmail.com', '0565565666', '2023-03-13 04:15:08', '2023-03-13 04:15:08'),
(17, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-13 04:15:20', '2023-03-13 04:15:20'),
(18, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-13 04:15:52', '2023-03-13 04:15:52'),
(19, 'omer', 'omaros2021qqq@gmail.com', 'dddd', '2023-03-13 04:54:17', '2023-03-13 04:54:17'),
(20, 'omer', 'lowkalo2023@gmail.com', '0535532434', '2023-03-13 07:00:41', '2023-03-13 07:00:41'),
(22, 'omer', 'omaros20212@gmail.com', '05655625666', '2023-03-13 07:07:19', '2023-03-13 07:07:19'),
(23, 'omer', 'omaros20212@gmail.com', '05655625666', '2023-03-13 07:08:08', '2023-03-13 07:08:08'),
(26, 'omer', 'gazzi5923@gmail.com', '053533443', '2023-03-13 08:45:31', '2023-03-13 08:45:31'),
(33, 'omer', 'omss@ffff.com', '2322333222', '2023-03-13 10:20:40', '2023-03-13 10:20:40'),
(34, 'omer', 'dddd@dddd.com', 'dddd', '2023-03-13 11:45:35', '2023-03-13 11:45:35'),
(35, 'omer', 'omaros2024@gmail.com', '111111111', '2023-03-13 11:55:28', '2023-03-13 11:55:28'),
(38, 'omer', 'omaros2021@gmail.com', 'dddd', '2023-03-14 21:13:10', '2023-03-14 21:13:10'),
(39, 'omer', 'omaros2021@gmail.com', '05655365666', '2023-03-14 21:14:12', '2023-03-14 21:14:12'),
(40, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 21:14:26', '2023-03-14 21:14:26'),
(41, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 21:17:56', '2023-03-14 21:17:56'),
(42, 'omer', 'omaros2021@gmail.com', '05655365666', '2023-03-14 21:19:49', '2023-03-14 21:19:49'),
(43, 'omer', 'omaros2021@gmail.com', '0535532434', '2023-03-14 21:38:30', '2023-03-14 21:38:30'),
(44, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 21:42:38', '2023-03-14 21:42:38'),
(45, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 21:53:06', '2023-03-14 21:53:06'),
(47, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 22:11:15', '2023-03-14 22:11:15'),
(48, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 22:11:41', '2023-03-14 22:11:41'),
(49, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 22:24:00', '2023-03-14 22:24:00'),
(50, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 22:24:54', '2023-03-14 22:24:54'),
(53, 'omer', 'lowkalo2023@gmail.com', '0565565666', '2023-03-14 22:38:48', '2023-03-14 22:38:48'),
(55, 'omer', 'omeros2024@gmail.com', '05655365666', '2023-03-14 22:44:04', '2023-03-14 22:44:04'),
(56, 'omer', 'omeros2022@gmail.com', '05655365666', '2023-03-14 22:45:17', '2023-03-14 22:45:17'),
(57, 'omer', 'omeros2021@gmail.com', '05655365666', '2023-03-14 22:46:36', '2023-03-14 22:46:36'),
(58, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 22:55:16', '2023-03-14 22:55:16'),
(59, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 22:56:12', '2023-03-14 22:56:12'),
(60, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 22:56:16', '2023-03-14 22:56:16'),
(61, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 22:56:19', '2023-03-14 22:56:19'),
(62, 'omer', 'omaros2021@gmail.com', '05655625666', '2023-03-14 22:56:25', '2023-03-14 22:56:25'),
(63, 'omer', 'omaros2021@gmail.com', '0565565666', '2023-03-14 22:56:41', '2023-03-14 22:56:41'),
(66, 'omer', 'omeros202224@gmail.com', '0565562566622', '2023-03-16 04:53:34', '2023-03-16 04:53:34'),
(67, 'omer', 'omeros202224@gmail.com', '0565562566622', '2023-03-16 04:55:05', '2023-03-16 04:55:05'),
(68, 'omer', 'omaros2021211@gmail.com', '05655656663222', '2023-03-16 08:34:40', '2023-03-16 08:34:40'),
(69, 'omer', 'omaros2021211@gmail.com', '05655656663222', '2023-03-16 08:34:50', '2023-03-16 08:34:50'),
(70, 'omer', 'omaros202221@gmail.com', '205655656662', '2023-03-16 08:35:11', '2023-03-16 08:35:11'),
(71, 'omer', 'omeros222222024@gmail.com', 'dddd2222', '2023-03-16 09:52:23', '2023-03-16 09:52:23'),
(72, 'omer', 'omeros222222024@gmail.com', 'dddd2222', '2023-03-16 10:03:31', '2023-03-16 10:03:31'),
(73, 'omer osama', 'omaros2021ddd@gmail.com', 'dddddddd', '2023-03-17 02:44:18', '2023-03-17 02:44:18'),
(74, 'omer osama', 'omaros2021ddd@gmail.com', 'dddddddd', '2023-03-17 02:45:52', '2023-03-17 02:45:52'),
(76, 'omer', 'abba11s@gmail.com', '4444441111', '2023-08-29 19:56:38', '2023-08-29 19:56:38'),
(77, 'omer', 'omaros2ddd021@gmail.com', '054444444433', '2023-08-29 20:13:09', '2023-08-29 20:13:09'),
(78, 'omer', 'omeros222222024@gmail.com', '053553243422', '2023-09-25 08:25:20', '2023-09-25 08:25:20'),
(79, 'omer', 'omeros222222024@gmail.com', '053553243422', '2023-09-25 08:25:32', '2023-09-25 08:25:32'),
(80, 'omer', 'omeros222222024@gmail.com', '053553243422', '2023-09-25 08:27:26', '2023-09-25 08:27:26'),
(81, 'omer', 'omeros222222024@gmail.com', '053553243422', '2023-09-25 08:27:35', '2023-09-25 08:27:35'),
(82, 'omer', 'omeros222222024@gmail.com', '053553243422', '2023-09-25 08:27:40', '2023-09-25 08:27:40'),
(83, 'omer osama', 'omar11111os2021@gmail.com', '0565565666111', '2023-09-25 08:36:30', '2023-09-25 08:36:30'),
(84, 'omer osama', 'omar11111os2021@gmail.com', '0565565666111', '2023-09-25 08:36:35', '2023-09-25 08:36:35'),
(85, 'omer osama', 'omaros2021lsls@gmail.com', '054444443323', '2023-09-28 04:48:19', '2023-09-28 04:48:19'),
(86, 'omer osama', 'omaros2021lsls@gmail.com', '054444443323', '2023-09-28 04:48:29', '2023-09-28 04:48:29'),
(87, 'omer osama', 'omaros2021lsls@gmail.com', '054444443323', '2023-09-28 04:48:39', '2023-09-28 04:48:39'),
(88, 'omer', 'omaros20www21@gmail.com', '0544445445', '2023-09-28 04:50:57', '2023-09-28 04:50:57'),
(89, 'omer', 'omaros20www21@gmail.com', '0544445445', '2023-09-28 04:51:04', '2023-09-28 04:51:04'),
(90, 'omer', 'omaros20www21@gmail.com', '0544445445', '2023-09-28 04:51:11', '2023-09-28 04:51:11');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `convertedvideos`
--

CREATE TABLE `convertedvideos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `mp4_Format_240` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp4_Format_360` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp4_Format_480` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp4_Format_720` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp4_Format_1080` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webm_Format_240` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webm_Format_360` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webm_Format_480` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webm_Format_720` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `webm_Format_1080` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `convertedvideos`
--

INSERT INTO `convertedvideos` (`id`, `video_id`, `mp4_Format_240`, `mp4_Format_360`, `mp4_Format_480`, `mp4_Format_720`, `mp4_Format_1080`, `webm_Format_240`, `webm_Format_360`, `webm_Format_480`, `webm_Format_720`, `webm_Format_1080`, `created_at`, `updated_at`) VALUES
(2, 2, '240p-2zHu5Rp5acE5O2jP.mp4', '360p-2zHu5Rp5acE5O2jP.mp4', '480p-2zHu5Rp5acE5O2jP.mp4', '720p-2zHu5Rp5acE5O2jP.mp4', '1080p-2zHu5Rp5acE5O2jP.mp4', '240p-2zHu5Rp5acE5O2jP.webm', '360p-2zHu5Rp5acE5O2jP.webm', '480p-2zHu5Rp5acE5O2jP.webm', '720p-2zHu5Rp5acE5O2jP.webm', '1080p-2zHu5Rp5acE5O2jP.webm', '2023-01-07 15:16:54', '2023-01-07 15:16:54'),
(3, 3, '240p-bLpFWwKVsocAOiHW.mp4', '360p-bLpFWwKVsocAOiHW.mp4', '480p-bLpFWwKVsocAOiHW.mp4', '720p-bLpFWwKVsocAOiHW.mp4', '1080p-bLpFWwKVsocAOiHW.mp4', '240p-bLpFWwKVsocAOiHW.webm', '360p-bLpFWwKVsocAOiHW.webm', '480p-bLpFWwKVsocAOiHW.webm', '720p-bLpFWwKVsocAOiHW.webm', '1080p-bLpFWwKVsocAOiHW.webm', '2023-01-07 15:35:57', '2023-01-07 15:35:57'),
(4, 4, '240p-xbzO8kFbpbGbatTQ.mp4', '360p-xbzO8kFbpbGbatTQ.mp4', '480p-xbzO8kFbpbGbatTQ.mp4', '720p-xbzO8kFbpbGbatTQ.mp4', '1080p-xbzO8kFbpbGbatTQ.mp4', '240p-xbzO8kFbpbGbatTQ.webm', '360p-xbzO8kFbpbGbatTQ.webm', '480p-xbzO8kFbpbGbatTQ.webm', '720p-xbzO8kFbpbGbatTQ.webm', '1080p-xbzO8kFbpbGbatTQ.webm', '2023-01-07 16:09:18', '2023-01-07 16:09:18'),
(5, 5, '240p-BtoRwVqV2hOk04Wk.mp4', '360p-BtoRwVqV2hOk04Wk.mp4', '480p-BtoRwVqV2hOk04Wk.mp4', '720p-BtoRwVqV2hOk04Wk.mp4', '1080p-BtoRwVqV2hOk04Wk.mp4', '240p-BtoRwVqV2hOk04Wk.webm', '360p-BtoRwVqV2hOk04Wk.webm', '480p-BtoRwVqV2hOk04Wk.webm', '720p-BtoRwVqV2hOk04Wk.webm', '1080p-BtoRwVqV2hOk04Wk.webm', '2023-01-07 16:18:34', '2023-01-07 16:18:34'),
(6, 6, '240p-bditKmZcnZpIgLMw.mp4', '360p-bditKmZcnZpIgLMw.mp4', '480p-bditKmZcnZpIgLMw.mp4', '720p-bditKmZcnZpIgLMw.mp4', '1080p-bditKmZcnZpIgLMw.mp4', '240p-bditKmZcnZpIgLMw.webm', '360p-bditKmZcnZpIgLMw.webm', '480p-bditKmZcnZpIgLMw.webm', '720p-bditKmZcnZpIgLMw.webm', '1080p-bditKmZcnZpIgLMw.webm', '2023-01-07 16:33:40', '2023-01-07 16:33:40'),
(7, 7, '240p-SGMI5igK0c9Xzq79.mp4', '360p-SGMI5igK0c9Xzq79.mp4', '480p-SGMI5igK0c9Xzq79.mp4', '720p-SGMI5igK0c9Xzq79.mp4', '1080p-SGMI5igK0c9Xzq79.mp4', '240p-SGMI5igK0c9Xzq79.webm', '360p-SGMI5igK0c9Xzq79.webm', '480p-SGMI5igK0c9Xzq79.webm', '720p-SGMI5igK0c9Xzq79.webm', '1080p-SGMI5igK0c9Xzq79.webm', '2023-01-07 16:48:13', '2023-01-07 16:48:13'),
(8, 8, '240p-sYkUiUiajEgXlwm4.mp4', '360p-sYkUiUiajEgXlwm4.mp4', '480p-sYkUiUiajEgXlwm4.mp4', '720p-sYkUiUiajEgXlwm4.mp4', '1080p-sYkUiUiajEgXlwm4.mp4', '240p-sYkUiUiajEgXlwm4.webm', '360p-sYkUiUiajEgXlwm4.webm', '480p-sYkUiUiajEgXlwm4.webm', '720p-sYkUiUiajEgXlwm4.webm', '1080p-sYkUiUiajEgXlwm4.webm', '2023-01-07 17:06:53', '2023-01-07 17:06:53'),
(9, 9, '240p-oRufNY2pgku52RXQ.mp4', '360p-oRufNY2pgku52RXQ.mp4', '480p-oRufNY2pgku52RXQ.mp4', '720p-oRufNY2pgku52RXQ.mp4', '1080p-oRufNY2pgku52RXQ.mp4', '240p-oRufNY2pgku52RXQ.webm', '360p-oRufNY2pgku52RXQ.webm', '480p-oRufNY2pgku52RXQ.webm', '720p-oRufNY2pgku52RXQ.webm', '1080p-oRufNY2pgku52RXQ.webm', '2023-01-07 17:25:37', '2023-01-07 17:25:37'),
(10, 10, '240p-wilbp6hvt6pS3jSD.mp4', '360p-wilbp6hvt6pS3jSD.mp4', '480p-wilbp6hvt6pS3jSD.mp4', '720p-wilbp6hvt6pS3jSD.mp4', '1080p-wilbp6hvt6pS3jSD.mp4', '240p-wilbp6hvt6pS3jSD.webm', '360p-wilbp6hvt6pS3jSD.webm', '480p-wilbp6hvt6pS3jSD.webm', '720p-wilbp6hvt6pS3jSD.webm', '1080p-wilbp6hvt6pS3jSD.webm', '2023-01-07 17:32:24', '2023-01-07 17:32:24'),
(11, 11, '240p-uS3ZIwxhi0gWnHXa.mp4', '360p-uS3ZIwxhi0gWnHXa.mp4', '480p-uS3ZIwxhi0gWnHXa.mp4', '720p-uS3ZIwxhi0gWnHXa.mp4', '1080p-uS3ZIwxhi0gWnHXa.mp4', '240p-uS3ZIwxhi0gWnHXa.webm', '360p-uS3ZIwxhi0gWnHXa.webm', '480p-uS3ZIwxhi0gWnHXa.webm', '720p-uS3ZIwxhi0gWnHXa.webm', '1080p-uS3ZIwxhi0gWnHXa.webm', '2023-01-07 17:48:21', '2023-01-07 17:48:21'),
(12, 12, '240p-6f2lGdQXH1TbMYhu.mp4', '360p-6f2lGdQXH1TbMYhu.mp4', '480p-6f2lGdQXH1TbMYhu.mp4', '720p-6f2lGdQXH1TbMYhu.mp4', '1080p-6f2lGdQXH1TbMYhu.mp4', '240p-6f2lGdQXH1TbMYhu.webm', '360p-6f2lGdQXH1TbMYhu.webm', '480p-6f2lGdQXH1TbMYhu.webm', '720p-6f2lGdQXH1TbMYhu.webm', '1080p-6f2lGdQXH1TbMYhu.webm', '2023-01-07 18:14:37', '2023-01-07 18:14:37'),
(13, 13, '240p-9peUIT1LsTafhCA6.mp4', '360p-9peUIT1LsTafhCA6.mp4', '480p-9peUIT1LsTafhCA6.mp4', '720p-9peUIT1LsTafhCA6.mp4', '1080p-9peUIT1LsTafhCA6.mp4', '240p-9peUIT1LsTafhCA6.webm', '360p-9peUIT1LsTafhCA6.webm', '480p-9peUIT1LsTafhCA6.webm', '720p-9peUIT1LsTafhCA6.webm', '1080p-9peUIT1LsTafhCA6.webm', '2023-01-07 18:38:02', '2023-01-07 18:38:02'),
(14, 14, '240p-26Z5nArTkfSAVFKP.mp4', '360p-26Z5nArTkfSAVFKP.mp4', '480p-26Z5nArTkfSAVFKP.mp4', '720p-26Z5nArTkfSAVFKP.mp4', '1080p-26Z5nArTkfSAVFKP.mp4', '240p-26Z5nArTkfSAVFKP.webm', '360p-26Z5nArTkfSAVFKP.webm', '480p-26Z5nArTkfSAVFKP.webm', '720p-26Z5nArTkfSAVFKP.webm', '1080p-26Z5nArTkfSAVFKP.webm', '2023-01-07 19:04:25', '2023-01-07 19:04:25'),
(15, 1, '240p-X21DLv0zNM1GmqfU.mp4', '360p-X21DLv0zNM1GmqfU.mp4', '480p-X21DLv0zNM1GmqfU.mp4', '720p-X21DLv0zNM1GmqfU.mp4', '1080p-X21DLv0zNM1GmqfU.mp4', '240p-X21DLv0zNM1GmqfU.webm', '360p-X21DLv0zNM1GmqfU.webm', '480p-X21DLv0zNM1GmqfU.webm', '720p-X21DLv0zNM1GmqfU.webm', '1080p-X21DLv0zNM1GmqfU.webm', '2023-01-08 23:17:07', '2023-01-08 23:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'OMER24', 10, '2024-05-25', 1, '2023-01-10 20:27:26', '2023-01-10 20:38:11'),
(3, 'DUAA2023', 10, '2023-03-16', 1, '2023-01-11 03:04:14', NULL),
(5, 'DUAA2024', 10, '2023-02-27', 1, '2023-01-11 03:15:08', NULL),
(6, 'OMER242', 20, '2024-05-25', 1, '2023-01-10 20:27:26', '2023-01-10 20:38:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '01/12/2023', '2023-01-11 22:04:41', '2023-01-11 22:04:41'),
(2, '02/12/2023', '2023-01-11 22:06:13', '2023-01-11 22:06:13'),
(3, '03/12/2023', '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(4, '04/12/2023', '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(5, '12-02-2023', '2023-01-15 13:11:58', '2023-01-15 13:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'cfff', '2024-01-02 22:43:53', '2024-01-02 22:43:53'),
(2, 'omar@gmail.com', '2024-01-02 22:44:16', '2024-01-02 22:44:16');

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_12_27_224513_create_sessions_table', 1),
(7, '2022_12_28_112102_create_parts_table', 1),
(8, '2022_12_28_173159_create_courses_table', 1),
(9, '2022_12_28_173216_create_lessons_table', 1),
(10, '2022_12_28_173228_create_bookings_table', 1),
(11, '2022_12_28_173551_add_role_to_users_table', 1),
(12, '2023_01_02_001312_create_videos_table', 1),
(13, '2023_01_02_001345_create_convertedvideos_table', 1),
(14, '2023_01_02_001559_create_comments_table', 1),
(15, '2023_01_02_010908_create_notifications_table', 1),
(16, '2023_01_02_010954_create_alerts_table', 1),
(17, '2023_01_04_151500_add_admin_to_user_table', 1),
(18, '2023_01_07_170545_add_part_to_video_table', 1),
(19, '2023_01_07_172832_create_jobs_table', 1),
(20, '2023_01_09_011421_create_views_table', 2),
(21, '2023_01_10_013214_add_ref_to_users_table', 3),
(22, '2023_01_10_014435_create_references_table', 4),
(23, '2023_01_10_230731_create_coupons_table', 5),
(24, '2023_01_10_230901_create_payments_table', 5),
(25, '2023_01_12_003808_create_dates_table', 6),
(26, '2023_01_12_003820_create_times_table', 6),
(27, '2023_01_12_014802_create_reservations_table', 7),
(28, '2023_03_11_135807_add_phone_to_users_table', 8),
(29, '2023_03_11_181127_create_clients_table', 9),
(30, '2023_03_15_010414_create_jobs_table', 10),
(31, '2023_04_05_162701_create_categories_table', 10),
(32, '2023_04_05_163051_create_soluations_table', 10),
(33, '2023_04_09_175736_create_reviews_controllers_table', 11),
(34, '2023_04_09_180730_create_reviews_table', 12),
(35, '2023_09_07_182659_add_photo_to_comments_table', 13),
(36, '2023_09_07_184326_add_photo_to_reviews_table', 14),
(37, '2023_09_07_201714_add_slug_to_categories_table', 15),
(38, '2023_09_07_212719_add_slug2_to_categories_table', 16),
(39, '2023_09_07_220251_add_slug_to_soluations_table', 17),
(40, '2023_09_24_115147_create_visits_table', 17),
(41, '2023_09_24_115726_add_link_to_soluations_table', 17),
(42, '2023_09_28_003642_create_otps_table', 18),
(43, '2024_01_01_052942_add_avg_to_reviews_table', 19),
(44, '2024_01_01_053309_add_avg_to_soluations_table', 20),
(45, '2024_01_03_013736_create_letters_table', 21),
(46, '2024_02_22_102048_add_price_to_soluations_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `otp`, `email`, `phone`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, '6373', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:17:52', '2023-09-27 22:17:52'),
(2, '9776', NULL, '558802106', NULL, '2023-09-27 22:19:20', '2023-09-27 22:19:20'),
(3, '6662', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:48:49', '2023-09-27 22:48:49'),
(4, '5683', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:50:28', '2023-09-27 22:50:28'),
(5, '9345', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:50:40', '2023-09-27 22:50:40'),
(6, '5769', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:52:59', '2023-09-27 22:52:59'),
(7, '5485', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:55:46', '2023-09-27 22:55:46'),
(8, '6601', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 22:56:42', '2023-09-27 22:56:42'),
(9, '4615', NULL, '558802106', NULL, '2023-09-27 23:02:50', '2023-09-27 23:02:50'),
(10, '4788', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 23:03:51', '2023-09-27 23:03:51'),
(11, '2435', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 23:04:31', '2023-09-27 23:04:31'),
(12, '4061', NULL, '054482282822', NULL, '2023-09-27 23:33:13', '2023-09-27 23:33:13'),
(13, '5364', NULL, '059494494949', NULL, '2023-09-27 23:34:04', '2023-09-27 23:34:04'),
(14, '5495', NULL, '558802106', NULL, '2023-09-27 23:38:40', '2023-09-27 23:38:40'),
(15, '3907', 'omar.os.abdalla@gmail.com', NULL, NULL, '2023-09-27 23:42:19', '2023-09-27 23:42:19'),
(16, '7206', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 23:47:23', '2023-09-27 23:47:23'),
(17, '3559', 'omaros2021@gmail.com', NULL, NULL, '2023-09-27 23:48:23', '2023-09-27 23:48:23'),
(18, '4777', 'omaros2024@gmail.com', NULL, NULL, '2023-09-28 00:06:44', '2023-09-28 00:06:44'),
(19, '8624', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 00:12:38', '2023-09-28 00:12:38'),
(20, '9791', 'omaros2025@gmail.com', NULL, NULL, '2023-09-28 00:23:35', '2023-09-28 00:23:35'),
(21, '9807', 'omaros2021232@gmail.com', NULL, NULL, '2023-09-28 00:25:03', '2023-09-28 00:25:03'),
(22, '8915', 'omaros2022231@gmail.com', NULL, NULL, '2023-09-28 00:25:26', '2023-09-28 00:25:26'),
(23, '2277', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 00:26:06', '2023-09-28 00:26:06'),
(24, '6850', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 00:27:02', '2023-09-28 00:27:02'),
(25, '9116', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:10:29', '2023-09-28 03:10:29'),
(26, '5373', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:15:09', '2023-09-28 03:15:09'),
(27, '4204', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:15:24', '2023-09-28 03:15:24'),
(28, '5473', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:22:11', '2023-09-28 03:22:11'),
(29, '9812', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:23:23', '2023-09-28 03:23:23'),
(30, '5065', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:23:48', '2023-09-28 03:23:48'),
(31, '7031', 'omaros2021@gmail.com', NULL, NULL, '2023-09-28 03:31:11', '2023-09-28 03:31:11'),
(32, '8861', 'omaros2021@gmail.com', NULL, NULL, '2023-11-14 09:54:43', '2023-11-14 09:54:43'),
(33, '7010', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 00:34:34', '2023-11-15 00:34:34'),
(34, '4903', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 00:36:25', '2023-11-15 00:36:25'),
(35, '1703', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 00:39:53', '2023-11-15 00:39:53'),
(36, '1867', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 00:40:01', '2023-11-15 00:40:01'),
(37, '5249', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 00:40:23', '2023-11-15 00:40:23'),
(38, '1839', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:01:10', '2023-11-15 01:01:10'),
(39, '4456', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:02:17', '2023-11-15 01:02:17'),
(40, '6260', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:04:22', '2023-11-15 01:04:22'),
(41, '2363', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:05:07', '2023-11-15 01:05:07'),
(42, '1719', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:40:09', '2023-11-15 01:40:09'),
(43, '3547', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:41:20', '2023-11-15 01:41:20'),
(44, '7806', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:46:00', '2023-11-15 01:46:00'),
(45, '8724', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:50:13', '2023-11-15 01:50:13'),
(46, '5455', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 01:52:51', '2023-11-15 01:52:51'),
(47, '5027', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 02:59:42', '2023-11-15 02:59:42'),
(48, '3663', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 04:11:43', '2023-11-15 04:11:43'),
(49, '1728', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 04:12:49', '2023-11-15 04:12:49'),
(50, '1792', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 04:13:02', '2023-11-15 04:13:02'),
(51, '9231', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 04:13:21', '2023-11-15 04:13:21'),
(52, '9815', 'omaros20244@gmail.com', NULL, NULL, '2023-11-15 04:13:45', '2023-11-15 04:13:45'),
(53, '6409', 'omar.os.abdalla@gmail.com', NULL, NULL, '2023-11-15 04:14:10', '2023-11-15 04:14:10'),
(54, '4170', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 05:37:12', '2023-11-15 05:37:12'),
(55, '2713', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 07:43:40', '2023-11-15 07:43:40'),
(56, '1795', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 07:43:47', '2023-11-15 07:43:47'),
(57, '8456', 'omaros2021@gmail.com', NULL, NULL, '2023-11-15 09:17:28', '2023-11-15 09:17:28'),
(58, '3387', 'omaros2021@gmail.com', NULL, NULL, '2023-11-16 02:35:08', '2023-11-16 02:35:08'),
(59, '5772', 'omaros2021@gmail.com', NULL, NULL, '2023-11-16 12:18:44', '2023-11-16 12:18:44'),
(60, '4924', 'omaros2021@gmail.com', NULL, NULL, '2023-12-13 06:33:47', '2023-12-13 06:33:47'),
(61, '9537', 'omar.os.abdalla@gmail.com', NULL, NULL, '2023-12-13 07:44:32', '2023-12-13 07:44:32'),
(62, '6086', 'omaros2021@gmail.com', NULL, NULL, '2023-12-13 07:46:40', '2023-12-13 07:46:40'),
(63, '1096', 'omaros2021@gmail.com', NULL, NULL, '2023-12-20 19:13:22', '2023-12-20 19:13:22'),
(64, '2619', 'omaros2021@gmail.com', NULL, NULL, '2023-12-27 21:08:41', '2023-12-27 21:08:41'),
(65, '4074', 'omaros2021@gmail.com', NULL, NULL, '2023-12-27 21:21:15', '2023-12-27 21:21:15'),
(66, '5614', 'omaros2021@gmail.com', NULL, NULL, '2023-12-27 22:56:58', '2023-12-27 22:56:58'),
(67, '5643', 'omaros2021@gmail.com', NULL, NULL, '2023-12-28 04:25:12', '2023-12-28 04:25:12'),
(68, '6866', 'omaros2021@gmail.com', NULL, NULL, '2023-12-28 04:44:58', '2023-12-28 04:44:58'),
(69, '7742', 'omaros2021@gmail.com', NULL, NULL, '2023-12-29 23:51:07', '2023-12-29 23:51:07'),
(70, '2166', 'omeros2024eeee@gmail.com', NULL, NULL, '2023-12-30 00:53:19', '2023-12-30 00:53:19'),
(71, '9669', 'omaros2021@gmail.com', NULL, NULL, '2023-12-30 06:16:43', '2023-12-30 06:16:43'),
(72, '4378', 'omaros2021@gmail.com', NULL, NULL, '2023-12-30 06:23:08', '2023-12-30 06:23:08'),
(73, '1088', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 02:38:50', '2024-01-01 02:38:50'),
(74, '8739', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 03:18:18', '2024-01-01 03:18:18'),
(75, '1418', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 07:45:10', '2024-01-01 07:45:10'),
(76, '4891', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 07:58:23', '2024-01-01 07:58:23'),
(77, '5578', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 22:45:31', '2024-01-01 22:45:31'),
(78, '8744', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 22:48:50', '2024-01-01 22:48:50'),
(79, '9722', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 23:01:08', '2024-01-01 23:01:08'),
(80, '5032', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 23:05:55', '2024-01-01 23:05:55'),
(81, '5634', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 23:06:47', '2024-01-01 23:06:47'),
(82, '1762', 'omaros2021@gmail.com', NULL, NULL, '2024-01-01 23:58:03', '2024-01-01 23:58:03'),
(83, '5025', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 00:18:47', '2024-01-02 00:18:47'),
(84, '3491', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 00:46:50', '2024-01-02 00:46:50'),
(85, '7361', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:04:36', '2024-01-02 01:04:36'),
(86, '4851', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:05:16', '2024-01-02 01:05:16'),
(87, '3432', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:05:57', '2024-01-02 01:05:57'),
(88, '2800', 'omaro@gmail.com', NULL, NULL, '2024-01-02 01:10:31', '2024-01-02 01:10:31'),
(89, '4181', 'omaros0101@gmail.com', NULL, NULL, '2024-01-02 01:13:28', '2024-01-02 01:13:28'),
(90, '6501', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:18:55', '2024-01-02 01:18:55'),
(91, '1838', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:22:12', '2024-01-02 01:22:12'),
(92, '2487', 'oma@gmail.com', NULL, NULL, '2024-01-02 01:27:17', '2024-01-02 01:27:17'),
(93, '2670', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:35:54', '2024-01-02 01:35:54'),
(94, '6470', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:35:58', '2024-01-02 01:35:58'),
(95, '9762', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:36:05', '2024-01-02 01:36:05'),
(96, '2761', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:36:37', '2024-01-02 01:36:37'),
(97, '7012', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:37:07', '2024-01-02 01:37:07'),
(98, '3048', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:37:10', '2024-01-02 01:37:10'),
(99, '9006', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:39:00', '2024-01-02 01:39:00'),
(100, '2750', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:39:56', '2024-01-02 01:39:56'),
(101, '6160', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:45:34', '2024-01-02 01:45:34'),
(102, '1615', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:47:59', '2024-01-02 01:47:59'),
(103, '1041', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:48:03', '2024-01-02 01:48:03'),
(104, '9927', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:48:09', '2024-01-02 01:48:09'),
(105, '3785', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:49:16', '2024-01-02 01:49:16'),
(106, '5755', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 01:52:36', '2024-01-02 01:52:36'),
(107, '2235', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 02:10:16', '2024-01-02 02:10:16'),
(108, '5545', 'omar.os.abdalla@gmail.com', NULL, NULL, '2024-01-02 02:15:24', '2024-01-02 02:15:24'),
(109, '6271', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 23:05:28', '2024-01-02 23:05:28'),
(110, '3454', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 23:09:15', '2024-01-02 23:09:15'),
(111, '5989', 'omaros2021@gmail.com', NULL, NULL, '2024-01-02 23:19:23', '2024-01-02 23:19:23'),
(112, '5088', 'omaros2021@gmail.com', NULL, NULL, '2024-01-03 01:28:49', '2024-01-03 01:28:49'),
(113, '1068', 'omaros2021@gmail.com', NULL, NULL, '2024-01-03 02:52:08', '2024-01-03 02:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'الدرس الاول - المقدمة للكورس', '2023-01-07 14:55:42', '2023-01-07 14:55:42'),
(2, 'الدرس الثاني بعد المقدمة - المخزون', '2023-01-07 14:58:57', '2023-01-07 14:58:57'),
(3, 'الدرس الثالث - تسعير المواد الغذائية', '2023-01-07 14:59:12', '2023-01-07 14:59:12'),
(4, 'الدرس الرابع - هندسة قائمة الطعام', '2023-01-07 14:59:22', '2023-01-07 14:59:22'),
(5, 'الدرس الخامس - إدارة المشتريات', '2023-01-07 14:59:36', '2023-01-07 14:59:36');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `coupon_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(11, 1, NULL, '299', 1, '2023-01-11 23:13:31', '2023-01-11 23:13:31'),
(12, 1, NULL, '299', 1, '2023-01-11 23:53:19', '2023-01-11 23:53:19'),
(13, 1, NULL, '499', 1, '2023-01-12 00:41:24', '2023-01-12 00:41:24'),
(14, 1, NULL, '250', 1, '2023-01-12 03:45:17', '2023-01-12 03:45:17'),
(15, 1, NULL, '250', 1, '2023-01-12 03:46:47', '2023-01-12 03:46:47'),
(16, 1, NULL, '250', 1, '2023-01-12 03:55:34', '2023-01-12 03:55:34'),
(17, 1, NULL, '299', 1, '2023-01-14 21:34:17', '2023-01-14 21:34:17'),
(18, 1, NULL, '250', 2, '2023-01-15 00:19:46', '2023-01-15 00:21:29'),
(19, 1, NULL, '250', 1, '2023-01-15 00:24:57', '2023-01-15 00:24:57'),
(20, 1, NULL, '250', 1, '2023-01-15 00:25:21', '2023-01-15 00:25:21'),
(21, 1, NULL, '250', 2, '2023-01-15 00:29:03', '2023-01-15 00:33:04'),
(22, 24, NULL, '250', 1, '2023-01-15 12:35:10', '2023-01-15 12:35:10'),
(23, 24, NULL, '499', 2, '2023-01-15 12:37:08', '2023-01-15 12:37:56'),
(24, 24, NULL, '250', 2, '2023-01-15 12:38:46', '2023-01-15 12:39:54'),
(25, 25, 1, '449', 1, '2023-01-19 00:19:22', '2023-01-19 00:19:22'),
(26, 26, NULL, '799', 1, '2023-02-06 17:02:00', '2023-02-06 17:02:00'),
(27, 28, NULL, '799', 1, '2023-03-09 14:14:01', '2023-03-09 14:14:01'),
(29, 30, NULL, '799', 1, '2023-03-09 17:57:21', '2023-03-09 17:57:21'),
(30, 31, NULL, '799', 1, '2023-03-09 21:57:08', '2023-03-09 21:57:08'),
(31, 32, NULL, '799', 1, '2023-03-11 15:22:16', '2023-03-11 15:22:16'),
(38, 39, NULL, '799', 1, '2023-03-13 09:16:54', '2023-03-13 09:16:54'),
(39, 39, NULL, '799', 1, '2023-03-13 09:17:19', '2023-03-13 09:17:19'),
(40, 40, NULL, '799', 1, '2023-03-13 09:30:30', '2023-03-13 09:30:30'),
(41, 40, NULL, '799', 2, '2023-03-13 09:30:44', '2023-03-13 09:31:53'),
(42, 42, NULL, '1', 2, '2023-03-13 09:50:58', '2023-03-13 09:50:58'),
(43, 43, NULL, '1', 2, '2023-03-13 09:53:15', '2023-03-13 09:53:15'),
(44, 44, NULL, '1', 2, '2023-03-13 10:12:17', '2023-03-13 10:12:17'),
(45, 45, NULL, '799', 2, '2023-03-13 11:50:48', '2023-03-13 11:51:22'),
(46, 46, NULL, '799', 3, '2023-03-13 11:51:56', '2023-03-13 11:52:44'),
(47, 47, NULL, '1', 2, '2023-03-13 13:05:06', '2023-03-13 13:05:06'),
(48, 48, NULL, '1', 2, '2023-03-13 13:06:04', '2023-03-13 13:06:04'),
(54, 54, NULL, '1', 2, '2023-03-14 23:02:33', '2023-03-14 23:02:33'),
(56, 56, NULL, '799', 2, '2023-04-10 13:31:05', '2023-04-10 13:31:38'),
(57, 57, NULL, '250', 1, '2023-07-19 13:51:22', '2023-07-19 13:51:22'),
(58, 61, NULL, '75', 1, '2023-09-25 08:28:23', '2023-09-25 08:28:23'),
(59, 61, 1, '68', 1, '2023-09-25 08:28:32', '2023-09-25 08:28:32'),
(60, 61, 1, '68', 1, '2023-09-25 08:34:46', '2023-09-25 08:34:46'),
(61, 61, NULL, '75', 1, '2023-09-25 08:34:51', '2023-09-25 08:34:51'),
(62, 61, 1, '68', 1, '2023-09-25 08:35:34', '2023-09-25 08:35:34'),
(63, 61, NULL, '75', 1, '2023-09-25 08:35:41', '2023-09-25 08:35:41'),
(64, 63, NULL, '75', 1, '2023-09-25 10:00:30', '2023-09-25 10:00:30'),
(65, 65, NULL, '75', 1, '2023-09-26 02:51:10', '2023-09-26 02:51:10'),
(66, 66, NULL, '75', 1, '2023-09-26 03:11:16', '2023-09-26 03:11:16'),
(67, 66, 1, '68', 1, '2023-09-26 03:11:26', '2023-09-26 03:11:26'),
(68, 66, NULL, '75', 1, '2023-09-26 03:41:21', '2023-09-26 03:41:21'),
(69, 66, NULL, '75', 1, '2023-09-26 03:47:11', '2023-09-26 03:47:11'),
(70, 66, NULL, '75', 1, '2023-09-26 04:05:44', '2023-09-26 04:05:44'),
(71, 66, NULL, '75', 1, '2023-09-26 04:05:49', '2023-09-26 04:05:49'),
(72, 66, NULL, '75', 1, '2023-09-26 04:05:57', '2023-09-26 04:05:57'),
(73, 66, NULL, '75', 1, '2023-09-26 04:08:41', '2023-09-26 04:08:41'),
(74, 66, NULL, '75', 1, '2023-09-26 04:11:17', '2023-09-26 04:11:17'),
(75, 73, NULL, '75', 1, '2023-11-15 03:02:17', '2023-11-15 03:02:17'),
(76, 73, NULL, '75', 1, '2023-11-15 03:06:41', '2023-11-15 03:06:41'),
(77, 73, NULL, '75', 1, '2023-11-15 03:08:58', '2023-11-15 03:08:58'),
(78, 73, NULL, '75', 1, '2023-11-15 03:53:30', '2023-11-15 03:53:30'),
(79, 73, NULL, '75', 1, '2023-11-15 03:53:50', '2023-11-15 03:53:50'),
(80, 73, NULL, '75', 1, '2023-11-15 03:54:10', '2023-11-15 03:54:10'),
(81, 73, NULL, '75', 1, '2023-11-15 03:54:29', '2023-11-15 03:54:29'),
(82, 73, NULL, '75', 1, '2023-11-15 03:58:40', '2023-11-15 03:58:40'),
(83, 73, NULL, '75', 1, '2023-11-15 03:59:29', '2023-11-15 03:59:29'),
(84, 73, NULL, '75', 1, '2023-11-15 03:59:48', '2023-11-15 03:59:48'),
(85, 73, NULL, '75', 1, '2023-11-15 04:01:49', '2023-11-15 04:01:49'),
(86, 73, NULL, '75', 1, '2023-11-15 04:03:04', '2023-11-15 04:03:04'),
(87, 73, NULL, '75', 1, '2023-11-15 04:04:07', '2023-11-15 04:04:07'),
(88, 73, NULL, '75', 1, '2023-11-15 05:37:28', '2023-11-15 05:37:28'),
(89, 73, NULL, '75', 1, '2023-11-15 05:41:53', '2023-11-15 05:41:53'),
(90, 73, NULL, '75', 1, '2023-11-15 07:22:20', '2023-11-15 07:22:20'),
(91, 73, NULL, '75', 1, '2023-11-15 07:25:50', '2023-11-15 07:25:50'),
(92, 73, NULL, '75', 1, '2023-11-15 07:35:53', '2023-11-15 07:35:53'),
(93, 73, NULL, '75', 1, '2023-11-15 07:36:54', '2023-11-15 07:36:54'),
(94, 73, NULL, '75', 1, '2023-11-15 07:45:37', '2023-11-15 07:45:37'),
(95, 73, NULL, '75', 1, '2023-11-15 09:17:43', '2023-11-15 09:17:43'),
(96, 73, NULL, '75', 1, '2023-11-16 02:35:22', '2023-11-16 02:35:22'),
(97, 73, NULL, '75', 1, '2023-11-16 12:20:43', '2023-11-16 12:20:43'),
(98, 73, NULL, '75', 1, '2023-12-13 06:33:57', '2023-12-13 06:33:57'),
(99, 73, NULL, '75', 1, '2023-12-28 05:03:42', '2023-12-28 05:03:42'),
(100, 73, NULL, '75', 1, '2023-12-28 05:03:52', '2023-12-28 05:03:52'),
(101, 73, NULL, '75', 1, '2023-12-29 23:53:00', '2023-12-29 23:53:00'),
(102, 81, NULL, '75', 1, '2023-12-30 04:22:58', '2023-12-30 04:22:58'),
(103, 73, NULL, '75', 1, '2023-12-30 06:20:57', '2023-12-30 06:20:57'),
(104, 73, NULL, '75', 1, '2023-12-30 06:23:26', '2023-12-30 06:23:26'),
(105, 73, NULL, '75', 1, '2023-12-30 06:24:12', '2023-12-30 06:24:12'),
(106, 73, NULL, '75', 1, '2023-12-30 06:24:18', '2023-12-30 06:24:18'),
(107, 73, NULL, '75', 1, '2023-12-30 06:27:23', '2023-12-30 06:27:23'),
(108, 73, NULL, '75', 1, '2023-12-30 06:27:28', '2023-12-30 06:27:28'),
(109, 73, NULL, '75', 1, '2023-12-30 06:28:18', '2023-12-30 06:28:18'),
(110, 73, NULL, '75', 1, '2023-12-30 06:28:23', '2023-12-30 06:28:23'),
(111, 73, NULL, '75', 1, '2023-12-30 06:28:40', '2023-12-30 06:28:40'),
(112, 73, NULL, '75', 1, '2023-12-30 06:28:57', '2023-12-30 06:28:57'),
(113, 73, NULL, '75', 1, '2023-12-30 06:29:29', '2023-12-30 06:29:29'),
(114, 73, NULL, '75', 1, '2023-12-30 06:30:01', '2023-12-30 06:30:01'),
(115, 73, NULL, '75', 1, '2023-12-30 06:30:21', '2023-12-30 06:30:21'),
(116, 73, NULL, '75', 1, '2023-12-30 06:30:33', '2023-12-30 06:30:33'),
(117, 73, NULL, '75', 1, '2023-12-30 06:30:39', '2023-12-30 06:30:39'),
(118, 73, NULL, '75', 1, '2023-12-30 06:30:53', '2023-12-30 06:30:53'),
(119, 73, NULL, '75', 1, '2023-12-30 06:31:05', '2023-12-30 06:31:05'),
(120, 73, NULL, '75', 1, '2023-12-30 06:32:18', '2023-12-30 06:32:18'),
(121, 73, NULL, '75', 1, '2023-12-30 06:32:24', '2023-12-30 06:32:24'),
(122, 73, NULL, '75', 1, '2023-12-30 06:32:35', '2023-12-30 06:32:35'),
(123, 73, NULL, '75', 1, '2023-12-30 06:34:05', '2023-12-30 06:34:05'),
(124, 73, NULL, '75', 1, '2023-12-30 06:34:48', '2023-12-30 06:34:48'),
(125, 73, NULL, '75', 1, '2023-12-30 06:35:11', '2023-12-30 06:35:11'),
(126, 73, NULL, '75', 1, '2024-01-01 07:29:42', '2024-01-01 07:29:42'),
(127, 73, NULL, '75', 1, '2024-01-01 07:34:33', '2024-01-01 07:34:33'),
(128, 73, NULL, '75', 1, '2024-01-01 07:34:40', '2024-01-01 07:34:40'),
(129, 73, NULL, '75', 1, '2024-01-01 07:35:32', '2024-01-01 07:35:32'),
(130, 73, NULL, '75', 1, '2024-01-01 07:35:41', '2024-01-01 07:35:41'),
(131, 73, NULL, '75', 1, '2024-01-01 07:35:53', '2024-01-01 07:35:53'),
(132, 73, NULL, '75', 1, '2024-01-01 07:36:02', '2024-01-01 07:36:02'),
(133, 73, NULL, '75', 1, '2024-01-01 07:41:54', '2024-01-01 07:41:54'),
(134, 73, NULL, '75', 1, '2024-01-01 07:45:23', '2024-01-01 07:45:23'),
(135, 73, NULL, '75', 1, '2024-01-01 22:50:40', '2024-01-01 22:50:40'),
(136, 73, NULL, '75', 1, '2024-01-01 22:50:47', '2024-01-01 22:50:47'),
(137, 73, NULL, '75', 1, '2024-01-01 23:03:33', '2024-01-01 23:03:33'),
(138, 73, NULL, '75', 1, '2024-01-01 23:03:45', '2024-01-01 23:03:45'),
(139, 73, NULL, '75', 1, '2024-01-01 23:06:05', '2024-01-01 23:06:05'),
(140, 73, NULL, '75', 1, '2024-01-01 23:06:13', '2024-01-01 23:06:13'),
(141, 73, NULL, '75', 1, '2024-01-01 23:06:21', '2024-01-01 23:06:21'),
(142, 73, NULL, '75', 1, '2024-01-02 00:47:07', '2024-01-02 00:47:07'),
(143, 73, NULL, '75', 1, '2024-01-02 01:01:56', '2024-01-02 01:01:56'),
(144, 73, NULL, '75', 1, '2024-01-02 01:01:58', '2024-01-02 01:01:58'),
(145, 73, NULL, '75', 1, '2024-01-02 01:02:11', '2024-01-02 01:02:11'),
(146, 73, NULL, '75', 1, '2024-01-02 01:02:21', '2024-01-02 01:02:21'),
(147, 82, NULL, '75', 1, '2024-01-02 01:11:02', '2024-01-02 01:11:02'),
(148, 82, NULL, '75', 1, '2024-01-02 01:11:10', '2024-01-02 01:11:10'),
(149, 83, NULL, '75', 1, '2024-01-02 01:13:39', '2024-01-02 01:13:39'),
(150, 84, NULL, '75', 1, '2024-01-02 01:27:32', '2024-01-02 01:27:32'),
(151, 85, NULL, '75', 1, '2024-01-02 02:16:06', '2024-01-02 02:16:06'),
(152, 73, NULL, '75', 1, '2024-01-03 01:26:41', '2024-01-03 01:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5cda69f0f084845c3eb973f935a19cac9bdacf713773dee78ecafdfec1ffa009', '[\"*\"]', NULL, NULL, '2023-11-15 01:18:10', '2023-11-15 01:18:10'),
(2, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'bee2b4755165682f65797f0e7cd1c9adf47dfdf7f515f34108963765910c4644', '[\"*\"]', NULL, NULL, '2023-11-15 01:40:20', '2023-11-15 01:40:20'),
(3, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '7a9daeed4664cff05db41b7b3df2147080aa3bb2d4b6e29103ab414a4920b4db', '[\"*\"]', NULL, NULL, '2023-11-15 01:41:27', '2023-11-15 01:41:27'),
(4, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '942d97c3e42e1a4568e01082b47a56364d90efb3a0a198367383cefcf4a5f534', '[\"*\"]', NULL, NULL, '2023-11-15 01:42:55', '2023-11-15 01:42:55'),
(5, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '2309a1b1caaac4ee62c0e5aa8e4ac611520c42237907dbd5153729365e74c5e8', '[\"*\"]', NULL, NULL, '2023-11-15 01:46:07', '2023-11-15 01:46:07'),
(6, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '1cc8e1f5cb993078a2529615093e1c758ed9c00950c7606fc8eff15656fb033a', '[\"*\"]', NULL, NULL, '2023-11-15 01:50:50', '2023-11-15 01:50:50'),
(7, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'e2684b98c4bd226dfd775d90fea26410dd05c7060f627969ad905966ec5dcf71', '[\"*\"]', NULL, NULL, '2023-11-15 01:52:57', '2023-11-15 01:52:57'),
(8, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '441d6d89882e3bf13cdf4a995b66b942edfb86bac6ce268b4eb8d09fb416fa08', '[\"*\"]', NULL, NULL, '2023-11-15 01:53:01', '2023-11-15 01:53:01'),
(9, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5381f56455fa81fcbea0b02b912aefb65b3a3fb41091f71c77426197668cd894', '[\"*\"]', '2023-11-15 07:40:52', NULL, '2023-11-15 02:59:47', '2023-11-15 07:40:52'),
(10, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '4d004a4c73cdd642af9757045c9531e47f350e1684405ecb472486bae88c0020', '[\"*\"]', NULL, NULL, '2023-11-15 04:11:47', '2023-11-15 04:11:47'),
(11, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'b00f5ad4b1009ee3187ba49ce2855305c5374b54f325766b561c1a13ee0e5ade', '[\"*\"]', '2023-11-15 07:37:38', NULL, '2023-11-15 05:37:17', '2023-11-15 07:37:38'),
(12, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '4e22e5493c46e706874c512e121cbe95ed7aec0991cd0b700ee2b9119a6d9702', '[\"*\"]', NULL, NULL, '2023-11-15 07:33:33', '2023-11-15 07:33:33'),
(13, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '16e205ac1a52608dfcb7b900551eaf66089de88bc6584606747bfbbb3a22b38f', '[\"*\"]', NULL, NULL, '2023-11-15 07:37:38', '2023-11-15 07:37:38'),
(14, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '158dcccc3ef192bbff368044093911e822ff07066dc40801e64922a47113f226', '[\"*\"]', NULL, NULL, '2023-11-15 07:37:38', '2023-11-15 07:37:38'),
(15, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'f498473e36399d38d96ecfd6c0b3be8124a34c3412c74e83d279ecc07cf013c4', '[\"*\"]', NULL, NULL, '2023-11-15 07:40:49', '2023-11-15 07:40:49'),
(16, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5f2c020ca595009e1ab59e65d5bcca54298c2d5297dcab7f3e2c87995d19c4d1', '[\"*\"]', NULL, NULL, '2023-11-15 07:40:52', '2023-11-15 07:40:52'),
(17, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'da3bd06cdda7a3f839d43accd2f79d5edfbf3893916d014d7a84df76695850d5', '[\"*\"]', '2023-11-15 07:46:17', NULL, '2023-11-15 07:44:01', '2023-11-15 07:46:17'),
(18, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'c76f880453092acd310c87c0f142120f19d370a2f544ec52d056918d9c91ac77', '[\"*\"]', NULL, NULL, '2023-11-15 07:46:17', '2023-11-15 07:46:17'),
(19, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5bc917def0205b12954e6f895c18e4ce54790335a700301905727167025471de', '[\"*\"]', NULL, NULL, '2023-11-15 07:46:17', '2023-11-15 07:46:17'),
(20, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '18b7add656db92b8bfeb133b7ecf50dd70b89f9623d5d9d06e3891759bc130db', '[\"*\"]', '2023-11-15 09:17:42', NULL, '2023-11-15 09:17:33', '2023-11-15 09:17:42'),
(21, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'b42a4b626092d29d64c3a51cfb207743872eff9a1a791599115f9c61f9a5389b', '[\"*\"]', '2023-11-16 02:35:21', NULL, '2023-11-16 02:35:13', '2023-11-16 02:35:21'),
(22, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '8f41244a5b560a506683ecf99cd3b502d649e08219ebda2027b45e1113b12f90', '[\"*\"]', '2023-11-16 12:20:42', NULL, '2023-11-16 12:19:04', '2023-11-16 12:20:42'),
(23, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'a26551f47fcd732473edf29d68e32a1971b2e6f6ad7fb78985a80311a7c9cf99', '[\"*\"]', '2023-12-13 06:33:55', NULL, '2023-12-13 06:33:51', '2023-12-13 06:33:55'),
(24, 'App\\Models\\User', 80, 'API TOKEN FOR omer', 'b0ee1326dddfe2a1388605d9d9a668dfd2d54eb52b93f0cc3a657664aadebd91', '[\"*\"]', NULL, NULL, '2023-12-13 07:44:36', '2023-12-13 07:44:36'),
(25, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'aab68aab85f527b8eaf080b1f511f8ce341818450b5102614735610f8e0812c3', '[\"*\"]', NULL, NULL, '2023-12-13 07:46:44', '2023-12-13 07:46:44'),
(26, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '78b685a9ea5363abf9bd1a8b2ddf26340b94daafea59c5ac9e7e28800227596f', '[\"*\"]', NULL, NULL, '2023-12-20 19:13:30', '2023-12-20 19:13:30'),
(27, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'd149c23d9fcb590319d5c356f57792f5539a2dab0c7db0e74d47b33a9a9f7e8e', '[\"*\"]', '2023-12-27 21:16:38', NULL, '2023-12-27 21:08:46', '2023-12-27 21:16:38'),
(28, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '956f7e6a3ec54bf0ae51d963d285aeca150d535ead0940bffc148aa5488e2646', '[\"*\"]', '2023-12-28 04:38:01', NULL, '2023-12-27 21:21:37', '2023-12-28 04:38:01'),
(29, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '105365caf16db6a3a18bfa1eedb73d57081ab6074265bddc04b15a85aa3c9f33', '[\"*\"]', '2023-12-28 05:03:51', NULL, '2023-12-27 22:57:02', '2023-12-28 05:03:51'),
(30, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '08977b15cdb4aebc47c2a7ab58906e16befeb0107dbea1ce008269d62701c741', '[\"*\"]', '2023-12-28 04:43:04', NULL, '2023-12-28 04:25:16', '2023-12-28 04:43:04'),
(31, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'db0a3146d6134dbf708567159d58e1237d71080864f6a4da54d18f69e11b5e02', '[\"*\"]', '2023-12-29 21:29:54', NULL, '2023-12-28 04:45:03', '2023-12-29 21:29:54'),
(32, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '89492cc4ba33990acced89fce057f016d026bf04e183884d1da0909ed17940c0', '[\"*\"]', '2023-12-29 23:52:59', NULL, '2023-12-29 23:51:12', '2023-12-29 23:52:59'),
(33, 'App\\Models\\User', 81, 'API TOKEN FOR omer', '86a219b07a19dc1fa4d7092591c6095471dbe8c4d58f972a112c6ae7a6c2c31a', '[\"*\"]', '2023-12-30 04:22:56', NULL, '2023-12-30 00:54:15', '2023-12-30 04:22:56'),
(34, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '656f37b534877cc648e9d0f3b0aebe5352b44e3dea2ec928a5b70598ae309fc5', '[\"*\"]', '2023-12-30 06:21:57', NULL, '2023-12-30 06:16:48', '2023-12-30 06:21:57'),
(35, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'ae5d5b4eb37cc9e13b7a4fca13610db2d8097bbfd374d2ff47d41ef7c7a775c5', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:40', '2023-12-30 06:21:40'),
(36, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '615ff0936a8bb7d7f18aa65695706cea141836fbe8768ffefcfc19b80ea0ad81', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:40', '2023-12-30 06:21:40'),
(37, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'afbb829d813bb11f659f57b8f4113b763cb71db10849a7c5701c3b096f450a7e', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:54', '2023-12-30 06:21:54'),
(38, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '98798c687002db78f6ce9954646ec4013e77a6972388c2d6994812f4668b5d68', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:54', '2023-12-30 06:21:54'),
(39, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'fb5bc80e1cdfa7ca837723c4a28d2b255f8183ffab43d4fa73cdded33e23ecd1', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:57', '2023-12-30 06:21:57'),
(40, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '504837dca294ee6dff7864f1237daa24b06612d77d59d8e74b00d40baed52ca0', '[\"*\"]', NULL, NULL, '2023-12-30 06:21:57', '2023-12-30 06:21:57'),
(41, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '13349e5ea62a0c401f5f82681906afb9a5351b690fbfb5e702173ccfdbbc29c1', '[\"*\"]', '2024-01-01 07:52:31', NULL, '2023-12-30 06:23:12', '2024-01-01 07:52:31'),
(42, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'd820bd2a81059cabc7917ea6a2881e0c907681748a80defdb26c7baf5e844ace', '[\"*\"]', '2024-01-01 03:53:25', NULL, '2024-01-01 02:38:54', '2024-01-01 03:53:25'),
(43, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '6d13d45a99301a1519c48b8864a8986a5da42d1c3556333a244755af374addba', '[\"*\"]', '2024-01-01 07:45:22', NULL, '2024-01-01 03:18:23', '2024-01-01 07:45:22'),
(44, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '2ebb8ef693042b2a6e1b3bfb1484b0655294e1dee62892e308c9c67008e745a0', '[\"*\"]', '2024-01-03 01:26:40', NULL, '2024-01-01 07:45:15', '2024-01-03 01:26:40'),
(45, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '05d8f338151636f05479a459cf4689418af2ada5c9ceef8c73792a800688d594', '[\"*\"]', NULL, NULL, '2024-01-01 07:46:01', '2024-01-01 07:46:01'),
(46, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '64e696e92e2e0628832cc603202a834091874c8164297ec80c4ff1fcaa78a243', '[\"*\"]', NULL, NULL, '2024-01-01 07:46:01', '2024-01-01 07:46:01'),
(47, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'a933d83170aed936d300a1721c088f4f76647c069eb4990c899071bf941eccc7', '[\"*\"]', NULL, NULL, '2024-01-01 07:52:31', '2024-01-01 07:52:31'),
(48, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5b5a9c4fccbf83bcddd2d1f85c79fdf36e3f91be6dcfca2b52eec5ffcfb4ee64', '[\"*\"]', NULL, NULL, '2024-01-01 07:52:31', '2024-01-01 07:52:31'),
(49, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '1f7c16bd35a79d32bdbcd7460b4500f45ecd3403c1d6f8365dd65011a9ef4e50', '[\"*\"]', NULL, NULL, '2024-01-01 07:58:29', '2024-01-01 07:58:29'),
(50, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '5bf0608d7ee68f50f509aeec5c159a8362e5992492cc793a905a4ccb3c28cd9d', '[\"*\"]', NULL, NULL, '2024-01-01 22:45:36', '2024-01-01 22:45:36'),
(51, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '2adcf3516b36a3f68737f8338c000bbab92006e80e25a513aa7ab003fcdb389b', '[\"*\"]', NULL, NULL, '2024-01-01 22:48:54', '2024-01-01 22:48:54'),
(52, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'ffcc400f958a5d54caac1e582bbe0c6bc6331fb98fc374dfee843a191c2a84c6', '[\"*\"]', '2024-01-01 22:50:46', NULL, '2024-01-01 22:49:29', '2024-01-01 22:50:46'),
(53, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'b52e1870d51ef24b8eb1afbe8bbe04517144732afb9ea49bcbb18d76e8beda28', '[\"*\"]', '2024-01-01 23:03:43', NULL, '2024-01-01 23:01:13', '2024-01-01 23:03:43'),
(54, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '0a2fafbd938d938b96025772eeb4b6f4fdad26bba2b40b7498132315df5ad2f9', '[\"*\"]', '2024-01-01 23:06:20', NULL, '2024-01-01 23:06:00', '2024-01-01 23:06:20'),
(55, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'c8f547b225a4bdc37ab8a6b2c1c97d0d7a2b565360824a0a948a656c2a021130', '[\"*\"]', NULL, NULL, '2024-01-01 23:06:53', '2024-01-01 23:06:53'),
(56, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'ddab914ee0a27e88ef659d8c7a422f62209f992ddd87f6920efd4f1c0f577e54', '[\"*\"]', NULL, NULL, '2024-01-01 23:58:08', '2024-01-01 23:58:08'),
(57, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'fae0a7fe21942455b4d5fe61251d366c1224cbd765942ebfb24da8ba28e2446e', '[\"*\"]', NULL, NULL, '2024-01-02 00:18:51', '2024-01-02 00:18:51'),
(58, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '41dcea227cf985609b65134e77996165115211dbe9f903ab1ba7094d48e06392', '[\"*\"]', '2024-01-02 01:02:20', NULL, '2024-01-02 00:46:54', '2024-01-02 01:02:20'),
(59, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'c8b459c85b568d82a5f28009f2ecfbb939700799275e5c9b58b5c69cfbc0b3a5', '[\"*\"]', NULL, NULL, '2024-01-02 01:05:09', '2024-01-02 01:05:09'),
(60, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '92470e73997b441a862d0874ad12d65f48a5a7a7eafe87d86e35e4451caf5004', '[\"*\"]', NULL, NULL, '2024-01-02 01:05:21', '2024-01-02 01:05:21'),
(61, 'App\\Models\\User', 82, 'API TOKEN FOR omer', 'fc6ce444b6e3a8444211f1ff7bdce3bd56167c7fc651b2d891911c4cf7650b62', '[\"*\"]', '2024-01-02 01:11:09', NULL, '2024-01-02 01:10:44', '2024-01-02 01:11:09'),
(62, 'App\\Models\\User', 83, 'API TOKEN FOR omer osama', 'cba43764f0813b2943de03a8ec7a640ffbc8bfaaf797a03fd77b5d5871f87239', '[\"*\"]', '2024-01-02 01:13:37', NULL, '2024-01-02 01:13:33', '2024-01-02 01:13:37'),
(63, 'App\\Models\\User', 84, 'API TOKEN FOR omer', '63347e3417d2b193bcebf39cc1ed1a3713a571ca736a028078a7a558a24d8c37', '[\"*\"]', '2024-01-02 01:27:30', NULL, '2024-01-02 01:27:27', '2024-01-02 01:27:30'),
(64, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'cba7ce00af99659c2e3b92a080f7b2852a2fcb3989c3bf96bf57008a6caf3d8a', '[\"*\"]', NULL, NULL, '2024-01-02 02:10:33', '2024-01-02 02:10:33'),
(65, 'App\\Models\\User', 85, 'API TOKEN FOR omer', 'c31b12415ea7f62c61ff020c2e9d67acf58b19285f3b9bc0331504a67fce9d7a', '[\"*\"]', '2024-01-02 02:16:05', NULL, '2024-01-02 02:16:01', '2024-01-02 02:16:05'),
(66, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '3633e471633aa51203c5621c5802471b19650bcf39eb4edc285a3c14d0044536', '[\"*\"]', NULL, NULL, '2024-01-02 23:05:38', '2024-01-02 23:05:38'),
(67, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '01e629a4653b6e94fe7a64efe73e9ec83d0e93732143075d01165c0ee97053a4', '[\"*\"]', NULL, NULL, '2024-01-02 23:10:13', '2024-01-02 23:10:13'),
(68, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '8b80c6c290bf91cba839c03114cba1e7282917a38b40dbd8d790653fe6cbeb9b', '[\"*\"]', '2024-01-02 23:23:16', NULL, '2024-01-02 23:19:36', '2024-01-02 23:23:16'),
(69, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', '10c25d995c139dbf689c8a202a2e772a14fa12aa69c05913d3f0d9085ae39ba8', '[\"*\"]', NULL, NULL, '2024-01-03 01:29:01', '2024-01-03 01:29:01'),
(70, 'App\\Models\\User', 73, 'API TOKEN FOR omer osama', 'f11d82998b8b0ab914e7d800ef059c6ebc543d8c654f59678c7b6435adf5c746', '[\"*\"]', NULL, NULL, '2024-01-03 02:52:22', '2024-01-03 02:52:22');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `ref`, `ref_email`, `customer_email`, `created_at`, `updated_at`) VALUES
(1, 'omerosama1673317043', 'omar2@gmail.com', 'omar2@gmail.com', '2023-01-09 23:20:52', '2023-01-09 23:20:52'),
(2, 'omerosama1673317043', 'omar2@gmail.com', 'omer3@gmail.com', '2023-01-09 23:31:52', '2023-01-09 23:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_id` bigint(20) UNSIGNED NOT NULL,
  `time_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `date_id`, `time_id`, `name`, `subject`, `status`, `created_at`, `updated_at`, `user_id`) VALUES
(17, 4, 54, 'Omer', 'sssss', 0, '2023-01-15 00:08:15', '2023-01-15 00:08:15', 1),
(18, 3, 5, 'Omer', 'eeee', 0, '2023-01-15 00:19:28', '2023-01-15 00:19:28', 1),
(20, 4, 49, 'Omer', 'rrrrr', 0, '2023-01-15 00:24:42', '2023-01-15 00:24:42', 1),
(21, 3, 3, 'Omer', 'rrr', 0, '2023-01-15 00:24:56', '2023-01-15 00:24:56', 1),
(22, 4, 49, 'rrrrr', 'rrrr', 0, '2023-01-15 00:25:06', '2023-01-15 00:25:06', 1),
(23, 4, 49, 'rrrr', 'rrrr', 0, '2023-01-15 00:25:17', '2023-01-15 00:25:17', 1),
(25, 4, 54, 'Omer', 'test', 0, '2023-01-15 12:35:08', '2023-01-15 12:35:08', 24),
(26, 4, 49, 'omer', 'cccc', 2, '2023-01-15 12:38:43', '2023-01-15 12:39:54', 24);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `soluation_id` bigint(20) UNSIGNED NOT NULL,
  `rate` int(11) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_rating` decimal(3,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4dWRybnFvGfgXPDCZTq3m9j7mwEnPq2K5BtCwzHJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNnA0UXZMdVpoMEhuYkl6ZWFOMWpjOVdpSW1tM1VYeTdMWmNmeEdIbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb3Vyc2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6ImxvY2FsZSI7czoyOiJhciI7fQ==', 1700146604),
('7PvJvZZr3hG6IZhysyc5CKls2Fvfbhge3lDuFSQU', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2dFT3dVelh0SGNqVFh3UFFwcnNCNzBtdnBVUWd0ZXQ3eGx5Y0sxRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9mcm9udC1vZi1ob3VzZS9sb3lhbHR5LzYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1702557380),
('c5eKcMGmH5LdeS5dsBmu4hsbrVNNbnJs4RVT3KIi', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidnVaMG5Qd2pXTDdRZkwwZ3IxcGFIb1pjWE1wV1VzUWtUcjIzWXBjNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1704256031),
('cau9aIJOwmekoIxm6MaeSytnNaOAQxd6DnYUyEt0', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieG90STd3VEYwQjBtZ1RHTEtrN0VjY1htTWptdmRwRFdLY0Ria2pUdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1700368741),
('CmFCYpfvpIrVkDv6vJcuMEMEUVimtyMnb4wloUOK', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGY2STMyV1NINThORDh6V3FVYmdlaGZrOGR6VW1NMDVMbUpuZE5sYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708599279),
('dTYnXnaKAjbYvU8mQ6UVWEIP1N1ED0POdE51A1D9', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVVdHVlM1OW95d0lrTEozS3p5MXh4NnNCQ1BZZlZQUG1FUExDMVNKQiI7czo2OiJsb2NhbGUiO3M6MjoiYXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY291cnNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1700146604),
('eBlAsVwG5wUe2k3StxVYNHHRnPaUSloNT6EuMLZH', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2Q3RTZWdFVERDBkVHdZQWVQbEJhREZ1VFM1QUNmTGYzRk1uY0NGYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1700146593),
('Iwio7Upx37EZx4lT6kadbDTNi55Fl1rygcBcvRKg', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlZFNUZLdVRIeEhKV012Vkw0eGpJcDdGR280OE40REpBSmdBZHJLWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708599319),
('jmMjMDW8PGqWi5hU46EQEOrql4ctTjjNo1gKaRsO', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFpYcmwzV2NSaVRES1A3YXp2MG5WT1gyQnR6WnRFeUc1MG84RkJ5byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY291cG9ucy9jaGVjayI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1703903165),
('Ju4xucf3GRkuyr445PevIdQ77sax2AP8ENH96xm7', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYk4yMjR5T0xPdkhTdmJRVU1Tbkt5RG8yd0poQ2tSbFJKallCRzdwYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbWFnZXMvaWNvbnMvZ2Vhci5wbmciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1704091115),
('KbTsnpBQpbHWBMu9sBp9bKCBUxWfIEQWhW43qNoA', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFVSTjdQWnBPWjZhR3d1QlJIblFOb3ZrajFxM1hYTHBXbXNXWDZheSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1703110323),
('KpRruypdQXn6lK4okn0vuacHGzaMQ6DsgszPCwv6', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1dZR0htMUZtc1hzOU5UUjhQQnN0bHNvTm83a3QyUDVrdkJSQ2Z6VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvcHJvZHVjdHMvMTAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1704096250),
('LjOER3kL8jA8fEzQZYsrUPa6iUBhn7pjr2UxxxW6', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOG5zQnY3YjVOVlFyZTJOQlVBcW93NU1aQlhaaFZ0S0NQZms5ZmpSRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1703033759),
('MEfQzJLT4RI1uyOnCtk6Q2Q946ScTLUpozqJjppr', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDVrTElQWGNYU1BqT1d1UWI3d1pSTEl2allUZFhXOU1semcxWjVORSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1707865493),
('P6XS8gOvWR1NMlWxVXKf24AoAQ0C068he9IVuRJ0', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV0YyVFNMVXRESDZMZEFxWHM5UWxwMDVXUmF2WktEeVZxcmpucTlGMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbWFnZXMvaWNvbnMvZ2Vhci5wbmciO319', 1703729955),
('QKLjYFTRbV7L3Xo43SAyYpXqEWp5VTBm87wLPCYe', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0p4b2F0b1E5SGE0SnhHWExQeEl2TktyY1V2dTNTdGlBeUd1S2JrSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708599269),
('r8xWxoJUBVawsmOU8XvLfXWeQaUX1mPzY60uo4np', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjQzelZndXV5SllyQ1VCRWZzVWlweVp2N1JiRE5iSTZWY09FNEN4ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1704101615),
('SdpyuHRFa0Bc6lCIVekllWzSmzj9f2L4nFEXJ8m5', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekdNV2lvMFFPdmkxNUNBM0NsMEFhVG1PMWFSVkpkZ01ReE9nTFRqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1700146603),
('TSqUfVRf2rqX1LUqAOvVCrabfE2u6q7uCRJbxvD3', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.4 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.4 facebookexternalhit/1.1 Facebot Twitterbot/1.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUTJlUmxmbXZ2bDd5VWlwalhuUkJCdDFFT2loNnlBc05KS213cVdxbCI7czo2OiJsb2NhbGUiO3M6MjoiYXIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY291cnNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1700146604),
('WmlmVyqITY0aqMB3XZpmCww9XwPxeI5rsWMjekrv', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHJqR3pxOTlSMk8wYm5tV0xqRjJURW5UTmlPaUJqTzRrWFd5ODZrUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1708599344),
('yc5MDQIjBNeRaQ7mIgEWH6F9oxk0I1drE3uIJhYQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Safari/605.1.15', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicGg2Y0FHVE9ZY2c1NVBtUGNWRVdnNzdTajlVSTBlMkVtc3o0bUc4aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1704250936);

-- --------------------------------------------------------

--
-- Table structure for table `soluations`
--

CREATE TABLE `soluations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_ar` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_rating` decimal(3,2) NOT NULL DEFAULT 0.00,
  `price` decimal(19,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soluations`
--

INSERT INTO `soluations` (`id`, `name`, `name_ar`, `body`, `body_ar`, `image_path`, `origin`, `category_id`, `created_at`, `updated_at`, `slug`, `link`, `average_rating`, `price`) VALUES
(2, 'Dafater', 'دفاتر', 'Dafater is a specialized technology company In providing digital solutions for enterprise resource management', 'دفاتر هي شركة تكنولوجيا متخصصة في تقديم الحلول الرقمية لإدارة موارد المؤسسة', '/images/202304090623777.png', 'ksa', 2, '2023-04-09 03:23:35', '2024-01-01 04:05:26', NULL, NULL, '0.00', '0.00'),
(3, 'Qoyod', 'قيود', 'accounting program that manages your business efficiently, issues accurate reports that assists you in taking right decisions for your company.', 'برنامج محاسبة يدير أعمالك بكفاءة ، ويصدر تقارير دقيقة تساعدك في اتخاذ القرارات الصحيحة لشركتك.', '/images/qu.jpg', 'ksa', 2, '2023-04-09 03:26:18', '2024-01-01 02:45:31', NULL, NULL, '0.00', '0.00'),
(4, 'Xero', 'زيرو', 'Cloud-based accounting software service', 'الحلّ الشّامل للمحاسبة', '/images/2023040906270.webp', 'uae', 2, '2023-04-09 03:27:16', '2024-01-01 05:02:20', NULL, NULL, '0.00', '0.00'),
(5, 'Sanad', 'سند', 'Give your work time and focus and leave the accounting matters to us.', 'أعطي عملك الوقت والتركيز وأترك الأمور المحاسبية علينا', '/images/202304090629m1.jpg', 'no', 2, '2023-04-09 03:29:04', '2023-04-09 03:29:04', NULL, NULL, '0.00', '0.00'),
(6, 'Vom', 'فوم', 'Cloud Accounting Software Made Easy for You .', 'نظام محاسبة سحابي يسير الاستخدام للجميع', '/images/202304090630m2.jpg', 'no', 2, '2023-04-09 03:30:41', '2023-04-09 03:30:41', NULL, NULL, '0.00', '0.00'),
(7, 'Wafeq', 'وافق', 'Fast, modern and powerful accounting software.', 'برنامج محاسبة سريع وحديث وقوي.', '/images/202304090632m3.jpg', 'no', 2, '2023-04-09 03:32:19', '2023-04-09 03:32:19', NULL, NULL, '0.00', '0.00'),
(8, 'ADD Accounting Software', 'برنامج عدد المحاسبي', 'Quality and precision make ADD your best choice .', 'الجودة والدقة يجعل عدد خيارك الأفضل .', '/images/202304090633m4.webp', 'ksa', 2, '2023-04-09 03:33:26', '2023-04-09 03:33:26', NULL, NULL, '0.00', '0.00'),
(9, 'Akaunting', 'أكاونتينغ', 'Global cloud accounting software for SMBs.', 'برنامج محاسبة سحابي مخصص للشركات الصغيرة والمتوسطة', '/images/202304090634m5.jpg', 'no', 2, '2023-04-09 03:34:46', '2023-04-09 03:34:46', NULL, NULL, '0.00', '0.00'),
(10, 'QuickBooks Online', 'كويك بوكس', 'Global cloud accounting program for all sectors', 'برنامج محاسبة عالمي لكلّ القطاعات', '/images/202304090635m6.webp', 'no', 2, '2023-04-09 03:35:40', '2023-04-09 03:35:40', NULL, NULL, '0.00', '0.00'),
(11, 'Mcledger', 'مكليدجر', 'Smart Online Accounting, Bookkeeping & Tax Services', 'ركز على تنمية أعمالك واترك دفاترك علينا!', '/images/202304090636m7.jpg', 'no', 2, '2023-04-09 03:36:26', '2023-04-09 03:36:26', NULL, NULL, '0.00', '0.00'),
(12, 'Foodics', 'فودكس', 'Foodics offers a cloud-based, all-in-one Restaurant Management System and Point of Sale solution that restaurant owners can access from their iPad quickly and in multiple languages.', 'تقدم فودكس نظام إدارة مطاعم شاملًا قائمًا على السحابة وحل نقاط البيع التي يمكن لأصحاب المطاعم الوصول إليها من جهاز iPad الخاص بهم بسرعة وبلغات متعددة.', '/images/202304090639c-1.png', 'ksa', 4, '2023-04-09 03:39:22', '2023-04-09 03:39:22', NULL, NULL, '0.00', '0.00'),
(13, 'Geidea', 'Geidea', 'The new way to accept all types of payments and manage your entire business.', 'الطريقة الجديدة لقبول جميع أنواع المدفوعات وإدارة عملك بالكامل.', '/images/20230409064089.png', 'no', 4, '2023-04-09 03:40:17', '2023-04-09 03:40:17', NULL, NULL, '0.00', '0.00'),
(14, 'Neoleap', 'Neoleap', 'A leading financial technology company whose role is to develop the personal and business sector to be more secure and growing .', 'شركة رائدة في مجال التكنولوجيا المالية يتمثل دورها في تطوير القطاع الشخصي والتجاري ليكون أكثر أمانًا ونموًا .', '/images/202304090641323.png', 'no', 4, '2023-04-09 03:41:13', '2023-04-09 03:41:13', NULL, NULL, '0.00', '0.00'),
(15, 'OTO', 'أوتو', 'OTO is MENA’s #1 shipping gateway for online retailers and omnichannel brands', 'أوتو هي بوابة الشحن الاولى في الشرق الأوسط للمتاجر الإلكترونية وتجار التجزئة', '/images/202304090642a1.webp', 'no', 5, '2023-04-09 03:42:40', '2023-04-09 03:42:40', NULL, NULL, '0.00', '0.00'),
(16, 'OrderLord', 'أوردر لورد', 'All-in-One Delivery Management Solution .', 'نظام متكامل لإدارة طلبات التّوصيل.', '/images/202304090643a2.webp', 'no', 5, '2023-04-09 03:43:59', '2023-04-09 03:43:59', NULL, NULL, '0.00', '0.00'),
(17, 'GetSwift', 'جيت سويفت', 'Fleet Management and Route Optimization .', 'نظام متقن لإدارة السّائقين والطّرقات.', '/images/202304090645a3.webp', 'ksa', 5, '2023-04-09 03:45:08', '2023-04-09 03:45:08', NULL, NULL, '0.00', '0.00'),
(18, 'Yallow', 'يالو', 'Delivery Management & Marketplace', 'نظام إدارة خدمة التوصيل ومتجر لخدمات التوصيل', '/images/202304090645m10.webp', 'ksa', 5, '2023-04-09 03:45:56', '2023-04-09 03:45:56', NULL, NULL, '0.00', '0.00'),
(19, 'Tookan', 'Tookan', 'Automate your Delivery Management Services', 'Tookan', '/images/202304090646m11.webp', 'no', 5, '2023-04-09 03:46:36', '2023-04-09 03:46:36', NULL, NULL, '0.00', '0.00'),
(20, '4U Logistics', 'لأجلك اللوجستية', 'One Click Away', 'على بعد ضغطة زر واحدة', '/images/202304090647m12.webp', 'no', 5, '2023-04-09 03:47:42', '2023-04-09 03:47:42', NULL, NULL, '0.00', '0.00'),
(21, 'weego', 'ويغو', 'Restaurant delivery management software', 'منصة لإدارة خدمة التوصيل في المطاعم', '/images/202304090648m13.webp', 'no', 5, '2023-04-09 03:48:29', '2023-04-09 03:48:29', NULL, NULL, '0.00', '0.00'),
(22, 'Dook', 'دووك', 'Manage your delivery operations efficiently', 'نظّم عمليّات التّوصيل في مطعمك بمنتهى السّهولة', '/images/202304090649m14.webp', 'no', 5, '2023-04-09 03:49:17', '2023-04-09 03:49:17', NULL, NULL, '0.00', '0.00'),
(23, 'Yeswa', 'يسوى', 'Run your delivery Service with a click of a button.', 'خدمة التّوصيل بضغطة زرّ.', '/images/202304090649m15.webp', 'no', 5, '2023-04-09 03:49:52', '2023-04-09 03:49:52', NULL, NULL, '0.00', '0.00'),
(24, 'Mashkor', 'مشكور', 'Ask Mashkor', 'اطلب من مشكور', '/images/202304090650m16.jpg', 'no', 5, '2023-04-09 03:50:46', '2023-04-09 03:50:46', NULL, NULL, '0.00', '0.00'),
(25, 'Cervo', 'سيرفو', 'We are not the only ones, but we are distinguished', 'لسنا الوحيدين، لكننا متميزين', '/images/202304090651m17.jpg', 'no', 5, '2023-04-09 03:51:34', '2023-04-09 03:51:34', NULL, NULL, '0.00', '0.00'),
(26, 'KOINZ', 'كوينز', 'New generation of customer engagement', 'الجيل الجديد من برامج إشراك العملاء في مجال المطاعم', '/images/koinz-loyalty-logo.webp', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://koinz.app/#/', '0.00', '0.00'),
(27, 'Mukafaat', 'مكافآت', 'Efficient Loyalty Program for Your Business', 'برنامج ولاء فعّال لشركتك.', '/images/mukafat-logo.webp', 'no', 6, '2023-04-09 03:55:39', '2023-04-09 03:55:39', NULL, 'https://www.mukafaat.com', '0.00', '0.00'),
(28, 'Resal', 'رسال', 'Interactive loyalty program with points, stamps, and more', 'برنامج ولاء تفاعلي يستخدم النقاط والأختام وأكثر من ذلك.', '/images/resal-logo.jpeg', 'no', 6, '2023-04-09 03:56:29', '2023-04-09 03:56:29', NULL, 'https://www.resal.me/', '0.00', '0.00'),
(29, 'Abkhus', 'أبخص', 'Electronic Wallet with a Points System', 'محفظة إلكترونية مع نظام لجمع النقاط', '/images/abkhus-logo.jpg', 'no', 6, '2023-04-09 03:57:18', '2023-04-09 03:57:18', NULL, 'https://abkhus.com', '0.00', '0.00'),
(30, 'Greenbill', 'جرين بيل', 'Digital receipts service for retailers and more', 'تابع الفواتير والولاءات والعروض جميعها من مكان واحد!', '/images/greenbill-logo.webp', 'no', 6, '2023-04-09 03:58:14', '2023-04-09 03:58:14', NULL, 'https://www.greenbill.net', '0.00', '0.00'),
(31, 'BrandWallet', 'براند والت', 'Loyalty Platform & Digital Menu', 'برامج الولاء والمنيو الرقمي', '/images/brandwallet-logo.jpg', 'no', 6, '2023-04-09 03:59:19', '2023-04-09 03:59:19', NULL, 'https://brand-wallet.com', '0.00', '0.00'),
(32, 'Swan Plus', 'Swan Plus', 'Loyalty system for customers', 'نظام ولاء لمعرفة العملاء', '/images/swan-logo.jpg', 'no', 6, '2023-04-09 03:59:56', '2023-04-09 03:59:56', NULL, 'https://swan.plus/#0', '0.00', '0.00'),
(33, 'LoyaPro', 'لويابرو', 'Loyalty app based on digital cards', 'تطبيق ولاء يعتمد على البطاقات الرقمية', '/images/loyapro-logo.webp', 'no', 6, '2023-04-09 04:00:34', '2023-04-09 04:00:34', NULL, 'https://loyapro.com', '0.00', '0.00'),
(34, 'Bonat', 'بونات', 'Engage with customers to drive growth', 'تواصل مع الزّبائن ونمِّ مشروعك', '/images/bonat-logo.webp', 'no', 6, '2023-04-09 04:01:13', '2023-04-09 04:01:13', NULL, 'https://bonat.io', '0.00', '0.00'),
(35, 'FittiCoin', 'فيتي كوين', 'Rewarding people for their completed steps', 'مكافآت مع كل خطوة', '/images/fitticoin-logo.webp', 'no', 6, '2023-04-09 04:02:30', '2023-04-09 04:02:30', NULL, 'https://www.fitticoin.com', '0.00', '0.00'),
(36, 'UPP', 'UPP', 'Loyalty comes', 'الولاء بأساليب', '/images/upp-logo.jpg', 'no', 6, '2023-04-09 04:03:13', '2023-04-09 04:03:13', NULL, 'https://upprewards.com', '0.00', '0.00'),
(37, 'Florinz', 'فلورنز', 'Florinz helps brands innovatively know customers and reach new customers.', 'فلورنز يساعد العلامات التجارية على معرفة العملاء بشكل مبتكر والوصول إلى عملاء جدد.', '/images/florinz-logo.jpg', 'no', 6, '2023-04-09 04:03:55', '2023-04-09 04:03:55', NULL, 'https://florinz.com/ar/', '0.00', '0.00'),
(38, 'Mukafaat Online Ordering', 'مكافآت للطلب عبر الإنترنت', 'Online Ordering and Rich Rewarding Features', 'الطلب عبر الإنترنت وعدد كبير من ميزات منح المكافآت.', '/images/mukafaat-loyalty-logo.webp', 'no', 6, '2023-04-09 04:04:43', '2023-04-09 04:04:43', NULL, 'https://www.mukafaat.com', '0.00', '0.00'),
(39, 'Foodics', 'فودكس', 'Foodics offers a cloud-based, all-in-one Restaurant Management System and Point of Sale solution that restaurant owners can access from their iPad quickly and in multiple languages.', 'تقدم فودكس نظام إدارة مطاعم شاملًا قائمًا على السحابة وحل نقاط البيع التي يمكن لأصحاب المطاعم الوصول إليها من جهاز iPad الخاص بهم بسرعة وبلغات متعددة.', '/images/202304090706c-1.png', 'no', 7, '2023-04-09 04:06:51', '2023-04-09 04:06:51', NULL, NULL, '0.00', '0.00'),
(40, 'Iwaiter', 'أي ويتر', 'Create your digital restaurant in three steps', 'أنشئ موقع مطعمك في ثلاث خطوات', '/images/2023040907079.webp', 'no', 7, '2023-04-09 04:07:37', '2023-04-09 04:07:37', NULL, NULL, '0.00', '0.00'),
(41, 'Chat Food', 'تشات فود', 'Omnichannel ordering and data-driven marketing solution', 'الحل المتميز للطلب متعدد القنوات والتسويق المعتمد على البيانات', '/images/202304090708ch.jpg', 'no', 7, '2023-04-09 04:08:20', '2023-04-09 04:08:20', NULL, NULL, '0.00', '0.00'),
(42, 'Slide', 'سلايد', 'Start your social media selling', 'ابدأ مبيعاتك على منصات التواصل الاجتماعي', '/images/202304090709v1.jpg', 'no', 7, '2023-04-09 04:09:11', '2023-04-09 04:09:11', NULL, NULL, '0.00', '0.00'),
(43, 'Arabot', 'أرابوت', 'Sell On WhatsApp Now', 'باشر البيع على الواتساب الآن', '/images/202304090710v2.jpg', 'no', 7, '2023-04-09 04:10:11', '2023-04-09 04:10:11', NULL, NULL, '0.00', '0.00'),
(44, 'Mobilzer', 'موبيلزر', 'Build your app in minutes, not months .', 'أنشئ تطبيق الجوال وموقع مطعمك في دقائق وليس في شهور .', '/images/202304090711v3.jpg', 'no', 7, '2023-04-09 04:11:04', '2023-04-09 04:11:04', NULL, NULL, '0.00', '0.00'),
(45, 'Order', 'أوردر', 'Your Own Website And App To Receive Orders', 'موقعك الخاصّ وتطبيقك لتلقّي الطّلبات .', '/images/202304090712v4.webp', 'no', 7, '2023-04-09 04:12:15', '2023-04-09 04:12:15', NULL, NULL, '0.00', '0.00'),
(46, 'Kawkab', 'كوكب', 'The best method to receive online orders', 'الوسيلة الأمثل لاستقبال طلبات عملائك أونلاين.', '/images/202304090712v5.jpg', 'no', 7, '2023-04-09 04:12:56', '2023-04-09 04:12:56', NULL, NULL, '0.00', '0.00'),
(47, 'Mukafaat', 'مكافآت', 'Efficient Loyalty Program for Your Business', 'برنامج ولاء فعّال لشركتك', '/images/202304090718m0.webp', 'no', 7, '2023-04-09 04:18:23', '2023-04-09 04:18:23', NULL, NULL, '0.00', '0.00'),
(48, 'Fooder', 'فودر', 'The best solution for WhatsApp marketing and ordering .', 'أفضل حل للتسويق واستلام الطلبات عبر الواتساب .', '/images/202304090719v7.jpg', 'no', 7, '2023-04-09 04:19:25', '2023-04-09 04:19:25', NULL, NULL, '0.00', '0.00'),
(49, 'Radyes', 'راديس', 'Your digital commerce engine.', 'المحرك الأمثل لتجارتك الرقمية', '/images/202304090720v8.webp', 'no', 7, '2023-04-09 04:20:32', '2023-04-09 04:20:32', NULL, NULL, '0.00', '0.00'),
(50, 'MBSHR', 'مبشر', 'Digital QR Menu & Virtual Waiter .', 'منيو عبر رموز الاستجابة السريعة ونادل افتراضي .', '/images/202304090721v9.webp', 'no', 7, '2023-04-09 04:21:09', '2023-04-09 04:21:09', NULL, NULL, '0.00', '0.00'),
(51, 'Mnasati', 'منصتي', 'Create your online store within 24 hours .', 'أنشئ متجرك الإلكتروني خلال ٢٤ ساعة.', '/images/202304090805v10.jpg', 'no', 7, '2023-04-09 05:05:04', '2023-04-09 05:05:04', NULL, NULL, '0.00', '0.00'),
(52, 'Ruut', 'روت', 'Online Ordering & Marketing Platform .', 'منصة للتسويق والطلب عبر الإنترنت (أونلاين) .', '/images/202304090810v11.webp', 'no', 7, '2023-04-09 05:10:31', '2023-04-09 05:10:31', NULL, NULL, '0.00', '0.00'),
(53, 'TAKER', 'تيكر', 'Advanced online ordering system for your restaurant .', 'نظام متطوّر للطّلبات عبر الإنترنت.', '/images/202304090811v12.webp', 'no', 7, '2023-04-09 05:11:32', '2023-04-09 05:11:32', NULL, NULL, '0.00', '0.00'),
(54, 'OkMenu', 'أوكي منيو', 'Manage your online orders and payments with ease', 'الحل الأسهل لإدارة الطلبات والمدفوعات عبر الإنترنت', '/images/202304090812v13.jpg', 'no', 7, '2023-04-09 05:12:35', '2023-04-09 05:12:35', NULL, NULL, '0.00', '0.00'),
(55, 'Zyda', 'Zyda', 'Zyda powers the restaurants’ direct online ordering experience.', 'تدعم زيدا المطاعم لتقديم تجربة الطلب المباشر عبر الإنترنت.', '/images/202304090814z.webp', 'no', 7, '2023-04-09 05:14:16', '2023-04-09 05:14:16', NULL, NULL, '0.00', '0.00'),
(56, 'Ordable', 'اوردبل', 'Create your own online store', 'أطلق متجرك الالكتروني اليوم!', '/images/202304090815or4.jpg', 'no', 7, '2023-04-09 05:15:49', '2023-04-09 05:15:49', NULL, NULL, '0.00', '0.00'),
(57, 'The Chefz', 'ذا شفز', 'Connecting the Best Restaurants with their Best Customers.', 'نصل أفضل المطاعم بأفضل الزبائن', '/images/202304090818ce.jpg', 'ksa', 8, '2023-04-09 05:18:11', '2023-04-09 05:18:11', NULL, NULL, '0.00', '0.00'),
(58, 'Jahez', 'جاهز', 'Fastest app in food delivery.', 'أسرع تطبيق في التوصيل', '/images/202304090819js.jpg', 'ksa', 8, '2023-04-09 05:19:10', '2023-04-09 05:19:10', NULL, NULL, '0.00', '0.00'),
(59, 'Marsool', 'مرسول', 'The B2B service of Mrsool integrated with your POS', 'خدمة مرسول لمعاملات الشّركات', '/images/202304090820166.jpeg', 'ksa', 8, '2023-04-09 05:20:06', '2023-04-09 05:20:06', NULL, NULL, '0.00', '0.00'),
(60, 'Tkyr', 'تخير', 'A new experience to discover restaurants and cafes', 'تجربة جديدة لاكتشاف للمطاعم والكافيهات', '/images/202304090822m30.jpg', 'no', 8, '2023-04-09 05:22:13', '2023-04-09 05:22:13', NULL, NULL, '0.00', '0.00'),
(61, 'Zomato', 'Zomato', 'Better Food for More People', 'وجبات أشهى لجمهور أكبر', '/images/202304090823m31.jpg', 'no', 8, '2023-04-09 05:23:03', '2023-04-09 05:23:03', NULL, NULL, '0.00', '0.00'),
(62, 'Bonat', 'بونات', 'Engage with customers to drive growth', 'تواصل مع الزّبائن ونمِّ مشروعك.', '/images/202304091236m32.webp', 'no', 8, '2023-04-09 09:36:15', '2023-04-09 09:36:15', NULL, NULL, '0.00', '0.00'),
(63, 'Shgardi', 'شقردي', 'Online food ordering and order delivery', 'طلب الطعام عبر الإنترنت وخدمات التوصيل', '/images/202304091236m33.jpg', 'ksa', 8, '2023-04-09 09:36:52', '2023-04-09 09:36:52', NULL, NULL, '0.00', '0.00'),
(64, 'Tiro', 'تايرو', 'Enable your customers to order ahead of their arrival', 'مكن عملاءك من الطلب المسبق قبل وصولهم', '/images/202304091237m34.jpg', 'no', 8, '2023-04-09 09:37:39', '2023-04-09 09:37:39', NULL, NULL, '0.00', '0.00'),
(65, 'Koinz', 'كوينز', 'New generation of customer engagement', 'الجيل الجديد من برامج إشراك العملاء في مجال المطاعم', '/images/202304091238m35.webp', 'no', 8, '2023-04-09 09:38:29', '2023-04-09 09:38:29', NULL, NULL, '0.00', '0.00'),
(66, 'Nugttah', 'نقطة', 'CRM: loyalty, online orders, reports and more', 'إدارة علاقات العملاء: برامج ولاء، طلبات عبر الإنترنت، تقارير، وغيرها', '/images/202304091239m36.webp', 'no', 8, '2023-04-09 09:39:09', '2023-04-09 09:39:09', NULL, NULL, '0.00', '0.00'),
(67, 'Deliveroo', 'ديليفرو', 'Simplify your online delivery strategies', 'تصل الطّلبات إلى النّظام مباشرةً، لخدمة توصيل سريعة.', '/images/202304091239m37.webp', 'kw', 8, '2023-04-09 09:39:50', '2023-04-09 09:39:50', NULL, NULL, '0.00', '0.00'),
(68, 'Locate', 'لوكيت', 'Download the app and enjoy the offers', 'استمتع بالطلب من متجرك المفضل', '/images/202304091240m38.jpg', 'no', 8, '2023-04-09 09:40:24', '2023-04-09 09:40:24', NULL, NULL, '0.00', '0.00'),
(69, 'n.go', 'إن قو', 'Loyalty – Virtual Drive Thru', 'برنامج ولاء – طلبات سيارات إفتراضية', '/images/202304091241m39.webp', 'no', 8, '2023-04-09 09:41:18', '2023-04-09 09:41:18', NULL, NULL, '0.00', '0.00'),
(70, 'xtrachef By toast', 'xtrachef By toast', 'xtraCHEF, the leading accounts payable (AP) automation and back-office business intelligence solution for restaurants, today announced they’ve entered a preferred partnership agreement with Toast.', 'xtraCHEF, the leading accounts payable (AP) automation and back-office business intelligence solution for restaurants, today announced they’ve entered a preferred partnership agreement with Toast.', '/images/2023040912431.webp', 'no', 9, '2023-04-09 09:43:29', '2023-04-09 09:43:29', NULL, NULL, '0.00', '0.00'),
(71, 'Apicbase', 'Apicbase', 'One platform to manage all kitchen ops', 'One platform to manage all kitchen ops', '/images/2023040912432.png', 'no', 9, '2023-04-09 09:43:58', '2023-04-09 09:43:58', NULL, NULL, '0.00', '0.00'),
(72, 'supy', 'supy', 'The most efficient way to streamline the ordering process with your suppliers.', 'The most efficient way to streamline the ordering process with your suppliers.', '/images/202304091244c-2.png', 'no', 9, '2023-04-09 09:44:30', '2023-04-09 09:44:30', NULL, NULL, '0.00', '0.00'),
(73, 'ShopBrain', 'شوب برين', 'Guess less, Sell more & Save resources', 'خفّض تكاليفك وحسّن هوامشك.', '/images/202304091246200.png', 'no', 11, '2023-04-09 09:46:07', '2023-04-09 09:46:07', NULL, NULL, '0.00', '0.00'),
(74, 'Fruits360', 'فروتس 360', 'Harness the power of data-driven insights and make fruitful decisions with Fruits360!', 'استخدم الرؤى المبنية على البيانات لاتخاذ قرارات مدروسة مع فروتس 360!', '/images/202304091246201.png', 'no', 11, '2023-04-09 09:46:49', '2023-04-09 09:46:49', NULL, NULL, '0.00', '0.00'),
(75, 'Dida', 'ديدا', 'Empowering your restaurant with AI .', 'دعم مطعمك بالذكاء الاصطناعي .', '/images/202304091247202.webp', 'no', 11, '2023-04-09 09:47:40', '2023-04-09 09:47:40', NULL, NULL, '0.00', '0.00'),
(76, 'Apicbase', 'أبيك بايس', 'Apicbase is the leading F&B management software for multi-store businesses .', 'أبيك بايس هو البرنامج الرائد لإدارة موارد المطاعم والفنادق متعددة الفروع.', '/images/202304091248oai.png', 'no', 11, '2023-04-09 09:48:36', '2023-04-09 09:48:36', NULL, NULL, '0.00', '0.00'),
(77, 'Smart Digital Menu', 'Smart Digital Menu', 'Provide full digital experience for your customers.', 'وفر تجربة رقمية متكاملة لعملائك.', '/images/202304091250204.jpeg', 'no', 10, '2023-04-09 09:50:39', '2023-04-09 09:50:39', NULL, NULL, '0.00', '0.00'),
(78, 'FineDine Menu', 'FineDine Menu', 'AI-driven dine-in, pickup, and delivery solutions', 'حلول ذكيّة للمطاعم والتّوصيل والاستلام', '/images/202304091251205.webp', 'no', 10, '2023-04-09 09:51:19', '2023-04-09 09:51:19', NULL, NULL, '0.00', '0.00'),
(79, 'EasyMenu', 'إيزي منيو', 'Menu-Building and Online Ordering Services.', 'منيو مطعمك متاحة لعملائك بشكل أسهل', '/images/202304091252207.webp', 'no', 11, '2023-04-09 09:52:00', '2023-04-09 09:52:00', NULL, NULL, '0.00', '0.00'),
(80, 'KOL', 'KOL', 'Enhance social dining experience with digital ordering services', 'عزز تجربة تناول الطعام من خلال خدمات الطلب الرقمية', '/images/202304091253m19.webp', 'no', 10, '2023-04-09 09:53:00', '2023-04-09 09:53:00', NULL, NULL, '0.00', '0.00'),
(81, 'Smart Menu', 'Smart Menu', 'Amazing Smart QR menu to order, pay, and more.', 'منيو ذكي ورائع يعمل بتقنية الاستجابة السريعة QR لتطلب ما تحب، وتدفع قيمته، وأكثر', '/images/202304091253m20.jpg', 'no', 10, '2023-04-09 09:53:41', '2023-04-09 09:53:41', NULL, NULL, '0.00', '0.00'),
(82, 'Essaly', 'إيصالي', 'More sustainable world', 'عالم مالي أكثر استدامة', '/images/20230409125590.jpg', 'no', 13, '2023-04-09 09:55:32', '2023-04-09 09:55:32', NULL, NULL, '0.00', '0.00'),
(83, 'Fatortech', 'فاتورتك', 'Your app for digitized receipts and keeping track of your expenditure', 'انتقل بإيصالاتك من الورق إلى العالم الرقمي.', '/images/20230409125691.jpg', 'no', 13, '2023-04-09 09:56:18', '2023-04-09 09:56:18', NULL, NULL, '0.00', '0.00'),
(84, 'Greenbill', 'جرين بيل', 'Digital receipts service for retailers and more .', 'تابع الفواتير والولاءات والعروض جميعها من مكان واحد!', '/images/20230409125692.webp', 'no', 13, '2023-04-09 09:56:59', '2023-04-09 09:56:59', NULL, NULL, '0.00', '0.00'),
(85, 'iisal', 'إيصال', 'Electronic invoice, Zakat compliance, loyalty program & Ads .', 'الفاتورة الإلكترونية، مع الامتثال لمتطلبات الزكاة، مع برنامج للولاء والإعلانات .', '/images/202304091257m21.jpg', 'no', 13, '2023-04-09 09:57:55', '2023-04-09 09:57:55', NULL, NULL, '0.00', '0.00'),
(86, 'Dafater', 'دفاتر', 'Dafater: The Easiest and Most Affordable Accounting Program.', 'دفاتر: البرنامج المحاسبي الأسهل والأقل تكلفة', '/images/20230409125980.jpg', 'no', 12, '2023-04-09 09:59:34', '2023-04-09 09:59:34', NULL, NULL, '0.00', '0.00'),
(87, 'Microtec', 'مايكروتك', 'High-End Accounting ERP System', 'نظام محاسبي متطور لإدارة الموارد المؤسسية', '/images/20230409130081.jpg', 'no', 12, '2023-04-09 10:00:15', '2023-04-09 10:00:15', NULL, NULL, '0.00', '0.00'),
(88, 'Kasb', 'كسب', 'Cloud Accounting Platform with CRM, Sales, HR, & more.', 'منصة سحابية محاسبية للشركات', '/images/20230409130082.webp', 'no', 12, '2023-04-09 10:00:53', '2023-04-09 10:00:53', NULL, NULL, '0.00', '0.00'),
(89, 'Oditar ERP', 'Oditar ERP', 'Cloud ERP system for startups & SMEs', 'نظام سحابي للشركات الصغيرة والناشئة', '/images/202304091301m23.jpg', 'no', 12, '2023-04-09 10:01:56', '2023-04-09 10:01:56', NULL, NULL, '0.00', '0.00'),
(90, 'Supy', 'سابي', '#1 Suppliers Ordering Platform in the MENA Region.', 'المنصة الأولى في المنطقة العربية للطلب من الموردين', '/images/202304091303s1.jpg', 'no', 14, '2023-04-09 10:03:04', '2023-04-09 10:03:04', NULL, NULL, '0.00', '0.00'),
(91, 'Kaso', 'كاسو', 'Restaurant Supply Ordering', 'منصة لإدارة مشتريات المطاعم', '/images/202304091303s2.jpg', 'no', 14, '2023-04-09 10:03:42', '2023-04-09 10:03:42', NULL, NULL, '0.00', '0.00'),
(92, 'Eighty6', 'Eighty6', 'Procurement made easy.', 'من أجل شراء أسهل من الموردين', '/images/202304091304s3.jpg', 'no', 14, '2023-04-09 10:04:14', '2023-04-09 10:04:14', NULL, NULL, '0.00', '0.00'),
(93, 'Urban Piper', 'Urban Piper', 'Manage Online Sales Channels from Your POS', 'قم بإدارة الطلبات الواردة عبر قنوات الإنترنت المتعددة من نقطة بيع واحدة', '/images/202304091305d01.webp', 'ksa', 15, '2023-04-09 10:05:31', '2023-04-09 10:05:31', NULL, NULL, '0.00', '0.00'),
(94, 'otter', 'otter', 'Receive delivery and online orders to your Foodics dashboard!', 'استقبل الطلبات الواردة عبر الإنترنت في لوحة التحكم الخاصة بك من فودكس!', '/images/202304091306d02.jpg', 'ksa', 15, '2023-04-09 10:06:03', '2023-04-09 10:06:03', NULL, NULL, '0.00', '0.00'),
(95, 'Deliverect', 'ديليفيريكت', 'Omni-channel restaurant & Delivery management .', 'إدارة القنوات الموحّدة والتّوصيل', '/images/202304091306d03.webp', 'ksa', 15, '2023-04-09 10:06:32', '2023-04-09 10:06:32', NULL, NULL, '0.00', '0.00'),
(96, 'FeedUs', 'فييدأس', 'Manage all your online orders from one place .', 'إدارة جميع طلبات الأونلاين من مكان واحد .', '/images/202304091307feed.jpg', 'ksa', 15, '2023-04-09 10:07:15', '2023-04-09 10:07:15', NULL, NULL, '0.00', '0.00'),
(97, 'Ratehex', 'Ratehex', 'Your business doctor is now available D. Ratehex .', 'قيم وراقب منتجاتك وموظفيك وحلل النتائج وطور عملك التجاري', '/images/202304091309du1.jpg', 'no', 16, '2023-04-09 10:09:07', '2023-04-09 10:09:07', NULL, NULL, '0.00', '0.00'),
(98, 'serVme', 'سيرف مي', 'All in.', 'منصة ضيافة', '/images/202304091310se.jpg', 'no', 17, '2023-04-09 10:10:00', '2023-04-09 10:10:00', NULL, NULL, '0.00', '0.00'),
(99, 'Jisr', 'جسر', 'Powerful, Flexible, Integrated.', 'قوي، مرن، متكامل', '/images/202304091310h2.webp', 'no', 19, '2023-04-09 10:10:46', '2023-04-09 10:10:46', NULL, NULL, '0.00', '0.00'),
(100, 'Jisr', 'جسر', 'Powerful, Flexible, Integrated.', 'قوي، مرن، متكامل', '/images/jisr-logo.webp', 'no', 18, '2023-04-09 10:11:21', '2023-04-09 10:11:21', NULL, NULL, '0.00', '0.00'),
(101, 'Unisync', 'Unisync', 'Ideal Cloud solution for HR in Small business.', 'الحل السحابي الأمثل للموارد البشرية لأصحاب الأعمال الصغيرة', '/images/unisync-logo.jpg', 'uae', 18, '2023-04-09 10:12:00', '2023-04-09 10:12:00', NULL, NULL, '0.00', '0.00'),
(102, 'Partoo', 'بارتو', 'Get closer to your clients .', 'اقترب من عملائك أكثر .', '/images/202304091312par.jpg', 'no', 20, '2023-04-09 10:12:38', '2023-04-09 10:12:38', NULL, NULL, '0.00', '0.00'),
(103, 'Foodics', 'فودكس', 'Foodics offers a cloud-based, all-in-one Restaurant Management System and Point of Sale solution that restaurant owners can access from their iPad quickly and in multiple languages.', 'تقدم Foodics نظام إدارة مطاعم شاملًا قائمًا على السحابة وحل نقاط البيع التي يمكن لأصحاب المطاعم الوصول إليها من جهاز iPad الخاص بهم بسرعة وبلغات متعددة.', '/images/202304092332c-1.png', 'no', 3, '2023-04-09 20:32:22', '2023-04-09 20:32:22', NULL, NULL, '0.00', '199.00'),
(104, 'Sapaad', 'ساباد', 'Digital platform that automates daily operations and streamlines food safety', 'منصة رقمية تعمل على أتمتة العمليات اليومية وتبسيط سلامة الغذاء', '/images/20230409233311.png', 'no', 3, '2023-04-09 20:33:05', '2023-04-09 20:33:05', NULL, NULL, '0.00', '150.00'),
(105, 'Odoo', 'اودو', 'Odoo Inventory app automatically inputs any transaction from the POS in the stock. You can see in real-time the availability of products without losing time.', 'يقوم تطبيق Odoo Inventory تلقائيًا بإدخال أي معاملة من نقاط البيع في المخزون. يمكنك رؤية مدى توفر المنتجات في الوقت الفعلي دون إضاعة الوقت.', '/images/20230409233334.png', 'no', 3, '2023-04-09 20:33:45', '2023-04-09 20:33:45', NULL, NULL, '0.00', '0.00'),
(106, 'Geidea', 'Geidea', 'The new way to accept all types of payments and manage your entire business.', 'الطريقة الجديدة لقبول جميع أنواع', '/images/20230409233689.png', 'no', 3, '2023-04-09 20:36:15', '2023-04-09 20:36:15', NULL, NULL, '0.00', '0.00'),
(107, 'Loyverse', 'Loyverse', 'Transform your smartphone or tablet into an easy to use point-of-sale', 'تحويل هاتفك الذكي أو الجهاز اللوحي إلى نقطة بيع مجانية سهلة الإستخدام', '/images/202304092339last01 copy.png', 'no', 3, '2023-04-09 20:39:57', '2023-04-09 20:39:57', NULL, NULL, '0.00', '0.00'),
(108, 'Omega Software', 'Omega Software', 'Cloud-based solutions for Restaurants Powerful, flexible, yet Simple.', 'حلول سحابية للمطاعم فعالة، مرنة وبسيطة الإستخدام', '/images/202304092343omega_logo.jpg.webp', 'no', 3, '2023-04-09 20:43:39', '2023-04-09 20:43:39', NULL, NULL, '0.00', '0.00'),
(109, 'marn', 'مرن', 'An integrated sales and management system.', 'نظام بيع وإدارة متكامل', '/images/202304092345marn.webp', 'no', 3, '2023-04-09 20:45:16', '2023-04-09 20:45:16', NULL, NULL, '0.00', '0.00'),
(110, 'Grubtech', 'Grubtech', 'One platform to streamline and automate your entire kitchen workflows, sync all departments for seamless communication, and spot improvement opportunities - Allowing you to grow and expand revenue without extra costs.', 'نظام أساسي واحد لتبسيط مهام سير عمل المطبخ بالكامل وأتمتتها ، ومزامنة جميع الأقسام من أجل التواصل السلس ، وتحديد فرص التحسين - مما يتيح لك النمو وتوسيع الإيرادات دون تكاليف إضافية.', '/images/202304112331mn.jpeg', 'no', 3, '2023-04-11 20:31:23', '2023-04-11 20:31:23', NULL, NULL, '0.00', '0.00'),
(111, 'Rewaa', 'رواء', 'Rewaa offers cloud-solutions represented in Rewaa platform and POS', 'تقدم رواء حلول سحابية ممثلة في منصة رواء ونقاط البيع', '/images/202304112335Rewaa-logo-no-tagline.svg', 'no', 3, '2023-04-11 20:35:07', '2023-04-11 20:35:07', NULL, NULL, '0.00', '0.00'),
(112, 'Lavu', 'Lavu', 'Discover easy-to-use restaurant management solutions to streamline your operations, empower your staff, and provide better customer experiences.', 'اكتشف حلول إدارة المطاعم سهلة الاستخدام لتبسيط عملياتك وتمكين موظفيك وتوفير تجارب عملاء أفضل.', '/images/202304112339lavu-logo.png.webp', 'no', 3, '2023-04-11 20:39:12', '2023-04-11 20:39:12', NULL, NULL, '0.00', '0.00'),
(113, 'Lightspeed', 'Lightspeed', 'Sell from anywhere with a scalable, cloud-based POS.', 'قم بالبيع من أي مكان باستخدام نقطة بيع قابلة للتطوير ومستندة إلى مجموعة النظراء.', '/images/202304112341lo.jpeg', 'no', 3, '2023-04-11 20:41:22', '2023-04-11 20:41:22', NULL, NULL, '0.00', '0.00'),
(114, 'MICROS', 'MICROS', 'By combining MICROS\' industry-specific applications with Oracle\'s complete technology stack, our customers are able to take advantage of accelerated innovation, unmatched security, and advanced POS system integrations. Oracle MICROS hardware is purpose-built to withstand spills, harsh weather, constant use, and evolving security threats. Oracle MICROS POS and PMS solutions are the leading choice for businesses needing an easy-to-use, reliable, all-in-one cloud platform.', 'من خلال دمج تطبيقات MICROS الخاصة بالصناعة مع مجموعة التكنولوجيا الكاملة من Oracle ، يمكن لعملائنا الاستفادة من الابتكار المتسارع والأمان الذي لا مثيل له والتكامل المتقدم لنظام نقاط البيع. تم تصميم أجهزة Oracle MICROS خصيصًا لمقاومة الانسكابات والطقس القاسي والاستخدام المستمر وتهديدات الأمان المتطورة. حلول Oracle MICROS POS و PMS هي الخيار الرائد للشركات التي تحتاج إلى نظام أساسي سحابي سهل الاستخدام وموثوق وشامل.', '/images/202304112344orac.png', 'no', 3, '2023-04-11 20:44:15', '2023-04-11 20:44:15', NULL, NULL, '0.00', '0.00'),
(115, 'Revel', 'Revel', 'Deliver a better customer experience, diversify revenue streams, and scale your businesses with ease.', 'تقديم تجربة عملاء أفضل ، وتنويع مصادر الإيرادات ، وتوسيع نطاق أعمالك بسهولة.', '/images/202304112348revel-pos.png.webp', 'no', 3, '2023-04-11 20:48:10', '2023-04-11 20:48:10', NULL, NULL, '0.00', '375.00'),
(116, 'Dimensions', 'ديمنشنز', 'provides you all kinds of advanced reports about your store in real-time with easy to use and read dashboard, in less than a few minutes you will analyze your store performance.', 'يوفر لك جميع أنواع التقارير المتقدمة حول متجرك في الوقت الفعلي مع لوحة تحكم سهلة الاستخدام وقراءة ، في أقل من بضع دقائق ستحلل أداء متجرك.', '/images/2023041123531552850674489.jpeg', 'no', 3, '2023-04-11 20:53:27', '2023-04-11 20:53:27', NULL, NULL, '0.00', '0.00'),
(117, 'Unipal', 'يونيبال', '200+ Local Discounts and 150,000+ Global Discounts.\r\n', 'أكثر من ٢٠٠ خصم محلي و أكثر من ١٥٠ ألف خصم عالمي.\r\n', '/images/unipal-logo.jpg', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://unipal.me/en-sa/', '0.00', '0.00'),
(118, 'Giftcardsby', 'Giftcardspy', 'Create & Sell your branded Online Gift Card\r\n', 'صمّم و سوّق بطاقة الهدايا الإلكترونية بعلامتك التجارية\r\n', '/images/giftcardspy-logo.png', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://giftcardsby.com', '0.00', '0.00'),
(119, 'Nugttah', 'نقطة', 'Merchant Solutions & Customer Loyalty , flexible Loyalty Program , Reach More Customers , Analytic Solutions , Targeted Marketing , Pre-orders and More\r\n', 'بين حلول التجار وولاء العملاء برنامج ولاء مرن ، وصول لعملاء اكثر ، حلول تحليل ، تسويق مستهدف ، طلبات مسبقة واكثر', '/images/nugttah-logo.png', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://www.nugttah.com/en/home/', '0.00', '0.00'),
(120, 'eCopon', 'eCopon', 'The first app for competitions Certified in Kingdom of Saudi Arabia', 'التطبيق الأول للمسابقات المعتمد في المملكة العربية السعودية\r\n', '/images/ecopon-logo.jpg', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://e-copon.com/web/web/main/home', '0.00', '0.00'),
(121, 'SDC', 'SDC', 'Get exclusive online and in-store discounts, offers and coupons from your favourite stores, restaurants, gyms (and many, many more places!) in one app.\r\n', 'استمتع بباقة واسعة من الخصومات الفورية والعروض والكوبونات الحصرية وأكواد خصم في أشهر العلامات التجارية المحلية والعالمية في تطبيق واحد.\r\n', '/images/sdc-logo.png', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://sdcappsa.com/ar', '0.00', '0.00'),
(122, 'MOZAIC', 'MOZAIC', 'Coalition Loyalty system with many social features like leader board, gift vouchers, points donation, spin and win, social rewards and many others.\r\n', 'نظام ولاء التحالف مع العديد من الميزات الاجتماعية مثل لوحة المتصدرين وقسائم الهدايا والتبرع بالنقاط والتدوير والفوز والمكافآت الاجتماعية وغيرها الكثير.', '/images/mozaic-logo.jpeg', 'no', 6, '2023-04-09 03:53:40', '2023-04-09 03:53:40', NULL, 'https://www.mozaic.org', '0.00', '0.00'),
(123, 'SMACC', 'SMACC', 'SMACC is an All-In-One Cloud Accounting Software for Small & Medium Enterprises', 'نظام SMACC المتكامل، نظام محاسبي سحابي للمنشآت الصغيرة و المتوسطة !', '/images/smacc-logo.svg', 'ksa', 2, NULL, NULL, NULL, 'https://www.smacc.com/en/', '0.00', '0.00'),
(124, 'Medaderp', 'نظام مداد\r\n', 'An easy and integrated accounting program for managing small and medium companies.', 'برنامج محاسبة سهل ومتكامل لإدارة الشركات الصغيرة والمتوسطة.', '/images/medad-logo.png', 'ksa', 2, NULL, NULL, NULL, 'https://www.medaderp.com/en', '0.00', '0.00'),
(125, 'Requeue', 'Requeue', 'An application designed to capture, control, and automate the restaurant’s queuing process.\r\n', 'تطبيق مصمم لالتقاط عملية الانتظار في المطعم والتحكم فيها وأتمتتها.', '/images/requeue-logo.png', 'ksa', 21, NULL, NULL, NULL, 'https://requeue.net', '0.00', '0.00'),
(126, 'DGTERA', 'دجتيرا', 'Discover DGTERA Smart Solutions; To help you enhance operational efficiency by providing the latest technology business advisory and developing tailored solutions to meet the needs of different industries\r\n\r\n', 'اكتشف حلول دجتيرا الذكية؛ لتساعدك على تعزيز الكفاءة التشغيلية، من خلال تقديم أحدث الاستشارات التقنية في مجال الأعمال، وتطوير حلول مصممة خصيصًا لتلبية احتياجات الصناعات المختلفة.\r\n\r\n', '/images/DGTERA-logo.webp', 'ksa', 3, NULL, NULL, NULL, 'https://dgtera.com/', '0.00', '145.00'),
(127, 'Clover ', 'Clover ', 'Save time and grow sales with a trusted small business credit card processor.\r\n', 'يمكنك توفير الوقت وزيادة المبيعات باستخدام معالج بطاقات الائتمان للشركات الصغيرة الموثوق به.', '/images/Clover-logo.png', 'ksa', 3, NULL, NULL, NULL, 'https://www.clover.com/', '0.00', '206.00');

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_id` int(11) NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `times`
--

INSERT INTO `times` (`id`, `date_id`, `time`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '6am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(2, 3, '6.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(3, 3, '6.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(4, 3, '7am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(5, 3, '7.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(6, 3, '7.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(7, 3, '8am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(8, 3, '8.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(9, 3, '8.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(10, 3, '9am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(11, 3, '9.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(12, 3, '9.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(13, 3, '10am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(14, 3, '10.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(15, 3, '10.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(16, 3, '11am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(17, 3, '11.20am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(18, 3, '11.40am', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(19, 3, '12pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(20, 3, '12.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(21, 3, '12.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(22, 3, '1pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(23, 3, '1.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(24, 3, '1.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(25, 3, '2pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(26, 3, '2.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(27, 3, '2.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(28, 3, '3pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(29, 3, '3.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(30, 3, '3.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(31, 3, '4pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(32, 3, '4.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(33, 3, '4.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(34, 3, '5pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(35, 3, '5.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(36, 3, '5.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(37, 3, '6pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(38, 3, '6.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(39, 3, '6.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(40, 3, '7pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(41, 3, '7.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(42, 3, '7.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(43, 3, '8pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(44, 3, '8.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(45, 3, '8.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(46, 3, '9pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(47, 3, '9.20pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(48, 3, '9.40pm', 0, '2023-01-11 22:06:44', '2023-01-11 22:06:44'),
(49, 4, '6am', 2, '2023-01-11 22:07:13', '2023-01-15 12:39:54'),
(50, 4, '6.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(51, 4, '6.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(52, 4, '7am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(53, 4, '7.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(54, 4, '7.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(55, 4, '8am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(56, 4, '8.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(57, 4, '8.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(58, 4, '9am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(59, 4, '9.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(60, 4, '9.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(61, 4, '10am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(62, 4, '10.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(63, 4, '10.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(64, 4, '11am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(65, 4, '11.20am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(66, 4, '11.40am', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(67, 4, '12pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(68, 4, '12.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(69, 4, '12.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(70, 4, '1pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(71, 4, '1.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(72, 4, '1.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(73, 4, '2pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(74, 4, '2.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(75, 4, '2.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(76, 4, '3pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(77, 4, '3.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(78, 4, '3.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(79, 4, '4pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(80, 4, '4.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(81, 4, '4.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(82, 4, '5pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(83, 4, '5.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(84, 4, '5.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(85, 4, '6pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(86, 4, '6.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(87, 4, '6.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(88, 4, '7pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(89, 4, '7.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(90, 4, '7.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(91, 4, '8pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(92, 4, '8.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(93, 4, '8.40pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(94, 4, '9pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(95, 4, '9.20pm', 0, '2023-01-11 22:07:13', '2023-01-11 22:07:13'),
(96, 4, '9.40pm', 2, '2023-01-11 22:07:13', '2023-01-15 00:33:04'),
(97, 5, '3pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58'),
(98, 5, '4pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58'),
(99, 5, '5pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58'),
(100, 5, '6pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58'),
(101, 5, '7pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58'),
(102, 5, '8pm', 0, '2023-01-15 13:11:58', '2023-01-15 13:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `subscribed` int(11) NOT NULL DEFAULT 0,
  `administration_level` int(11) NOT NULL DEFAULT 0,
  `ref` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `role_id`, `subscribed`, `administration_level`, `ref`, `points`, `phone`) VALUES
(1, 'Omer', 'admin@gmail.com', NULL, '$2y$10$rDHMKt/pYSujF80e7I.vjeeTXW4Butc0JjIV6VhW/276svgqtihzW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-07 14:55:19', '2023-01-10 22:32:59', 0, 5, 4, NULL, '1', ''),
(11, 'sara', 'sara@supy.io', NULL, '$2y$10$Y8sdxOfFpFH5gFhMSBEyOeVXLz5PkubuwixI2K3WAIJntgwXOfWV.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:09:34', '2023-01-11 04:09:34', 0, 5, 0, 'sara1673420974', '0', ''),
(12, 'batool', 'batool@supy.io', NULL, '$2y$10$Zxj/84e0.L3yOe.IYlNL3.XohPx0fHCA0lNeTz4WJWYsb1ikaNa0y', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:09:53', '2023-01-11 04:09:53', 0, 5, 0, 'batool1673420993', '0', ''),
(13, 'ghada', 'ghada@supy.io', NULL, '$2y$10$S4vvHxKbHxE3DY8BNFAAUu17cZoc8CbyQ4jfFKDGPVuzkLCtpxI2C', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:10:15', '2023-01-11 04:10:15', 0, 5, 0, 'ghada1673421015', '0', ''),
(14, 'salmah', 'salmah@supy.io', NULL, '$2y$10$3ZoQa.KnB5lgxoNRclAk0.uJb5PgG63kX86nqNkO39977NSvWAyye', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:10:32', '2023-01-11 04:10:32', 0, 5, 0, 'salmah1673421032', '0', ''),
(15, 'ziad', 'ziad@supy.io', NULL, '$2y$10$Wc7ro12ABwNw1rDG2o1TeOw.KQswa/HwThh4E6e7qjC0kF2UFKAFW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:10:59', '2023-01-11 04:10:59', 0, 5, 0, 'ziad1673421059', '0', ''),
(16, 'dani', 'dani@supy.io', NULL, '$2y$10$i2oho1bNfl.pFUseTp8KkO12WNFJ4PEvzuYQ6NuTHf58grblTbbl2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:11:16', '2023-01-11 04:11:16', 0, 5, 0, 'dani1673421076', '0', ''),
(17, 'yazeed', 'yazeed@supy.io', NULL, '$2y$10$OW2/gFq8RcNRuVU/yaGgcu.A3l8in/MKKbjBO9Lcay7Tpy/r6roru', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:11:36', '2023-01-11 04:11:36', 0, 5, 0, 'yazeed1673421095', '0', ''),
(18, 'reem', 'reem@supy.io', NULL, '$2y$10$VznJRloAT8YY.UjOU3VYDeyGKRRl8mQQDi9Dx5ibEEtpR1sSrzCMe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:11:55', '2023-01-11 04:11:55', 0, 5, 0, 'reem1673421115', '0', ''),
(19, 'ayman', 'ayman@supy.io', NULL, '$2y$10$pO6Kzez6FmZoA9AQG.4c1.3GXdLi58S/WmS5dx2R/C8nih9HlNvsG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:12:14', '2023-01-11 04:12:14', 0, 5, 0, 'ayman1673421134', '0', ''),
(20, 'manar', 'manar@supy.io', NULL, '$2y$10$s7udKqjwLLSEzkvYznLScuMDjQXFK5Y5D2rM.9svoOI3K13dB4ggm', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:12:31', '2023-01-11 04:12:31', 0, 5, 0, 'manar1673421151', '0', ''),
(21, 'mohammed', 'mohammed.a.alsharif@gmail.com', NULL, '$2y$10$eCLy5XH1Jav70nL36PnwcuRJH9UkoWm0gBo2.gYtruqTzO.P4DkmC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-11 04:13:21', '2023-01-11 04:13:21', 0, 5, 0, 'mohammed1673421200', '0', ''),
(23, 'omar', 'omarf@gmail.com', NULL, '$2y$10$Yd0MEAT56zS3aHB/nBPjpe5CBixOFf.w0t8DaJ7A5rlGXud4O/AjG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 01:41:57', '2023-01-15 01:41:57', 0, 0, 0, 'omar1673757717', '0', ''),
(24, 'Omar Osama', 'omaros2023@gmail.com', NULL, '$2y$10$Pdf1gmOXQJQ8CaaqLDKEx.XUp.fCeswWX.Zxg9gVhg2fbMjxv5Ho6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-15 12:34:33', '2023-01-15 12:37:56', 0, 5, 0, 'OmarOsama1673760873', '0', ''),
(25, 'Omar Osama', 'omar233@gmail.com', NULL, '$2y$10$xXhWcjwp0Me6AI5tes9hPeDigWdNUw0BGrPTh9EFRTXVFXLUWsHE6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-19 00:18:59', '2023-01-19 00:18:59', 0, 0, 0, 'OmarOsama1674062339', '0', ''),
(26, 'Omar Osama', 'omaros2020@gmail.com', NULL, '$2y$10$U5XKI5ZV9uSdQ.FEe7LMNuiMo3p4EHvRF0lE/WFb3cD.qU8WBHDru', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-06 16:59:57', '2023-02-06 16:59:57', 0, 0, 0, 'OmarOsama1675677596', '0', ''),
(27, 'Mefijwdihwdjwsjdhwjqsqodkwfk fjebfhjhdjwshfewifejqwwqfewjfewhgewu kfwejfwefhewgeuwh:jfefehfejfjehfie//NJjdshdjwfhwu оаипруафравгпшцурафцоварквшпругвыовапцушгысвыарршрпшц jcsafsafhawfjewoifhe ufhdfwjdhewifgewiufhjadwfewi lowkalo.com', 'a.lb.er.t.han.sh.i.n.4.9@gmail.com', NULL, '$2y$10$yEp.m0gCFsKilHqG0I28Des07e5VBxar/ZWUPN2LprRV6RY9jynR6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 07:49:56', '2023-03-09 07:49:56', 0, 0, 0, 'Mefijwdihwdjwsjdhwjqsqodkwfkfjebfhjhdjwshfewifejqwwqfewjfewhgewukfwejfwefhewgeuwh:jfefehfejfjehfie//NJjdshdjwfhwuоаипруафравгпшцурафцоварквшпругвыовапцушгысвыарршрпшцjcsafsafhawfjewoifheufhdfwjdhewifgewiufhjadwfewilowkalo.com1678322996', '0', ''),
(28, 'dwedw', 'mohammed@supy.io', NULL, '$2y$10$TIf2qGrirxF57L1Jz9gn7eWh2Het2DlHFi2Qy.U4goIbDi1izIhr.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 14:13:42', '2023-03-09 14:13:42', 0, 0, 0, 'dwedw1678346022', '0', ''),
(30, 'mo', 'mohammed.a.alshareef@hotmail.com', NULL, '$2y$10$syAtGkW8MpSFl7Oav.IVJeOSJSO0eszsLI56kYek.n..FhKsShYZ2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 16:54:13', '2023-03-09 16:54:13', 0, 0, 0, 'mo1678355652', '0', ''),
(31, 'Omar Osama', 'omer02@gmail.com', NULL, '$2y$10$HOO6VNuF2zRSZCEeGAz4buT5ZzXXm5SJLSqWQe7FQSjaPKtwKiAS6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-09 21:56:51', '2023-03-09 21:56:51', 0, 0, 0, 'OmarOsama1678373811', '0', ''),
(32, 'omer', 'oma2323e@gmaik.com', NULL, '$2y$10$65XIRhQWk7sCf353exUptOJWC1My.Q0DMyqNz2.zXepyiNV33.nAu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-11 15:21:50', '2023-03-11 15:21:50', 0, 0, 0, 'omer1678558910', '0', '0544444444'),
(39, 'omer', 'oalalsl@ggg.com', NULL, '$2y$10$ok/dMEUHDFo9464Co4jH/OpGYwt7Spu32Rfu1/YCqtfWH8ulSsmJW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:16:47', '2023-03-13 09:16:47', 0, 0, 0, 'omer1678709807', '0', '7654326543'),
(40, 'omer', 'lowkalo20232@gmail.com', NULL, '$2y$10$rPbwgjzUJvpHiNmYlDaFGuTTnH8i7swS5uNHHmnDFeqMjxMHVVtmu', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:25:12', '2023-03-13 09:31:53', 0, 5, 0, 'omer1678710312', '0', '05655656662'),
(42, 'omer', 'omarosama5901@gmail.com', NULL, '$2y$10$gmqzSfxG51X5tJ1L29AQdO4mxs7YbMy7W5tajGEQXPHXxxy6avvJS', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:50:58', '2023-03-13 09:50:58', 0, 5, 0, NULL, '0', '0534342233'),
(43, 'omer', 'omarosamaa5901@gmail.com', NULL, '$2y$10$GghVsE57B3yJ9ziZPR/VPe9fkhnQoq7CIIcRrRnDtXASScJmHrs5G', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 09:53:15', '2023-03-13 09:53:15', 0, 5, 0, NULL, '0', '0434334333'),
(44, 'omer', '30nov.adventure.ae@gmail.com', NULL, '$2y$10$Ohs1CSAq.9Kud8VW8a3tf.OaEAqMBnN8wGXKM9rYuulw07UIOYRFa', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 10:12:17', '2023-03-13 10:12:17', 0, 5, 0, NULL, '0', '056556566698'),
(45, 'omer', 'admin32@gmail.com', NULL, '$2y$10$40MrFyDuJqy0uoUDTXvT8e3s5xMW83zjojeS6sNeKG7jaR4tlis.2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 11:48:09', '2023-03-13 11:51:22', 0, 5, 0, 'omer1678718889', '0', '056556566622'),
(46, 'omer', 'gazzi5923111@gmail.com', NULL, '$2y$10$R/TnWlbtPY4KCWlI8Xib1Ocsy.qD226k1GvHQX7WO3/f.15vxAGYC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 11:51:51', '2023-03-13 11:51:51', 0, 0, 0, 'omer1678719111', '0', '1210535532434'),
(47, 'omer', 'dddd@dddd.com', NULL, '$2y$10$CmOQhcfIRFOOqUXRfqOdnet8gek3OFdFC2R52INVG2XaxAeVyYmhG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 13:05:06', '2023-03-13 13:05:06', 0, 5, 0, NULL, '0', '05655656661'),
(48, 'omer', '2eee@gmail.com', NULL, '$2y$10$7k51lwFgKhOAPNr4ikO.gOTSfwInbaurZ0KnKPH4RX9bzANpk5366', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-13 13:06:04', '2023-03-13 13:06:04', 0, 5, 0, NULL, '0', '0565565666e'),
(54, 'omer', 'omeros2024@gmail.com', NULL, '$2y$10$BgSuSiePGQQuGcfmYDYnhuOXbNLhWB7.AL3isJzpDwQIv4YaE9QUW', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-14 23:02:33', '2023-03-14 23:02:33', 0, 5, 0, NULL, '0', '0565536566622'),
(56, 'omer', 'admin2222@gmail.com', NULL, '$2y$10$F570FIse3m2c0oyg/JMgL.Zu1gZu/sIpAHoVobm8M7szdKQO.UH6K', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-10 13:31:00', '2023-04-10 13:31:38', 0, 5, 0, 'omer1681144260', '0', '054444444422'),
(57, 'omer', 'mmm@gmail.com', NULL, '$2y$10$wO8y/LHY4iizpCqn3hsWKeK/WQ/wRqU12/15zRK3YbK1UNo04M8Fe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:48:53', '2023-07-19 13:48:53', 0, 0, 0, 'omer1689785333', '0', '054444444423'),
(58, 'omer', 'email@email.com', NULL, '$2y$10$KRqqthaIU7ZuJUlvATJbLuOf4s2x5LIbQGiUeoMng7gGD6k/sZFVC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 15:38:32', '2023-09-07 15:38:32', 0, 5, 4, NULL, '0', '0545444444'),
(59, 'omer', 'omar@gmail.com', NULL, '$2y$10$0AUmcfF73m0IGHujMm7UoeDQFAFxtn8KkTluZVVNqWXjLC6C16ZjG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-09 12:51:30', '2023-09-09 12:51:30', 0, 5, 4, 'omer1694274689', '0', '0544455555'),
(60, 'omer', 'new@gmail.com', NULL, '$2y$10$4N3QPbqIf.0MhZukidjZ4uGzcEthpT9hYgkTAcc5FyoGIEXXUNKdq', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-11 14:22:11', '2023-09-11 14:22:11', 0, 0, 0, NULL, '0', '055433443'),
(61, 'omer', 'omartest@gmail.com', NULL, '$2y$10$sWYD2gq8D2/5jt9OvqmMd.H5xPoYXNuWnAOD7Ondvlzb5R6ovZjBG', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-25 08:28:18', '2023-09-25 08:28:18', 0, 0, 0, NULL, '0', '0543343323'),
(62, 'omer', 'omaros202222111@gmail.com', NULL, '$2y$10$jqArIxYw2UV5/ohoqOOyouZE4b03RHO1MGciKHCKLAwN.TidcP2g6', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-25 09:47:19', '2023-09-25 09:47:19', 0, 0, 0, NULL, '0', '033565565666'),
(63, 'omer', 'dd99dd@dddd.com', NULL, '$2y$10$FxU1TkSgIeV/arIEfGZI7.uA/zfgLALzzDtFBcPPAIr4ROusyNpCO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-25 10:00:20', '2023-09-25 10:00:20', 0, 0, 0, NULL, '0', '11111122111'),
(64, 'omer', 'omaros69605@gmail.com', NULL, '$2y$10$f8hBW3KqOX2xJGg/GnBHXOTdJ.bAiSHtQcNbloVUF.cOqY5a90/c.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-26 02:23:03', '2023-09-26 02:23:03', 0, 0, 0, NULL, '0', '0583958849'),
(65, 'omer', 'omaro2221@gmail.com', NULL, '$2y$10$BScdb4IN5COYLVuICCVGaewkS0E8/MV3GecUUSficvgt0rZaDKAzy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-26 02:39:26', '2023-09-26 02:39:26', 0, 0, 0, NULL, '0', '33333666'),
(66, 'omer', 'omarme@gmail.com', NULL, '$2y$10$VY9j2BZzPQqb0AtPZJLcOeLuow2rGirZhKWGZ7h7ZDyC/8kLGTcx2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-26 03:06:09', '2023-09-26 03:06:09', 0, 0, 0, NULL, '0', '0544332443'),
(67, 'omer', 'omaros2040@gmail.com', NULL, '$2y$10$p/lEUyHYkOdz/Ax4/PVZZOlfqRQk737mZXIBlq/RbRQ1Z2dl3fDzi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 22:19:09', '2023-09-27 22:19:09', 0, 0, 0, NULL, '0', '55880210644'),
(68, 'omer', 'omaryou@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 23:33:13', '2023-09-27 23:33:13', 0, 0, 0, NULL, '0', '054482282822'),
(69, 'omer', 'omarosyou@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 23:34:04', '2023-09-27 23:34:04', 0, 0, 0, NULL, '0', '059494494949'),
(73, 'omer osama', 'omaros2021@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-27 23:48:23', '2024-01-01 07:52:31', 17, 5, 0, NULL, '0', '558802106'),
(74, 'omer', 'omaros2024@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-28 00:06:44', '2023-09-28 00:06:44', 0, 0, 0, NULL, '0', '5594949494'),
(75, 'omer', 'omaros2025@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-28 00:23:35', '2023-09-28 00:23:35', 0, 0, 0, NULL, '0', '05448228282211'),
(76, 'omer', 'omaros2021232@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-28 00:25:03', '2023-09-28 00:25:03', 0, 0, 0, NULL, '0', '2223222333'),
(77, 'omer', 'omaros2022231@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-28 00:25:26', '2023-09-28 00:25:26', 0, 0, 0, NULL, '0', '054482282822233'),
(78, 'omer', 'omar2111@gmail.com', NULL, '$2y$10$mv11p1uvzu8S6YOkVIZqtuF2aI6VJXn1RgjZa0XI6s9BcyZ9XPYHK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-08 23:09:35', '2023-11-08 23:09:35', 0, 5, 0, 'omer1699495775', '0', '12122332222'),
(79, 'omer', 'omaros20244@gmail.com', NULL, '123223244345', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-15 04:13:45', '2023-11-15 04:13:45', 0, 0, 0, NULL, '0', '5588021063'),
(81, 'omer', 'omeros2024eeee@gmail.com', NULL, 'lo012929201102', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-30 00:53:19', '2023-12-30 00:53:19', 0, 0, 0, NULL, '0', '059965666'),
(82, 'omer', 'omaro@gmail.com', NULL, 'lo012929201102', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-02 01:10:31', '2024-01-02 01:10:31', 0, 0, 0, NULL, '0', '05838382232'),
(83, 'omer osama', 'omaros0101@gmail.com', NULL, 'lo012929201102', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-02 01:13:28', '2024-01-02 01:13:28', 0, 0, 0, NULL, '0', '0565565222'),
(84, 'omer', 'oma@gmail.com', NULL, 'lo012929201102', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-02 01:27:17', '2024-01-02 01:27:17', 0, 0, 0, NULL, '0', '056556512121'),
(85, 'omer', 'omar.os.abdalla@gmail.com', NULL, 'lo012929201102', NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-02 02:15:24', '2024-01-02 02:15:24', 0, 0, 0, NULL, '0', '0558802106');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minutes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seconds` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT 0,
  `Longitudinal` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `part_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `title`, `disk`, `video_path`, `image_path`, `hours`, `minutes`, `seconds`, `quality`, `processed`, `Longitudinal`, `created_at`, `updated_at`, `part_id`) VALUES
(1, 1, 'المقدمة - الجزء الاول', 'public', 'X21DLv0zNM1GmqfU.mp4', 'X21DLv0zNM1GmqfU.png', '0', '3', '14', '1080', 1, 0, '2023-01-08 23:02:50', '2023-01-08 23:17:07', 1),
(2, 1, 'لماذا التحكم بتكاليف المطعم - الجزء الثاني', 'public', '2zHu5Rp5acE5O2jP.mp4', '2zHu5Rp5acE5O2jP.png', '0', '3', '31', '1080', 1, 0, '2023-01-07 14:57:26', '2023-01-07 15:16:54', 1),
(3, 1, 'إدارة المخزون - الجزء الأول', 'public', 'bLpFWwKVsocAOiHW.mp4', 'bLpFWwKVsocAOiHW.png', '0', '6', '31', '1080', 1, 0, '2023-01-07 15:00:36', '2023-01-07 15:35:57', 2),
(4, 1, 'إدارة المخزون - الجزء الثاني', 'public', 'xbzO8kFbpbGbatTQ.mp4', 'xbzO8kFbpbGbatTQ.png', '0', '11', '42', '1080', 1, 0, '2023-01-07 15:01:13', '2023-01-07 16:09:18', 2),
(5, 1, 'مقدمة تسعير المواد الغذائية - الجزء الاول', 'public', 'BtoRwVqV2hOk04Wk.mp4', 'BtoRwVqV2hOk04Wk.png', '0', '3', '34', '1080', 1, 0, '2023-01-07 15:33:20', '2023-01-07 16:18:34', 3),
(6, 1, 'تكلفة المنتج - تسعير المنيو - الجزء الثاني', 'public', 'bditKmZcnZpIgLMw.mp4', 'bditKmZcnZpIgLMw.png', '0', '4', '36', '1080', 1, 0, '2023-01-07 15:34:11', '2023-01-07 16:33:40', 3),
(7, 1, 'نسبة تكلفة المواد الغذائية - الجزء الثالث', 'public', 'SGMI5igK0c9Xzq79.mp4', 'SGMI5igK0c9Xzq79.png', '0', '4', '44', '1080', 1, 0, '2023-01-07 15:35:26', '2023-01-07 16:48:13', 3),
(8, 1, 'تكاليف المواد الغذائية للمطعم كامل- الجزء الرابع', 'public', 'sYkUiUiajEgXlwm4.mp4', 'sYkUiUiajEgXlwm4.png', '0', '5', '43', '1080', 1, 0, '2023-01-07 15:36:14', '2023-01-07 17:06:53', 3),
(9, 1, 'هامش المساهمة - الجزء الخامس', 'public', 'oRufNY2pgku52RXQ.mp4', 'oRufNY2pgku52RXQ.png', '0', '6', '25', '1080', 1, 0, '2023-01-07 15:36:58', '2023-01-07 17:25:37', 3),
(10, 1, 'مثال هامش المساهمة - الجزء السادس', 'public', 'wilbp6hvt6pS3jSD.mp4', 'wilbp6hvt6pS3jSD.png', '0', '2', '28', '1080', 1, 0, '2023-01-07 15:37:41', '2023-01-07 17:32:24', 3),
(11, 1, 'Menu Engineering', 'public', 'uS3ZIwxhi0gWnHXa.mp4', 'uS3ZIwxhi0gWnHXa.png', '0', '6', '1', '1080', 1, 0, '2023-01-07 17:15:00', '2023-01-07 17:48:21', 4),
(12, 1, 'إدارة المشتريات - الجزء الاول', 'public', '6f2lGdQXH1TbMYhu.mp4', '6f2lGdQXH1TbMYhu.png', '0', '10', '38', '1080', 1, 0, '2023-01-07 17:31:57', '2023-01-07 18:14:37', 5),
(13, 1, 'إدارة المشتريات - الجزء الثاني', 'public', '9peUIT1LsTafhCA6.mp4', '9peUIT1LsTafhCA6.png', '0', '9', '44', '1080', 1, 0, '2023-01-07 18:00:13', '2023-01-07 18:38:02', 5),
(14, 1, 'بار ليفل', 'public', '26Z5nArTkfSAVFKP.mp4', '26Z5nArTkfSAVFKP.png', '0', '10', '14', '1080', 1, 0, '2023-01-07 18:00:48', '2023-01-07 19:04:25', 5);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `video_id` bigint(20) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `video_id`, `count`, `created_at`, `updated_at`) VALUES
(6, 1, 1, 1, '2023-01-08 23:27:27', '2023-01-08 23:27:27'),
(7, 18, 1, 1, '2023-01-19 23:59:32', '2023-01-19 23:59:32'),
(8, 18, 2, 1, '2023-01-20 00:03:20', '2023-01-20 00:03:20'),
(9, 11, 1, 1, '2023-01-25 05:42:26', '2023-01-25 05:42:26'),
(10, 11, 3, 1, '2023-01-25 06:31:41', '2023-01-25 06:31:41'),
(11, 11, 5, 1, '2023-01-25 07:14:55', '2023-01-25 07:14:55'),
(12, 11, 6, 1, '2023-01-25 14:33:53', '2023-01-25 14:33:53'),
(13, 11, 7, 1, '2023-01-25 14:44:15', '2023-01-25 14:44:15'),
(14, 11, 8, 1, '2023-01-25 15:10:16', '2023-01-25 15:10:16'),
(15, 11, 9, 1, '2023-01-25 15:20:51', '2023-01-25 15:20:51'),
(16, 11, 10, 1, '2023-01-25 15:36:40', '2023-01-25 15:36:40'),
(17, 18, 5, 1, '2023-01-27 19:52:09', '2023-01-27 19:52:09'),
(18, 18, 6, 1, '2023-01-27 19:57:24', '2023-01-27 19:57:24'),
(19, 18, 7, 1, '2023-01-27 20:02:26', '2023-01-27 20:02:26'),
(20, 14, 3, 1, '2023-01-30 16:31:54', '2023-01-30 16:31:54'),
(21, 14, 6, 1, '2023-01-30 19:24:12', '2023-01-30 19:24:12'),
(22, 14, 7, 1, '2023-01-30 19:41:29', '2023-01-30 19:41:29'),
(23, 14, 8, 1, '2023-01-30 19:47:27', '2023-01-30 19:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `soluation_id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `soluation_id`, `user`, `created_at`, `updated_at`) VALUES
(6, 28, NULL, '2023-09-25 00:31:50', '2023-09-25 00:31:50'),
(7, 27, NULL, '2023-09-25 00:40:03', '2023-09-25 00:40:03'),
(8, 26, NULL, '2023-09-25 01:01:15', '2023-09-25 01:01:15'),
(9, 34, NULL, '2023-09-25 01:04:10', '2023-09-25 01:04:10'),
(10, 31, NULL, '2023-09-25 09:11:26', '2023-09-25 09:11:26'),
(11, 31, NULL, '2023-11-10 21:16:11', '2023-11-10 21:16:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_video_id_foreign` (`video_id`);

--
-- Indexes for table `convertedvideos`
--
ALTER TABLE `convertedvideos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `convertedvideos_video_id_foreign` (`video_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_date_id_foreign` (`date_id`),
  ADD KEY `reservations_time_id_foreign` (`time_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_soluation_id_foreign` (`soluation_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `soluations`
--
ALTER TABLE `soluations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `soluations_category_id_foreign` (`category_id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_user_id_foreign` (`user_id`),
  ADD KEY `videos_part_id_foreign` (`part_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_user_id_foreign` (`user_id`),
  ADD KEY `views_video_id_foreign` (`video_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_soluation_id_foreign` (`soluation_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `convertedvideos`
--
ALTER TABLE `convertedvideos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `soluations`
--
ALTER TABLE `soluations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `convertedvideos`
--
ALTER TABLE `convertedvideos`
  ADD CONSTRAINT `convertedvideos_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`),
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_date_id_foreign` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`),
  ADD CONSTRAINT `reservations_time_id_foreign` FOREIGN KEY (`time_id`) REFERENCES `times` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_soluation_id_foreign` FOREIGN KEY (`soluation_id`) REFERENCES `soluations` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `soluations`
--
ALTER TABLE `soluations`
  ADD CONSTRAINT `soluations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_part_id_foreign` FOREIGN KEY (`part_id`) REFERENCES `parts` (`id`),
  ADD CONSTRAINT `videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `views_video_id_foreign` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_soluation_id_foreign` FOREIGN KEY (`soluation_id`) REFERENCES `soluations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
