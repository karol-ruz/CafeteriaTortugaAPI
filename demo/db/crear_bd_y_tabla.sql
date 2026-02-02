-- =========================================================
-- Script de creación de BD y tabla para el microservicio
-- =========================================================
-- Requisitos:
--  - MySQL instalado localmente
--  - Usuario: root
--  - Password: Copernico2025
--
-- Nombre de la base de datos (debe coincidir con application.properties):
--   productos_db
-- =========================================================

-- 1) Crear la base de datos
CREATE DATABASE IF NOT EXISTS productos_db
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;

-- 2) Seleccionar la base de datos
USE productos_db;

-- 3) Crear la tabla de productos
--    - id: clave primaria autoincremental
--    - nombre: texto obligatorio
--    - precio: decimal con 2 decimales
CREATE TABLE IF NOT EXISTS productos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(120) NOT NULL,
  descripcion VARCHAR(500),
  imagen_url VARCHAR(1000),
  precio NUMERIC(10) NOT NULL,
  visibilidad BOOLEAN DEFAULT TRUE,
  PRIMARY KEY (id)
);

-- 4) Crear la tabla de usuarios
CREATE TABLE IF NOT EXISTS usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);
