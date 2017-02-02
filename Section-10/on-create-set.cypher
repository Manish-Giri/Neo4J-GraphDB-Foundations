//ON CREATE SET - sets properties on nodes/rel, but only when pattern is first created
//On Create Set
MERGE (location:Location{name:"San Francisco"})
ON CREATE SET location.created_at = timestamp(), location.created_by = "Manish"
RETURN location

//this doesn't create any new property
MERGE (location:Location{name:"San Francisco"})
ON CREATE SET location.another_property="123"
RETURN location
