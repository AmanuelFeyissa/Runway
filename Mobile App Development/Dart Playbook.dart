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

// Using both a function with parameter and a return value
int getMilk (int money) {
  return money - 2;
}
// For the function to work we need to pass an argument
getMilk(5);

// => arrow function
// arrow function is used when we have a single line of instruction that is 
// going to be returned 
// => this holds {return x;} all in one
// Example
int add() => 5 + 2;
int add(int n1, int n2) => n1 + n2;

// Lists
// List is used as an array to store multiple of the same kind of datatype values
// Inorder to declare a list we first write List then list variableName then assign it to
// a collection of lists inside []
// To tell that we are using a specific type of datatype of list we include
// <> after List then write the datatype
List<String> myList = [
  'Aman',
  'Jack',
  'Hello',
];
// To Print it 
// by using numerical location if its index and it starts from 0
print(myList[2]);
// .first is used to print the value of the first index
myList.first;
//  to find the index:  is by using the indexOf function and specifying the value
// It is case sensitive
print(myList.indexOf('Aman')]);
// to add an item
myList.add('Hi'); // It is added at the last of your lists
// If you want to add an item in a specific index
// we specify the index of where it should be added and value
myList.insert(2, 'Hell');

// Conditonals
// if else
if (/*condition*/) {
  // if condition is satisfies Exceute the code
} else {
  // if condition is does not satisfy Execute the code
}

// if elseif else
if (/*condition*/) {
  // if condition is satisfies Exceute the code
} else if(/*condition*/) {

} else {
  // if condition is does not satisfy Execute the code
}
// if condition
if (/*condition*/) {

}
// Nested if condition
if(/*condition*/) {
  if (/*condition*/) {

  }
}

// Operators
// == Equals
// != Not Equal to
// = Assignment
// > Greater than
// < Less than
// >= Greater than and equal to
// <= Less than and equal to

// Comparision Operators
// && AND
// || OR
// ! NOT

// Classes and Objects
// Classes are bluprints that we implement to create an object
// an object is what is created with the properties of the class
class Car {
  // Property or Field is like a variable of a class
  // late keyword is use if we want to initialize our property later
  late int number;

  // Construtors are created when the object is created
  // used as to initialize our object
  // We use the same name of the class with parenthesis to create our constructor
  Car() {
    
  }

  // Method is like a function of a class
  void drive() {
    // Code goes here
  }

}
// To Create an Object from the class
Car myCar = Car();
// to call the property or method we use dot notation
myCar.number;
myCar.drive();

// Abstraction OOP
// is used to modularize and to make the complexity of our project be easier to
// understand and work with
// Example we can create a class that can handle the patient part only in a hosipital
// system.

// Encapsulation OOP
// is used to protect and limit a class to not interfere, uncless necessary
// and do their own job only
// we can devide a clsses encapsulation in public, which every class can access
// in private, which only members of the class can access
// to declare a propety to a private we put an underscore infront of it
int _questionBank; 
// so in order to get information from the private class we create a method to 
// get that information
  String getQuestionText(int questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

// Inheritance
// it is used for reducing code repeation by inheriting from the parent class
// we use extends keyword to inherit from the parent class
// the child class inherits all the property and method from the parent class
// also can add new property and method of its own
// Example
class Car{
  int numberOfSeat = 5;

  void drive() {
    print('wheels turn');
  }
}

// child class that inherits from the parent class Car
class ElectricCar extends Car {
  int batterlevel = 100;
  void recharge() {
    batterlevel = 100;
  }
}

 

