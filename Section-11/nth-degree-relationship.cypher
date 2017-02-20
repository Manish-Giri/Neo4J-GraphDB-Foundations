//Nth-Degree Relationships
MATCH (keanu:Person{name: "Keanu Reeves"})-[rel:HAS_CONTACT*2]->(contact)
RETURN keanu, rel, contact
LIMIT 2
