//JavaScript is the most popular language as of the current date.. 
//It is a scripting language that has a big community
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

