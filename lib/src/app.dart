// Import flutter helper libarary
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

// Create a class that will be our custom widget
// this class must extend the 'StatelessWidget' base class
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
