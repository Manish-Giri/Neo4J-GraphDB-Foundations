//Section 11 - Exercise 1
MATCH (matrixActors:Person)-[role1:ACTED_IN]->(matrix:Movie{title:"The Matrix"})
MATCH (topgunActors:Person)-[role2:ACTED_IN]->(topGun:Movie{title:"Top Gun"})
MATCH path=shortestPath((matrixActors)-[*..20]->(topgunActors))
RETURN path, matrix, topGun
LIMIT 1
