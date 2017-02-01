//Remove all HAS_CONTACT relationships to Tom Hanks

MATCH (tom:Person{name: "Tom Hanks"}), (others:Person)-[rel:HAS_CONTACT]->(tom)
DELETE rel
