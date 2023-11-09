DROP DATABASE IF EXISTS db_puntos;
CREATE DATABASE db_puntos;
USE db_puntos;
USE master;
DROP TABLE client;
CREATE TABLE client(
    id INT IDENTITY(1,1) PRIMARY KEY,
    names VARCHAR(60),
    lastname VARCHAR(90),
    cellphone CHAR(9) CHECK (LEN(cellphone) = 9 AND ISNUMERIC(cellphone) = 1),
    email VARCHAR(80) CHECK (LEN(email) <= 80 AND CHARINDEX('@', email) > 0 AND CHARINDEX('@', email) > 1 AND CHARINDEX('@', email) < LEN(email)),
    type_document CHAR(3) CHECK (type_document IN ('CNE', 'DNI')),
    number_document CHAR(20),
    status CHAR(1) DEFAULT 'A' CHECK (status IN ('A', 'I')),
    CONSTRAINT CHK_TypeDocument CHECK (type_document IN ('CNE', 'DNI'))
);

INSERT INTO client (names, lastname, cellphone, email, type_document, number_document, status)
VALUES ('John', 'Doe', '123456789', 'john@example.com', 'DNI', '123456789', 'A');

INSERT INTO client (names, lastname, cellphone, email, type_document, number_document, status)
VALUES ('Jane', 'Smith', '987654321', 'jane@example.com', 'CNE', '987654321', 'A');


SELECT*FROM client;

