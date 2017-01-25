//COUNT 
MATCH (tom:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE tom.name = "Tom Hanks"
RETURN COUNT(movie)

//SUM
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE actor.name = "Tom Hanks" 
RETURN SUM(role.earnings) AS Income

//Aggregate Functions
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE actor.name = "Tom Hanks" 
RETURN COUNT(movie) AS Count, SUM(role.earnings) AS Total, AVG(role.earnings) AS Average,
MIN(role.earnings) AS Minimum, MAX(role.earnings) AS Maximum