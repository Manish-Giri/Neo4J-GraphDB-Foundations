//Remove "The Da Vinci Code" movie from the DB, but retain all actors, directors and other nodes' information
MATCH (movie:Movie{title:"The Da Vinci Code"})
DETACH DELETE movie
