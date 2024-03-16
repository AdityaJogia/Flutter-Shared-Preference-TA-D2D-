import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  TextDemo({super.key});

  @override
  State<TextDemo> createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> with TickerProviderStateMixin {
  TextEditingController textEditingController = TextEditingController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Text Demo"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home), text: "HOme"),
              Tab(
                icon: Icon(Icons.settings),
                text: "Setting",
              )
            ],
          )),
      drawer: NavigationDrawer(
        children: [],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Text(
              "Home",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Center(
            child: Text(
              "Account",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
