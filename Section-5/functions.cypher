//explicit conversion of data types to string
RETURN toString(11.5), toString(true)

//no conversion
RETURN 11.5 ,true

//replace -
RETURN replace("Hello World", "l", "r") // Herro Worrd

//upper -
RETURN upper("hello") //HELLO

//MATH FUNCTIONS -----

RETURN floor(2.1), ceil(2.1), round(4.5)
/2	3	5
