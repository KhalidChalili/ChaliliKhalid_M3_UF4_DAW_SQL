DROP TABLE IF EXISTS Coleccions_Llibres;
DROP TABLE IF EXISTS Coleccions cascade;
DROP TABLE IF EXISTS Llibres cascade;
DROP TABLE IF EXISTS Categories;
DROP TABLE IF EXISTS Productes;
DROP TABLE IF EXISTS Editors;
DROP TYPE IF EXISTS Adreca;

CREATE TYPE Adreca AS(
poblacio text,
provincia text,
cp text,
domicili text
);
CREATE table Editors (
ideditor int primary key,
nom text NOT NULL,
dni text NOT NULL,
telefons text array NOT NULL,
adreca Adreca NOT NULL
);
INSERT INTO Editors VALUES (1, 'Juan', '45879655L', array['934568712', '934568104'], row('Sabadell', 'Barcelona', '45732', 'calle falsa n123' ));
INSERT INTO Editors VALUES (2, 'Paco', '44789512P', array['935555555', '963547812'], row('Terrasa', 'Barcelona', '08222', 'calle falsa n222' ));

CREATE table Categories (
idcategoria int primary key,
nom text NOT NULL
);
INSERT INTO Categories VALUES (1, 'terror');
INSERT INTO Categories VALUES (2, 'drama');

CREATE table Productes (
idproducte int primary key,
nom text NOT NULL
);
CREATE table Llibres (
descripcio text,
preu_venda decimal(6,2) NOT NULL,
ideditor int NOT null references Editors(ideditor),
idcategoria int not null references Categories(idcategoria),
PRIMARY KEY (idproducte)
)inherits (Productes);
INSERT INTO Llibres VALUES (1, 'Mi primera punalada', 'libro para adolescentes', 6.00, 1, 2);
INSERT INTO Llibres VALUES (2, 'Teo va de botellon', 'libro para adolescentes', 8.95, 1, 1);

CREATE table Coleccions (
	descompte decimal(6,2),
	PRIMARY KEY (idproducte)
)inherits (Productes);
INSERT INTO Coleccions VALUES (3, 'Juventud', 0.20);

create table Coleccions_llibres (
idllibre int not null REFERENCES Llibres(idproducte),
idcoleccio int not null REFERENCES Coleccions(idproducte),
PRIMARY KEY (idllibre, idcoleccio)
);
INSERT INTO Coleccions_llibres VALUES (1,3);
INSERT INTO Coleccions_llibres VALUES (2,3);