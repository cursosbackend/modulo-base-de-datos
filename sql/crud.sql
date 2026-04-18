CREATE TABLE alumnos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    fecha_nacimiento DATE,
    ciudad VARCHAR(50)
);


INSERT INTO alumnos (nombre, apellido, email, fecha_nacimiento, ciudad) VALUES
('Juan', 'Pérez', 'juan.perez01@example.com', '2000-05-15', 'Valparaíso'),
('María', 'González', 'm.gonzalez02@example.com', '1999-08-22', 'Viña del Mar'),
('Diego', 'Muñoz', 'd.munoz03@example.com', '2001-02-10', 'Quilpué'),
('Francisca', 'Rojas', 'f.rojas04@example.com', '2002-11-30', 'Villa Alemana'),
('Andrés', 'Silva', 'a.silva05@example.com', '2000-01-25', 'Concón'),
('Camila', 'Araya', 'c.araya06@example.com', '1998-07-14', 'Quillota'),
('Felipe', 'Díaz', 'f.diaz07@example.com', '2003-04-05', 'Limache'),
('Javiera', 'Espinoza', 'j.espinoza08@example.com', '2001-09-18', 'Casablanca'),
('Nicolás', 'Valenzuela', 'n.valenzuela09@example.com', '1999-12-12', 'Valparaíso'),
('Valentina', 'Castillo', 'v.castillo10@example.com', '2002-06-08', 'Viña del Mar'),
('Sebastián', 'Tapia', 's.tapia11@example.com', '2000-03-21', 'Quilpué'),
('Constanza', 'Reyes', 'c.reyes12@example.com', '2001-10-27', 'Villa Alemana'),
('Matías', 'Soto', 'm.soto13@example.com', '1997-05-30', 'Concón'),
('Antonia', 'Cuevas', 'a.cuevas14@example.com', '2003-08-15', 'Quillota'),
('Gonzalo', 'Garrido', 'g.garrido15@example.com', '2002-01-02', 'Limache'),
('Ignacia', 'Sepúlveda', 'i.sepulveda16@example.com', '2000-11-11', 'Casablanca'),
('Cristóbal', 'Morales', 'c.morales17@example.com', '1999-04-19', 'Valparaíso'),
('Florencia', 'Martínez', 'f.martinez18@example.com', '2001-07-07', 'Viña del Mar'),
('Benjamín', 'Fuentes', 'b.fuentes19@example.com', '2002-02-28', 'Quilpué'),
('Isidora', 'Palacios', 'i.palacios20@example.com', '1998-09-03', 'Villa Alemana'),
('Ricardo', 'Pinto', 'r.pinto21@example.com', '2000-06-17', 'Concón'),
('Catalina', 'Vargas', 'c.vargas22@example.com', '2003-12-01', 'Quillota'),
('Joaquín', 'Cortes', 'j.cortes23@example.com', '2001-03-14', 'Limache'),
('Josefina', 'Venegas', 'j.venegas24@example.com', '1999-10-09', 'Casablanca'),
('Tomás', 'Aguilar', 't.aguilar25@example.com', '2002-05-22', 'Valparaíso'),
('Martina', 'Herrera', 'm.herrera26@example.com', '2000-08-11', 'Viña del Mar'),
('Lucas', 'Salinas', 'l.salinas27@example.com', '2001-01-30', 'Quilpué'),
('Fernanda', 'Henríquez', 'f.henriquez28@example.com', '1997-11-16', 'Villa Alemana'),
('Bastián', 'López', 'b.lopez29@example.com', '2003-07-19', 'Concón'),
('Sofía', 'Pizarro', 's.pizarro30@example.com', '2002-09-25', 'Quillota'),
('Gabriel', 'Vásquez', 'g.vasquez31@example.com', '2000-04-13', 'Limache'),
('Pia', 'Castro', 'p.castro32@example.com', '2001-06-20', 'Casablanca'),
('Vicente', 'Romero', 'v.romero33@example.com', '1999-02-04', 'Valparaíso'),
('Isabel', 'Donoso', 'i.donoso34@example.com', '2002-10-17', 'Viña del Mar'),
('Agustín', 'Osorio', 'a.osorio35@example.com', '2000-12-25', 'Quilpué'),
('Emilia', 'Guzmán', 'e.guzman36@example.com', '2001-08-31', 'Villa Alemana'),
('Maximiliano', 'Álvarez', 'm.alvarez37@example.com', '1998-05-12', 'Concón'),
('Renata', 'Núñez', 'r.nunez38@example.com', '2003-02-18', 'Quillota'),
('Martín', 'Medina', 'm.medina39@example.com', '2002-03-24', 'Limache'),
('Julieta', 'Parra', 'j.parra40@example.com', '2000-07-06', 'Casablanca'),
('Fabián', 'Escobar', 'f.escobar41@example.com', '2001-11-13', 'Valparaíso'),
('Maite', 'Gómez', 'm.gomez42@example.com', '1999-09-29', 'Viña del Mar'),
('Rodrigo', 'Bravo', 'r.bravo43@example.com', '2002-04-01', 'Quilpué'),
('Antonella', 'Sandoval', 'a.sandoval44@example.com', '2000-10-14', 'Villa Alemana'),
('Esteban', 'Contreras', 'e.contreras45@example.com', '2001-12-20', 'Concón'),
('Josefa', 'Cárcamo', 'j.carcamo46@example.com', '1997-08-03', 'Quillota'),
('Patricio', 'Olivares', 'p.olivares47@example.com', '2003-01-27', 'Limache'),
('Monserrat', 'Zúñiga', 'm.zuniga48@example.com', '2002-07-15', 'Casablanca'),
('Álvaro', 'Urrutia', 'a.urrutia49@example.com', '2000-02-09', 'Valparaíso'),
('Aylin', 'Navarro', 'a.navarro50@example.com', '2001-05-26', 'Viña del Mar'),
('Mauricio', 'Maldonado', 'm.maldonado51@example.com', '1999-06-11', 'Quilpué'),
('Bárbara', 'Villarroel', 'b.villarroel52@example.com', '2002-08-04', 'Villa Alemana'),
('Cristian', 'Bustos', 'c.bustos53@example.com', '2000-09-17', 'Concón'),
('Pascale', 'Gajardo', 'p.gajardo54@example.com', '2001-03-22', 'Quillota'),
('Enrique', 'Toledo', 'e.toledo55@example.com', '1998-11-05', 'Limache'),
('Trinidad', 'Salazar', 't.salazar56@example.com', '2003-10-12', 'Casablanca'),
('Leonardo', 'Vera', 'l.vera57@example.com', '2002-12-30', 'Valparaíso'),
('Amanda', 'Poblete', 'a.poblete58@example.com', '2000-01-08', 'Viña del Mar'),
('Daniel', 'Sanhueza', 'd.sanhueza59@example.com', '2001-04-16', 'Quilpué'),
('Rafaela', 'Godoy', 'r.godoy60@example.com', '1999-07-28', 'Villa Alemana'),
('Samuel', 'Lagos', 's.lagos61@example.com', '2002-11-09', 'Concón'),
('Elena', 'Miranda', 'e.miranda62@example.com', '2000-05-02', 'Quillota'),
('Renato', 'Toro', 'r.toro63@example.com', '2001-08-14', 'Limache'),
('Aitana', 'Arancibia', 'a.arancibia64@example.com', '1997-03-19', 'Casablanca'),
('Gustavo', 'Farías', 'g.farias65@example.com', '2003-09-23', 'Valparaíso'),
('Micaela', 'Andrade', 'm.andrade66@example.com', '2002-06-12', 'Viña del Mar'),
('Iván', 'Villegas', 'i.villegas67@example.com', '2000-10-01', 'Quilpué'),
('Laura', 'Carrasco', 'l.carrasco68@example.com', '2001-12-15', 'Villa Alemana'),
('Héctor', 'Riquelme', 'h.riquelme69@example.com', '1999-01-24', 'Concón'),
('Alondra', 'Ahumada', 'a.ahumada70@example.com', '2002-02-07', 'Quillota'),
('Oscar', 'Leiva', 'o.leiva71@example.com', '2000-04-29', 'Limache'),
('Delfina', 'Barrios', 'd.barrios72@example.com', '2001-07-20', 'Casablanca'),
('Marcos', 'Molina', 'm.molina73@example.com', '1998-08-30', 'Valparaíso'),
('Zoe', 'Cabrera', 'z.cabrera74@example.com', '2003-11-14', 'Viña del Mar'),
('Hugo', 'Figueroa', 'h.figueroa75@example.com', '2002-05-11', 'Quilpué'),
('Mia', 'Peña', 'm.pena76@example.com', '2000-09-02', 'Villa Alemana'),
('César', 'Yáñez', 'c.yanez77@example.com', '2001-02-18', 'Concón'),
('Lucía', 'Jara', 'l.jara78@example.com', '1997-12-06', 'Quillota'),
('Alex', 'Sáez', 'a.saez79@example.com', '2003-06-09', 'Limache'),
('Sara', 'Vergara', 's.vergara80@example.com', '2002-01-21', 'Casablanca'),
('Claudio', 'Gallardo', 'c.gallardo81@example.com', '2000-03-13', 'Valparaíso'),
('Amparo', 'Ramos', 'a.ramos82@example.com', '2001-05-28', 'Viña del Mar'),
('Eduardo', 'Solís', 'e.solis83@example.com', '1999-08-17', 'Quilpué'),
('Rebeca', 'Uribe', 'r.uribe84@example.com', '2002-10-31', 'Villa Alemana'),
('Mario', 'Guerra', 'm.guerra85@example.com', '2000-11-22', 'Concón'),
('Noelia', 'Vidal', 'n.vidal86@example.com', '2001-04-04', 'Quillota'),
('Víctor', 'Ortiz', 'v.ortiz87@example.com', '1998-02-15', 'Limache'),
('Ema', 'Correa', 'e.correa88@example.com', '2003-07-26', 'Casablanca'),
('Andrés', 'Durán', 'a.duran89@example.com', '2002-09-08', 'Valparaíso'),
('Paula', 'Mellado', 'p.mellado90@example.com', '2000-06-03', 'Viña del Mar'),
('Jorge', 'Tobar', 'j.tobar91@example.com', '2001-03-11', 'Quilpué'),
('Karla', 'Valdés', 'k.valdes92@example.com', '1999-12-27', 'Villa Alemana'),
('Raúl', 'Cisternas', 'r.cisternas93@example.com', '2002-08-16', 'Concón'),
('Olga', 'Becerra', 'o.becerra94@example.com', '2000-10-23', 'Quillota'),
('Manuel', 'Ibarra', 'm.ibarra95@example.com', '2001-11-02', 'Limache'),
('Teresa', 'Orellana', 't.orellana96@example.com', '1997-05-19', 'Casablanca'),
('Luis', 'Paredes', 'l.paredes97@example.com', '2003-01-07', 'Valparaíso'),
('Gloria', 'Maturana', 'g.maturana98@example.com', '2002-04-20', 'Viña del Mar'),
('Rubén', 'Salas', 'r.salas99@example.com', '2000-07-13', 'Quilpué'),
('Silvia', 'Gajardo', 's.gajardo100@example.com', '2001-09-05', 'Villa Alemana');





-- filtrado de datos con where

select * from alumnos where ciudad = 'Valparaíso';

select nombre, fecha_nacimiento from alumnos where  fecha_nacimiento < '2001-12-30';            


--select  (pedir data)
select * from alumnos;
select nombre,email from alumnos;

--insert  (insertar data)
INSERT INTO alumnos (nombre, apellido, email, fecha_nacimiento, ciudad) VALUES
('Juan', 'Pérez', 'juan.perez01@example.com', '2000-05-15', 'Valparaíso')

--update (actualizar data)
update alumnos
set ciudad = 'Santiago' 
where id = 1;

--delete (borrar data)
delete from alumnos
where id = 1; 