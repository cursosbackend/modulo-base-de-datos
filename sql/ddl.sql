CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id) 
);


select * from empleados;


select * from departamentos;

-- alter (agregar columnas):

alter table empleados
add column profesion varchar(100); 


alter table empleados 
add column fecha_de_ingreso date;

alter table departamentos
add column ubicacion varchar(100);

-- alter (modificar columnas):

alter table empleados 
alter column correo set not null;


INSERT INTO departamentos (nombre) VALUES
('Recursos Humanos'),
('Tecnología'),
('Ventas'),
('Marketing');

INSERT INTO empleados (nombre, correo, departamento_id, profesion) VALUES
('Juan Pérez', 'juan@empresa.com', 1, 'ing' ),
('María Lópe', 'juan@empresa.com', 2,'ing'),
('Carlos Díaz', 'carlos@empresa.com', 2,'ing'),
('Ana Torres', 'juan@empresa.com', 3,'ing'),
('Pedro Gómez', 'pedro@empresa.com', 1,'ing'),
('Laura Rojas', 'juan@empresa.com', 4,'ing');

--cargar datos reales a los  null de la nueva columna fecha

update empleados
set fecha_de_ingreso = '2025-01-01'
where fecha_de_ingreso is null;

update empleados
set fecha_de_ingreso = current_date
where fecha_de_ingreso = '2025-01-01';

INSERT INTO empleados (nombre, correo, departamento_id, profesion) VALUES
('Juan1', 'juan@empresa', 1, 'ing' ),
('Juan2', 'juan@empresa', 1, 'ing' ),
('Juan3', 'juan@empresa', 1, 'ing' ),
('Juan4', 'juan@empresa', 1, 'ing' ),
('Juan5', 'juan@empresa', 1, 'ing' ),
('Juan6', 'juan@empresa', 1, 'ing' );



select  nombre, coalesce(fecha_de_ingreso, '2026-01-01')
from empleados;










alter table empleados
drop constraint empleados_departamento_id_fkey;


alter table empleados 
add constraint empleados_departamento_id_fkey
FOREIGN KEY (departamento_id) 
REFERENCES departamentos(id)
on delete cascade;


delete from departamentos
where id = 1;

drop table empleados;
drop table departamentos;

