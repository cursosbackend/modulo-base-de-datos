-- Tabla estudiantes
CREATE TABLE estudiantes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    ciudad VARCHAR(50) DEFAULT 'Valparaíso',
    edad INT CHECK (edad >= 18)
);

-- Tabla cursos
CREATE TABLE cursos (
    id SERIAL PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    precio NUMERIC(10,2) CHECK (precio > 0)
);      --     de  -9999999999,99 - 9999999999,99

-- Tabla inscripciones (relación)
CREATE TABLE inscripciones (
    id SERIAL PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    fecha_inscripcion DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (estudiante_id) REFERENCES estudiantes(id) ON DELETE CASCADE,
    FOREIGN KEY (curso_id) REFERENCES cursos(id) ON DELETE CASCADE
);

--insertar datos
insert into estudiantes (nombre, apellido, edad) values
('juanito','perez',19),
('valentina','lopez',30),
('pepito','jara',45);

insert into estudiantes (nombre, apellido, edad) values
('elva','surita',22);


select * from estudiantes;

insert into cursos (nombre_curso, precio) values
('sql',500000),
('frontend',500000),
('backend', 600000);

select * from cursos;

insert into inscripciones (estudiante_id,curso_id) values
(1,3),
(1,2),
(1,1),
(2,2),
(2,3),
(3,1),
(2,1),
(3,2),
(3,3);

select * from inscripciones;

--updates
update estudiantes
set ciudad = 'Vina del mar'
where id = 4;


update cursos 
set precio = 100000
where id = 3;


--delete

delete from inscripciones
where id = 10;


delete from estudiantes
where id = 1;


--transacciones
begin;
update cursos 
set precio = 50000
where id = 1 ;


update cursos 
set precio = 50000
where id = 2 ;
select * from cursos;
commit;



begin;
update cursos 
set precio = 50000000
where id = 1 ;
rollback;

