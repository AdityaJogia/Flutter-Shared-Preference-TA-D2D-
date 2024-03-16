import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Demo"),

      ),
      body: Row(
        children: [
          demo(2,Colors.blue),

       demo(1, Colors.yellow),
          demo(1, Colors.red)
        ],
      ),
    );
  }

  Expanded demo(int flex,Color color) {
    return Expanded(
          flex: flex,
          child: Container(
           margin: EdgeInsets.symmetric(horizontal: 2),
            color: color,
          ),
        );
  }
}
