//Section-3 Exercise-1
//get nodes where a person knows another person and that person in turn
// knows another person, and the first person and third person should not
// be the same
match (a:Person)-[:HAS_CONTACT]->(b)-[:HAS_CONTACT]->(c)
where a <> c
return a,b,c limit 10
