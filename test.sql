CREATE TABLE persons
(
    personid  INTEGER,
    lastname  VARCHAR(50),
    firstname VARCHAR(50),
    address   VARCHAR(100),
    city      VARCHAR(50),
    CONSTRAINT pk_persons PRIMARY KEY (personid)
);


INSERT INTO Persons (PersonID, LastName, FirstName, Address, City) VALUES
(1, 'Garcia', 'Juan', 'Av. Reforma 123', 'Ciudad de Mexico'),
(2, 'Lopez', 'Ana', 'Calle Hidalgo 45', 'Guadalajara'),
(3, 'Perez', 'Carlos', 'Av. Juarez 88', 'Monterrey'),
(4, 'Martinez', 'Pedro', 'Calle 10', 'Puebla'),
(5, 'Sanchez', 'Laura', 'Av. Central 200', 'Monterrey'),
(6, 'Torres', 'Maria', 'Calle Norte 25', 'Guadalajara'),
(7, 'Ramirez', 'Jorge', 'Av. Sol 15', 'Merida'),
(8, 'Flores', 'Andrea', 'Calle Sur 30', 'Puebla'),
(9, 'Gomez', 'Ricardo', 'Av. Luna 40', 'Tijuana'),
(10, 'Diaz', 'Patricia', 'Calle Principal 50', 'Monterrey'),
(11, 'Vazquez', 'Luis', 'Av. Independencia 101', 'Guadalajara'),
(12, 'Morales', 'Diana', 'Calle Libertad 22', 'Puebla'),
(13, 'Jimenez', 'Rafael', 'Av. Patria 33', 'Zapopan'),
(14, 'Hernandez', 'Elena', 'Calle Roble 44', 'Tepic'),
(15, 'Ruiz', 'Fernando', 'Av. Mexico 55', 'Queretaro'),
(16, 'Castro', 'Monica', 'Calle Cedro 60', 'Guadalajara'),
(17, 'Ortega', 'Alejandro', 'Av. Colinas 77', 'Puebla'),
(18, 'Mendoza', 'Sofia', 'Calle Pino 88', 'Monterrey'),
(19, 'Silva', 'Hugo', 'Av. Palmas 90', 'Merida'),
(20, 'Cruz', 'Fernanda', 'Calle Olmo 12', 'Guadalajara'),
(21, 'Navarro', 'Daniel', 'Av. Jardines 13', 'Puebla'),
(22, 'Rojas', 'Veronica', 'Calle Lago 14', 'Tijuana'),
(23, 'Campos', 'Oscar', 'Av. Rio 15', 'Monterrey'),
(24, 'Vega', 'Karla', 'Calle Monte 16', 'Guadalajara'),
(25, 'Aguilar', 'Marco', 'Av. Bosque 17', 'Puebla'),
(26, 'Reyes', 'Paola', 'Calle Sierra 18', 'Queretaro'),
(27, 'Molina', 'Diego', 'Av. Valle 19', 'Zapopan'),
(28, 'Guerrero', 'Lucia', 'Calle Nube 20', 'Monterrey'),
(29, 'Salazar', 'Roberto', 'Av. Camino 21', 'Puebla'),
(30, 'Delgado', 'Gabriela', 'Calle Uno 22', 'Guadalajara'),
(31, 'Pena', 'Victor', 'Av. Dos 23', 'Merida'),
(32, 'Ibarra', 'Claudia', 'Calle Tres 24', 'Monterrey'),
(33, 'Fuentes', 'Miguel', 'Av. Cuatro 25', 'Puebla'),
(34, 'Carrillo', 'Brenda', 'Calle Cinco 26', 'Tijuana'),
(35, 'Valdez', 'Alberto', 'Av. Seis 27', 'Guadalajara'),
(36, 'Espinoza', 'Rocio', 'Calle Siete 28', 'Monterrey'),
(37, 'Mejia', 'Arturo', 'Av. Ocho 29', 'Puebla'),
(38, 'Nunez', 'Isabel', 'Calle Nueve 30', 'Merida'),
(39, 'Soto', 'Emilio', 'Av. Diez 31', 'Queretaro'),
(40, 'Paredes', 'Daniela', 'Calle Once 32', 'Guadalajara'),
(41, 'Cortes', 'Ivan', 'Av. Doce 33', 'Puebla'),
(42, 'Leon', 'Valeria', 'Calle Trece 34', 'Monterrey'),
(43, 'Acosta', 'Raul', 'Av. Catorce 35', 'Zapopan'),
(44, 'Rivas', 'Melissa', 'Calle Quince 36', 'Puebla'),
(45, 'Benitez', 'Jose', 'Av. Dieciseis 37', 'Guadalajara'),
(46, 'Santana', 'Liliana', 'Calle Diecisiete 38', 'Monterrey'),
(47, 'Estrada', 'Gerardo', 'Av. Dieciocho 39', 'Puebla'),
(48, 'Cabrera', 'Natalia', 'Calle Diecinueve 40', 'Tijuana'),
(49, 'Miranda', 'Sergio', 'Av. Veinte 41', 'Merida'),
(50, 'Mora', 'Vanessa', 'Calle Veintiuno 42', 'Guadalajara');

SELECT * FROM PERSONS;
SELECT * FROM persons WHERE lastname = 'Estrada';

INSERT INTO PERSONS (PersonID, LastName, FirstName, Address, City) VALUES
(101, 'García', 'Juan', 'Av. Juárez 120', 'Guadalajara'),
(102, 'López', 'Ana', 'Calle Hidalgo 45', 'Puebla'),
(103, 'Cruz', 'Fernanda', 'Av. Vallarta 500', 'Monterrey');


SELECT * FROM persons WHERE lastname = 'López';

SELECT City FROM PERSONS WHERE PersonID = 2

--UPDATE City FROM PERSONS WHERE PersonID = 2, Puebla
-- UPDATE tabla SET columna = valor WHERE condicion;

UPDATE PERSONS SET City = 'Puebla' WHERE PersonID = 2

SELECT City FROM PERSONS WHERE PersonID = 2

-- Cambia la dirección de la persona con nombre Fernanda Cruz  a Av. Insurgentes 500.
-- SELECT FirstName FROM PERSONS WHERE FirstName = 'Fernanda Cruz'

--SELECT columnas FROM tabla WHERE condicion1 AND condicion2;
SELECT PersonID, FirstName, LastName, Address FROM PERSONS WHERE FirstName = 'Fernanda'

SELECT PersonID, FirstName, LastName, Address FROM PERSONS WHERE PersonID = 103

UPDATE PERSONS SET Address = 'Av. Insurgentes 500' WHERE FirstName = 'Fernanda Cruz' AND PersonID = 103
SELECT PersonID, FirstName, LastName, Address FROM PERSONS WHERE FirstName = 'Fernanda'

-- Elimina a la persona con PersonID = 45.
SELECT PersonID,FirstName FROM PERSONS WHERE PersonID = 45
-- DELETE FROM tabla WHERE condicion;
DELETE FROM PERSONS WHERE PersonID = 45

-- Ejercicio tres - usando where, and y or.
-- Muestra todas las personas que viven en Puebla.
SELECT * FROM PERSONS WHERE City = 'Puebla'
-- Muestra las personas que viven en Guadalajara y se llaman Ana.
SELECT * FROM PERSONS WHERE City = 'Guadalajara' AND FirstName = 'Ana';
SELECT * FROM persons WHERE firstname = 'Ana';

-- Muestra las personas con apellido Garcia o Lopez..
SELECT * FROM PERSONS WHERE LastName = 'García' OR LastName = 'López';
SELECT * FROM PERSONS WHERE LastName = 'Garcia' OR LastName = 'Lopez';

-- Muestra las personas que viven en Puebla o Monterrey.
SELECT * FROM PERSONS WHERE City = 'Puebla' OR City = 'Monterrey';