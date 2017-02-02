//Merge - the pattern is matched with the current info, if not found, it is created
// if found, it is just returned

MERGE (lily:Person{name:"Lily James"})
MERGE (movie:Movie{title:"Pride and Prejudice and Zombies" })
MERGE (lily)-[role:ACTED_IN]->(movie)
SET lily.born = 1989, role.earnings=900000, role.roles=['Elizabeth Bennet']
RETURN lily, movie
