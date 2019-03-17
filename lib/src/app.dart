// Import flutter helper libarary
import 'package:flutter/material.dart';

// Create a stateful widget that gets rerendered
class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create AppState object that is cached and not rerendered unless it changes
// This is returned from App widget every time it is rerendered
// Class extends State class, which is a generic that takes the type of class it is rendered by
class AppState extends State<App> {
  int counter = 0;

  // Must define a 'build' method that returns
  // the widgets that *this* widget will show
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('${counter}'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            //update state
            setState(() {
              counter++;
            });
          },
        ),
        appBar: AppBar(
          title: Text("Let's See some images"),
        ),
      ),
    );
  }
}
