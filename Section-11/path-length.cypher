//find length of any HAS_CONTACT relationship between keanu and tom - * indicates any number
MATCH (keanu:Person{name: "Keanu Reeves"})
MATCH (tom:Person{name: "Tom Cruise"})
MATCH path=((keanu)-[:HAS_CONTACT*]->(tom))
RETURN length(path)
LIMIT 1

//returns 213

//this limits the degree of HAS_CONTACT relationship to max number (9)
MATCH (keanu:Person{name: "Keanu Reeves"})
MATCH (tom:Person{name: "Tom Cruise"})
MATCH path=((keanu)-[:HAS_CONTACT*..9]->(tom))
RETURN length(path)
LIMIT 1
