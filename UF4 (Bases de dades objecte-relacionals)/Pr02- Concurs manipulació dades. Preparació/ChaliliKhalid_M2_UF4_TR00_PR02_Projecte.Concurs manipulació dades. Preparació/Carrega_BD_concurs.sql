-- insert editor antes de LLIBRES
INSERT INTO editors (ideditor, nom, dni, telefons, adreca)
VALUES (1, 'editor1', '111111111z', ARRAY['111111111','111111111'], ROW('Badia del Vallès-prov','Barcelonaprov','08214','C\Mallorca s/n') );

INSERT INTO editors (ideditor, nom, dni, telefons, adreca)
VALUES (2, 'editor2', '222222222z', ARRAY['222222222','222222222'], ROW('Badia del Vallès-2','Barcelona-2','08214','C\Mallorca2 s/n') );

INSERT INTO editors (ideditor, nom, dni, telefons, adreca)
VALUES (3, 'editor3', '333333333z', ARRAY['333333333','333333333'], ROW('Badia del Vallès-3','Barcelona-3','08314','C\Mallorca3 s/n') );

INSERT INTO editors (ideditor, nom, dni, telefons, adreca)
VALUES (4, 'editor4', '444444444z', ARRAY['444444444','444444444'], ROW('Badia del Vallès-4','Barcelona-4','08414','C\Mallorca4 s/n') );

INSERT INTO editors (ideditor, nom, dni, telefons, adreca)
VALUES (5, 'editor5', '555555555z', ARRAY[''], ROW('Badia del Vallès-5','Barcelona-5','08515','C\Mallorca5 s/n') );



-- insert categoria antes de llibres
INSERT INTO categories (idcategoria, nom)
VALUES (1, 'libroscat1');
INSERT INTO categories (idcategoria, nom)
VALUES (2, 'libroscat2');
INSERT INTO categories (idcategoria, nom)
VALUES (3, 'libroscat3');



-- insert libros 1 (extends de productes)
INSERT INTO llibres (idproducte, nom, descripcio, preu_venda, ideditor, idcategoria)
VALUES (1, 'llibre1', 'desc1', '5.50', 1, 1);
-- insert libro 2 (extends de productes
INSERT INTO llibres (idproducte, nom, descripcio, preu_venda, ideditor, idcategoria)
VALUES (2, 'llibre2', 'desc2', '1.10', 1, 1);
-- insert libro 4 (extends de productes
INSERT INTO llibres (idproducte, nom, descripcio, preu_venda, ideditor, idcategoria)
VALUES (4, 'llibre4', 'desc4', '6.10', 1, 1);
-- insert libro 4 (extends de productes
INSERT INTO llibres (idproducte, nom, descripcio, preu_venda, ideditor, idcategoria)
VALUES (4, 'llibre4', 'desc4', '6.10', 1, 1);
-- insert col·leció (extends de productes)
INSERT INTO coleccions (idproducte, nom, descompte)
VALUES (3, 'col2','5.50');

