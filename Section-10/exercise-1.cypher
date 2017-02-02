//Track movie viewings
//Create a query to be run every time Keeanu Reeves watches "Top Gun". The query should ensure a "VIEWED" relationship 
//exists between Keeanu and Top Gun, and should keep track of how many times the movie was watched
//Section 10 - Exercise 1
MERGE (keanu:Person{name:"Keanu Reeves"})
MERGE (topGun:Movie{title:"Top Gun"})
MERGE (keanu)-[role:VIEWED]->(topGun)
ON CREATE SET role.watched = 0
ON MATCH SET role.watched = role.watched + 1
RETURN keanu, role, topGun
