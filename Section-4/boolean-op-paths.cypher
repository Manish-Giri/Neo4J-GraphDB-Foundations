//Boolean Operator - Paths
MATCH (person:Person)-->(movie:Movie)
WHERE movie.title = "Unforgiven" AND NOT (person)-[:DIRECTED]->(movie)
RETURN person, movie
