//Section 6 - Exercise 1

//note - check if movie/director and relationship exists before creating nodes

MATCH (director:Person)
WHERE director.name =~ "(?i)quentin.*"
RETURN director

MATCH (movie:Movie)
WHERE movie.title =~ "(?i)The hateful.*"
RETURN movie


CREATE(movie:Movie{title:"The Hateful Eight"}), (director:Person{name:"Quentin Tarantino"})
CREATE UNIQUE (director)-[role:DIRECTED]->(movie)
RETURN movie, role, director

//Exercise 2 

//create the zoe node
CREATE(zoe:Person{name:"Zoe Bell", born:1978})
RETURN zoe

//find the zoe node, quentin node, hateful eight node
MATCH(zoe:Person), (quentin:Person), (hateful:Movie) 
WHERE zoe.name =~"(?i)zoe.*" AND quentin.name =~"(?i)quentin.*" AND hateful.title =~"(?i)the hateful.*"
RETURN zoe, quentin, hateful


//match the nodes and create the relationships between them
MATCH(zoe:Person), (quentin:Person), (hateful:Movie) 
WHERE zoe.name =~"(?i)zoe.*" AND quentin.name =~"(?i)quentin.*" AND hateful.title =~"(?i)the hateful.*"
CREATE UNIQUE (quentin)-[:HAS_CONTACT]->(zoe)-[:ACTED_IN{earnings:1000000}]->(hateful)
RETURN zoe, quentin, hateful

