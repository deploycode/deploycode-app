-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-03-2017 a las 17:54:32
-- Versión del servidor: 5.6.33-79.0-log
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `deployco_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Ingeniería de Software', 'ingenieria-de-software', 'software-engineering-by-deploycode.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'FrontEnd', 'frontend', 'frontend-by-deploycode.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'BackEnd', 'backend', 'backend-by-deploycode.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'DEvOps', 'devops', 'devops-by-deploycode.png', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'SEO', 'seo', 'seo-by-deploycode.png', '2017-03-02 10:47:16', '2017-03-02 10:47:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `finish` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`id`, `company`, `description`, `position`, `start`, `finish`, `created_at`, `updated_at`) VALUES
(1, 'Dela Mina Studios', 'La productora audiovisual contacto conmigo para desarrollar su website oficial, contaban con un equipo de profesionales gráficos para realizar el mackup, una vez se me fue entregado, realicé la respectiva maquetación en HTML y CSS, fue aprobada y proseguí con el desarrollo del Backend que incluída, un CMS propio y cuentas de usuarios.', 'Desarrollador Full Stack en LAMP', '2013-01-15', '2016-05-06', '2017-02-27 22:11:39', '2017-02-28 21:51:16'),
(2, 'Cultura Banana Colombiana', 'Esta Startup requería de una plataforma para e-comerce con el fin de catalogar y comercializar sus productos.\r\n\r\nPara la realización de esta plataforma se siguieron los principios de Ingeniería de Software, con el objetivo de recabar todos los requerimientos necesarios antes de empezar el desarrollo.', 'Desarrollador Full Stack en LAMP', '2015-01-15', '2016-05-06', '2017-02-27 22:13:55', '2017-02-28 22:01:22'),
(3, 'Hablemos de Salud', 'Hablemos de Salud requería canalizar grandes volúmenes de contenido que generaban las prácticas en la Salud y el programa de educación y prevención dentro de la empresa, contaban con dos websites de buen tráfico pero obsoletas para la adaptación a las nuevas resoluciones por lo cual tambien Google empezaría a pasar factura en cuanto a posicionamiento, la tarea es una carrera por aprobechar al máximo los recursos de la empresa, que aun que no es del sector de las TICs, le ha apostado por generar contenido original que beneficia no sólo a sus pacientes sino también a los usuarios de sus websites. \r\n', 'Desarrollador Web ', '2016-05-20', '0000-00-00', '2017-02-27 22:15:53', '2017-02-28 22:12:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_02_20_104937_create_stacks_table', 1),
('2017_02_20_105005_create_skills_table', 1),
('2017_02_20_105422_create_categories_table', 1),
('2017_02_20_105423_create_posts_table', 1),
('2017_02_20_105438_create_tags_table', 1),
('2017_02_20_110403_create_jobs_table', 1),
('2017_02_20_110457_create_projects_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `state` enum('draft','published') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'draft',
  `user_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `content`, `state`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, '¿Cómo hacer deploy o despliegue de aplicación Laravel en Hosting Compartido', 'como-hacer-deploy-de-aplicacion-laravel-en-hosting-compartido', '<p>Desarrollando en Laravel y de repente&nbsp;lleg&oacute; la hora de <strong>hacer deploy con Laravel</strong>, de momento pens&eacute; en hacerlo como siempre, ya que &eacute;ste framework esta basado en PHP &iquest;Qu&eacute; puede salir mal?, Pero oh sorpresa,&nbsp;no bast&oacute; con subir los ficheros, y tras unas horas de checkar foros de como <strong>subir un proyecto Laravel </strong>y mezclar diversas soluciones, las he compilado todas en una sola <strong>Checklist para hacer deploy con&nbsp;Laravel</strong>.</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Validar version de PHP para deploy con Laravel" class="img img-responsive" src="/ckfinder/userfiles/images/seleccionar-version-de-php.png" width="806" />\r\n<figcaption>El primer paso para hacer <strong>deploy con Larave</strong>l es verificar que el host cuente con una version de php &gt;= 5.6: Para esto basta con ir al apartado de Software -&gt; Select PHP versi&oacute;n.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Comprimir archivos del directorio public de Laravel" height="355" src="/ckfinder/userfiles/images/comprimir-directorio-publico-para-deploy-con-laravel.PNG" width="352" />\r\n<figcaption>Para subir un <strong>proyecto Laravel</strong> basta con comprimir &nbsp;todos&nbsp;los archivos de la carpeta public de Laravel y subirlo al servidor en el directorio public_html para posteriormente descomprimirlo all&iacute;.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Comprimir proyecto para deploy con Laravel" height="491" src="/ckfinder/userfiles/images/comprimir-proyecto-para-deploy-con-laravel.PNG" width="360" />\r\n<figcaption>Tambi&eacute;n comprimir todos los demas ficheros del <strong>proyecto Laravel</strong> (menos la carpeta public) y subirlo al directorio raiz del servidor, para posteriormente descomprimirlo dentro de una carpeta que yo suelo llamar Laravel.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Actualizar los require para deploy con Laravel" height="241" src="/ckfinder/userfiles/images/actualizar-require-para-deploy-con-laravel.PNG" width="609" />\r\n<figcaption>Editar el index.php del directorio public a&ntilde;adiendo /laravel a ambas rutas.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Una vez crees la base de datos, el usuario e importes la db, recuerda siempre modificar el archivo .env, para actualizar estos datos.</li>\r\n	<li>Si tu app sube ficheros es posible que tengas que configurar el base_path o el filesystem</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<figure class="image" style="float:left"><img alt="Directorio raiz desde interfaz Cpanel resultado de hacer deploy con Laravel" height="308" src="/ckfinder/userfiles/images/resultado-de-deploy-con-laravel.PNG" width="357" />\r\n<figcaption>Asi qued&oacute; el directorio raiz&nbsp;</figcaption>\r\n</figure>\r\n\r\n<figure class="image"><img alt="Directorio públic hmtl" height="421" src="/ckfinder/userfiles/images/resultado-public-de-deploy-con-laravel-en-hosting-compartido.PNG" width="449" />\r\n<figcaption>As&iacute; qued&oacute; el directorio public_html</figcaption>\r\n</figure>\r\n\r\n<p><strong>POSIBLES ERRORES</strong></p>\r\n\r\n<ul>\r\n	<li>Es posible que al intentar subir los comprimidos directamente por la interfaz del servidor te mencione una falla de seguridad y cancele la carga de los archivos, entonces para mayor seguridad sube los ficheros por FTP o SSH.</li>\r\n	<li>Es posible que el archivo .env no sea visible desde la interfaz del servidor, y a&uacute;n m&aacute;s, es posible que desaparezca, una vez m&aacute;s recurre a FTP o SSH para acceder y editar este archivo.</li>\r\n</ul>\r\n\r\n<p>Dame feedback de otros inconvenientes que pudieses tener al hacer <strong>deploy con Laravel</strong>.&nbsp;</p>\r\n', 'published', 1, 4, '2017-02-27 21:56:34', '2017-03-03 15:33:05'),
(2, 'Principios de Ingeniería de Software', 'principios-de-la-ingenieria-de-software', '<blockquote>\r\n<p style="text-align:justify"><em>Freelance - Me ha llamado este sujeto del otro d&iacute;a, que no s&eacute; exactamente que quiere pero necesita un freelance.</em></p>\r\n</blockquote>\r\n\r\n<p style="text-align:justify">Much&iacute;simo&nbsp;mas importante que saber de pies a cabeza un stack de programaci&oacute;n es saber sobre el proceso de <strong>Ingenier&iacute;a de Software,&nbsp;</strong>no importa la plataforma para la cual se desarrolle, sean dispositivos m&oacute;viles, PCs, web, un DRONE o una licuadora, no importa, no importa el Stack que uses ( LAMP, MEAN, WISA&nbsp;etc)&nbsp;<strong> </strong>y &eacute;sto es supremamente f&aacute;cil de demostrar con un inegable ejemplo de la vida real, de cualquier desarrollador, en cualquier escala de profesionalismo, esto llega a pasar desde el nivel m&aacute;s t&eacute;cnico, hasta aquellos que realizamos 5 a&ntilde;os de carrera Univeristaria, y nos hartamos de escuchar toda la &quot;Teor&iacute;a acerca de la <strong>Ingenier&iacute;a de Software o Metodolog&iacute;as de Software</strong>&quot;.<br />\r\n<br />\r\nPara nuesto ejemplo tenemos a <em>Eliot</em>&nbsp;;&nbsp;Un freelance con un protafolio incr&eacute;ible de proyectos que acaba de ser contactado por un empresario para el desarrollo de una aplicaci&oacute;n de la cu&aacute;l ignora cualquier detalle, veamos.</p>\r\n\r\n<blockquote>\r\n<p><em>Juan Vald&eacute;s - Colombia , 7pm : &nbsp;Tr&aacute;s el segundo caf&eacute;, nuestros protagonistas&nbsp;se encuentran completa y perdidamente&nbsp;enamorados, atrapados en una m&aacute;gica sinton&iacute;a , al punto de que casi pueden terminar las oraciones del otro, tanto asi que una vez cerrado el trato y a&uacute;n con maripositas en la barriga nuestro freelance frente a su m&aacute;quina, estira sus dedos y dice &quot;Se lo tengo&quot; y empieza el incesante pero maravilloso y sonoro tecleo de su laptop.</em></p>\r\n</blockquote>\r\n\r\n<p style="text-align:justify">&nbsp;&Eacute;ste es el hecho y error m&aacute;s inegable de un programador, y es razonable, mucho m&aacute;s tangible en freelance&#39;s o en desarrolladores que trabajan Full Stack sin un gran equipo de desarrollo, sin un director que te explica como retrasado como cubrir cada una de las etapas del proyecto, y es razonable, buscamos la satisfacci&oacute;n que libera la compilaci&oacute;n, ejecuci&oacute;n, interpretaci&oacute;n etc.&nbsp;de nuestro c&oacute;digo, somos adictos a la sensaci&oacute;n de crear algo apartir de la nada, y de all&iacute; nuestro institnto impulsivo de codear lo m&aacute;s pronto posible, pero &eacute;sto, no es <strong>Ingenier&iacute;a de Software</strong>.</p>\r\n\r\n<blockquote>\r\n<p><em>Eliot- Sin darse cuenta ha terminado toda la interfaz de un sistema de reconocimeinto de voz para una licuadora, exactamente lo que quer&iacute;a el cliente, pero ha ignorado los principios de la Ingenier&iacute;a de Software</em></p>\r\n</blockquote>\r\n\r\n<p style="text-align:justify"><strong>Primer principio: La raz&oacute;n de existir:</strong>&nbsp;Un sistema de Software tiene una raz&oacute;n para exisitir, genera la soluci&oacute;n a un problema, o aprovecha una oportunidad, pero el objetivo es servir al usuario, &eacute;ste principio del cu&aacute;l se basan todos los dem&aacute;s es fundamental, y se refiere al sistema como un todo pero tambi&eacute;n a sus partes, cada componente, cada elemento, la elecci&oacute;n del stack de programaci&oacute;n, la plataforma, absolutamente todo se debe regir por &eacute;ste principio, en <strong>Ingenier&iacute;a de Software todo debe existir por una raz&oacute;n.</strong></p>\r\n\r\n<blockquote>\r\n<p><em>El lenguaje, el dise&ntilde;o realizados por ELiot, &iquest;tienen raz&oacute;n de ser?, &iquest;aportan valor, y funcionalidad a la aplicaci&oacute;n?, y mirando mucho m&aacute;s all&aacute;, &iquest;el sistema realmente es una soluci&oacute;n? o &iquest;Qu&eacute; oportunidades aprovecha?, &iquest;Qui&eacute;n necesita manipular una licuadora con comandos de voz?&nbsp;</em></p>\r\n</blockquote>\r\n\r\n<p style="text-align:justify"><strong>Segundo Principio: Mantenlo sencillo, est&uacute;pido</strong>: Debe ser lo m&aacute;s est&uacute;pido posible, &iexcl;No usted , : | , la interfaz para el usuario! , as&iacute; sea&nbsp;por linea de comandos, o por una interfaz web, lo que sea, la sencilles radica en brindar una experiencia natural, c&oacute;moda para el usuario, y esto no s&oacute;lo tiene que ver con el dise&ntilde;o de la aplicaci&oacute;n, sino con la l&oacute;gica detr&aacute;s de ese dise&ntilde;o, que en &uacute;ltimas ser&aacute; la que interactu&eacute; con el usuario, Recordemos que un Sofware es un sistema de informaci&oacute;n, requiere entradas para ser procesadas y devuelve salidas con un valor agregado, el usuario no siempre es un humano, por ello, cada interfaz debe desarrollarse con miras en facilitar el uso a &eacute;se usuario objetivo</p>\r\n\r\n<p style="text-align:justify"><strong>Tercer principio: Mantener la Visi&oacute;n: </strong>&iquest;El&nbsp;concepto de<strong> Arquitectura de Software</strong> le es familiar?, vale, pues se trata de definir la estructura y el concepto de la aplicaci&oacute;n desde el principio, de no ser as&iacute;, la <strong>licuadora con sistema de reconocimiento de voz</strong> de Eliot pudiera facilmente terminar siendo un <strong>dispositivo triturador integrado en un avanzado sistema de Karaoke,&nbsp;</strong>perdiendo toda la integridad conceptual, si alguna vez acaso la tuvo.</p>\r\n\r\n<p style="text-align:justify"><strong>Cuarto principio: Otros consumiran lo que usted produce:&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li style="text-align:justify">Codifique pensando en que algui&eacute;n m&aacute;s deber&aacute; mantener o escalar el sistema, asi usted no lo crea probable &iexcl;H&aacute;galo!, &eacute;se alguien podr&iacute;a ser sencillamente su yo del futuro, que no va entender ni un carajo, que pasaba por su mente al escribir tan espantosas lineas de c&oacute;digo.</li>\r\n	<li style="text-align:justify">Genere especificaciones del sistema, de uso, de instalaci&oacute;n, de backup, de lo que considere , piense en que lo que hacemos es para hacernos las vida m&aacute;s f&aacute;cil entre desarrolladores, y para el usuario.</li>\r\n</ul>\r\n\r\n<p style="text-align:justify"><strong>Quinto principio: &Aacute;brace al futuro:&nbsp;</strong>&Eacute;ste es un punto que duele, claro, dependiendo del ecosistema en el que se labore, por ejemplo, en tecnolog&iacute;as web, cada a&ntilde;o tenemos el deber de actualizarnos, cada a&ntilde;o saldr&aacute;n miles de nuevas versiones de lenguajes y frameworks, cientos de actualizaciones a navegadores que har&aacute;n posibles nuevas cosas, etc. el objetivo es escoger con la dulzura, inteligencia y delicadeza con la que escogeriamos a nuestro nuevo gato, todo el conjunto de tecnolog&iacute;as en el que se soportar&aacute; nuestro sistema procurando le brinde la mayor vida &uacute;til posible a nuestro&nbsp;<strong>Software</strong></p>\r\n\r\n<p style="text-align:justify"><strong>Sexto Principio: Planee por anticipado la reutilizaci&oacute;n:&nbsp;</strong>Hazte la vida mucho m&aacute;s f&aacute;cil reconociendo tus patrones de desarrollo, indentifica que dise&ntilde;os, modulos, scripts, procesos repites cada vez que desarrollas un nuevo Software y hazlo reutilizable, trabaja con lenguajes orientados a objetos, utiliza frameworks que te permitan integrar modulos de c&oacute;digo que ya tengas, esto se ver&aacute; relfejado en tu productividad.</p>\r\n\r\n<p style="text-align:justify"><strong>S&eacute;ptimo Principio:&nbsp;Piense:&nbsp;</strong>Piense con intensidad, pensar siempre lo llevar&aacute; a aprender algo, a exigirse, a ejercitar su l&oacute;gica, o a descubrir algo que no sabe.</p>\r\n', 'published', 1, 1, '2017-02-27 21:58:55', '2017-03-02 08:51:26'),
(7, '¿Cómo optimizar una web para motores de búsqueda, (Google)?', 'como-optimizar-una-web-para-google', '<p><strong>Optimizar una web para&nbsp;Google</strong>&nbsp;es lo que llamamos hacer<strong>&nbsp;SEO (search engine optimization)</strong>,&nbsp;y a diferencia de lo que la mayor&iacute;a opina, el <strong>SEO </strong>no tiene nada que ver con programaci&oacute;n, no obstante, para <strong>optimizar una web en Google</strong> debe ser desarrollada correctamente. Ahora, &nbsp;he decidido dividir &eacute;ste Checklist de <strong>&iquest;C&oacute;mo optimizar una web&nbsp;para Google?</strong> seg&uacute;n los que para m&iacute; son los <strong>factores claves para optimizar una web para Google</strong>: el factor&nbsp;contenido, el factor de aplicaci&oacute;n, y el factor <strong>Google</strong>.</p>\r\n\r\n<p>1 Factor Contenido</p>\r\n\r\n<ul>\r\n	<li>Escribir Contenido Original</li>\r\n	<li>Escribir Temas de Interes</li>\r\n	<li><strong>Palabras Claves</strong> o <strong>Keywords</strong></li>\r\n	<li>Densidad <strong>Keywords</strong></li>\r\n	<li>Prominencia de las palabras</li>\r\n</ul>\r\n\r\n<p>2 Factor Aplicaci&oacute;n</p>\r\n\r\n<ul>\r\n	<li>Velocidad del sitio</li>\r\n	<li>Responsive Design</li>\r\n	<li>Sitemap</li>\r\n	<li>Friendly&nbsp;Urls</li>\r\n</ul>\r\n\r\n<p>3 Factor Google</p>\r\n\r\n<ul>\r\n	<li>Google Search Console</li>\r\n	<li>Google Trends</li>\r\n	<li>Google Analytics</li>\r\n</ul>\r\n\r\n<p><span style="font-size:36px">1. FACTOR CONTENIDO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Contenido original:</strong>&nbsp;Para sorpresa de muchos, el contenido es el factor m&aacute;s importante y el que m&aacute;s debemos <strong>optimizar en</strong><strong>&nbsp;una web para Google</strong> y esto es porque una vez<strong> </strong>Google rastrea una web, conoce el&nbsp;qu&eacute;, el cu&aacute;ndo y el d&oacute;nde&nbsp;de todo el contenido en ella.</p>\r\n\r\n<ul>\r\n	<li>El d&oacute;nde para google es la URL (Uniform Resource Locator -&nbsp; Localizador uniforme de recursos) , por ejemplo, <em>deploycode.co/seo/como-optimizar-una-web-para-motores-de-busqueda</em> es la direcci&oacute;n en la que Google encontr&oacute; este articulo,&nbsp;</li>\r\n	<li>El qu&eacute;, es el texto, e imagenes y dem&aacute;s elementos que hacen parte este articulo.</li>\r\n	<li>Y para terminar Google tambi&eacute;n conoce el cu&aacute;ndo, en resumen, Google sabe Qui&eacute;n subi&oacute;&nbsp;Qu&eacute;&nbsp;y Cu&aacute;ndo, por tanto si alguien copiara el contenido exacto de este articulo y lo publicase en su web, cu&aacute;ndo <strong>Google</strong> rastree ese sitio, sabr&aacute; que ese contenido me pertenece a mi realmente.&nbsp;</li>\r\n	<li><a href="http://www.seoreviewtools.com/duplicate-content-checker/">Duplicate Content Checker</a>&nbsp;te ayudara a saber que tan original es tu contenido.</li>\r\n</ul>\r\n\r\n<p><strong>Escribo temas de inter&eacute;s:</strong> Una web es semejante a un libro, tiene una portada que te da la bienvenida y un interior lleno de p&aacute;ginas de contenido, pero&nbsp;para escribir un libro, desde el principio hay que tener los objetivos claros por ello&nbsp;cualquiera&nbsp;que fuere el tema de nuestra web, debe ser de inter&eacute;s para otros, entre m&aacute;s sea el n&uacute;mero de interesados en el tema, mayor va a ser el tr&aacute;fico que recibamos.</p>\r\n\r\n<blockquote>\r\n<p style="margin-left:40px"><em>el tema &quot;Todo sobre los gatos&quot; tendr&aacute; definitivamente mucho m&aacute;s interesados que &quot;&iquest;C&oacute;mo crear un acelerador de particulas?&quot;, pero dentro de &eacute;sto tambi&eacute;n puede haber una ventaja, y es que en el mundo se sumaran muchos con el intereres en la F&iacute;sica, y por no ser tan com&uacute;n, no tendr&iacute;as que compartir usuarios con muchos competidores.</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Palabras Clave o Keywords:</strong> Son los t&eacute;rminos de busqueda&nbsp;por los que queremos que nuestra p&aacute;gina sea encontrada&nbsp;en internet, optimizar una web para Google implica realizar un estudio detallado de &eacute;stos</p>\r\n\r\n<blockquote>\r\n<p style="margin-left:40px"><em>jugar con gatos, video de gatos, mi gato esta triste, gatos fotos, nombres para gatos</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Densidad de palabras claves: </strong>Debemos usar a lo largo del contenido la mayor cantidad de veces nuestras palabras claves y asociadas, de manera que logramos un densidad de palabras menor al 15%, es decir: &nbsp;(total palabras del articulo / veces que se repite la&nbsp;palabra clave) * 100 &lt; 15% . El&nbsp;<a href="http://www.seoreviewtools.com/duplicate-content-checker/">Keyword Density</a>&nbsp;es una buena herramienta para calcular esta variable.</p>\r\n\r\n<blockquote>\r\n<p style="margin-left:40px"><em>&iquest;Tienes un&nbsp;<strong>gato triste<sup>1</sup>&nbsp;</strong>en casa? Puede que no est&eacute;s seguro de como&nbsp;reconocer <strong>un gato triste<sup>2</sup></strong></em><em>&nbsp;o melanc&oacute;lico. Los mininos son muy suyos, y no tan obvios como los perros mostrando sus emociones, pero observando un poco es f&aacute;cil darse cuenta de si algo en el estado de &aacute;nimo de tu gato<sup>3</sup>&nbsp;o en su comportamiento ha cambiado.A veces <strong>un&nbsp;gato triste<sup>4</sup>&nbsp;</strong>no come, o puede ser tambi&eacute;n que tengas un<strong>&nbsp;gato triste<sup>5</sup></strong>&nbsp;porque est&aacute;&nbsp;enfermo. Veamos&nbsp;como saber si un <strong>gato est&aacute; triste<sup>6</sup></strong>&nbsp;con 7 signos&nbsp;y por qu&eacute; lo est&aacute;. Atento a los motivos que pueden hacer que tu gato<sup>7</sup>&nbsp;haya perdido la alegr&iacute;a.&nbsp;</em></p>\r\n</blockquote>\r\n\r\n<p><strong>Prominencia de las palabras:</strong>&nbsp;<strong>Google</strong>, entiende un Titulo (h1), c&oacute;mo de mayor importancia dentro del documento, entiende tambi&eacute;n , que las palabras en negrilla tienen m&aacute;s relevancia para el <strong>pocisionamiento en buscadores</strong>&nbsp;que el resto, as&iacute; que hay que utilizarlas adecuadamente para nuestros prop&oacute;sitos. El anterior parrafo resulta ser tambi&eacute;n un excelente ejemplo del uso de las negrillas.</p>\r\n\r\n<p><span style="font-size:36px">2. FACTOR APLICACI&Oacute;N</span>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Optmizar una web para Google, </strong>radica en pensar que &eacute;sta compa&ntilde;&iacute;a cada d&iacute;a busca brindar una mejor experiencia para el usuario, no s&oacute;lo que el usuario d&eacute; con la informaci&oacute;n que necesita, sino que el lugar en el que la encuentre&nbsp;le brinde dicha informaci&oacute;n de la mejor manera: R&aacute;pida y Eficaz, r&aacute;pida refiriendose directamente a la velocidad de carga, y eficaz refiriendose entre otras a que la web funcione correctamente para los distintos dispositivos, navegadores, y que no existan enlaces rotos, a continuaci&oacute;n las herramientas que te ayudar&aacute;n a medir &eacute;stas variables para <strong>otimizar una web para Google</strong></p>\r\n\r\n<ul>\r\n	<li>Medir la velocidad de carga del sitio, &eacute;sta debe ser menor a 4s ( <a href="https://www.webpagetest.org/">Web Page Test</a>&nbsp;)</li>\r\n	<li>Dise&ntilde;o adaptable a dispositions (Responsive Web Design) ( <a href="https://search.google.com/search-console/mobile-friendly?utm_source=mft&amp;utm_medium=redirect&amp;utm_campaign=mft-redirect&amp;hl=es">Prueba de optimizaci&oacute;n para m&oacute;viles de Google</a>&nbsp;)</li>\r\n	<li>Sitemap ( <a href="https://www.xml-sitemaps.com/">XML Site maps generator</a>&nbsp;)</li>\r\n	<li>URLs amigables son del tipo:&nbsp;<a href="http://deploycode.co/post/como-optimizar-una-web-para-motores-de-busqueda">http://deploycode.co/post/como-optimizar-una-web-para-motores-de-busqueda</a>&nbsp;las no amigables son del tipo&nbsp;<a href="https://www.google.com.co/?gws_rd=ssl#q=gatos&amp;*">https://www.google.com.co/?gws_rd=ssl#q=gatos&amp;*</a></li>\r\n	<li>Indentificar enlaces rotos ( Rastreo -&gt; Errores de Rastreo de Search Console )</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">3. FACTOR GOOGLE</span>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><a href="https://www.google.com/webmasters/tools/home?hl=es">Google Search Console</a>-&gt; Registra un sitio web para ser indexado en <strong>resultados de Google</strong></li>\r\n	<li><a href="https://trends.google.es/trends/">Google Trends</a>&nbsp;-&gt; Conoce los temas que son <strong>tendencias en Google </strong>y escribe sobre ellos</li>\r\n	<li><a href="https://analytics.google.com/">Google Analytics</a>-&gt; Es la herrmienta de <strong>m&eacute;tricas por excelencia de Google </strong>te ayudar&aacute; a ir evaluando c&oacute;mo va el tr&aacute;fico hacia tu web</li>\r\n</ul>\r\n', 'published', 1, 5, '2017-03-02 16:47:43', '2017-03-03 11:52:19'),
(8, 'FrontEnd, BackEnd, DevOps ó FullStack', 'frontend-backend-devops-o-fullstack', '<p><strong>FrontEnd, BackEnd, DevOps &oacute; FullStack&nbsp;</strong>no son m&aacute;s que perfiles para desarrolladores de Software, basadas en habilidades t&eacute;cnicas, para dejarlo much&iacute;simo m&aacute;s claro veremos sus definiciones y a modo de ilustraci&oacute;n, tomar&eacute; el ecosistema de desarrollo web para dar ejemplos a cada, no obstante, la mayor&iacute;a de ecosistemas requieren los mismos perfiles.</p>\r\n\r\n<ul>\r\n	<li><strong>FrontEnd:&nbsp;</strong>Las aplicaciones de cualquier tipo de plataforma requieren de una interfaz con la que el usuario&nbsp;pueda interactuar, los FrontEnd se especializan en los lenguajes y tecnolog&iacute;as para desarrollar dichas interfaces de usuarios haciendolas amigables, sencillas y esteticamente atractivas.Un FrontEnd Web generalmente maneja estos skills (Habilidades tecnicas)\r\n\r\n	<ul>\r\n		<li>HTML , CSS , javascript, Angujar JS, Frameworks como Bootstrap o Foundation y m&aacute;s.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>BackEnd: </strong>Tras la interfaz del usuario, corre una l&oacute;gica de programaci&oacute;n, unos flujos de informaci&oacute;n que interactu&aacute;n con bases de datos, y se encargan de procesar los datos seg&uacute;n el objetivo de la aplicaci&oacute;n. Un BackEnd Web suele tener estos skills\r\n	<ul>\r\n		<li>PHP con y sin Frameworks, javascript, Phyton, Frameworks de Phyton como Django o Ruby, Bases de Datos y m&aacute;s.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>DevOps:&nbsp;</strong>Toda aplicaci&oacute;n cuelga de una infraestructura: un sistema operativo, un servidor, etc. Los DevOps propenden por la armonia para que dicha infraestructura soporte adecuadamente la aplicaci&oacute;n y esta no falle al ser usada. Un DevOps web suele tener estos skills\r\n	<ul>\r\n		<li>Servidores, Seguridad Inform&aacute;tica, redes, sistemas operativos y m&aacute;s.</li>\r\n	</ul>\r\n	</li>\r\n	<li><strong>FullStack: </strong>Es un perfil que pretende sumar todas las anteriores, aunque esto nunca se lograr&iacute;a realmente, a grandes rasgos si es posible tener un manejo de todos los campos relacionados en el desarrollo y despliege de una aplicaci&oacute;n.</li>\r\n</ul>\r\n', 'published', 1, 1, '2017-03-03 00:09:19', '2017-03-03 16:12:16'),
(9, 'Junior, Semi-Senior y Senior', 'junior-semi-senior-y-senior', '<p><strong>Junior, Semi-Senior y Senior</strong> no son m&aacute;s que niveles en los que se podr&iacute;a catalogar profesionales en funci&oacute;n de la experiencia que tengan desarrollando una actividad, y en el l&iacute;derazgo con el que puedan empoderarse de un proceso y hasta de un equipo, la siguiente es la relaci&oacute;n en funci&oacute;n del tiempo</p>\r\n\r\n<p><strong>Junior: Menor a 2 a&ntilde;os de experiencia</strong></p>\r\n\r\n<p><strong>Semi-Senior: 2 - 6&nbsp;a&ntilde;os&nbsp;de experiencia</strong></p>\r\n\r\n<p><strong>Senior : m&aacute;s de 6 a&ntilde;os&nbsp;de experiencia</strong></p>\r\n\r\n<p>La experiencia desarrollando la misma actividad o afines, logra desarrollar en el profesional dicho liderazgo y empoderamiento, lo que no s&oacute;lo le da independencia y la ventaja de desarrollar su trabajo pr&aacute;cticamente sin supervisi&oacute;n sino tambi&eacute;n, da la facultad de guiar a otros.</p>\r\n\r\n<p>En el &aacute;mbito laboral, entre mayor experiencia, mayor ser&aacute; su nivel de profesionalismo y mayor su rango de compensaci&oacute;n econ&oacute;mica.</p>\r\n', 'published', 1, 1, '2017-03-03 00:10:47', '2017-03-03 23:03:58'),
(10, 'Que es una Stack y qué son los Skills', 'que-es-una-stack-y-que-son-los-skills', '<p><span style="font-size:36px">STACK</span></p>\r\n\r\n<p>Stack (pila en espa&ntilde;ol), podr&iacute;a definirse como una pila o conjunto de tecnolog&iacute;as que componen parte del proceso de producci&oacute;n y mantenimiento de Software, los Stacks que componen cualquier ecosistema son: Interfaz(No siempre integrado en las siglas del STACK), Procesamiento&nbsp;de datos e infraestructura tecnol&oacute;gica que sostiene la aplicaci&oacute;n, Para ilustrar un poco m&aacute;s esta definici&oacute;n veremos algunos ejemplos de los que podrian ser Stacks para el ecosistema Web</p>\r\n\r\n<p><strong>Stack LAMP (Linux+Apache+MySQL+PHP): </strong>Sin duda el m&aacute;s famoso en la historia de la Web, su infraestructura la componen el sistema operativo Linux y&nbsp;servidor Apache, el almacenamiento de datos MySQL como gestor de bases de Datos y para el procesamiento de los datos PHP.</p>\r\n\r\n<p><strong>Stack Mean (MongoDB+Express+Angular+NodeJS): </strong>Uno de los Stack de moda basado completamente en javascript,&nbsp;soporta el almacenamiento de datos en una base de datos (noSQL) MongoDB, Express es un framework que&nbsp;permitir&iacute;a crear servidores web, AngularJS como framework para el dise&ntilde;o de la interfaz de usuario, y por &uacute;ltimo NodeJS como lenguaje de backend.</p>\r\n\r\n<p>C&oacute;mo vemos con cualquiera de los Stacks anteriores (No son los &uacute;nicos ) no son m&aacute;s que conjunto de tecnolog&iacute;as que permiten por completo crear y mantener un applicativo Web. Ahora, por si las dudas los dejar&eacute; con un par de Stacks pero esta vez para el ecosistema de aplicaciones m&oacute;viles</p>\r\n\r\n<p><strong>Stack de desarrollo para&nbsp;Android (Sistema Operativo Andorid + Base de datos&nbsp;+ Lenguaje de Programaci&oacute;n Android )</strong></p>\r\n\r\n<p><strong>Stack de desarrollo para&nbsp;iOS (Sistema Operativo iOS +&nbsp;Base de datos&nbsp;+ Objective C &oacute; Swift )</strong></p>\r\n\r\n<p><span style="font-size:36px">TECHNICAL SKILLS</span></p>\r\n\r\n<p>A ra&iacute;z de lo visto anteriormente, los technical Skills (<em>&nbsp;Habilidades t&eacute;cnicas</em> ) son el manejo de cada uno de los componentes de un Stack, en &eacute;se sentido para un entorno de desarrollo LAMP, pudiera ser FrontEnd si domino HTML, CSS y Javascript, BackEnd con PHP y Frameworks PHP y MySQL, y DevOps administrando recursos del sistema operativo y el servidor Apache. ( todo esto viendolo a&nbsp;grandes rasgos ) , el dominio de todas los skills de un stack te convierte en un LAMP FullStack</p>\r\n', 'published', 1, 1, '2017-03-03 00:12:01', '2017-03-04 08:35:25'),
(11, 'Tendencias de diseño para aplicaciones 2017', 'tendencias-de-diseno-para-aplicaciones-2017', '<p>Duolingo es una app, (tambi&eacute;n un site), que me encanta, su objeto es el aprendizaje de Idiomas, y aunque no sea el mejor ejemplo de dise&ntilde;o, la tomar&eacute; como referencia, por su gran experiencia de Usuario, de verdad, es la app con la que realmente me he sentido mas c&oacute;modo</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">MINIMALIZMO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="tendencia de diseño hacia el minimalismo " height="600" src="/ckfinder/userfiles/images/Screenshot_20170313-122509(1).png" width="338" />\r\n<figcaption><br />\r\nLas aplicaciones quieren ofrecer la<br />\r\nmejor experiencia de usuario<br />\r\nposible, siguiendo uno de los<br />\r\nprincipiosde ingenier&iacute;a de<br />\r\nsoftware&nbsp;&quot;hazlo sencillo, est&uacute;pido&quot;.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">COLORES FLAT&nbsp;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="colores flat como tendencia de diseño" height="600" src="/ckfinder/userfiles/images/Screenshot_20170313-123133.png" width="338" />\r\n<figcaption><br />\r\nEl minimalizmo llego a los colores,<br />\r\nlos colores s&oacute;lidos, flat,<br />\r\ndejaron atr&aacute;s las interfaces<br />\r\ncon intrincadas transparencias,<br />\r\ndegradados y sombreados.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">HAZLO A MANO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="dibujos" height="600" src="/ckfinder/userfiles/images/Screenshot_20170313-123220.png" width="338" />\r\n<figcaption><br />\r\nAunque la imagen tiene un papel<br />\r\nimportant&iacute;simo en la web<br />\r\nde hoy, los dibujos le ganan campo<br />\r\na las fotograf&iacute;as, ahora,<br />\r\nentre m&aacute;s sencillo el dibujo mejor.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">APROVECHA EL ESPACIO AL M&Aacute;XIMO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="" height="600" src="/ckfinder/userfiles/images/Screenshot_20170313-123340.png" width="338" />\r\n<figcaption><br />\r\nTama&ntilde;os de fuente grandes,<br />\r\namigables, contenedores a full screen,<br />\r\nadi&oacute;s al espacio perdido en laterales<br />\r\nde web antiguas, conel dise&ntilde;o<br />\r\nadaptable de cualquier aplicaci&oacute;n,<br />\r\nel espacio se ha convertido en oro.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">EL PODER DEL V&Iacute;DEO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="" height="600" src="/ckfinder/userfiles/images/Screenshot_20170313-123535.png" width="338" />\r\n<figcaption><br />\r\nEl consumo&nbsp;de v&iacute;deo es cada vez mayor,<br />\r\ncada vez es mas com&uacute;n que el home<br />\r\nde una website nos regale un video<br />\r\n, as&iacute; que ha darle espacio en nuestra web.</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style="font-size:36px">EL FUTURO</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Las tendecias pueden parecer que se mueven por lo que los usuarios quieran, pero... realmente a titulo personal dudo que realmente sea as&iacute;, creo que las tendencias de dise&ntilde;o son m&aacute;s impuestas que lo que de verdad queramos escoger, y esto es porque usamos interfacez mas por que queramos<strong> porque las necesitamos</strong>, recuerdo claramente lo traum&aacute;tico que fu&eacute; el cambio de interfaz de facebook, cu&aacute;ndo cambi&oacute; al timeline, a nadie le gust&oacute; esa decisi&oacute;n, hubieron campa&ntilde;as exigiendo que facebook reculara la decisi&oacute;n, pero lo que pas&oacute; fu&eacute; simplemente incre&iacute;ble, con algunos ajustes m&aacute;s, la interfaz se convirti&oacute; en el standar para redes sociales que como twitter y linkedin siguieron, ahora consumimos sus APIs sin la menor queja.</p>\r\n\r\n<p>El futuro.&nbsp;Las grandes interfaces que usamos a diario programan nuestro cerebro, nos adapatamos a aquello que se vuelve mas cotidiano, nos familiarizamos y nos sentimos c&oacute;modos all&iacute;, recientemente una gran empresa hizo una jugada atrevida, el lanzamiento del nuevo logo de instagram, nadie entendi&oacute; el tema del degradado, instagram aplico el minimalismo, pero &iquest;porqu&eacute; el degradado?, &iquest;pensar&aacute; en imponer otra tendencia?. Bueno el futuro es incierto, por ahora y por unos a&ntilde;os m&aacute;s, estas tendencias se mantendran.</p>\r\n', 'published', 1, 2, '2017-03-03 01:00:27', '2017-03-13 13:19:50'),
(12, '¿Cuánto se gana en la industria de software en Colombia?', 'cuanto-se-gana-en-la-industria-de-software-en-colombia', '', 'draft', 1, 1, '2017-03-03 23:07:25', '2017-03-03 23:07:25'),
(13, 'Guía completa de Git', 'guia-completa-de-git', '<p>GIT</p>\r\n\r\n<p>FUNCIONAMIENTO</p>\r\n\r\n<p>INSTALACI&Oacute;N</p>\r\n\r\n<p>COMANDOS</p>\r\n\r\n<p>GITHUB</p>\r\n\r\n<p>GITLAB</p>\r\n', 'draft', 1, 4, '2017-03-04 11:55:06', '2017-03-04 11:55:06'),
(14, 'Crear y administrar correos corporativos', 'crear-y-administrar-correos-corporativos', '', 'draft', 1, 4, '2017-03-04 12:13:19', '2017-03-04 12:13:19'),
(15, 'Fundamentos de desarrollo web', 'fundamentos-de-desarrollo-web', '', 'draft', 1, 1, '2017-03-04 12:16:41', '2017-03-04 12:16:41'),
(16, '¿Cómo redirigir rutas con espacios [%20] ?', 'como-redirigir-rutas-con-espacios-20', '<p>Vamos a redirigir&nbsp;<em>www.altavision.com.co/anillos%20intraestromales%20queratocono.php</em>&nbsp;a <em>http://www.altavision.co/cirugias-y-tratamientos/anillos-intraestromales-para-queratocono&nbsp;</em>&nbsp;</p>\r\n\r\n<p><br />\r\nAcababa de terminar el redise&ntilde;o de un website y al implementarlo me d&iacute; a la tarea de redirigir los antiguos enlaces cavernicolas a mis nuevas URLs amigables y bonitas, pero oh sorpresa para m&iacute;, que alcabo de varias redireeciones algunas no funcionaron, acud&iacute; a Google, foros, FAQs de empresas de Hosting y no encontr&eacute; la soluci&oacute;n, sino hasta que experimente directamente con el archivo .htaccess.</p>\r\n\r\n<p>Primero &iquest;Qu&eacute; es el .htaccess?</p>\r\n\r\n<p>El .htaccess es un archivo oculto desde el cu&aacute;l se configuran todas las redirecciones del website, por lo general nuestro servidor nos ofrece una interfaz gr&aacute;fica desde la cu&aacute;l podemos aplicar nuestra redirecciones, si reci&eacute;n subimos nuestro sitio es probable que no &eacute;xista este archivo, pero al manipular las redirecciones desde la interfaz el lo crear&aacute; por nosotros, pero hay que tener en cuenta que puede&nbsp;que el administrador de archivos no lo muestre, ya que es un archivo oculto, por tanto puedes checkar la configuraci&oacute;n de la interfaz, puede que tu hosting no te permita esta opci&oacute;n por tanto deberas usar un Gestor FTP como filezilla y conectarte, si duda te aparecen todos los archivos ocultos.</p>\r\n\r\n<p>Segundo &iquest;Redirigir desde la interfaz?</p>\r\n\r\n<p>Cpanel -&gt;Dominios-&gt; Redirige&nbsp;</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Cómo redirigir Urls con espacios by deploycode" height="570" src="/ckfinder/userfiles/images/redireccion-con-espacios-by-deploycode.PNG" width="703" />\r\n<figcaption>Interfaz desde Cpanel</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Redirigir desde Cpanel" height="466" src="/ckfinder/userfiles/images/redireccion-desde-capnel-deploycode.PNG" width="709" />\r\n<figcaption>Redirigiendo desde Cpanel</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>A&uacute;n habiendo utilizado la interfaz de Cpanel de la anteriror manera, el enlace no redirige correctamente, y al abrir el .htaccess la redirecci&oacute;n obtengo la siguiente l&iacute;nea de c&oacute;digo generada por el servidor</p>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Código generado por Cpanel" height="101" src="/ckfinder/userfiles/images/codigo-de-redireccion-generado-por-cpanel.PNG" width="1067" />\r\n<figcaption>C&oacute;digo generado por Cpanel</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<div style="text-align:center">\r\n<figure class="image" style="display:inline-block"><img alt="Codigo htaccess" height="100" src="/ckfinder/userfiles/images/codigo-htaccess.PNG" width="1005" />\r\n<figcaption>C&oacute;digo corregido&nbsp;</figcaption>\r\n</figure>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n', 'published', 1, 4, '2017-03-08 09:21:00', '2017-03-08 12:02:10'),
(17, 'Optimiza atom para desarrollo web', 'optimiza-atom-para-desarrollo-web', '<ol>\r\n	<li>Obt&eacute;n atom en&nbsp;<a href="https://atom.io/">https://atom.io/</a>&nbsp;</li>\r\n	<li>terminal-plus</li>\r\n	<li>emmet&nbsp;</li>\r\n	<li>logo file icons</li>\r\n	<li>color picker&nbsp;</li>\r\n</ol>\r\n', 'draft', 1, 3, '2017-03-13 22:03:50', '2017-03-13 22:03:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `post_tag_post_id_foreign` (`post_id`),
  KEY `post_tag_tag_id_foreign` (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Volcado de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 7, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 8, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 9, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 10, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 11, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 8, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 12, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 13, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 14, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 15, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 15, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 15, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 16, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 16, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 16, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 17, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 17, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `job_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `projects_job_id_foreign` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `url`, `job_id`, `created_at`, `updated_at`) VALUES
(1, 'Website Dela Mina Studios', 'Website oficial', 'www.delaminastudios.com', 1, '2017-02-27 22:17:00', '2017-02-27 22:17:00'),
(2, 'Plataforma de e-comerce Cultura Bakana Colombiana', 'Plataforma de e-comerce', 'www.culturabakana.com', 2, '2017-02-27 22:18:10', '2017-02-27 22:18:10'),
(3, 'Red de Blogs', 'Red de Blogs varios', 'www.ambliopia.com.co', 3, '2017-02-27 22:18:58', '2017-02-27 22:18:58'),
(4, 'Exámenes Diagnósticos', 'Website del laboratorio clínico exámenes diagnósticos', 'www.examenesdiagnosticos.com.co', 3, '2017-02-27 22:19:47', '2017-02-27 22:19:47'),
(5, 'Website Alta Visión', 'Website oficial de Alta Visión ', 'www.altavision.co', 3, '2017-02-27 22:20:58', '2017-02-27 22:20:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `stack_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `skills_stack_id_foreign` (`stack_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `skills`
--

INSERT INTO `skills` (`id`, `name`, `value`, `stack_id`, `created_at`, `updated_at`) VALUES
(1, 'CSS', 90, 1, '2017-02-27 22:00:59', '2017-02-27 22:00:59'),
(2, 'Bootstrap ', 90, 1, '2017-02-27 22:01:13', '2017-02-27 22:01:13'),
(3, 'Javascript', 90, 1, '2017-02-27 22:01:24', '2017-02-27 22:01:24'),
(4, 'HTML', 100, 1, '2017-02-27 22:01:42', '2017-02-27 22:01:42'),
(5, 'Responsive Web Design', 100, 1, '2017-02-27 22:02:14', '2017-02-27 22:02:14'),
(6, 'PHP nativo', 80, 2, '2017-02-27 22:02:37', '2017-02-27 22:02:37'),
(7, 'PHP POO', 80, 2, '2017-02-27 22:02:50', '2017-02-27 22:03:41'),
(8, 'PHP con Laravel', 90, 2, '2017-02-27 22:03:07', '2017-02-27 22:03:51'),
(9, 'Javascript', 90, 2, '2017-02-27 22:03:20', '2017-02-27 22:03:20'),
(10, 'Git con GitLab y GitHub', 100, 3, '2017-02-27 22:04:49', '2017-02-27 22:04:49'),
(11, 'Hosting Share', 80, 3, '2017-02-27 22:05:23', '2017-02-27 22:05:23'),
(12, 'MySQL', 80, 4, '2017-02-27 22:05:37', '2017-02-27 22:05:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stacks`
--

CREATE TABLE IF NOT EXISTS `stacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `stacks`
--

INSERT INTO `stacks` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'FrontEnd', '2017-02-27 22:00:03', '2017-02-27 22:00:03'),
(2, 'BackEnd', '2017-02-27 22:00:19', '2017-02-27 22:00:19'),
(3, 'DevOps', '2017-02-27 22:00:28', '2017-02-27 22:00:28'),
(4, 'DataBases', '2017-02-27 22:00:40', '2017-02-27 22:00:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', '2017-02-27 21:50:39', '2017-02-27 21:50:39'),
(2, 'Deploy', '2017-02-27 21:50:53', '2017-02-27 21:50:53'),
(3, 'Ingeniería de Software', '2017-03-02 08:43:19', '2017-03-02 08:43:19'),
(4, 'Fundamentos de Ingeniería', '2017-03-02 08:43:31', '2017-03-02 08:43:31'),
(5, 'Principios de Ingeniería de Software', '2017-03-02 08:43:37', '2017-03-02 08:43:37'),
(6, 'SEO', '2017-03-02 10:52:29', '2017-03-02 10:52:29'),
(7, 'Google', '2017-03-02 10:52:40', '2017-03-02 10:52:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `pic` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `profile` (`profile`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `pic`, `profile`, `twitter`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gabriel Rodríguez', 'gabriel@deploycode.co', '$2y$10$E1yqz9iGfSpSKLvUrdW9hu.o5rx5SGUNzvqdVVbdHxXJAMOOZmlUS', 'deploycode.png', 'Desarrollador Web', 'deploycode', 'member', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);

--
-- Filtros para la tabla `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `skills_stack_id_foreign` FOREIGN KEY (`stack_id`) REFERENCES `stacks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
