INSERT INTO profesor(id,dni,nombre,apellido,datos_ubicacion,sueldo) VALUES('1','12345678','Darth','Vader',ROW('Estrella de la Muerte, 123','5555555','5554433'),5600.32);
INSERT INTO profesor(id,dni,nombre,apellido,datos_ubicacion,sueldo) VALUES('2','6756452','Lord','Voldemort',ROW('Hogwarts, hab. 31','5673452','1457347'),5900.67);
INSERT INTO profesor(id,dni,nombre,apellido,datos_ubicacion,sueldo) VALUES('3','567433','Billie','Jean',ROW('Is not my lover, #45-2','7651278','7653212'),6400.20);

INSERT INTO estudiante(id,dni,nombre,apellido,datos_ubicacion,ciclo_actual,promedio) VALUES('1','20625547','Bart','Simpsons',ROW('Evergreen Avenue, 341','3456252','1235234'),'Básico',16.3);
INSERT INTO estudiante(id,dni,nombre,apellido,datos_ubicacion,ciclo_actual,promedio) VALUES('2','19926385','Erick','Cartman',ROW('South Park, #543','4563221','8654322'),'Diversificado',14.7);
INSERT INTO estudiante(id,dni,nombre,apellido,datos_ubicacion,ciclo_actual,promedio) VALUES('3','23457221','Tony','Hawk',ROW('Suburbios la Rampa, #431-2','2345345','5678445'),'Diversificado',17.6);

INSERT INTO materia(codigo,nombre,horas_semana) VALUES('234T','Matemática VIII',6);
INSERT INTO materia(codigo,nombre,horas_semana) VALUES('234P','Física Nuclear',8);
INSERT INTO materia(codigo,nombre,horas_semana) VALUES('164T','Artes Oscuras',3);

INSERT INTO profesor_materia(id,codigo_mat,id_prof,seccion) VALUES('1','234P','2',08);
INSERT INTO profesor_materia(id,codigo_mat,id_prof,seccion) VALUES('2','234T','3',16);
INSERT INTO profesor_materia(id,codigo_mat,id_prof,seccion) VALUES('3','164T','1',23);

INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('1','3','{20,13,15}');
INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('2','3','{15,13,15}');
INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('2','1','{15,16,18}');
INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('1','1','{15,13,19}');
INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('3','2','{19,12,15}');
INSERT INTO estudiante_materia_profesor(id_prof_mat,id_estudiante,notas) VALUES('1','2','{14,16,13}');
