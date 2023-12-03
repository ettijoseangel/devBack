-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2023 a las 04:48:35
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agremiados`
--

CREATE TABLE `agremiados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_paterno` varchar(255) NOT NULL,
  `a_materno` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `sexo` enum('Hombre','Mujer','Prefiero no decir') NOT NULL,
  `NUP` varchar(10) NOT NULL,
  `NUE` varchar(255) NOT NULL,
  `RFC` varchar(13) NOT NULL,
  `NSS` varchar(11) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `cuota` enum('1','0') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `agremiados`
--

INSERT INTO `agremiados` (`id`, `a_paterno`, `a_materno`, `nombre`, `sexo`, `NUP`, `NUE`, `RFC`, `NSS`, `fecha_nacimiento`, `telefono`, `cuota`, `created_at`, `updated_at`) VALUES
(1, 'Zavaleta', 'Ruiz', 'Jose Angel', 'Hombre', 'zara123rui', '192048', 'zara123567', '02545879632', '2000-11-19', '9514410764', '1', '2023-11-03 11:12:11', '2023-11-04 11:12:11'),
(2, 'Ruiz', 'Valencia', 'Joaquin', 'Hombre', '1234567', '12345', 'ruiz123456', '55558555', '1996-11-06', '9517878855', '1', '2023-11-03 11:25:52', '2023-11-04 11:25:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_10_28_031000_create_roles_table', 1),
(5, '2023_10_28_031033_create_agremiados_table', 1),
(6, '2023_10_28_031046_create_solicitudes_table', 1),
(7, '2023_11_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', 'f5358d6d0e24e5a76185d37d296ad963bc7c018273534f085d2921ed9b8411a6', '[\"admin\"]', NULL, NULL, '2023-11-17 17:29:00', '2023-11-17 17:29:00'),
(2, 'App\\Models\\User', 2, 'auth_token', 'f2c293421d701429f8798f0e39e50f38f9017ae2abf7edb05626d15432cb0dd7', '[\"admin\"]', NULL, NULL, '2023-11-17 19:11:12', '2023-11-17 19:11:12'),
(3, 'App\\Models\\User', 2, 'auth_token', '470a5c56077a4fa681e93d949fbbb2973991fed1107905cc09936c7c6ecd46f3', '[\"admin\"]', NULL, NULL, '2023-11-17 21:05:12', '2023-11-17 21:05:12'),
(4, 'App\\Models\\User', 2, 'auth_token', '2c2054ec9893409817622c6abca1adb39bef645130a7cf6c6cef874331d4d592', '[\"admin\"]', NULL, NULL, '2023-11-17 21:05:13', '2023-11-17 21:05:13'),
(5, 'App\\Models\\User', 2, 'auth_token', '9b7d99a1d1557cf5fa964c8243e5d480404663d8a2a708cae784b3c9f0a62213', '[\"admin\"]', NULL, NULL, '2023-11-17 21:05:14', '2023-11-17 21:05:14'),
(6, 'App\\Models\\User', 2, 'auth_token', '56c5f559233bbe63cb96695caa2d6fb3a0b473e300953beb8f3e6ad73c09bcfe', '[\"admin\"]', NULL, NULL, '2023-11-20 09:54:58', '2023-11-20 09:54:58'),
(7, 'App\\Models\\User', 2, 'auth_token', 'c4fa4b9f99ce57753f1babd245756479ca17460943c33a3e251a16cc70bbbdcb', '[\"admin\"]', NULL, NULL, '2023-12-03 08:57:16', '2023-12-03 08:57:16'),
(8, 'App\\Models\\User', 2, 'auth_token', '1fdfa37e9b1636abae5913b61104f782333ae59686fcc0913da6f66f60d0bacf', '[\"admin\"]', NULL, NULL, '2023-12-03 09:24:05', '2023-12-03 09:24:05'),
(9, 'App\\Models\\User', 2, 'auth_token', '5f13caafbe2b7aad4e371e4c9a7ee270196bdfce98d888c5993635f12943c806', '[\"admin\"]', NULL, NULL, '2023-12-03 09:40:14', '2023-12-03 09:40:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rol` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2023-11-02 11:12:20', '2023-11-03 11:12:20'),
(2, 'Agremiado', '2023-11-02 11:12:34', '2023-11-03 11:12:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NUE` varchar(255) NOT NULL,
  `ruta_archivo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$10$SEw.tYN/WmEAAi3MZqsHz.aYmtOug0f47AECk7dAPB3SxQ3DX3MPG',
  `NUE` varchar(255) NOT NULL,
  `id_rol` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `password`, `NUE`, `id_rol`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '192048', 1, '', '2023-11-03 11:18:56', '2023-11-04 11:18:56'),
(2, '$2y$10$SEw.tYN/WmEAAi3MZqsHz.aYmtOug0f47AECk7dAPB3SxQ3DX3MPG', '12345', 1, '', '2023-11-03 11:27:47', '2023-11-04 11:27:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agremiados`
--
ALTER TABLE `agremiados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agremiados_nup_unique` (`NUP`),
  ADD UNIQUE KEY `agremiados_nue_unique` (`NUE`),
  ADD UNIQUE KEY `agremiados_rfc_unique` (`RFC`),
  ADD UNIQUE KEY `agremiados_nss_unique` (`NSS`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `solicitudes_nue_unique` (`NUE`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_nue_unique` (`NUE`),
  ADD KEY `usuarios_id_rol_foreign` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agremiados`
--
ALTER TABLE `agremiados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_nue_foreign` FOREIGN KEY (`NUE`) REFERENCES `agremiados` (`NUE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_id_rol_foreign` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `usuarios_nue_foreign` FOREIGN KEY (`NUE`) REFERENCES `agremiados` (`NUE`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
