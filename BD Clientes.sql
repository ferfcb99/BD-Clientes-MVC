-- Crear base de datos
Create Database MVC;

-- usando la bd 
USE MVC;

CREATE TABLE Cliente(
	id int not null auto_increment primary key,
	nombre varchar(30) not null, 
	apellido varchar(30) not null,
	f_compra date not null,
	h_compra time not null,
	credito numeric(10,2)
);

