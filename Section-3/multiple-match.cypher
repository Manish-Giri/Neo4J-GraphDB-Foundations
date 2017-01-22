// Multiple match statements
match (movie:Movie)
match (director:Person)-[:DIRECTED]->(movie)
match (director)-[:ACTED_IN]->(movie)
return movie.title, director.name
