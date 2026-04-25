CREATE TABLE reporte_crimen (
    id SERIAL PRIMARY KEY,
    fecha INT,
    tipo VARCHAR(50),
    descripcion TEXT,
    ciudad VARCHAR(50)
);

CREATE TABLE persona (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    id_licencia INT,
    numero_direccion INT,
    calle VARCHAR(100)
);

CREATE TABLE entrevista (
    id SERIAL PRIMARY KEY,
    id_persona INT,
    declaracion TEXT
);

CREATE TABLE membresia_gimnasio (
    id VARCHAR(10) PRIMARY KEY,
    id_persona INT,
    fecha_inicio DATE,
    estado VARCHAR(20)
);

CREATE TABLE checkin_gimnasio (
    id SERIAL PRIMARY KEY,
    id_membresia VARCHAR(10),
    fecha DATE
);

CREATE TABLE licencia (
    id INT PRIMARY KEY,
    edad INT,
    altura INT,
    color_ojos VARCHAR(20),
    color_cabello VARCHAR(20),
    genero VARCHAR(10),
    patente VARCHAR(20)
);

CREATE TABLE vehiculo (
    patente VARCHAR(20) PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    color VARCHAR(20)
);

CREATE TABLE evento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    fecha DATE
);

CREATE TABLE asistencia_evento (
    id SERIAL PRIMARY KEY,
    id_evento INT,
    id_persona INT
);


INSERT INTO reporte_crimen (fecha, tipo, descripcion, ciudad)
VALUES
(20180115, 'asesinato',
 'Dos testigos. Uno vive en la última casa de Northwestern Dr. Otro se llama Annabel en Franklin Ave.',
 'SQL City');

INSERT INTO persona VALUES
(1,'Juan Pérez',101,4919,'Northwestern Dr'),
(2,'Annabel Miller',102,103,'Franklin Ave'),
(3,'Jeremy Bowers',103,55,'Calle Falsa'),
(4,'Miranda Priestly',104,12,'Calle Rica'),
(5,'Carlos Soto',105,200,'Main St'),
(6,'Laura Díaz',106,300,'Main St'),
(7,'Pedro Gómez',107,400,'2nd Ave');

INSERT INTO entrevista (id_persona, declaracion) VALUES
(1,'El asesino llevaba una bolsa de gimnasio con ID que empieza con 48Z'),
(2,'El auto tenía una patente con H42W'),
(3,'Fui contratado por una mujer con cabello rojo y entre 65-67 pulgadas'),
(5,'No vi nada'),
(6,'Escuché un ruido');


INSERT INTO membresia_gimnasio VALUES
('48Z7A',3,'2017-01-01','activa'),
('48Z9X',5,'2017-05-01','activa'),
('77A1B',6,'2016-01-01','inactiva');

INSERT INTO checkin_gimnasio (id_membresia, fecha) VALUES
('48Z7A','2018-01-09'),
('48Z7A','2018-01-15'),
('48Z9X','2018-01-10');

INSERT INTO licencia VALUES
(101,35,70,'cafe','negro','masculino','AAA111'),
(102,29,65,'azul','rubio','femenino','BBB222'),
(103,30,68,'verde','cafe','masculino','H42WXX'),
(104,45,66,'cafe','rojo','femenino','H42WAB'),
(105,40,72,'negro','negro','masculino','CCC333');


INSERT INTO vehiculo VALUES
('H42WXX','Toyota','Corolla','rojo'),
('H42WAB','Audi','A4','negro'),
('AAA111','Nissan','Versa','blanco');

INSERT INTO evento (id, nombre, fecha) VALUES
(1,'Gala SQL','2018-01-10');

INSERT INTO asistencia_evento (id_evento, id_persona) VALUES
(1,4),
(1,6);




--Hubo un asesinato el 15 de enero de 2018 en SQL City.
--Usa SQL para encontrar al culpable.



SELECT *
FROM reporte_crimen
WHERE fecha = 20180115;

select * from persona;


select * 
from persona
where calle = 'Northwestern Dr'

select * 
from persona
where nombre like 'A%'

select *
from entrevista
where id_persona in (1,2)


