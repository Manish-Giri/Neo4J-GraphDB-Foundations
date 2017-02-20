//find length of any HAS_CONTACT relationship between keanu and tom - * indicates any number
MATCH (keanu:Person{name: "Keanu Reeves"})
MATCH (tom:Person{name: "Tom Cruise"})
MATCH path=((keanu)-[:HAS_CONTACT*]->(tom))
RETURN length(path)
LIMIT 1

//returns 213
