//Section-3 Exercise-2
// get names of a person who knows another person along with name of movie
// that they have directed, if they've directed one

MATCH (a:Person)-[:HAS_CONTACT]->(b:Person)
OPTIONAL MATCH (b)-[:DIRECTED]->(movie:Movie)
return a.name, b.name, movie.title
