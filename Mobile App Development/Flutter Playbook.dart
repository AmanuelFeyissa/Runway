// It is a framework that is used for building a cross platform applications on Android Web and IOS systems
// Built by Google and works with the Dart programming language
// Used for the frontend of an app, and everything on flutter is a widget
// works well with all databases and especially with the firebase which is from Google itself

// Creating a flutter project

// First way using terminal
/* 1st type flutter create /* name of project with underscore separated */
   2nd this will generate loads of file that is used for building flutter apps
   */
// Second way using VS Code
/* 1st go to view then click on command palette
   2nd type 'Flutter: New Project' then add the name of your project
       use underscores for replacements of spaces */

// Running flutter projects
/* USING TERMINAL we type flutter run being inside the path of the project
   USING VS Code we use the command palette and type Flutter: Run
   or go to run and debug section or F5 */

// We need to import the material.dart if we want to use everything that it holds
import 'package:flutter/material.dart';

// it starts with a main function
void main() {
  // every wiget function we run is inside this runApp function
  runApp();
}
