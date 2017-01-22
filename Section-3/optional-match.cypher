// OPTIONAL MATCH
// get title of movie and optionally name of director if that director has
// directed the movie and has also acted in it
match (movie:Movie)
optional match (director:Person)-[:DIRECTED]->(movie)<-[:ACTED_IN]-(director)
return movie.title, director.name
