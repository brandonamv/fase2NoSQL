//Estructura
// Crear nodos de tipo Juego
CREATE (j1:Juego {id: 1, name: "Need for speed", release_date: date("2003-06-01"), rating: 3.5});
CREATE (j2:Juego {id: 2, name: "Adventure Word", release_date: date("2015-04-15"), original_game_rating: 4.2});
CREATE (j3:Juego {id: 3, name: "The last adventure", release_date: date("2011-11-20"), rating: 3.8});

// Crear nodos de tipo Género
CREATE (g1:Genero {name: "Action"});
CREATE (g2:Genero {name: "Adventure"});
CREATE (g3:Genero {name: "Puzzle"});

// Crear nodos de tipo Empresa
CREATE (e1:Empresa {id: 1, name: "Nintendo"});
CREATE (e2:Empresa {id: 2, name: "Activision"});
CREATE (e3:Empresa {id: 3, name: "Ubisoft"});

// Crear nodos de tipo Plataforma
CREATE (p1:Plataforma {id: 1, name: "Nintendo Switch"});
CREATE (p2:Plataforma {id: 2, name: "PC"});
CREATE (p3:Plataforma {id: 3, name: "PlayStation 5"});

// Crear nodos de tipo Tag
CREATE (t1:Tag {name: "Multiplayer"});
CREATE (t2:Tag {name: "RPG"});
CREATE (t3:Tag {name: "Open World"});

//RELACIONES

// Relacionar Juegos con Empresas (Desarrolladores)
MATCH (j:Juego {id: 1}), (e:Empresa {id: 1})
CREATE (j)-[:DEVELOPER]->(e);

MATCH (j:Juego {id: 2}), (e:Empresa {id: 2})
CREATE (j)-[:DEVELOPER]->(e);

MATCH (j:Juego {id: 3}), (e:Empresa {id: 3})
CREATE (j)-[:DEVELOPER]->(e);

// Relacionar Juegos con Plataformas (Disponibilidad)
MATCH (j:Juego {id: 1}), (p:Plataforma {id: 1})
CREATE (j)-[:AVAILABLE_ON]->(p);

MATCH (j:Juego {id: 2}), (p:Plataforma {id: 2})
CREATE (j)-[:AVAILABLE_ON]->(p);

MATCH (j:Juego {id: 3}), (p:Plataforma {id: 3})
CREATE (j)-[:AVAILABLE_ON]->(p);

// Relacionar Juegos con Géneros (Categorías)
MATCH (j:Juego {id: 1}), (g:Genero {name: "Action"})
CREATE (j)-[:HAS_GENRE]->(g);

MATCH (j:Juego {id: 2}), (g:Genero {name: "Adventure"})
CREATE (j)-[:HAS_GENRE]->(g);

MATCH (j:Juego {id: 3}), (g:Genero {name: "Adventure"})
CREATE (j)-[:HAS_GENRE]->(g);

MATCH (j:Juego {id: 3}), (g:Genero {name: "Puzzle"})
CREATE (j)-[:HAS_GENRE]->(g);

// Relacionar Juegos con Tags (Etiquetas)
MATCH (j:Juego {id: 1}), (t:Tag {name: "Multiplayer"})
CREATE (j)-[:TAGGED_WITH]->(t);

MATCH (j:Juego {id: 2}), (t:Tag {name: "RPG"})
CREATE (j)-[:TAGGED_WITH]->(t);

MATCH (j:Juego {id: 3}), (t:Tag {name: "Open World"})
CREATE (j)-[:TAGGED_WITH]->(t);
