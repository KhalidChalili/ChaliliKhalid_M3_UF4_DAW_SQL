-- drops
drop type Adreça;
drop table cataleg_llibres;
drop table biblioteques;
drop table llibres;
drop table temes;
drop table bibliotecaris;
drop table usuaris;
drop table persones;

-- create table
CREATE TYPE Adreça AS (
    poblacio varchar(50),
    provincia varchar(50),
    cp varchar(50),
    domicili varchar(50)
);

create table persones (
    idpersona int not null,
    nom varchar(50) not null,
    dni varchar(50) not null,
    adreça Adreça,
    telefons varchar(9) ARRAY,
    CHECK (false) NO INHERIT,
    primary key (idpersona)
);

create table usuaris (
    numcarnet int not null,
    PRIMARY KEY(idpersona)
) INHERITS (persones);

create table bibliotecaris (
    numss varchar(50) not null,
    --puden ser bibliotecarios en fct
    salari numeric(7, 2),
    PRIMARY KEY(idpersona)
) INHERITS (persones);

create table biblioteques (
    idbiblioteca int not null,
    nom varchar(50) not null,
    adreça Adreça,
    telefons varchar(9) ARRAY,
    primary key (idbiblioteca)
);

create table temes (
    idtema int not null,
    nom varchar(50) not null,
    primary key (idtema)
);

create table llibres (
    idllibre int not null,
    titol varchar(50) not null,
    --puede que el libro tenga autor anónimo
    autors varchar(50) ARRAY,
    -- puede ser un libro sin registro isbn
    ISBN varchar(50),
    idtema int REFERENCES temes NOT NULL,
    primary key (idllibre)
);

create table cataleg_llibres (
    idexemplar int not null,
    idllibre int REFERENCES llibres not null,
    idbiblioteca int REFERENCES biblioteques on update cascade on delete cascade not null,
    -- el id de usuario y fecha están en null por si no están reservados aún.
    idusuariprestec int REFERENCES usuaris null,
    dataPrestec date null,
    PRIMARY KEY (
        idexemplar,
        idllibre,
        idbiblioteca
    )
);

