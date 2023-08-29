import 'package:flutter/material.dart';
import 'main.dart';
import 'updater.dart'; // Make sure to import your main.dart properly

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  // String _name = "";
  // String _email = "";
  StringUpdater _name = StringUpdater();
  StringUpdater _email = StringUpdater();
  String name = "";
  String email = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Form'),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0), // Add padding to constrain the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Align children to the start of the column
            children: [
              const Text("Name:"),
              const SizedBox(height: 8.0), // Add some vertical spacing
              TextFormField(
                onChanged: (value) {
                 _name.name=value;
                  // print(_name);
                },
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(), // Use a border for the decorator
                  hintText: 'Enter your Name',
                ),
              ),
              const SizedBox(height: 16.0), // Add spacing
              const Text("Email:"),
              const SizedBox(height: 8.0), // Add some vertical spacing
              TextFormField(
                onChanged: (value) {
                  _email.email=value;
                  // print(_email);
                },
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(), // Use a border for the decorator
                  hintText: 'Enter your Email',
                ),
              ),
              TextButton(
                onPressed: () {
                  // names.add(_name);
                  // emails.add(_email);
                  // Updater.addName(_name);
                  _name.addName();
                  _email.addEmail();
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


