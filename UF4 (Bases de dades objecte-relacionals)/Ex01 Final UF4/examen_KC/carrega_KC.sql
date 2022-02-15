-- BIBLIOTEQUES
INSERT INTO
    biblioteques (
        idbiblioteca,
        nom,
        adreça,
        telefons
    )
VALUES
    (
        1,
        'Biblioteca Mestre Martí Tauler',
        ROW(
            'Rubí',
            'Barcelona',
            '08191',
            'Carrer Aribau, 5,'
        ),
        ARRAY ['936998453','936908191']
    );

INSERT INTO
    biblioteques (
        idbiblioteca,
        nom,
        adreça,
        telefons
    )
VALUES
    (
        2,
        'Biblioteca Vapor Badia',
        ROW(
            'Sabadell',
            'Barcelona',
            '08202',
            'Carrer de les Tres Creus, 127, 129,'
        ),
        ARRAY ['937451703','937408202']
    );

-- TEMAS
INSERT INTO
    temes (idtema, nom)
VALUES
    (1, 'Infromática');

INSERT INTO
    temes (idtema, nom)
VALUES
    (2, 'Biología');

INSERT INTO
    temes (idtema, nom)
VALUES
    (3, 'Política');

-- LLIBRES
INSERT INTO
    llibres (
        idllibre,
        titol,
        autors,
        ISBN,
        idtema
    )
VALUES
    (
        1,
        'Curso de Laravel avanzado',
        ARRAY ['Khalid Chalili','Manel Aguilera'],
        '9782409024887',
        1
    );

INSERT INTO
    llibres (
        idllibre,
        titol,
        autors,
        ISBN,
        idtema
    )
VALUES
    (
        2,
        'Biología eso',
        ARRAY ['Pepa apellido1','Pepe apellido2'],
        '9782409024888',
        2
    );

INSERT INTO
    llibres (
        idllibre,
        titol,
        autors,
        ISBN,
        idtema
    )
VALUES
    (
        3,
        'Plítica para dommies',
        ARRAY ['Pepa Pig','Pepe Pog'],
        '9782409011888',
        3
    );

-- insert libro con un tema inexistente
-- ERROR:  inserción o actualización en la tabla «llibres» viola la llave foránea «llibres_idtema_fkey»
-- DETALLE:  La llave (idtema)=(4) no está presente en la tabla «temes».
INSERT INTO
    llibres (
        idllibre,
        titol,
        autors,
        ISBN,
        idtema
    )
VALUES
    (
        4,
        'Política europea',
        ARRAY ['Angela Merkel','Tom Cruise'],
        '9782409024889',
        4
    );

-- USUARIOS
INSERT INTO
    usuaris (
        idpersona,
        nom,
        dni,
        adreça,
        telefons,
        numcarnet
    )
VALUES
    (
        1,
        'Antonio Pepe',
        '12372918X',
        ROW(
            'Sabadell',
            'Barcelona',
            '08202',
            'Carrer de les Tres Creus, 123,'
        ),
        ARRAY ['937451703','937408202'],
        12345
    );

INSERT INTO
    usuaris (
        idpersona,
        nom,
        dni,
        adreça,
        telefons,
        numcarnet
    )
VALUES
    (
        2,
        'Alejandro Apellido',
        '14372918X',
        ROW(
            'Barcelona',
            'Barcelona',
            '00801',
            'Carrer Trinitat, 1,'
        ),
        ARRAY ['649080880','938808202'],
        12346
    );

-- insert persona (no funciona por ser abstracta)
--ERROR:  el nuevo registro para la relación «persones» viola la restricción «check» «persones_check»
--DETALLE:  La fila que falla contiene (2, Antonio Pepe, 12372918X, (Sabadell,Barcelona,08202,"Carrer de les Tres Creus, 123,"), {937451703,937408202}).
INSERT INTO
    persones (
        idpersona,
        nom,
        dni,
        adreça,
        telefons
    )
VALUES
    (
        2,
        'Antonio Pepe',
        '12372918X',
        ROW(
            'Sabadell',
            'Barcelona',
            '08202',
            'Carrer de les Tres Creus, 123,'
        ),
        ARRAY ['937451703','937408202']
    );

-- BIBLIOTECARIS
INSERT INTO
    bibliotecaris (
        idpersona,
        nom,
        dni,
        adreça,
        telefons,
        numss,
        salari
    )
VALUES
    (
        1,
        'Alberto Pepe Roc',
        '143739318F',
        ROW(
            'Tarrassa',
            'Barcelona',
            '08196',
            'Carrer Alemany, 210,'
        ),
        ARRAY ['649665811','938801124'],
        '55915198',
        1199.1
    );

INSERT INTO
    bibliotecaris (
        idpersona,
        nom,
        dni,
        adreça,
        telefons,
        numss,
        salari
    )
VALUES
    (
        2,
        'Roberto Mendoza Gímenez',
        '14373911X',
        ROW(
            'Sant Cugat',
            'Barcelona',
            '08195',
            'Carrer Les Flors, 7,'
        ),
        ARRAY ['649080887','938808204'],
        '55847795',
        1200.2
    );

-- EXEMPLARS (cataleg_llibres) EXISTENTES
INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        1,
        1,
        1,
        null,
        null
    );

INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        2,
        2,
        1,
        null,
        null
    );

INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        3,
        3,
        1,
        null,
        null
    );

INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        4,
        1,
        2,
        2,
        '2020/01/01'
    );

INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        5,
        2,
        2,
        2,
        '2020/01/01'
    );

INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        6,
        3,
        2,
        1,
        '2020/02/02'
    );

-- EXEMPLARS (cataleg_llibres) INEXISTENTES
--ERROR:  inserción o actualización en la tabla «cataleg_llibres» viola la llave foránea «cataleg_llibres_idbiblioteca_fkey»
--DETALLE:  La llave (idbiblioteca)=(6) no está presente en la tabla «biblioteques».
INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        6,
        3,
        6,
        null,
        null
    );
--ERROR:  inserción o actualización en la tabla «cataleg_llibres» viola la llave foránea «cataleg_llibres_idllibre_fkey»
--DETALLE:  La llave (idllibre)=(4) no está presente en la tabla «llibres».
INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        6,
        4,
        2,
        null,
        null
    );

--ERROR:  inserción o actualización en la tabla «cataleg_llibres» viola la llave foránea «cataleg_llibres_idusuariprestec_fkey»
--DETALLE:  La llave (idusuariprestec)=(6) no está presente en la tabla «usuaris».
INSERT INTO
    cataleg_llibres (
        idexemplar,
        idllibre,
        idbiblioteca,
        idusuariprestec,
        dataPrestec
    )
VALUES
    (
        7,
        3,
        2,
        6,
        '2020/02/20'
    );


