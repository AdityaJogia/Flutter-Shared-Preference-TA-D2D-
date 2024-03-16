import 'package:demo_2/HomePage.dart';
import 'package:demo_2/customDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarDemo extends StatefulWidget {
  const TabbarDemo({super.key});

  @override
  State<TabbarDemo> createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tabbar"),
        backgroundColor: Colors.white,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text("Alert"),
                          content: Text("This is alert"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text("Cancel")),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return MyHomePage();
                                    },
                                  ));
                                },
                                child: Text("ok"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text("alert"),
                )
              ];
            },
          ),
        ],
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          TabBar(controller: tabController, tabs: [
            Tab(
              child: Text("HOme"),
            ),
            Tab(
              child: Text("Settings"),
            ),
          ]),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              Center(
                child: Text("HOme"),
              ),
              Center(
                child: Text("Settings"),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
