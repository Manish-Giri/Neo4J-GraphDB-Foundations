//Section 4 - exercise 1
MATCH (actor:Person)-[knows:HAS_CONTACT]->(friend:Person)
MATCH (friend)-[role:ACTED_IN]->(movie:Movie) 
WHERE actor.name = "Tom Hanks" AND friend.born >= 1960 AND role.earnings >= 10000000
RETURN friend.name AS ContactName, movie.title, friend.born AS Born, role.earnings AS Earnt
ORDER BY role.earnings DESC
