select * from prestamos;

delete from pedidos
where id = 1;

delete from clientes
where id = 1;


--truncate

truncate table prestamos cascade;


--drop 

drop table prestamos;
drop table libros;
drop table estudiantes cascade;

