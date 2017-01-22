//MATCH Relationships
// get 10 instances of the pattern where a person has either acted in a movie or directed the movie
MATCH (actor:Person)-[rel:ACTED_IN | DIRECTED]->(movie:Movie) RETURN actor, rel, movie limit 10
