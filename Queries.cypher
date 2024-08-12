MATCH (j:Juego)-[:SU_GENERO]->(g:Genero)
WHERE g.name IN ["Action", "Adventure"]
WITH j, COLLECT(g.name) AS genres
WHERE ALL(genre IN ["Action", "Adventure"] WHERE genre IN genres)
RETURN j.name AS Juego, genres


MATCH (j:Juego)-[:DESARROLLADO_POR]->(e:Empresa)
WHERE e.name = $nombreEmpresa
RETURN j.name AS Juego, e.name AS Empresa
LIMIT $numeroJuegos


:param n => 2

MATCH (j:Juego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN j.name AS Juego, numPlataformas AS TotalPlataformas


:param n => 4

MATCH (j:Juego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN COUNT(j) AS TotalJuegos


:param n => 7.5

MATCH (j:Juego)
WHERE j.rating > $n
RETURN j



:param etiquetas => ['Multiplayer', 'Singleplayer']
:param generos => ['Action', 'Adventure']

MATCH (j:Juego)
OPTIONAL MATCH (j)-[:SU_ETIQUETA]->(t:Etiqueta)
OPTIONAL MATCH (j)-[:SU_GENERO]->(g:Género)
WHERE t.name IN $etiquetas AND g.name IN $generos
WITH j, COUNT(DISTINCT t) AS etiquetasCount, COUNT(DISTINCT g) AS generosCount
WHERE etiquetasCount = size($etiquetas) AND generosCount = size($generos)
RETURN j


:param generos => ['RPG', 'FPS']
:param cantidadDeGeneros => 3

MATCH (j:Juego)-[:SU_GENERO]->(g:Género)
WHERE g.name IN $generos
WITH AVG(j.rating) AS promedioCalificacion

MATCH (j:Juego)-[:SU_GENERO]->(g:Género)
WITH j, COUNT(DISTINCT g) AS numGeneros, promedioCalificacion
WHERE numGeneros > $cantidadDeGeneros AND j.rating > promedioCalificacion
RETURN j.name AS nombre, j.rating AS calificacion, numGeneros
