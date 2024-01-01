import 'package:flutter/material.dart';

/// BasePage is the superclass for MyHomePage
class BasePage extends StatefulWidget {
  /// Creates the state for the BasePage widget.
  @override
  _BasePageState<BasePage> createState() => _BasePageState<BasePage>();
}

/// _BasePageState is the State class for the BasePage widget.
/// It manages the internal state of the widget, including the message displayed on the screen.
class _BasePageState<T extends BasePage> extends State<T> {
  /// The message to be displayed on the screen.
  String message = "This is a BasePage";

  /// Changes the message to "The message has been changed".
  /// This method is called when the "Change Message" button is pressed.
  void changeMessage() {
    /// Log a message to the console indicating that the message has been changed.
    print("Message changed in MyHomePage");

    /// Update the message variable to the new value.
    message = "The message has been changed";

    /// Trigger the widget tree to rebuild, causing the updated message to be displayed on the screen.
    setState(() {});
  }

  /// Builds the widget tree for the BasePage.
  /// It returns a Center widget that contains the message and the "Change Message" button.
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Displays the message to the user.
          Text(message),

          /// Creates an ElevatedButton widget that triggers the `changeMessage()` method when pressed.
          ElevatedButton(
            onPressed: changeMessage,
            child: const Text('Change Message'),
          ),
        ],
      ),
    );
  }
}

/// MyHomePage inherits from BasePage.
class MyHomePage extends BasePage {
  /// Creates the state for the MyHomePage widget.
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/// _MyHomePageState is the State class for the MyHomePage widget.
/// It overrides the `changeMessage()` method in the BasePageState class to print a message to the console when the method is called.
class _MyHomePageState extends _BasePageState<MyHomePage> {
  @override
  void changeMessage() {
    /// Calls the `super.changeMessage()` method to change the message and trigger the widget tree rebuild.
    super.changeMessage();

    /// Prints a message to the console indicating that the message has been changed in MyHomePage.
    print("Message changed in MyHomePage");
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inheritance Example',
      home: MyHomePage(),
    );
  }
}
