//JavaScript is the most popular language as of the current date.. 
//It is a scripting language that has a big community
// it is case sensetive
//JavaScript is popular because of it's wide range of frameworks and libraries like react.js, vue.js and angular for frontend development
//And for backend the most popular one is Node.js
// React native is a platform that uses the JavaScript language to build mobile application
// Starting code

// in order to run a javascript code we first need to tell our web browser where to find and interprete it
// to do that we use HTML
// To run a javascript file we just need to run the HTML web page file that contains the .js script tag on our browser
<html>
	<head>
		<title>Simple Page</title>
	</head>
	<body>
		<p>This is a very simple HTML page</p>
        {/*Here is where we tell our web page and browser to find the .js file */}
		<script src="script.js"></script>
	</body>
</html>

// Requesting input and printing output
// Output
// we use the alert() function to print out on our web browser
alert("Hello World");
// Input
// we use the prompt() function to request an input and wait for a response
prompt("What is your name? "); // Waits for response
// Using input and output
var fName = prompt("What is your your full name? ");
alert("Hello " + fName);

// Variables
// To create a variable we use the keyword var
// var is dynamic meaning we can set the variable to any kind of data value, like integer, double, String
var year;
year = 2011; // assigned to integer
year = "Hello"; // assigned to String
year = true; // assigned to bool

// Variables: Numbers
// we can easly assign and create numbers by just writing it down
var a;
a = 5;
a = 1000000;
a = 123.654;
a = -500;

// Variables: Strings and characters
// use double qutoes to hold strings
var message = "Hello, World";
var anotherVariable = 'Hello, World';
// We use the escape operator \ to make what comes next the same as other strings, or to not make it a special key
var more = "Hello it\'s me";

// Operators
// = Assignment
// + - * / arithmetic operators
// JS has opertator precedence / * first and + - second
// if we want to make some calculation first we put it inside ()
var score;
score = score + 10; 
score += 10; // Shorter way
// += -= *= /= can be used
// Increment and decrement
a = a + 1;
a++; // Increment
a--; // Decrement

// Whitespace
// JS does not care about how we use whitespace
// Best Practices
var a = 5;
a++;
var x = true;
// String is different and is affected by whitespace
var fName = prompt("What is ur name?");
// \n line break or new line used in a string
var hel = "Hello \n World";

// Comments
// for a single line
/* 
    for multiple line
*/