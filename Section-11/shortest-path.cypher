//Shortest Path - returns shortest path between all possible paths between the nodes provided
MATCH (keanu:Person{name: "Keanu Reeves"})
MATCH (tom:Person{name: "Tom Cruise"})
MATCH path=shortestPath((keanu)-[:HAS_CONTACT*..9]->(tom))
RETURN path, length(path)

//length is 2

//All Shortest Paths - if multiple instances of shortest path (length 2) exist, this will return all of them
MATCH (keanu:Person{name: "Keanu Reeves"})
MATCH (tom:Person{name: "Tom Cruise"})
MATCH path=allShortestPaths((keanu)-[:HAS_CONTACT*..9]->(tom))
RETURN path, length(path)

//returns 5 rows of length 2
