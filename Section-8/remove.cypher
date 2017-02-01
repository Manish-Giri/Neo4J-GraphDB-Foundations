//Remove node labels
MATCH (tom:Person{name:"Tom Hanks"})
REMOVE tom:Handsome
RETURN tom

//Remove node properties
MATCH (tom:Person{name:"Tom Hanks"})
REMOVE tom.sex
RETURN tom
