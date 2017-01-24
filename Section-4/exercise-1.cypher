//Section 4 - exercise 1
MATCH (actor:Person)-[knows:HAS_CONTACT]->(friend:Person)
MATCH (friend)-[role:ACTED_IN]->(movie:Movie) 
WHERE actor.name = "Tom Hanks" AND friend.born >= 1960 AND role.earnings >= 10000000
RETURN friend.name AS Name, movie.title, friend.born AS Year, role.earnings AS EARNT 
ORDER BY role.earnings DESC