import 'package:flutter/material.dart';

import 'HomePage.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {

      return Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text("Drawer")),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyHomePage();
                },));
              },
              title: Text("Home "),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            )
          ],
        ),
      );
    }
  }

