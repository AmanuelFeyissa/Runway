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
        // SafeArea is used when we want to exclude the container from the edges
        // of our phone like places besides the camera and the like
        // quick trick make container to child to SafeArea is clicking the 
        // bulb and choosing warp with widget
        body: SafeArea(
          // Container is used as a div in mobile app
          child: Container(
            // Properties of container
            height: 100.0,
            width: 100.0,
            // EdgeInserts hold different functionalities for making spacing in 
            // our margin or padding
            // .all() is used for all sides at once
            // .fromLTRB() is used for specific left top right bottom
            // .only() is used for specifing only one or two for sides
            // .summetric() is used for horizontal and vertical spacing symetrically
            //outside of the widget
            margin: EdgeInsets.fromLTRB(30.0, 20.0, 40.0, 40.0),
            // inside of the widget
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text('Hello'),
          ),
        ),
      ),
    );
  }
}


body: SafeArea(
            // Column is used as a layout tool for vertical use
          child: Column(
            /* ONE PROPERTY CAN AND WILL AFFECT THE OTHER */
            // to change the Verical direction of a widget
            // .up is for from bottom to top -- red, blue, white 
            // .down is for from top to bottom -- white, blue, red
            verticalDirection: VerticalDirection.up,
            // aligning across the axis in this case horizontal since it is column
            // spacing between child in this case container
            // REFER for properties in the flutter docs
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // aligning on the main axis in this case vertical since it is column
            // REFER for properties in the flutter docs
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // manipulates the axis size of the coulmn
            // changes the column axis size to min or max
            mainAxisSize: MainAxisSize.min,
            // children: [] is a property for column that can hold as many child
            // widgets as we want example container
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              // SizedBox is used to give a space beteen the column children
              // height is used because it is column/vertical
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text('Container 2'),
              ),
              Container(
                // gives the ability to strech as far as possible
                // mostly used with multiple containers
                width: double.infinity,
              )
            ],
          ),


body: SafeArea(
            // Row is used as a layout tool for horizontal use
          child: Row(
            /* ONE PROPERTY CAN AND WILL AFFECT THE OTHER */
            // to change the Verical direction of a widget
            // .up is for from bottom to top -- red, blue, white 
            // .down is for from top to bottom -- white, blue, red
            // REFER for properties in the flutter docs ????
            verticalDirection: VerticalDirection.up,
            // aligning across the axis in this case vertical since it is row
            // spacing between child in this case container
            // REFER for properties in the flutter docs
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // aligning on the main axis in this case horizontal since it is row
            // REFER for properties in the flutter docs
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // manipulates the axis size of the row
            // changes the eow axis size to min or max
            mainAxisSize: MainAxisSize.min,
            // children: [] is a property for row that can hold as many child
            // widgets as we want example container
            children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.white,
                child: const Text('Container 1'),
              ),
              // SizedBox is used to give a space beteen the row children
              // width is used because it is row/horizontal
              SizedBox(
                width: 20.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                width: 100.0,
                height: 100.0,
                color: Colors.red,
                child: Text('Container 2'),
              ),
              Container(
                // gives the ability to strech as far as possible
                // mostly used with multiple containers
                width: double.infinity,
              )
            ],
          ),

// CircleAvatar() is a class mostly used in a container, row or column as a
// children, used to display user like circular widget
// creates a circle that represents a user
              CircleAvatar(
                // to determine the radius of our circle
                radius: 50.0,
                // backgroundImage is used to display the image that we want
                // AssetImage is for local image displaying
                // MAKE SURE you include the image in the pubsec.yaml file
                backgroundImage: AssetImage('images/aman.jpg'),
              ),