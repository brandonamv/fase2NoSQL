CREATE (v0:Videojuego{name:"Breakfree",rate:8.267171276591853});
CREATE (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack",rate:7.048498320081182});
CREATE (v2:Videojuego{name:"The Chessmaster 2000",rate:6.136322348395529});
CREATE (v3:Videojuego{name:"Bass Avenger",rate:4.903371828962088});
CREATE (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007",rate:4.972170584942404});
CREATE (v5:Videojuego{name:"Camelot Warriors",rate:5.783216051579229});
CREATE (v6:Videojuego{name:"Super Spy Hunter",rate:7.054051847596064});
CREATE (v7:Videojuego{name:"Fritz 9: Play Chess",rate:6.885206476353658});
CREATE (v8:Videojuego{name:"The Real Deal 2",rate:4.291713392202949});
CREATE (v9:Videojuego{name:"Gothmog's Lair",rate:7.3325240346820415});
CREATE (v10:Videojuego{name:"Blade & Sword",rate:0.1988291530165287});
CREATE (v11:Videojuego{name:"Premier Manager 98",rate:5.834954678680995});
CREATE (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive",rate:4.418123459752838});
CREATE (v13:Videojuego{name:"Kampfgruppe",rate:4.002440912658354});
CREATE (v14:Videojuego{name:"EGA-Roids",rate:8.83007991317131});
CREATE (v15:Videojuego{name:"Sportfischen Professional",rate:3.8663283039077267});
CREATE (v16:Videojuego{name:"Aisle",rate:1.2082439957013569});
CREATE (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001",rate:9.280727797647387});
CREATE (v18:Videojuego{name:"Burntime",rate:0.09701483788385534});
CREATE (v19:Videojuego{name:"Land of Legends",rate:5.522810605159691});
CREATE (e0:Empresa{name:"Electronic Arts"});
CREATE (e1:Empresa{name:"The Hit Squad"});
CREATE (e2:Empresa{name:"Gremlin Interactive Ltd."});
CREATE (e3:Empresa{name:"Domark Software"});
CREATE (e4:Empresa{name:"Telegames, Inc."});
CREATE (e5:Empresa{name:"Software Storm, Inc."});
CREATE (e6:Empresa{name:"Alawar Entertainment, Inc."});
CREATE (e7:Empresa{name:"Kernel Kaput"});
CREATE (e8:Empresa{name:"The Software Toolworks"});
CREATE (e9:Empresa{name:"Software Country"});
CREATE (e10:Empresa{name:"Dro Soft"});
CREATE (e11:Empresa{name:"Simon & Schuster Interactive"});
CREATE (e12:Empresa{name:"Hypnotix, Inc."});
CREATE (e13:Empresa{name:"THQ"});
CREATE (e14:Empresa{name:"Yuke's Co. Ltd."});
CREATE (e15:Empresa{name:"Ariolasoft UK"});
CREATE (e16:Empresa{name:"Dinamic Software"});
CREATE (e17:Empresa{name:"Sunsoft"});
CREATE (e18:Empresa{name:"Tokai Engineering"});
CREATE (e19:Empresa{name:"Halycon Media GmbH & Co. KG"});
CREATE (p0:Plataforma{name:"Amiga"});
CREATE (p1:Plataforma{name:"Game Boy"});
CREATE (p2:Plataforma{name:"Game Boy Advance"});
CREATE (p3:Plataforma{name:"Game Gear"});
CREATE (p4:Plataforma{name:"Genesis"});
CREATE (p5:Plataforma{name:"Atari Lynx"});
CREATE (p6:Plataforma{name:"Sega Master System"});
CREATE (p7:Plataforma{name:"Super Nintendo Entertainment System"});
CREATE (p8:Plataforma{name:"Amstrad CPC"});
CREATE (p9:Plataforma{name:"Apple II"});
CREATE (p10:Plataforma{name:"Atari ST"});
CREATE (p11:Plataforma{name:"Commodore 64"});
CREATE (p12:Plataforma{name:"MSX"});
CREATE (p13:Plataforma{name:"ZX Spectrum"});
CREATE (p14:Plataforma{name:"Mac"});
CREATE (p15:Plataforma{name:"PlayStation Portable"});
CREATE (p16:Plataforma{name:"PlayStation 2"});
CREATE (p17:Plataforma{name:"Xbox 360"});
CREATE (p18:Plataforma{name:"Nintendo Entertainment System"});
CREATE (p19:Plataforma{name:"PlayStation"});
CREATE (t0:Etiqueta{name:"Abstract"});
CREATE (t1:Etiqueta{name:"Comedy"});
CREATE (t2:Etiqueta{name:"Espionage"});
CREATE (t3:Etiqueta{name:"Fantasy"});
CREATE (t4:Etiqueta{name:"Martial Arts"});
CREATE (t5:Etiqueta{name:"Management"});
CREATE (t6:Etiqueta{name:"Dating"});
CREATE (t7:Etiqueta{name:"World War II"});
CREATE (t8:Etiqueta{name:"Sci-Fi"});
CREATE (t9:Etiqueta{name:"Modern Military"});
CREATE (t10:Etiqueta{name:"Post-Apocalyptic"});
CREATE (g0:Genero{name:"Action"});
CREATE (g1:Genero{name:"Block-Breaking"});
CREATE (g2:Genero{name:"Strategy"});
CREATE (g3:Genero{name:"Trivia/Board Game"});
CREATE (g4:Genero{name:"Fishing"});
CREATE (g5:Genero{name:"Sports"});
CREATE (g6:Genero{name:"Wrestling"});
CREATE (g7:Genero{name:"Action-Adventure"});
CREATE (g8:Genero{name:"Vehicular Combat"});
CREATE (g9:Genero{name:"Text Adventure"});
CREATE (g10:Genero{name:"Role-Playing"});
CREATE (g11:Genero{name:"Soccer"});
CREATE (g12:Genero{name:"Driving/Racing"});
CREATE (g13:Genero{name:"Minigame Collection"});
CREATE (g14:Genero{name:"Simulation"});
CREATE (g15:Genero{name:"Shooter"});

MATCH (v0:Videojuego{name:"Breakfree"}), (t6:Etiqueta{name:"Dating"})
CREATE (v0)-[:SU_ETIQUETA]->(t6);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (t10:Etiqueta{name:"Post-Apocalyptic"})
CREATE (v1)-[:SU_ETIQUETA]->(t10);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (t8:Etiqueta{name:"Sci-Fi"})
CREATE (v2)-[:SU_ETIQUETA]->(t8);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (t2:Etiqueta{name:"Espionage"})
CREATE (v3)-[:SU_ETIQUETA]->(t2);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (t2:Etiqueta{name:"Espionage"})
CREATE (v4)-[:SU_ETIQUETA]->(t2);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (t3:Etiqueta{name:"Fantasy"})
CREATE (v5)-[:SU_ETIQUETA]->(t3);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (t1:Etiqueta{name:"Comedy"})
CREATE (v6)-[:SU_ETIQUETA]->(t1);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (t2:Etiqueta{name:"Espionage"})
CREATE (v7)-[:SU_ETIQUETA]->(t2);
MATCH (v8:Videojuego{name:"The Real Deal 2"}), (t6:Etiqueta{name:"Dating"})
CREATE (v8)-[:SU_ETIQUETA]->(t6);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (t7:Etiqueta{name:"World War II"})
CREATE (v9)-[:SU_ETIQUETA]->(t7);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (t10:Etiqueta{name:"Post-Apocalyptic"})
CREATE (v10)-[:SU_ETIQUETA]->(t10);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (t1:Etiqueta{name:"Comedy"})
CREATE (v11)-[:SU_ETIQUETA]->(t1);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (t0:Etiqueta{name:"Abstract"})
CREATE (v12)-[:SU_ETIQUETA]->(t0);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (t8:Etiqueta{name:"Sci-Fi"})
CREATE (v13)-[:SU_ETIQUETA]->(t8);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (t0:Etiqueta{name:"Abstract"})
CREATE (v14)-[:SU_ETIQUETA]->(t0);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (t7:Etiqueta{name:"World War II"})
CREATE (v15)-[:SU_ETIQUETA]->(t7);
MATCH (v16:Videojuego{name:"Aisle"}), (t2:Etiqueta{name:"Espionage"})
CREATE (v16)-[:SU_ETIQUETA]->(t2);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (t10:Etiqueta{name:"Post-Apocalyptic"})
CREATE (v17)-[:SU_ETIQUETA]->(t10);
MATCH (v18:Videojuego{name:"Burntime"}), (t5:Etiqueta{name:"Management"})
CREATE (v18)-[:SU_ETIQUETA]->(t5);
MATCH (v19:Videojuego{name:"Land of Legends"}), (t9:Etiqueta{name:"Modern Military"})
CREATE (v19)-[:SU_ETIQUETA]->(t9);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (t0:Etiqueta{name:"Abstract"})
CREATE (v7)-[:SU_ETIQUETA]->(t0);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (t1:Etiqueta{name:"Comedy"})
CREATE (v7)-[:SU_ETIQUETA]->(t1);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (t2:Etiqueta{name:"Espionage"})
CREATE (v2)-[:SU_ETIQUETA]->(t2);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (t3:Etiqueta{name:"Fantasy"})
CREATE (v11)-[:SU_ETIQUETA]->(t3);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (t4:Etiqueta{name:"Martial Arts"})
CREATE (v1)-[:SU_ETIQUETA]->(t4);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (t5:Etiqueta{name:"Management"})
CREATE (v4)-[:SU_ETIQUETA]->(t5);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (t6:Etiqueta{name:"Dating"})
CREATE (v15)-[:SU_ETIQUETA]->(t6);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (t7:Etiqueta{name:"World War II"})
CREATE (v13)-[:SU_ETIQUETA]->(t7);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (t8:Etiqueta{name:"Sci-Fi"})
CREATE (v13)-[:SU_ETIQUETA]->(t8);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (t9:Etiqueta{name:"Modern Military"})
CREATE (v17)-[:SU_ETIQUETA]->(t9);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (t10:Etiqueta{name:"Post-Apocalyptic"})
CREATE (v4)-[:SU_ETIQUETA]->(t10);

MATCH (v0:Videojuego{name:"Breakfree"}), (g9:Genero{name:"Text Adventure"})
CREATE (v0)-[:SU_GENERO]->(g9);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (g0:Genero{name:"Action"})
CREATE (v1)-[:SU_GENERO]->(g0);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (g15:Genero{name:"Shooter"})
CREATE (v2)-[:SU_GENERO]->(g15);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (g1:Genero{name:"Block-Breaking"})
CREATE (v3)-[:SU_GENERO]->(g1);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (g14:Genero{name:"Simulation"})
CREATE (v4)-[:SU_GENERO]->(g14);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (g0:Genero{name:"Action"})
CREATE (v5)-[:SU_GENERO]->(g0);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (g1:Genero{name:"Block-Breaking"})
CREATE (v6)-[:SU_GENERO]->(g1);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (g1:Genero{name:"Block-Breaking"})
CREATE (v7)-[:SU_GENERO]->(g1);
MATCH (v8:Videojuego{name:"The Real Deal 2"}), (g7:Genero{name:"Action-Adventure"})
CREATE (v8)-[:SU_GENERO]->(g7);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (g10:Genero{name:"Role-Playing"})
CREATE (v9)-[:SU_GENERO]->(g10);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (g6:Genero{name:"Wrestling"})
CREATE (v10)-[:SU_GENERO]->(g6);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (g15:Genero{name:"Shooter"})
CREATE (v11)-[:SU_GENERO]->(g15);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (g5:Genero{name:"Sports"})
CREATE (v12)-[:SU_GENERO]->(g5);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (g0:Genero{name:"Action"})
CREATE (v13)-[:SU_GENERO]->(g0);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (g15:Genero{name:"Shooter"})
CREATE (v14)-[:SU_GENERO]->(g15);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (g11:Genero{name:"Soccer"})
CREATE (v15)-[:SU_GENERO]->(g11);
MATCH (v16:Videojuego{name:"Aisle"}), (g4:Genero{name:"Fishing"})
CREATE (v16)-[:SU_GENERO]->(g4);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (g15:Genero{name:"Shooter"})
CREATE (v17)-[:SU_GENERO]->(g15);
MATCH (v18:Videojuego{name:"Burntime"}), (g15:Genero{name:"Shooter"})
CREATE (v18)-[:SU_GENERO]->(g15);
MATCH (v19:Videojuego{name:"Land of Legends"}), (g8:Genero{name:"Vehicular Combat"})
CREATE (v19)-[:SU_GENERO]->(g8);
MATCH (v0:Videojuego{name:"Breakfree"}), (g0:Genero{name:"Action"})
CREATE (v0)-[:SU_GENERO]->(g0);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (g1:Genero{name:"Block-Breaking"})
CREATE (v17)-[:SU_GENERO]->(g1);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (g2:Genero{name:"Strategy"})
CREATE (v10)-[:SU_GENERO]->(g2);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (g3:Genero{name:"Trivia/Board Game"})
CREATE (v17)-[:SU_GENERO]->(g3);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (g4:Genero{name:"Fishing"})
CREATE (v7)-[:SU_GENERO]->(g4);
MATCH (v19:Videojuego{name:"Land of Legends"}), (g5:Genero{name:"Sports"})
CREATE (v19)-[:SU_GENERO]->(g5);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (g6:Genero{name:"Wrestling"})
CREATE (v12)-[:SU_GENERO]->(g6);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (g7:Genero{name:"Action-Adventure"})
CREATE (v9)-[:SU_GENERO]->(g7);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (g8:Genero{name:"Vehicular Combat"})
CREATE (v2)-[:SU_GENERO]->(g8);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (g9:Genero{name:"Text Adventure"})
CREATE (v1)-[:SU_GENERO]->(g9);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (g10:Genero{name:"Role-Playing"})
CREATE (v9)-[:SU_GENERO]->(g10);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (g11:Genero{name:"Soccer"})
CREATE (v9)-[:SU_GENERO]->(g11);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (g12:Genero{name:"Driving/Racing"})
CREATE (v14)-[:SU_GENERO]->(g12);
MATCH (v0:Videojuego{name:"Breakfree"}), (g13:Genero{name:"Minigame Collection"})
CREATE (v0)-[:SU_GENERO]->(g13);
MATCH (v19:Videojuego{name:"Land of Legends"}), (g14:Genero{name:"Simulation"})
CREATE (v19)-[:SU_GENERO]->(g14);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (g15:Genero{name:"Shooter"})
CREATE (v3)-[:SU_GENERO]->(g15);

MATCH (v0:Videojuego{name:"Breakfree"}), (p14:Plataforma{name:"Mac"})
CREATE (v0)-[:SU_PLATAFORMA]->(p14);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (p3:Plataforma{name:"Game Gear"})
CREATE (v1)-[:SU_PLATAFORMA]->(p3);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (p5:Plataforma{name:"Atari Lynx"})
CREATE (v2)-[:SU_PLATAFORMA]->(p5);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (p13:Plataforma{name:"ZX Spectrum"})
CREATE (v3)-[:SU_PLATAFORMA]->(p13);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (p16:Plataforma{name:"PlayStation 2"})
CREATE (v4)-[:SU_PLATAFORMA]->(p16);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (p13:Plataforma{name:"ZX Spectrum"})
CREATE (v5)-[:SU_PLATAFORMA]->(p13);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (p13:Plataforma{name:"ZX Spectrum"})
CREATE (v6)-[:SU_PLATAFORMA]->(p13);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (p5:Plataforma{name:"Atari Lynx"})
CREATE (v7)-[:SU_PLATAFORMA]->(p5);
MATCH (v8:Videojuego{name:"The Real Deal 2"}), (p16:Plataforma{name:"PlayStation 2"})
CREATE (v8)-[:SU_PLATAFORMA]->(p16);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (p12:Plataforma{name:"MSX"})
CREATE (v9)-[:SU_PLATAFORMA]->(p12);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p15:Plataforma{name:"PlayStation Portable"})
CREATE (v10)-[:SU_PLATAFORMA]->(p15);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (p9:Plataforma{name:"Apple II"})
CREATE (v11)-[:SU_PLATAFORMA]->(p9);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (p6:Plataforma{name:"Sega Master System"})
CREATE (v12)-[:SU_PLATAFORMA]->(p6);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (p12:Plataforma{name:"MSX"})
CREATE (v13)-[:SU_PLATAFORMA]->(p12);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (p16:Plataforma{name:"PlayStation 2"})
CREATE (v14)-[:SU_PLATAFORMA]->(p16);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (p6:Plataforma{name:"Sega Master System"})
CREATE (v15)-[:SU_PLATAFORMA]->(p6);
MATCH (v16:Videojuego{name:"Aisle"}), (p10:Plataforma{name:"Atari ST"})
CREATE (v16)-[:SU_PLATAFORMA]->(p10);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (p15:Plataforma{name:"PlayStation Portable"})
CREATE (v17)-[:SU_PLATAFORMA]->(p15);
MATCH (v18:Videojuego{name:"Burntime"}), (p2:Plataforma{name:"Game Boy Advance"})
CREATE (v18)-[:SU_PLATAFORMA]->(p2);
MATCH (v19:Videojuego{name:"Land of Legends"}), (p3:Plataforma{name:"Game Gear"})
CREATE (v19)-[:SU_PLATAFORMA]->(p3);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (p0:Plataforma{name:"Amiga"})
CREATE (v7)-[:SU_PLATAFORMA]->(p0);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (p1:Plataforma{name:"Game Boy"})
CREATE (v13)-[:SU_PLATAFORMA]->(p1);
MATCH (v16:Videojuego{name:"Aisle"}), (p2:Plataforma{name:"Game Boy Advance"})
CREATE (v16)-[:SU_PLATAFORMA]->(p2);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p3:Plataforma{name:"Game Gear"})
CREATE (v10)-[:SU_PLATAFORMA]->(p3);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (p4:Plataforma{name:"Genesis"})
CREATE (v12)-[:SU_PLATAFORMA]->(p4);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (p5:Plataforma{name:"Atari Lynx"})
CREATE (v4)-[:SU_PLATAFORMA]->(p5);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p6:Plataforma{name:"Sega Master System"})
CREATE (v10)-[:SU_PLATAFORMA]->(p6);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p7:Plataforma{name:"Super Nintendo Entertainment System"})
CREATE (v10)-[:SU_PLATAFORMA]->(p7);
MATCH (v19:Videojuego{name:"Land of Legends"}), (p8:Plataforma{name:"Amstrad CPC"})
CREATE (v19)-[:SU_PLATAFORMA]->(p8);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (p9:Plataforma{name:"Apple II"})
CREATE (v6)-[:SU_PLATAFORMA]->(p9);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (p10:Plataforma{name:"Atari ST"})
CREATE (v2)-[:SU_PLATAFORMA]->(p10);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (p11:Plataforma{name:"Commodore 64"})
CREATE (v13)-[:SU_PLATAFORMA]->(p11);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p12:Plataforma{name:"MSX"})
CREATE (v10)-[:SU_PLATAFORMA]->(p12);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (p13:Plataforma{name:"ZX Spectrum"})
CREATE (v4)-[:SU_PLATAFORMA]->(p13);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (p14:Plataforma{name:"Mac"})
CREATE (v14)-[:SU_PLATAFORMA]->(p14);
MATCH (v18:Videojuego{name:"Burntime"}), (p15:Plataforma{name:"PlayStation Portable"})
CREATE (v18)-[:SU_PLATAFORMA]->(p15);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (p16:Plataforma{name:"PlayStation 2"})
CREATE (v5)-[:SU_PLATAFORMA]->(p16);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (p17:Plataforma{name:"Xbox 360"})
CREATE (v7)-[:SU_PLATAFORMA]->(p17);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (p18:Plataforma{name:"Nintendo Entertainment System"})
CREATE (v6)-[:SU_PLATAFORMA]->(p18);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (p19:Plataforma{name:"PlayStation"})
CREATE (v10)-[:SU_PLATAFORMA]->(p19);

MATCH (v0:Videojuego{name:"Breakfree"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v0)-[:DESARROLLADO_POR]->(e15);
MATCH (v1:Videojuego{name:"Hyperballoid Deluxe: Survival Pack"}), (e2:Empresa{name:"Gremlin Interactive Ltd."})
CREATE (v1)-[:DESARROLLADO_POR]->(e2);
MATCH (v2:Videojuego{name:"The Chessmaster 2000"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v2)-[:DESARROLLADO_POR]->(e15);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (e1:Empresa{name:"The Hit Squad"})
CREATE (v3)-[:DESARROLLADO_POR]->(e1);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (e16:Empresa{name:"Dinamic Software"})
CREATE (v4)-[:DESARROLLADO_POR]->(e16);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (e13:Empresa{name:"THQ"})
CREATE (v5)-[:DESARROLLADO_POR]->(e13);
MATCH (v6:Videojuego{name:"Super Spy Hunter"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v6)-[:DESARROLLADO_POR]->(e15);
MATCH (v7:Videojuego{name:"Fritz 9: Play Chess"}), (e5:Empresa{name:"Software Storm, Inc."})
CREATE (v7)-[:DESARROLLADO_POR]->(e5);
MATCH (v8:Videojuego{name:"The Real Deal 2"}), (e5:Empresa{name:"Software Storm, Inc."})
CREATE (v8)-[:DESARROLLADO_POR]->(e5);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (e4:Empresa{name:"Telegames, Inc."})
CREATE (v9)-[:DESARROLLADO_POR]->(e4);
MATCH (v10:Videojuego{name:"Blade & Sword"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v10)-[:DESARROLLADO_POR]->(e15);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v11)-[:DESARROLLADO_POR]->(e15);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (e19:Empresa{name:"Halycon Media GmbH & Co. KG"})
CREATE (v12)-[:DESARROLLADO_POR]->(e19);
MATCH (v13:Videojuego{name:"Kampfgruppe"}), (e19:Empresa{name:"Halycon Media GmbH & Co. KG"})
CREATE (v13)-[:DESARROLLADO_POR]->(e19);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (e9:Empresa{name:"Software Country"})
CREATE (v14)-[:DESARROLLADO_POR]->(e9);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (e17:Empresa{name:"Sunsoft"})
CREATE (v15)-[:DESARROLLADO_POR]->(e17);
MATCH (v16:Videojuego{name:"Aisle"}), (e0:Empresa{name:"Electronic Arts"})
CREATE (v16)-[:DESARROLLADO_POR]->(e0);
MATCH (v17:Videojuego{name:"Metal Slug X: Super Vehicle - 001"}), (e4:Empresa{name:"Telegames, Inc."})
CREATE (v17)-[:DESARROLLADO_POR]->(e4);
MATCH (v18:Videojuego{name:"Burntime"}), (e12:Empresa{name:"Hypnotix, Inc."})
CREATE (v18)-[:DESARROLLADO_POR]->(e12);
MATCH (v19:Videojuego{name:"Land of Legends"}), (e16:Empresa{name:"Dinamic Software"})
CREATE (v19)-[:DESARROLLADO_POR]->(e16);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (e0:Empresa{name:"Electronic Arts"})
CREATE (v4)-[:DESARROLLADO_POR]->(e0);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (e1:Empresa{name:"The Hit Squad"})
CREATE (v5)-[:DESARROLLADO_POR]->(e1);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (e2:Empresa{name:"Gremlin Interactive Ltd."})
CREATE (v15)-[:DESARROLLADO_POR]->(e2);
MATCH (v11:Videojuego{name:"Premier Manager 98"}), (e3:Empresa{name:"Domark Software"})
CREATE (v11)-[:DESARROLLADO_POR]->(e3);
MATCH (v0:Videojuego{name:"Breakfree"}), (e4:Empresa{name:"Telegames, Inc."})
CREATE (v0)-[:DESARROLLADO_POR]->(e4);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (e5:Empresa{name:"Software Storm, Inc."})
CREATE (v14)-[:DESARROLLADO_POR]->(e5);
MATCH (v3:Videojuego{name:"Bass Avenger"}), (e6:Empresa{name:"Alawar Entertainment, Inc."})
CREATE (v3)-[:DESARROLLADO_POR]->(e6);
MATCH (v16:Videojuego{name:"Aisle"}), (e7:Empresa{name:"Kernel Kaput"})
CREATE (v16)-[:DESARROLLADO_POR]->(e7);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (e8:Empresa{name:"The Software Toolworks"})
CREATE (v14)-[:DESARROLLADO_POR]->(e8);
MATCH (v9:Videojuego{name:"Gothmog's Lair"}), (e9:Empresa{name:"Software Country"})
CREATE (v9)-[:DESARROLLADO_POR]->(e9);
MATCH (v15:Videojuego{name:"Sportfischen Professional"}), (e10:Empresa{name:"Dro Soft"})
CREATE (v15)-[:DESARROLLADO_POR]->(e10);
MATCH (v16:Videojuego{name:"Aisle"}), (e11:Empresa{name:"Simon & Schuster Interactive"})
CREATE (v16)-[:DESARROLLADO_POR]->(e11);
MATCH (v14:Videojuego{name:"EGA-Roids"}), (e12:Empresa{name:"Hypnotix, Inc."})
CREATE (v14)-[:DESARROLLADO_POR]->(e12);
MATCH (v5:Videojuego{name:"Camelot Warriors"}), (e13:Empresa{name:"THQ"})
CREATE (v5)-[:DESARROLLADO_POR]->(e13);
MATCH (v19:Videojuego{name:"Land of Legends"}), (e14:Empresa{name:"Yuke's Co. Ltd."})
CREATE (v19)-[:DESARROLLADO_POR]->(e14);
MATCH (v12:Videojuego{name:"Mary-Kate and Ashley: Sweet 16: Licensed to Drive"}), (e15:Empresa{name:"Ariolasoft UK"})
CREATE (v12)-[:DESARROLLADO_POR]->(e15);
MATCH (v8:Videojuego{name:"The Real Deal 2"}), (e16:Empresa{name:"Dinamic Software"})
CREATE (v8)-[:DESARROLLADO_POR]->(e16);
MATCH (v4:Videojuego{name:"WWE SmackDown! vs. RAW 2007"}), (e17:Empresa{name:"Sunsoft"})
CREATE (v4)-[:DESARROLLADO_POR]->(e17);
MATCH (v19:Videojuego{name:"Land of Legends"}), (e18:Empresa{name:"Tokai Engineering"})
CREATE (v19)-[:DESARROLLADO_POR]->(e18);
MATCH (v16:Videojuego{name:"Aisle"}), (e19:Empresa{name:"Halycon Media GmbH & Co. KG"})
CREATE (v16)-[:DESARROLLADO_POR]->(e19);