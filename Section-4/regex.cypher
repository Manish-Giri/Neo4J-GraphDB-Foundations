//REGEX - string matching
MATCH (movie:Movie)
WHERE movie.title =~ "The.*"
RETURN movie.title

//REGEX - string matching
MATCH (movie:Movie)
WHERE movie.title =~ ".*The.*"
RETURN movie.title

//REGEX - string matching
// add a space after "The" so "their" won't be match in "A league of their own"
MATCH (movie:Movie)
WHERE movie.title =~ ".*The .*"
RETURN movie.title

//REGEX- case insensitive search with ?i
MATCH (movie:Movie)
WHERE movie.title =~ "(?i).*The .*"
RETURN movie.title

// match 0 or more occurance of any characters before "The"
MATCH (movie:Movie)
WHERE movie.title =~ "(?i).*The .*"
RETURN movie.title

// match at least one or more occurrence of any characters before "The"
MATCH (movie:Movie)
WHERE movie.title =~ "(?i).+The .*"
RETURN movie.title

//Joe Versus the Volcano
//One Flew Over the Cuckoo's Nest
