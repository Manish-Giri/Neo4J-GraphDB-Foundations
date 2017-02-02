//On Match Set
//Sets properties on nodes/relationships (will execute every time) when the pattern is matched
MERGE (location:Location{name:"San Francisco"})
ON MATCH SET location.updated_at = timestamp()
RETURN location

//creating a new property 'update_count' with starting value of 0, then incrementing it by one each time pattern is matched - 
//On Match Set
MERGE (location:Location{name:"Chicago"})
ON CREATE SET location.created_at = timestamp(), location.created_by = "Manish", location.update_count = 0
ON MATCH SET location.updated_at = timestamp(), location.update_count = location.update_count+1
RETURN location
