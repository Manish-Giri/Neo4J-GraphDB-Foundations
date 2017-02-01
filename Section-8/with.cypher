//set a property with a dynamic value
//WITH - dynamic values
MATCH (tom:Person{name:"Tom Hanks"})-[:HAS_CONTACT]->(contact)
WITH tom, count(contact) AS Contacts
SET tom.contacts = Contacts
RETURN tom
