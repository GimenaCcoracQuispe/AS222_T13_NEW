-- TABLA MAESTRA II (CRISTHOPER SOCALAY)
-- RESTRICCIONES EN STATUS ( A - I ) Y TYPE_DOCUMENT EN LA CUAL SOLO SELECCIONE DNI CNE
-- RESTRICCIONES EN cellphone 
USE db_puntos;
CREATE TABLE CUSTOMER(
    id INT IDENTITY(1,1) PRIMARY KEY,
    type_document CHAR(3),
    number_document CHAR(9),
    names VARCHAR(60),
    lastname VARCHAR(90),
    email VARCHAR(80),
    cellphone CHAR(9),
    status CHAR(1) DEFAULT 'A' CHECK (status IN ('A', 'I')),
	CONSTRAINT CHK_TypeDocument CHECK (type_document IN ('CNE', 'DNI')),
);

INSERT INTO CUSTOMER (type_document, number_document, names, lastname, email, cellphone)
VALUES 
('CNE', '123456789', 'Juan', 'Pérez', 'juan@example.com', '123456789'), 
('DNI', '72202308', 'Lorenzo', 'Ramirez', 'jose@gmail.com', '987458654'), 
('CNE', '472202309', 'Maria', 'Ramos', 'Ramos@gmail.com', '956147528'), 
('DNI', '98472364', 'Mariano', 'Guerra', 'Guerra@gmail.com', '971424632'), 
('DNI', '72202308', 'Martin', 'Galvan', 'jose@gmail.com', '984217354'), 
('CNE', '472202309', 'Fransisco', 'Ramos', 'Ramos@gmail.com', '987412365'), 
('DNI', '98472564', 'Luota', 'Arias', 'Guerra@gmail.com', '985472145'),
('DNI', '78702308', 'Jose', 'Gallardo', 'josegallardo@gmail.com', '984200554'), 
('CNE', '471402309', 'Martina', 'Arguedas', 'Ramos@gmail.com', '956147528'),
('DNI', '98806984', 'Fernando', 'Dolores', 'Guerra@gmail.com', '971421472'); 

SELECT*FROM CUSTOMER