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

// For Loop
for (var i = 1; i < 10; i++){
    // Code goes here
}

// Do While loop
var a = 1;
do {
    // Code goes here
    a++;
} while (a < 10);

// More on Strings
Number(a); // change to a number function
// if we try to add string and number, it will be concatenated not added
isNaN(a) // Returns a Boolean value that indicates whether a value is the reserved value NaN (not a number).
var phrase = "Hello";
phrase.length; // tells as the length of the variable
phrase.toUpperCase; // changes the variable to upper case
phrase.indexOf("Hello"); // Returns the position of the first occurrence of a substring.
phrase.lastIndexOf("Hello"); // Returns the last occurrence of a substring in the string.
phrase.slice(0,3); // Returns a section of a string. // use also .substring() .substr()

// Regualr expressions
// is used when we want to check if some input is how we want it to be like checking if password has letters
// creating regular expressions
var myRE = /hello/; // / regular expression / we use a forward slash
// or
var myRE = new RegExp("hello");
// checking
var myString = "Does this string have a hello word in it?";
// .test() is a function used to check the regular expression against the data given in this case myString
// .test() Returns a Boolean value that indicates whether or not a pattern exists in a searched string.
if( myRE.test(myString)) {
    alert("yes");
}
// Special characters are used to check specifically
var myRE = /^hello/; // ^ hello must be at the start
var myRE = /hello$/; // $ hello must be at the end
var myRE = /hel+o/; // + l must appear once or more
var myRE = /hel*o/; // * l must appear zero or more
var myRE = /hel?o/; // ? l must appear zero or one
var myRE = /hello|goodbye/; // | match hello or goodbye // either|or
var myRE = /he..o/; // match any character
var myRE = /\wello/; // \w alphanumeric or _
var myRE = /\bhello/; // \b word boundary
var myRE = /[crnld]ope/; // [...] match range of characters

// Array
// a collection of related values contained in one variable
// Creating an array
var newArray = []; // initiallizing
newArray[0] = 50; // INT
newArray[1] = "hELLO"; // STRING
// or
var newArray = [50, "hello"];
// Calling or getting array value
newArray[0]; // we can alert it

// Array properties
newArray.length; // whats the length of the array
newArray.reverse(); // reverse the values position, "hello", 50
newArray.sort(); // sorts if it is a number, puts it alphabetically if it is string
newArray.join(); // Adds all the elements of an array into a string, separated by the specified separator string.
newArray.pop(); // Removes the last element from an array and returns it
newArray.push(); // Appends new elements to the end of an array, and returns the new length of the array.

// Itrating through array
var i = 0;
while (i < newArray.length) {
    // checking and outputing every index of the array
    alert("the value" + newArray[i]);
    i++;
}