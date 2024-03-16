import 'package:demo_2/imageDemo.dart';
import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});

  @override
  State<Validation> createState() => _ValidationState();
}

class _ValidationState extends State<Validation> {
  TextEditingController usernameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Validation")),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a username';
                }
              },
                decoration: InputDecoration(hintText: "username"),
                controller: usernameTextController),
            TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  else if (!_passwordRegExp.hasMatch(value)) {
                    return 'Password must contain at least 8 characters, including letters and numbers.';
                  }
                },
                decoration: InputDecoration(hintText: "password"),
                controller: passwordTextController),
            ElevatedButton(
                onPressed: () {
                  if(_formkey.currentState!.validate())
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ImageDemo();
                      },));
                    }},
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
