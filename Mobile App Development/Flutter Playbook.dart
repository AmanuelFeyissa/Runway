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

// Using Intention Actions: Intention actions are suggestions that make our work
// easier by writting code automatically
// To Use Intention Actions we need to click on the widget that we want change
// then we can go to the outline button and right click or we can click the
// light bulb that appears then change our widget to whatever we want like
// wrapping 

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

// To nest a row in a column or vice versa we always use another container inside
// the parent row or column
            child: Row(children: [
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                // Nesting column and row
                child: Column(
                  children: [

                ],),
              ),
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
// Text() has alot of properies to modify and change a plain text
// style: TextStyle() style: is a property used to change the style of the text
// TextStyle() has loads of properties like fontSize: fontWeight: 
              Text(
                // Plain Text
                'Amanuel Feyissa',
                style: TextStyle(
                  // used to change the font size
                  fontSize: 40.0,
                  // used to change the color
                  color: Colors.white,
                  // used to change the text weight to bold, italic etc
                  fontWeight: FontWeight.bold,
                ),

// In order to include a new font that we have downloaded from other source like
// fonts.google.com we have to first include it in our pubsec.yaml file
// we create a folder that holds the file of our fonts
/* Inorder to include an external file from our local machine like fonts 
               we enable fonts from the pubsec.yaml file
               - pubsec.yaml are very sensetive, we use two spaces to separate
                 parent from child
                  fonts:
                     - family: Pacifico
                       fonts:
                         - asset: fonts/Pacifico-Regular.ttf
            */
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  // the name of the font family must be the same as the one 
                  // that is in our pubsec.yaml file == family: Pacifico
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                  // we can specify the color that we use even further by adding
                  // .shade100 or .teal[100] in our color properties
                  color: Colors.teal.shade100,
                  // letter spacing is used to diffine the space between letters 
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
// To add Icons to our project we use the Icons class that displays from the
// material design with simple steps
                child: Row(
                  children: [
                    // is the Icon class that must be called first
                    Icon(
                      // this displays an icon of an email from the material design package
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),

// If we want to have a horizontal line in our code for section separating like 
// we do in web development with <hr> we use the Divider() class
              SizedBox(
                // for setting its height
                height: 20.0,
                // for limiting its width than just letting it fill the whole
                // horizontal line
                width: 250.0,
                // used to draw a horizontal line
                child: Divider(color: Colors.teal.shade100),
              ),
// Card() we use the card class to shape and style our widget and it gives more
// from Containers, like curving its edges, giving it a shadow looking
// usually has row and columns as children
// USED IN PLACE OF CONTAINERS
// Best use of Card() is ListTile() as its Child
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    
// ListTile is like a row or column usually used when icon and texts are present
// in a project
                child: ListTile(
                  // leading is used for the icon displaying property
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal.shade900,
                  ),
                  // title is used for the text displaying property
                  title: Text(
                    '+2519-12-34-56-78',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ), 

// Expanded class is used inside rows or columns widget as a child
// it is used for resizing and to make our child fit the screen for example images
// child: property is used to add more widgets for the expanded class to resize
// flex: property is used to add a ratio of the size of the expanded file 
// default flex is flex: 1,
// Image.asset('path of the image') is the shortest way to work with asset images
    Row(
      children: [
        Expanded(
          //flex: 2,
          child: Image.asset('images/dice1.png'),
        ),
      ]
    )

/* TODO: LEARN about the replacements of FlatButton, RaisedButton and OutlineButton
         FlatButton is replaced by TextButton
*/

// FlatButton is a depricated widget used as butten that responds when clicked
// ignore: deprecated_member_use
            child: FlatButton(
              // OnPressed is a requirement that tells the app what to do when 
              // flat button gets pressed
              // OnPressed is a void callback meaning it has no argument being 
              // passed and no data being given
              onPressed: () {
                // a Dart function for printing output when clicked on image
                print('Left gOT pRESSD');
              },
              child: Image.asset('images/dice1.png'),
            ),
  // FlatButton is depricated and has been replaced by TextButton which does
  // bascically the same thing
            child: TextButton(
              // OnPressed is a requirement that tells the app what to do when 
              // text button gets pressed
              // OnPressed is a void callback meaning it has no argument being 
              // passed and no data being given
              onPressed: () {
                // a Dart function for printing output when clicked on image
                print('Left gOT pRESSD');
              },
              child: Image.asset('images/dice1.png'),
              // to change the style of a button like color and text color
              // we call style properties then inside TextButton there is 
              // a function .styleFrom() that has different properties
              // primary: is to display the color of the button
              // to change textcolor we use textStyle Property and call
              // TextStyle() function then fromthat we can set the color
              style: TextButton.styleFrom(
                  primary: Colors.red,
                  textStyle: TextStyle(
                    color: Colors.white,
                  )
            ),

// If we have a widget that changes its state with user interactions then it is
// best to use a Stateful Widget than Stateless Widget
// Statful Widget is used when we wish to change the screen or user interface 
// when a user interacts with it
// To create a stateful widget we use the shortcut 'stful' keyword and it display 
// two classes then we will a same name for those classes
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // initial variable of leftDiceNumber, outside of the build
  int leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // ignore: deprecated_member_use
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  // In Order to update the screen when pressed we don't just 
                  // assign the variable to new value, that will only update the variable
                  // we use the setState to change the state of the widget from 
                  // the old one to new
                  setState(() {
                    // leftDiceNumber is assigned to 3 so when building it will
                    // look for the variable in our code and update it to value 3
                    leftDiceNumber = 3;
                  });
                },
                // updates the leftDiceNumber from the initial 5 to 3 in the UI
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),

// To Make Random numbers and to incorperate math in our code we fist need to
// import math library at the begining of our code
// CODE GOES AT THE BEGINNING OF OUR CODE FILE
import 'dart:math';
// After that to use the random number generator we will use the Random() function
// and if we are working with an interger only we can further use a function that
// is inside the random function .nextInt(max), max is not included in randomizing
// the number which means if .nextInt(6) it will generate random number between
// 0 - 5 
                  setState(() {
                    // max is 6 so it will generate numbers between 0 - 5
                    // to exclude 0 and include 6 we will just add 1
                    leftDiceNumber = Random().nextInt(6) + 1;
                  });

// Flutter and Dart Packages
// Packages are already built functions by other people that we import and use
// to benefit from other people codes
// pub.dev is where you search all the packages you want for your project
// To import a package first we need to search and find a package in pub.dev 
// Then We need to follow the read me file to include it in our project
// Usually we will update our pubsec.yaml file under dependencies: to install it
// for example in our pubsec.yaml file
dependencies:
  flutter:
    sdk: flutter
  // Is a package that allows us to use IOS icons
  cupertino_icons: ^1.0.2
  // 
  english_words: ^4.0.0
// Then save it in order to be downloaded with pub get
// Finally include it in your main.dart file
import 'package:english_words/english_words.dart';

// If we wish to use any package we should read the documentation
// For example to play audio sound we find a package like 'audioplayers' and
// install and import it using the previously discussed steps
// then By reading the documentation, if we want to play a sound
            // Made a button in order to make a sound when pressed
            child: TextButton(
              onPressed: () {
                // Then from the documentation we create an object from the AudioCache()
                // class to play a sound that is inside your assets folder
                final player = AudioCache();
                // with that object we link it to a .play and pass the name of the audio
                // the package already assumes you have it in the assets folder
                player.play('note1.wav');
              },
              child: const Text('Click Me'),
            ),

// If we want to make a widget function with a return type and with naming parameters
// all we need to do is specify the widet type and function nume with its parameters
  // Expanded is the widget type, build key is the function name
  // required is to specify it is necessary
  // Color is the datatype, color is the variable name
  // int is the datatype, soundNumber is the variable name
  // inside the parenthesis we have curly braces because it is a naming parameter
  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        // to style the button and add backgroundColor
        style: ButtonStyle(
          // color is what is passed from the argument in this case Colors.red
          backgroundColor: MaterialStateColor.resolveWith((states) => color),
        ),
        onPressed: () {
          // soundNumber is what is passed from the argument in this case 1
          playSound(soundNumber);
        },
        child: const Text('Click Me'),
      ),
    );
  }

// when using the function we call it like
buildKey(color: Colors.red, soundNumber: 1),

// List in Flutter
// List is used as an array to store multiple of the same kind of datatype values
// Inorder to declare a list we first write List then list variableName then assign it to
// a collection of lists inside []
List scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
// To tell that we are using a specific type of datatype of list we include
// <> after List then write the datatype
List<Icon> scoreKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
// To add onto our existing list from anywhere in our code
scoreKeeper.add(Icon(
      Icons.check,
      color: Colors.green,
    ),);
// to print out the list we just need to call the name
scoreKeeper,

// Decoration and constraints are used in a container as a property
// TODO: read more about it
      Container(
        // Used to modify the containers layout as seen as box
        // BoxDecoration is used to modify the container as a whole like adding
        // an image
        decoration: BoxDecoration(
          // DecorationImage class is called to add an image in BoxDecoration
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            // fit is used as a property for something like BoxFit
            // BoxFit is used to determine the size of the image or properties
            // area of covarage, .fill is used to fill the whole canvas 
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
      ),

// TODO: Read more on visibility
// Visibility is a widget that allows us to make what button, text or anything that
// is wrapped under it to make it invisible or visible
                Visibility(
                  // visible takes a boolean if true it will make it visible 
                  // if false it will make it invisible
                  // RECOMMENDED should be used with a function that returns a
                  // boolean if some conditions are met or a function with IF/ELSE
                  // inside it
                  visible: true,
                  visible: false,

// Flutter Themes
// Used for a custom styling of our App
// TODO: Use the Flutter Docs, the cookbook section
// When we customize with theme in our material app, it will apply throught any
// page that is child to it
    return MaterialApp(
      // theme is the property that we call to manipulate and style our App
      // ThemeData Class has a lot of functionalities for styling our custom App
      // ThemeData.dark() gives a dark theme mode for the whole app including 
      // multiple pages
      theme: ThemeData.dark(),
        // primarColor is used to change the background color of major parts of
        // the app like tab bar and tool bar, etc
        // If we want to give a specific color we use the Color() class which
        // takes the ARGB (alpha red green blue), moset of the time our alpha
        // is going to be 0xFF making it opaque, the other six digits will hold the RGB
        primaryColor: Color(0xFF0A0E21), 
        // depricated, used for changing the color of widgets like FloatingActionButton
        accentColor: Colors.red,
        // The background color for a typical material app or a page within the app.
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // In order ot change the text color of the body text we use the textTheme
        // Property, TextTheme() holds different properties to identify which section
        // you are tring to change then we can change it with TextStyle()
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
        // ThemeData.dark().copyWith(), copyWith() function is used to keep the default
        // of ThemeData.dark() then add our own customization
        MaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: Color(0xFF0A0E21),
            primaryColor: Color(0xFF0A0E21),
            accentColor: Colors.red,
            textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
        ),
        ),
// If we want to change a specfic widget theme we only need to wrap it inside
// the Theme() class
// it requires data: and child: property, data holds all the theme modification 
// properties and child holds the actual widget
      floatingActionButton: Theme(
        data: ThemeData.light(),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),

// In Order for us to refactor and make our widgets have less repeation we have
// to create a widget class of the widgets that are repeating
// to do that we click on the widget that has repeation and click on the light bulb
// or go to flutter outline, then right click. from the options click on extract Widget
// this will promt as for a new widget name and create the widget class below  
class ReusableCard extends StatelessWidget {
  // if we want change the color of the container widget when we create it
  // first we define color property with Color widget datatype
  final Color color;
  // ? is used to initiallize a null datatype variable
  final Widget? cardChild;

  // then create a constructor that requires a color property value whenever
  // the widget class object[ReusableCard] is created
  // required is used when we initialize a property in a named parameter, just to
  // tell us it is required when object is created
  ReusableCard({required this.color});

  @override
  Widget build(BuildContext context) {
    // Container with multiple repeation
    return Container(
      // we will include the cardChild widget property as a child
      child: cardChild,
      margin: const EdgeInsets.all(15.0),
      // Decoration is used when we want to style our container
      // BoxDecoration is used to set the Border radius and color to what we want 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // color: takes the property of color from our class
        color: color,
      ),
    );
  }
}
// When we use it in our main page it will look like
        Row(
            children: [
              Expanded(
                // ReusableCard is the class widget that we created
                child: ReusableCard(
                  // color is the ReusableCard property that we created
                  // activeCardcolor is a const variable set to a color
                  color: activeCardColor,
                  // we use cardChild in our own made widget
                  // IconContent is another class we created that has iconSymbol,
                  // gender property
                  cardChild: IconContent(
                    // Takes an icon from frontAwesomeFlutter package
                    iconSymbol: FontAwesomeIcons.mars,
                    // Takes a string
                    gender: 'MALE',
            ),

// Gesture Detector
// is how it sounds like it detects any kind of gesture like tap double tap and
// many more properties
                child: GestureDetector(
                  // on Tap detects when we tap the screen of our device
                  // then we can use anonymous function to change its state and
                  // add functionalities 
                  onTap: () {
                    setState(() {
                      // a function made by us that is used for determining the color
                      // if it is clicked or not
                      updateColor(1);
                    });
                  },
                  child: ReusableCard(
                    color: maleCardColor,
                    cardChild: IconContent(
                      iconSymbol: FontAwesomeIcons.mars,
                      gender: 'MALE',
                    ),

// Slider Widget
// is a widget that is used to make a slider of a sort // Google Slider for more info
                  Slider(
                    int height = 180;
                    // it requires value and onChange property
                    // value: is used to set the value to a double
                    // toDouble() converts the value to double
                    value: height.toDouble(),
                    // activeColor: changes the color of where the slider is active
                    activeColor: Color(0xFFEB1555),
                    // inactiveColor: changes the color of where the slider is inactive
                    inactiveColor: Color(0xFF8D8E98),
                    // onChanged: takes an input of double and sets its state to the
                    // newValue of the double to our first value[height] 
                    // when drgged or changed
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                    // min: is used to display the minimum value of the slider
                    min: 120.0,
                    // max: is used to display the maximum value of the slider
                    max: 220.0,
                  ) 
// To Customize any Widget, Specifically Slider Widget
// Most Widgets have there own themes for customization
                  SliderTheme(
                    // data: property is required used to fetch a theme class of
                    // a specific widget in this case SliderThem or SliderData
                    // TODOread more: .of(context) means it sould run with the build widget
                    //.copyWith is used to change specific part of the widget and keep the
                    // default
                    data: SliderTheme.of(context).copyWith(
                      // used to change the color of the circular part
                      thumbColor: Color(0xFFEB1555),
                      // used to change active,the line color if the slider
                      activeTrackColor: Colors.white,
                      // used to change inactive,the line color if the slider
                      inactiveTrackColor: Color(0xFF8D8E98),
                      // used to change the overlay or color that circulates the
                      // the thumb
                      overlayColor: Color(0x29EB1555),
                      // used to change the thumb shape
                      thumbShape:
                          // a function to change round slider thumb shape
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      // used to change the overlay shape
                      overlayShape:
                          // a function to change round slider overlay shape
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                  )

// About textBaseline
                  Row(
                    // to set the mainaxis alignment to center
                    mainAxisAlignment: MainAxisAlignment.center,
                    // to set the crossaxis alignment to baseline
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    // When we set crossaxis alignment to baseline we get an error
                    // if it is a Text Widget, saying it needs to have a textBaseline
                    // to fix it textBaseline: is used to set it to alphabetic
                    // or other choices
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        // used to convert int to string
                        height.toString(),
                        // constant variable set from the constants.dart
                        style: kTextStyleWithWeight,
                      ),
                      Text(
                        'cm',
                        // constant variable set from the constants.dart
                        style: kTextStyleLable,
                      ),
                    ],
                  ),

// Creating our own widget
// If we wish to create a new widget withour own design, we first need to base of 
// from a widget that already exists in the flutter framework
// then add our own property to make it a new widget
// creating a stateless widget called RoundIconButton
class RoundIconButton extends StatelessWidget {
  // Constructor for our widget
  RoundIconButton({@required this.icon, @required this.onPressed});

  // property of our widget, Icon property and Function Property
  final IconData? icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // RawMaterialButton is our base widget, also used to make the floattingActionButton
    // we modifiy it to our own liking
    return RawMaterialButton(
      // assigning the our onPressed function property to onPressed property 
      onPressed: onPressed,
      // assigning our own icon inside the Icon class to the child property 
      child: Icon(icon),
      // elevation is used for shadowing
      elevation: 0.0,
      // From the documentation of flutter
      // to make the box constraints just like floatingActionButtoon
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      // To provide the shape for our widget
      shape: CircleBorder(),
      // tp provide the color for our widget
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
// Using it in our project
            int age = 18;
            RoundIconButton(
            //calling our own propery onPressed
            onPressed: () {
              // setting it to change state when pressed
              setState(() {
                age--;
              });
            },
            // calling our own property icon
            icon: FontAwesomeIcons.minus,
          ),

// Routes and Navigation
// Route is synonymous with page or screen, getting to a page
// Naviagation is like our map or what tells are where to go
// Our screens are designed on top of each other
// Example
// Assume there is a button with onPressed function property
// If we want to route 1 to 2 screens we use
onPressed: () {
  // Navigator.push is used to add a new screen or page on top of our current screen
  // context is to refer to our current route with the build reference context
  Navigator.push(context,
                // MaterialPageRoute takes a builder input which is context
                // then returns the new page which is in this case NewPage()
                // NewPage() needs to be imported inorder to work  
                MaterialPageRoute(builder: (context) => NewPage(),),),);
}
// To go back to a screen (previous screen) we use the Navigator.pop 
// Assume this is a button on the newPage and we want to go back to the previous page
onPressed: () {
  // .pop destroys the current newPage sesstion for us to go back to the previous page
  Navigator.pop(context);
}
// If we have multiple screens [Named Routes]
// we use named Routes, is a way to define our pages at once and call it when we want to
// It is created inside our MatrialApp usually in the main file
// all pages needs to be imported inorder to work 
// Assume this is main.dart in MaterialApp
return MaterialApp(
  
  //home: homePage(),
  // initialRoute: does the same thing as the home: it defines the beginning of the project page
  // initialRoute: takes a string, usually the key of our map
  // NOTE: we can not use home: and initialRoute: together. ONLY just one
  initialRoute: '/',
  // routes: is used to define the routes that we are going to find in our project
  // we use maps to define routes in flutter
  // maps are what we call Dictonary in python, that comes with key: value pair
  // maps are difined in {key: value}
  routes: {
    '/': (context) => homePage();
    '/first': (context) => NewScreen();
  },
);
// To use our Named Route
onPressed: () {
  // we use the .pushNamed to specify the key of our map
  Navigator.pushNamed(context, '/first');
},