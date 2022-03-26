// Used for developing mobile app development just like java and kotlin
// Its not only for mobile development it's used in alot of other platforms

// Comments
// Single line comments
/* Multiple line comments */

// All Dart Programs starts with a main
void main(){
  var myName = 'Aman';
}

// Creating Variables
// we use the var keyword then name of our variable
var num = 5;

// Printing or displaying a Variable we use the print function
print(num);

// Data Type
// Dart is a statically typed language meaning it will determine what kind of data
// type you want when you assign to it and will give an error when you switch one
// variable of integer to string and others
var name = 'Aman'; // String
var num = 5; // int
var number = 10.5; // double
var isNice = true; // bool or boolean
num = 'Hello'; // Gives an error because you changed the data type
// To Make a variable Dynamic
dynamic a; // We can change the data types without any Error
var a; // When a datatype is not determined it will give the variable a dynamic datatype
// If we want Dart to be data type sensetive
// Recommended
String name = 'Hello';
int num = 5;
double number = 10.5;
bool isNice = true;
// Creating Functions
// Named Function: is when the function is defined by a name
// Void means it does not return anything
// doSometing is the name of the function
// { } inside our curly braces goes our block of code
// () is where the parameters go
void doSomething() {
  // Code Goes Here
}
// To call the function
doSomething();

// Anonymous Function: is when the function has no name
() {
  // Code Goes Here
}

// Functions with parameters
// soundNumber can be used inside the function to change the functionality
 void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
// To call the function
// it is necessary to pass anargument if we have a parameter 
playSound(3);

// If We have more than one parameter and if we want to keep track of it
// th curly brace inside the parantesis helps us to use the name of the parameter
// when we are calling or passing an argument
void greet({String personToGreet, String greeting}) {
  print('$greeting $personToGreet');
}
// Then when we call it
// We use greet: to use thier name when inputting an argument
greet(greet: 'How do you do', personToGreet: 'Aman');

// Functions with return values
int myFunction() {
  double = pi = 3.1415;
  return pi * 2;
}
// To call the function
myFunction();
// To hold the result we can create a variable
double result = myFunction();
