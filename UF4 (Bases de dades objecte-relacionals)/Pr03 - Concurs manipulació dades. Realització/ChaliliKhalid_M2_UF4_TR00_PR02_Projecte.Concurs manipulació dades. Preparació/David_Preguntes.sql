-- 1. Muestra los libros de la coleccion 'Juventud'	 	 	
SELECT *
FROM llibres
INNER JOIN coleccions 
ON llibres.idproducte = coleccions.idproducte
WHERE coleccions.nom = 'Juventud';

-- 2. Añade un nuevo tipo de categoria llamado 'novela negra' y modifica el libro 'Mi primera 
--    punalada' para que sea de esta categoria.
INSERT INTO Categories VALUES (3, 'novela negra');
UPDATE llibres
SET idcategoria = 3;

-- 3. Añade el libro 'Teo va a la trena' con el ideditor=1 y añadelo a la coleccion 'Juventud'	 	
INSERT INTO Llibres VALUES (3, 'Mi primera punalada', 'libro para adolescentes', 6.00, 1, 3);

-- 4. El editor llamado Juan ahora vive en Badalona, actualizala