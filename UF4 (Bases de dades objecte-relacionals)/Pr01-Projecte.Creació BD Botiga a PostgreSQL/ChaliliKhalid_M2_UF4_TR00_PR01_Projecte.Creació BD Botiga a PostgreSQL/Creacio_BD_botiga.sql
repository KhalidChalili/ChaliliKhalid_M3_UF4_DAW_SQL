drop table packProducte;
drop table producte;
drop table pack;
drop table producteAbstract;
drop table client;
drop table proveidor;
drop table persona;

CREATE TYPE adreca AS (
    poblacio varchar(30),
    provincia varchar(30),
    cp varchar(10),
    domicili varchar(50)
);

CREATE TABLE persona(
    idPersona int,
    nom varchar(20),
    dni varchar(10),
    adreca adreca,
    telefons varchar(9) ARRAY,
    PRIMARY KEY(idPersona)
);

CREATE TABLE client(
    enviarPublicitat boolean,
    PRIMARY KEY (idPersona)
)INHERITS (persona);

CREATE TABLE proveidor (
    descompteProntoPago boolean,
    PRIMARY KEY (idPersona)
)INHERITS (persona);

CREATE TABLE producteAbstract (
    idProducte int,
    preuVenda numeric(7,2),
    nom text,
    dataInici DATE,
    dataFinal DATE,
    PRIMARY KEY (idProducte)
);

CREATE TABLE producte (
    stock int,
    idPersona int REFERENCES proveidor,
    PRIMARY KEY (idProducte)
) INHERITS (producteAbstract);

CREATE TABLE pack (
    descompte int,
    PRIMARY KEY (idProducte)
) INHERITS (producteAbstract);

CREATE TABLE packProducte (
    idPack int REFERENCES pack ON DELETE CASCADE,
    idProducte int REFERENCES producte ON DELETE RESTRICT,
    PRIMARY KEY (idPack, idProducte)
);