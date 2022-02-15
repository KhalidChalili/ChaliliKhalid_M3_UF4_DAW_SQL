
-- Añadmos relacion 1 n* en la tabla coleccions_llibres varios inserts.
INSERT INTO coleccions_llibres (idllibre, idcoleccio)
VALUES (1, 3), (2, 3);


-- búsqueda de libros con un precio máximo de 2 €.
SELECT * FROM llibres 
WHERE preu_venda <= '2.00';

-- muestra dos filas nom y descripció de la tabla del editor con id 1
SELECT nom, descripcio 
FROM llibres
WHERE ideditor = 1;

-- Muestra dos filas, nombre y descripción filtrando el nombre por 'editor1'
SELECT nom, descripcio
FROM llibres
INNER JOIN editors
ON llibres.ideditor = editors.ideditor
WHERE editor.nom == 'editor1';

-- Muestra la cantidad de libros que tiene un editor de la categoría 'libroscat1' y ordenalo de forma ascendiente
SELECT editors.nom, COUNT(*) "Número de libros"
FROM editors INNER JOIN llibres ON editors.ideditor = llibres.ideditor
GROUP BY editors.nom
ORDER BY COUNT(*);


-- Muestra los editores que tengan los libros más baratos de 5 €
SELECT editors.nom FROM editors
INNER JOIN Llibres on editors.ideditor = llibres.ideditor
WHERE llibres.preu_venda <= 5;
