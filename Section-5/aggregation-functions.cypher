//COUNT 
MATCH (tom:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE tom.name = "Tom Hanks"
RETURN COUNT(movie)

//SUM
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE actor.name = "Tom Hanks" 
RETURN SUM(role.earnings) AS Income