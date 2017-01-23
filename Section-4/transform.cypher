//Transform - ORDER BY
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE movie.title = "Top Gun"
RETURN actor.name, role.earnings
ORDER BY role.earnings DESC

//Transform - ORDER BY WITH ALIAS
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE movie.title = "Top Gun"
RETURN actor.name AS Name, role.earnings AS Earnt
ORDER BY role.earnings DESC
