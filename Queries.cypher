//consulta 1

:param generos => ['Block-Breaking', 'Shooter']

MATCH (v:Videojuego)-[:SU_GENERO]->(g:Genero)
WITH v, COLLECT(g.name) AS genres
WHERE ALL(genre IN $generos WHERE genre IN genres)
RETURN v.name AS Juego, genres

//consulta 2

:param nombreEmpresa => "Ariolasoft UK"

MATCH (j:Videojuego)-[:DESARROLLADO_POR]->(e:Empresa)
WHERE e.name = $nombreEmpresa
RETURN j.name AS Videojuego, e.name AS Empresa

//consulta 3

:param n => 2

MATCH (j:Videojuego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN j.name AS Videojuego, numPlataformas AS TotalPlataformas

//consulta 4

:param n => 4

MATCH (j:Videojuego)-[:SU_PLATAFORMA]->(p:Plataforma)
WITH j, COUNT(p) AS numPlataformas
WHERE numPlataformas > $n
RETURN COUNT(j) AS TotalJuegos

//consulta 5

:param n => 7.5

MATCH (j:Videojuego)
WHERE j.rate > $n
RETURN j


//consulta6

:param etiquetas => ['Sci-Fi', 'World War II']
:param generos => ['Action', 'Text Adventure']

MATCH (j:Videojuego)-[:SU_ETIQUETA]->(t:Etiqueta)
WHERE t.name IN $etiquetas
MATCH (j)-[:SU_GENERO]->(g:Genero)
WHERE g.name IN $generos
RETURN DISTINCT(j.name)


//consulta 7

:param generos => ['Shooter', 'Action']

MATCH (j:Videojuego)-[:SU_GENERO]->(g:Genero)
WHERE g.name IN $generos
WITH AVG(j.rate) AS promedio
MATCH (j:Videojuego)-[:SU_GENERO]->(g:Genero)
WHERE g.name IN $generos AND j.rate > promedio
RETURN DISTINCT(j.name) AS Videojuego, j.rate AS rating 
