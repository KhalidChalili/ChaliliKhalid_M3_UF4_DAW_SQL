
--insert cliente
INSERT INTO client (idpersona, nom, dni, adreca, telefons, enviarPublicitat)
VALUES (1,'nomp','2342433E',ROW​('Badia del Vallès','Barcelona','08214','C\Mallorca s/n'), ​ARRAY['937101010','699889977'], true);

--insert cliente
INSERT INTO client (idpersona, nom, dni, adreca, telefons, enviarPublicitat)
VALUES (2,'nomp','2342433E',ROW('Badia del Vallès','Barcelona','08214','C\Mallorca s/n'), ARRAY['937101010','699889977'], true);

--insert proveidor
INSERT INTO proveidor (idpersona, nom, dni, adreca, telefons, descompteProntoPago)
VALUES (2,'nomprov','2342433E',ROW('Badia del Vallès-prov','Barcelonaprov','08214','C\Mallorca s/n'), ARRAY['99999999','699889977'], true);

--insert producte 1
INSERT INTO producte (idProducte, preuVenda, nom, dataInici, dataFinal, stock, idPersona)
VALUES (1, 2.1, 'nomprod1', '2016-06-23', '2020-06-23', 5, 2);
--insert producte 3
INSERT INTO producte (idProducte, preuVenda, nom, dataInici, dataFinal, stock, idPersona)
VALUES (3, 2.1, 'nomprod3', '2016-06-23', '2020-06-23', 3, 2);

--insert pack
INSERT INTO pack (idProducte, preuVenda, nom, dataInici, dataFinal, descompte)
VALUES (2, 2.1, 'nompack1', '2016-06-23', '2020-06-23', 5);

--insert de pack 2 - prod1
INSERT INTO packProducte (idPack, idProducte)
VALUES (2, 1);


--insert de pack 3 - prod3
INSERT INTO packProducte (idPack, idProducte)
VALUES (2, 3);