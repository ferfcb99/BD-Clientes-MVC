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

-- Procedimiento que inserta un registro en la tabla cliente
DELIMITER // 
CREATE PROCEDURE sp_NuevoCliente(
	nombrex varchar(30), 
	apellidox varchar(30),
	f_comprax date,
	h_comprax time,
	creditox numeric(10,2) -- 12345678.90
) BEGIN 
	INSERT INTO Cliente(nombre, apellido, f_compra, h_compra, credito) 
    VALUES (nombrex, apellidox, f_comprax, h_comprax, creditox);
END //
DELIMITER ;

CALL sp_NuevoCliente('Lizeth', 'Cabañas', '2021-09-06','15:25:15',150.99);

-- Curdate() -> devuelve la fecha actual
-- Curtime() -> devuelve la hora actual
CALL sp_NuevoCliente('Fernando', 'Lopez', CURDATE(), CURTIME(), 1599.99);

CALL sp_NuevoCliente('Paola', 'Cabañas', '2021-09-28','18:49:15',150.99);
SELECT * FROM Cliente;
select month(f_compra) from Cliente;
select year(f_compra) from Cliente;
select day(f_compra) from Cliente;

select * from Cliente where f_compra between '2021-09-27' and '2021-12-1';

