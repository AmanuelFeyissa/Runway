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

  // Constructors
  // Construtors are created when the object is created
  // used as to initialize our object
  // We use the same name of the class with parenthesis to create our constructor
  // Default Constructor, Dart creates the default constructor automatically
  Car() {
    
  }
  // Example of named constructors
  Car({int num, int anotherNum}) {
    // Assigning of properties with the parameter
  }
  // When Creating an object
  Car newCar = Car(num: 50, anotherNum: 23);
  // this. is used when we want to refer to a specific property of that class
  // NOT the parameter passed
  class Mobile {
    late int num;
    late String name;
    Car({int num, String name}) {
      // this.num, this.name refers to the one inside Mobile class, 
      // num and name is a parameter of the constructor 
      this.num = num;
      this.name = name;
    }
  }
  // To Simplify the above constructor with multiple parameter
  // the Above Constructor is equivalent to
  // RECOMMENDED to use a named variable to not get confused when creating an object
  Car({this.num, this.name}); // Shortens the above Constructor

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

// Polymorphism
// To cange the shape or update it from the previous structure  
// even if we inherit properties and methods from out parent class and if we want
// to change those properties and methods from the parent class to our own liking
// we use @override keyword to update it to our child class characterstics
// Example
class LevitatingCar extends Car{

  @override 
  void drive() {
    print('Levetate');
  }
}
// If we want keep the property or method of our parent class but also add to it
// we use
class CoolCar extends Car{

  @override 
  void drive() {
    // to call the parent class we use super. to refere to parent class
    super.drive();
    // then add our own new functionalities
    print('Vroom');
  }
}

// final and const
// Both final and const are used make a variable or widgets to make them fixed or,
// unchangeable or immutable
// final == setting once and it will not change
// const == is a fixed value[compile time constant] that will not change throughout the code
const int myNum = 2;
final int newNum =5;

myNum = 4; // Error constant variables can not be assigned a value
newNum = 6; // Error a final variable can only be set once
// Difference
// final can get the value in any point in time meaning if we want a value of a variable
// when the app is running it is possible, but const is a compile time constant meaning
// we can only get when compiled or when we run it. we can not get any value or modify it 
// when the app is running
// Example
// this will not give us the exact value because time of now is always changing and
// const can not retrive data after it is run
const myNum = DateTime.now(); 
// this will give us the exact value because final can retrive the data after runtime
const newNum = DateTime.now();



 

