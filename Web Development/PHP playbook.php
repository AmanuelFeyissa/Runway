<?php 
/* To write any code in PHP it must be included in these php open and closed tags <?php ?> */

// COMMENTS 

// Single line comments
# Single line comments
/* 
    Multiple line comments
*/

// Variables
// To declare any variables of any datatype in PHP we only use the $ sign infront of it
// $nameOfVariable

$hello = "hi"; // String
$n = 123; // Integer
$flo = 34.54; // Float 
$bool = true; // boolean

// Datatypes and identifiers 
// Datatypes: when we want to create any variable we don't need to specify their datatypes
// Identifiers: when we create a variable, it must not start with a number or containa a special 
//              character, can contain underscore _ letters and numbers
// Variables are case sensetive

// conditional statments
// if statments
if ($n/*condition*/) {
    //code goes here
}
// Nested if: is an if statment inside another if statment
// if else statments 
if ($n/* or condition*/){

    //code goes here

} else{
    // code goes here
}

// if elseif statments
if($n/* or condition*/) {
    // code goes here
}elseif($n/* or condition*/) {
    // code goes here
}elseif($n/* or condition*/) {
    // code goes here
}else {
    //code goes here
}

switch ($n /* or condition*/) {
    case label1:
      //code to be executed if n=label1;
      break;
    case label2:
      //code to be executed if n=label2;
      break;
    case label3:
      //code to be executed if n=label3;
      break;
    
    default:
      //code to be executed if n is different from all labels;
  }

// Printing Function
// echo()
  echo("Hello World"); // prints Hello World

// Loops
// While Loop
while ($n/*or condition is true*/){
    //run the code inside the curly braces
}

//For Loop
for($i; $i >= 0; $i++){
  //Iterates the code inside this block
}

//For each loop
// used to go through arrays and lists
foreach ($lists as $list){
  // Code goes here
}
//assuming lists is an array

// Do While Loop
do{
  // Code does here
}while($n/*condition*/);

// Arrays
// Used as a special variables used to store multiple multiple values in one variable
$arrNum = [1, 3, 5, 6, 8];


?>
