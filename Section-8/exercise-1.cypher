//Give all actors that have earnt over $50 mil total from movies a label of "RICH". Also set a total_earnings property on RICH actors to indicate their total earnings
//Section 8 - Exercise 1
MATCH (actor:Person)-[role:ACTED_IN]->(movie:Movie)
WITH actor, sum(role.earnings) AS Income
WHERE Income > 50000000
SET actor:Rich, actor.total_earnings = Income
RETURN actor.name, Income
