//Section 8 - Exercise 2
//Revert changes from Ex 1

MATCH (actor:Rich)-[role:ACTED_IN]->(movie:Movie)
REMOVE actor:Rich, actor.total_earnings
RETURN actor
