// WHERE and AND clause
MATCH (tom:Person)
WHERE tom.name = "Tom Hanks" AND tom.born = 1956
RETURN tom
