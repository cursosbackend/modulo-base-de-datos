create table clientes (
    id serial primary key,
	nombre varchar(20),
	ciudad char(20)
);

create table pedidos (
	id serial primary key,
	cliente_id int,
	monto int ,
	fecha date,
	foreign key (cliente_id) references clientes(id)	
);

INSERT INTO clientes (nombre, ciudad) VALUES
('Cliente 1', 'Valparaíso'),
('Cliente 2', 'Santiago'),
('Cliente 3', 'Viña del Mar'),
('Cliente 4', 'Valparaíso'),
('Cliente 5', 'Santiago'),
('Cliente 6', 'Concepción'),
('Cliente 7', 'La Serena'),
('Cliente 8', 'Valparaíso'),
('Cliente 9', 'Santiago'),
('Cliente 10', 'Viña del Mar'),
('Cliente 11', 'Valparaíso'),
('Cliente 12', 'Santiago'),
('Cliente 13', 'Concepción'),
('Cliente 14', 'Valparaíso'),
('Cliente 15', 'La Serena'),
('Cliente 16', 'Santiago'),
('Cliente 17', 'Viña del Mar'),
('Cliente 18', 'Valparaíso'),
('Cliente 19', 'Santiago'),
('Cliente 20', 'Concepción');




INSERT INTO pedidos (cliente_id, monto, fecha) VALUES
(1, 50000, '2025-01-01'),
(2, 75000, '2025-01-02'),
(3, 20000, '2025-01-03'),
(4, 90000, '2025-01-04'),
(5, 120000, '2025-01-05'),
(6, 45000, '2025-01-06'),
(7, 30000, '2025-01-07'),
(8, 150000, '2025-01-08'),
(9, 60000, '2025-01-09'),
(10, 80000, '2025-01-10'),
(11, 40000, '2025-01-11'),
(12, 50000, '2025-01-12'),
(13, 70000, '2025-01-13'),
(14, 30000, '2025-01-14'),
(15, 90000, '2025-01-15'),
(16, 110000, '2025-01-16'),
(17, 25000, '2025-01-17'),
(18, 60000, '2025-01-18'),
(19, 45000, '2025-01-19'),
(20, 100000, '2025-01-20');

select * from clientes

select * from pedidos 

-- funciones

select upper(nombre) as texto_en_mayus  from clientes;

select lower(nombre) as texto_en_min  from clientes;

select length(nombre) as largo_del_nombre  from clientes;

--funciones matematicas

select count(*) as conteo_pedidos from pedidos;

select sum(monto) as recaudacion_total from pedidos;

select avg(monto) as promedio_venta from pedidos;

select max(monto) as pedido_maximo from pedidos;

select min(monto) as pedido_min from pedidos;


-- joins

INSERT INTO clientes (nombre, ciudad) VALUES
('Cristian Lopez', 'Valparaíso'),
('Ana María', 'Viña del Mar'),
('Pedro Pascal', 'Santiago');



INSERT INTO pedidos (cliente_id, monto, fecha) VALUES
(NULL, 15000, '2025-02-01'),
(NULL, 25000, '2025-02-02');



select clientes.nombre, pedidos.monto, pedidos.fecha
from clientes
inner join pedidos on clientes.id = pedidos.cliente_id;


select clientes.nombre, pedidos.monto, pedidos.fecha
from clientes
left join pedidos on clientes.id = pedidos.cliente_id;


select clientes.nombre, pedidos.monto, pedidos.fecha
from clientes
right join pedidos on clientes.id = pedidos.cliente_id;