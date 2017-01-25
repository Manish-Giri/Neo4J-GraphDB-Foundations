//Distinct results
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WHERE role.earnings >= 10000000
RETURN DISTINCT actor.name 
ORDER BY actor.name
