drop table coleccions_llibres;
drop table llibres;
drop table categories;
drop table editors;
drop table coleccions;
drop table productes;


CREATE TYPE adreca AS (
    poblacio varchar(30),
    provincia varchar(30),
    cp varchar(10),
    domicili varchar(50)
);

CREATE TABLE editors(
    ideditor int NOT NULL,
    nom varchar(20) NOT NULL,
    dni varchar(20) NOT NULL,
    telefons varchar(9) ARRAY ,
    adreca adreca,
    PRIMARY KEY(ideditor)
);

CREATE TABLE productes(
    idproducte int NOT NULL,
    nom varchar(20) NOT NULL,
    PRIMARY KEY(idproducte)
);

CREATE TABLE categories(
    idcategoria int NOT NULL,
    nom varchar(20) NOT NULL,
    PRIMARY KEY(idcategoria)
);

CREATE TABLE llibres(
    descripcio varchar(20) NOT NULL,
    preu_venda numeric(7,2) NOT NULL,
    ideditor int REFERENCES editors NOT NULL,
    idcategoria int REFERENCES categories NOT NULL,
    PRIMARY KEY(idproducte)
)INHERITS (productes);



CREATE TABLE coleccions(
    descompte numeric(7,2) NOT NULL,
    PRIMARY KEY(idproducte)
)INHERITS (productes);

CREATE TABLE coleccions_llibres (
    idllibre int REFERENCES llibres ON DELETE CASCADE,
    idcoleccio int REFERENCES coleccions ON DELETE RESTRICT,
    PRIMARY KEY (idllibre, idcoleccio)
);
