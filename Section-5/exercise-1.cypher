
//highest paid actor
//FIND the actor with the highest average earnings - round their earnings and display the actor's name in uppercase

MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
RETURN upper(actor.name) AS Name, round(avg(role.earnings)) AS AvgEarning
ORDER BY AvgEarning DESC
LIMIT 1
