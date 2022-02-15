--Database: prova

-- DROP DATABASE prova;
-- 
-- CREATE DATABASE prova
--   WITH ENCODING='UTF8'
--        OWNER=postgres
--        CONNECTION LIMIT=-1;


drop table estudiante_materia_profesor;
drop table profesor_materia;
drop table materia;
drop table profesor;
drop table estudiante;
drop table persona;



CREATE TYPE infocontacto AS(
	direccion varchar(50),
	telefono varchar(15),
	telefono_alt varchar(15)
);

CREATE TABLE persona(
	dni varchar(10) PRIMARY KEY,
	nombre varchar(20) NOT NULL,
	apellido varchar(20) NOT NULL,
	datos_ubicacion infocontacto NOT NULL
);

CREATE TABLE profesor(
	id varchar(6) PRIMARY KEY,
	sueldo numeric(7,2) NOT NULL
)INHERITS (persona);

CREATE TYPE ciclo AS ENUM('Básico','Diversificado');
CREATE TABLE estudiante(
	id varchar(6) PRIMARY KEY,
	promedio numeric(3,1) NOT NULL,
	ciclo_actual ciclo NOT NULL
) INHERITS (persona);

CREATE TABLE materia(
	codigo varchar(4) PRIMARY KEY,
	nombre varchar(15) NOT NULL,
	horas_semana numeric(2) NOT NULL
);

CREATE TABLE profesor_materia(
	id varchar(4) PRIMARY KEY,
	codigo_mat varchar(4) REFERENCES materia(codigo),
	id_prof varchar(6) REFERENCES profesor(id),
	seccion numeric(2) NOT NULL
);

CREATE TABLE estudiante_materia_profesor(
	id_prof_mat varchar(4) REFERENCES profesor_materia(id),
	id_estudiante varchar(6) REFERENCES estudiante(id),
	notas integer[],
	PRIMARY KEY(id_prof_mat,id_estudiante)
);
