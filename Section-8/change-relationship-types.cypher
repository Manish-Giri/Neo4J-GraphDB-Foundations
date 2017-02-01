//Change Relationship Types
MATCH (joe:Bunny{name:"Joe"})<-[old:LIKES]-(zoe:Bunny{name:"Zoe"})
CREATE (zoe)-[new:HATES]->(joe)
DELETE old
RETURN joe, zoe

//copy properties from old relationship to new relationship type
MATCH (joe:Bunny{name:"Joe"})<-[old:HATES]-(zoe:Bunny{name:"Zoe"})
CREATE (zoe)-[new:HATES_LOTS]->(joe)
SET new = old
DELETE old
RETURN joe, zoe
