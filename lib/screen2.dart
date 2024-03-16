import 'package:demo_2/textdemo.dart';
import 'package:flutter/material.dart';

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue, title: const Text("Drawer Demo")),
      drawer: Drawer(

        child: Column(
          children: [

            Text("Drawer",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TextDemo(),));
              },
            leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text("add"),
            )
          ],
        ),
      ),
    );
  }
}
