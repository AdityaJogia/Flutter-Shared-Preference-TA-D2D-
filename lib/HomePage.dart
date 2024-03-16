import 'package:demo_2/customDrawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int selectedIndex = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('AppBar'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item click
              if (value == 'showAlertDialog') {
                _showAlertDialog(context);
              }
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: 'showAlertDialog',
                  child: Text('Show Alert Dialog'),
                ),
                // Add more menu items as needed
              ];
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Center(child: Text("Home")),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: selectedIndex,
        selectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "add")
        ],
      ),
    );
  }

  // Function to display an AlertDialog
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert Dialog'),
          content: Text('This is an example of an alert dialog.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the alert dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
