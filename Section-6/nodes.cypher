//CREATE nodes
CREATE (cat:Cat:Animal) RETURN cat

//CREATE nodes with properties
CREATE (cat:Cat:Animal{sound:"meow", eats:"birds"})
RETURN cat
