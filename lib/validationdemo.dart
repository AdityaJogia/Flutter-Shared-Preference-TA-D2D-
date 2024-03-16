import 'package:demo_2/imageDemo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ValidationDemo extends StatefulWidget {
  const ValidationDemo({super.key});

  @override
  State<ValidationDemo> createState() => _ValidationDemoState();
}

class _ValidationDemoState extends State<ValidationDemo> {
  bool isRemember = false;
  TextEditingController usernameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  GlobalKey<FormState> _key = new GlobalKey();
  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );
Future<bool?> setData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isRemember", isRemember);
  bool? isChecked = prefs.getBool("isRemember");
  print(isChecked);
  return isChecked;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (usernameTextController.text.isEmpty) {
                  return "Please enter username";
                }
              },
              decoration: InputDecoration(hintText: "username"),
              controller: usernameTextController,
            ),
            TextFormField(
              validator: (value) {
                if (passwordTextController.text.isEmpty) {
                  return "Please enter password";
                }
              },
              decoration: InputDecoration(hintText: "password"),
              controller: passwordTextController,
            ),
            Checkbox(
              value: isRemember,
              onChanged: (value) {
                setState(() {
                  isRemember = !isRemember;
                  setData();
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ImageDemo();
                      },
                    ));
                  }
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
