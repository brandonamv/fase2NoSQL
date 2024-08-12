//consulta 1

:param generos => ['Action', 'Adventure']

MATCH (j:Juego)-[:SU_GENERO]->(g:Genero)
WHERE g.name IN $generos
RETURN DISTINCT j

//consulta 2

:param nombreEmpresa => “”

MATCH (j:Juego)-[:DESARROLLADO_POR]->(e:Empresa)
WHERE e.name = $nombreEmpresa
RETURN j.name AS Juego, e.name AS Empresa

//consulta 3

:param n => 2

MATCH (j:Juego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN j.name AS Juego, numPlataformas AS TotalPlataformas

//consulta 4

:param n => 4

MATCH (j:Juego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN COUNT(j) AS TotalJuegos

//consulta 5

:param n => 7.5

MATCH (j:Juego)
WHERE j.rating > $n
RETURN j


//consulta6

:param etiquetas => ['Multiplayer', 'Singleplayer']
:param generos => ['Action', 'Adventure']

WITH $etiquetas AS etiquetas, $generos AS generos
MATCH (j:Juego)-[:SU_ETIQUETA]->(t:Tag)
WHERE t.name IN etiquetas
WITH j, COUNT(t) AS etiquetaCount
WHERE etiquetaCount = SIZE(etiquetas)
MATCH (j)-[:SU_GENERO]->(g:Género)
WHERE g.name IN generos
WITH j, etiquetaCount, COUNT(g) AS generoCount
WHERE generoCount = SIZE(generos)
RETURN j.name AS juego, etiquetaCount, generoCount


//consulta 7

:param generos => ['RPG', 'FPS']

WITH $generos AS generos
MATCH (j:Juego)-[:SU_GENERO]->(g:Género)
WHERE g.name IN generos
WITH AVG(j.rating) AS promedio
MATCH (j:Juego)-[:SU_GENERO]->(g:Género)
WHERE g.name IN generos
AND j.rating > promedio
RETURN j.name AS juego, j.rating AS rating
WITH j, COUNT(DISTINCT g) AS numGeneros, promedioCalificacion
WHERE numGeneros > $cantidadDeGeneros AND j.rating > promedioCalificacion
RETURN j.name AS nombre, j.rating AS calificacion, numGeneros
