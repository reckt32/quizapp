// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class user_input extends StatefulWidget {
  const user_input({super.key});

  @override
  State<user_input> createState() => _user_inputState();
}

class _user_inputState extends State<user_input> {
  var nameController = TextEditingController();
  var phonenumberController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phonenumberController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DevSoc'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color.fromARGB(255, 68, 68, 68),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Quiz App',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            SizedBox(
              height: 21.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  label: Text(
                    'Enter your name',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  prefixIcon: Icon(Icons.add_comment),
                  focusColor: Colors.white,
                  fillColor: Colors.grey,
                ),
                cursorColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(color: Colors.white),
                controller: phonenumberController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    label: Text(
                      'Enter your phone number',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    prefixIcon: Icon(Icons.add_comment),
                    focusColor: Colors.white,
                    fillColor: Colors.grey,
                    iconColor: Colors.white),
                cursorColor: Colors.white,
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/start');
                },
                child: Text('Enter')),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
