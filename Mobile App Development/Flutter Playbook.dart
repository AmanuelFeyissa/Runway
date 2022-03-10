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
  // every wiget class we run is inside this runApp function
  runApp(
    // Material app is a function that hold alot more wiget to work with
    MaterialApp(
      // home: is where our app start
      // Scaffold is a widget function that gives us a blank white screen to work with
      home: Scaffold(
        // appBar: is the property of a scaffold for usage of app Bar
        // AppBar() is a wiget function that is used to create and manipulate
        // the top side of our app
        appBar: AppBar(
            // title attribute is how we give a title in our app
            // Text is wiget function that is used to display text
            title: Text('Hello World')
            // backgroundColor: to change the background Color of an appBar or other entities 
            // Colors.  is a class that displays variety of colors 
            backgroundColor: Colors.amber,   
        ),
        // body: is an attribute that is used to manipulate the main part of the Scaffold
        // Center is widget function that is used to center what is inside it or its child
        // child: means the subset of class/function above it
        body: Center(
          // Image() is wiget function to manipilate images
          // image: is the attribute to handle image manipulation
          child: Image(
            /* NetworkImage() takes an argument of the url that holds the 
            / image of the source from the internet */
            image: NetworkImage(/*url*/)
            /* AssetImage(path of file) is used when we want to work with image file located
               inside our local machine 
               - the path is always inside single quotes
            */

            /* Inorder to include an external file from our local machine like images 
               we enable assets from the pubsec.yaml file
               - pubsec.yaml are very sensetive, we use two spaces to separate
                 parent from child
                assets: 
                   - images/path of file
            */
            image: AssetImage(/* path of file in our local machine*/) 
          ),
        ),
      ),
    ),
  );
}

// Inorder to run hot reload and hot restart
// We first need to create a class that extends Statless or statefull widget
// the shortest way to create a statelesswidget is using stless command and hit
// enter
// Main difference between hot reload and hot restart is
// Hot reload changes/updates what widget,color or other things have changed and
// updates when we hit save
// Hot restart is used when we want to restart some functionality that are 
// already in process like a counter for example

void main(){
  // MyApp is the name of the class that extends the statless widget
  runApp(MyApp());
}

// the shortcut to create this is stless
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // checks any changes and updaes when saved or when hot reload button clicked
  @override
  Widget build(BuildContext context) {
    // returns everything that we have been working on from MaterialApp to the
    // last line of code ;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(),
      ),
    );
  }
}