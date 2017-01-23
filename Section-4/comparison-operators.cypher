//Comparison Operators >
MATCH (someone:Person)
WHERE someone.born > 1956
RETURN someone
LIMIT 15

//Comparison Operators =
MATCH (someone:Person)
WHERE someone.born = 1956
RETURN someone

// <>
MATCH (someone:Person)
WHERE someone.born <> 1956
RETURN someone
LIMIT 20

// comparison operators works for strings too
MATCH (someone:Person)
WHERE someone.name >= "T"
RETURN someone
LIMIT 20

//people whose name starts with T only
MATCH (someone:Person)
WHERE someone.name >= "T" AND someone.name < "U"
RETURN someone
LIMIT 20
