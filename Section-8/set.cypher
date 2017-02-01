//Set node properties
MATCH (tom:Person{name:"Tom Hanks"})
SET tom.sex = "Male"
RETURN tom

//Set node labels
MATCH (tom:Person{name:"Tom Hanks"})
SET tom:Handsome
RETURN tom
