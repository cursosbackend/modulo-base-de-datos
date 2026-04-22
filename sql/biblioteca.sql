-- biblioteca


--autores
create table autores (
	id serial primary key,
	nombre varchar(100),
	pais varchar(50)
);

--libros
create table libros (
	id serial primary key,
	titulo varchar(100),
	autor_id int,
	precio int,
	foreign key (autor_id) references autores(id)
);

--prestamos
create table prestamos (
	id serial primary key,
	libro_id int,
	fecha_prestamo date,
	fecha_devolucion date,
	foreign key (libro_id) references libros(id)	
);

INSERT INTO autores (nombre, pais) VALUES
('Autor 1', 'Chile'),
('Autor 2', 'Argentina'),
('Autor 3', 'Chile'),
('Autor 4', 'Perú'),
('Autor 5', 'Chile'),
('Autor 6', 'México'),
('Autor 7', 'Argentina'),
('Autor 8', 'Chile'),
('Autor 9', 'Colombia'),
('Autor 10', 'Chile');

INSERT INTO libros (titulo, autor_id, precio) VALUES
('Libro A', 1, 10000),
('Libro B', 2, 15000),
('Libro C', 3, 20000),
('Libro D', 1, 12000),
('Libro E', 4, 18000),
('Libro F', 5, 22000),
('Libro G', 6, 9000),
('Libro H', 7, 25000),
('Libro I', 8, 30000),
('Libro J', 9, 11000),
('Libro K', 10, 14000),
('Libro L', 3, 17000),
('Libro M', 2, 21000),
('Libro N', 5, 8000),
('Libro O', 1, 26000);

INSERT INTO prestamos (libro_id, fecha_prestamo, fecha_devolucion) VALUES
(1, '2025-01-01', '2025-01-10'),
(2, '2025-01-05', NULL),
(3, '2025-01-07', '2025-01-15'),
(4, '2025-01-08', NULL),
(5, '2025-01-10', '2025-01-20'),
(6, '2025-01-11', NULL),
(7, '2025-01-12', '2025-01-18'),
(8, '2025-01-13', NULL),
(9, '2025-01-14', '2025-01-22'),
(10, '2025-01-15', NULL);


select * from autores;

select * from libros;

select * from prestamos;

select titulo, precio from libros;

--filtrar por pais
select * from autores
where pais = 'Chile';


select count(*) from libros;



--valores unicos distinct
select distinct nombre from autores;

--agrupar con group by

select pais , count(*)
from autores
group by pais;

--joins
--inner join
select libros.titulo, autores.nombre
from libros
join autores on libros.autor_id = autores.id

select libros.titulo, autores.nombre
from libros
left join autores on libros.autor_id = autores.id

select libros.titulo, autores.nombre
from libros
right join autores on libros.autor_id = autores.id

INSERT INTO libros (titulo, autor_id, precio) VALUES
('Libro sin autor', null, 10000),
('Libro sin autor', null, 15000);

