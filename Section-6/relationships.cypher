//CREATE reltionships
CREATE (cat:Cat{name:"Fluffy"})-[:GROOMS]->(cat)


//CREATE reltionship properties
CREATE (cat:Cat{name:"Fluffy"})-[:GROOMS{period:"Daily"}]->(cat)


//Create Relationships in existing nodes
MATCH (joe:Bunny), (sarah:Bunny)
CREATE (joe)-[:LIKES]->(sarah), (joe)<-[:LIKES]-(sarah)
RETURN joe, sarah

//CREATE unique relationships only
//Create Relationships in existing nodes
CREATE (joe:Bunny:Animal{name:"Joe"}), (sarah:Bunny:Animal{name:"Sarah"})
CREATE UNIQUE (joe)-[:LIKES]->(sarah), (joe)<-[:LIKES]-(sarah)
RETURN joe, sarah


//Create new nodes and relationships with existing nodes
MATCH (joe:Bunny:Animal{name:"Joe"})
CREATE UNIQUE (joe)-[:LIKES]->(andrew:Fox:Animal{name:"Andrew"})
RETURN joe, andrew
