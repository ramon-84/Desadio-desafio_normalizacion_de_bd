CREATE DATABASE
ramongonza=# \c desafio4;
You are now connected to database "desafio4" as user "ramongonza".
desafio4=# CREATE TABLE autor (
desafio4(# id_autor SERIAL PRIMARY KEY,
desafio4(# nombre_autor VARCHAR );
CREATE TABLE
desafio4=# CREATE TABLE editorial (
desafio4(# id_editorial SERIAL PRIMARY KEY,
desafio4(# nombre_editorial VARCHAR );
CREATE TABLE
desafio4=# CREATE TABLE lector (
desafio4(# id_lector SERIAL PRIMARY KEY,
desafio4(# nombre_lector VARCHAR );
CREATE TABLE
desafio4=# CREATE TABLE libro (
desafio4(# id_libro SERIAL PRIMARY KEY,
desafio4(# nombre_libro VARCHAR );
CREATE TABLE
desafio4=# CREATE TABLE libro_autor (
desafio4(# id_libro_autor SERIAL PRIMARY KEY,
desafio4(# id_libro INT,
desafio4(# id_autor INT,
desafio4(# FOREIGN KEY (id_libro) REFERENCES libro (id_libro),
desafio4(# FOREIGN KEY (id_autor) REFERENCES autor (id_autor) );
CREATE TABLE
desafio4=# CREATE TABLE libro_edit (
desafio4(# id_libro_edit SERIAL PRIMARY KEY,
desafio4(# id_libro INT,
desafio4(# id_editorial INT,
desafio4(# FOREIGN KEY (id_libro) REFERENCES libro (id_libro),
desafio4(# FOREIGN KEY (id_editorial) REFERENCES editorial (id_editorial) );
CREATE TABLE
desafio4=# CREATE TABLE préstamo (
desafio4(# id_préstamo SERIAL PRIMARY KEY,
desafio4(# fecha_préstamo DATE,
desafio4(# id_lector INT,
desafio4(# id_libro INT,
desafio4(# FOREIGN KEY (id_lector) REFERENCES lector (id_lector),
desafio4(# FOREIGN KEY (id_libro) REFERENCES libro (id_libro) );
CREATE TABLE
desafio4=# 