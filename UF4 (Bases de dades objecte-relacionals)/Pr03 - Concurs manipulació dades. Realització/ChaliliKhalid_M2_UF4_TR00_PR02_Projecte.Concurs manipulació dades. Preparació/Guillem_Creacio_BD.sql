create type adreca as
(
    poblacio  varchar(100),
    provincia varchar(100),
    cp        varchar(5),
    domicili  varchar(100)
);

alter type adreca owner to postgres;

create table productes
(
    id_productes serial not null
    constraint productes_pk
    primary key,
    nom varchar(100) not null
);

alter table productes
    owner to postgres;

create unique index productes_id_productes_uindex
    on productes (id_productes);

create table coleccions
(
    id_coleccions serial         not null,
    descompte     numeric(18, 2) not null,
    llibres       integer[]      not null,
    constraint coleccions_pk
        primary key (id_productes, id_coleccions)
)
    inherits (productes);

alter table coleccions
    owner to postgres;

create unique index coleccions_id_coleccions_uindex
    on coleccions (id_coleccions);

create table editors
(
    id_editors serial         not null
        constraint editor_pk
            primary key,
    nom        varchar(30)    not null,
    dni        varchar(9)     not null,
    telefons   integer[]      not null,
    adreca    adreca not null
);

alter table editors
    owner to postgres;

create unique index editor_id_editor_uindex
    on editors (id_editors);

create table categories
(
    id_categories serial      not null
        constraint categoria_pk
            primary key,
    nom           varchar(50) not null
);

alter table categories
    owner to postgres;

create table llibres
(
    id_llibres    serial         not null,
    descripcio    varchar(200),
    preu_venda    numeric(18, 2) not null,
    id_editors    integer        not null
    constraint llibres_editors_id_editors_fk
    references editors
    on update cascade on delete cascade,
    id_categories integer        not null
    constraint llibres_editor_id_editor_fk
    references categories
    on update cascade on delete cascade,
    constraint llibres_pk
    primary key (id_llibres, id_productes)
)
    inherits (productes);

alter table llibres
    owner to postgres;

create unique index llibres_id_llibres_uindex
    on llibres (id_llibres);

create unique index categoria_id_categoria_uindex
    on categories (id_categories);

create table coleccions_llibres
(
    id_coleccions_llibres serial  not null
        constraint coleccions_llibres_pk
            primary key,
    id_coleccions         integer not null
        constraint coleccions_llibres_coleccions_id_coleccions_fk
            references coleccions (id_coleccions)
            on update cascade on delete cascade,
    id_llibres            integer not null
        constraint coleccions_llibres_llibres_id_llibres_fk
            references llibres (id_llibres)
            on update cascade on delete cascade
);

alter table coleccions_llibres
    owner to postgres;

create unique index coleccions_llibres_id_coleccions_llibres_uindex
    on coleccions_llibres (id_coleccions_llibres);