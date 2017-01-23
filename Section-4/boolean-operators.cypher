//Boolean Operators - IN
MATCH (someone:Person)
WHERE someone.born IN [1958, 1959, 1960]
RETURN someone

//Boolean Operators - OR
MATCH (someone:Person)
WHERE someone.born = 1956 OR someone.born = 1958
RETURN someone

//Boolean Operators - AND
MATCH (someone:Person)
WHERE someone.born > 1950 AND someone.born < 1960
RETURN someone

//Boolean Operators - NOT
MATCH (someone:Person)
WHERE NOT (someone.born >= 1950 AND someone.born < 1970)
RETURN someone

//Boolean Operators - NOT
MATCH (someone:Person)
WHERE NOT someone.born IN [1950,1956,1958,1960]
RETURN someone
LIMIT 20
