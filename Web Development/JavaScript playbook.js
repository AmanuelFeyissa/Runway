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

// Conditionals
// If statments
// == is equal
// != not equal
if (/*condition is true*/ a == 0) {
 // Execute this code if condition is true
 alert("its true");
}
// Nested if
var balance = 5000;
// if else
if (balance >= 0) {
    alert("the balance is positive");
    if ( balance > 10000) {
        alert("The balance is large")
    }
} else {
    alert("The balance is not positive");
}

// Comparsion Operator
// == is equal
// === strict equality, meaning check the equality of the values and also check for identical data type
// !== not strictly equal
// != not equal
// > greater than
// < less than
// >= greater than or equal to 
// <= less than or equal to
// && [and]both must be true
// || [or]one must be true
var a = 123;
var b = "123";
// equality check
// Yes they are equal
if ( a == b ) {
   alert("Yes, they ARE equal");
} else {
   alert("No, they're NOT equal");
}  
// strict equality check
// OUTPUTS No they are not equal
if ( a === b ) {
    alert("Yes, they ARE equal");
 } else {
    alert("No, they're NOT equal");
 }

 // Switch statment
 var grade = "Premium";

switch ( grade ) {
     case "Regular":
          alert("it is 3.15");
          break;
     case "Premium":
          alert("it is 3.35"); // prints this one
          break;
     default:
          alert("Not a valid grade");
}

// Functions
// Syntax
function myFunction() {
    // Code goes here
}
// Calling
myFunction();

// Parameters and arguments
// definig parameters a and b
function addTwoNumbers(a, b) {
	var result = a + b;
	alert(result);
}

// passing arguments 5 and 10
addTwoNumbers(5, 10);

// Return
function addTwoNumbers(a, b) {
	var result = a + b;
	return result;
}
// Using the return
var x  = addTwoNumbers(5, 10);
alert(x);

// Variable scope
// Global variable
var y;
function addTwoNumbers(a, b) {
	// x is only available inside this function
    // local variable
    var x = a + b;
    y = 500; // Global variable
	return x;
}

// To split up the code into different files
// We just add more script tags
// Order of the files is important, if the first is dependent on the third called it might not work
<html>
	<head>
		<title>Simple Page</title>
	</head>
	<body>
		<p>This is a very simple HTML page</p>
        {/*Here is where we tell our web page and browser to find the .js file */}
		<script src="script.js"></script>
        <script src="another.js"></script>
        <script src="Functions/functions.js"></script>
	</body>
</html>

// Iteration
// While loop
// Syntax
var a = 1;
while (a < 10) {
    alert(a);
    a++;
}