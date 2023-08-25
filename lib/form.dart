import 'package:flutter/material.dart';
import 'main.dart'; // Make sure to import your main.dart properly

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String _name = "";
  String _email = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Form'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0), // Add padding to constrain the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Align children to the start of the column
            children: [
              Text("Name:"),
              SizedBox(height: 8.0), // Add some vertical spacing
              TextFormField(
                onChanged: (value) {
                  _name=value;
                  print(_name);
                },
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(), // Use a border for the decorator
                  hintText: 'Enter your Name',
                ),
              ),
              SizedBox(height: 16.0), // Add spacing
              Text("Email:"),
              SizedBox(height: 8.0), // Add some vertical spacing
              TextFormField(
                onChanged: (value) {
                  _email=value;
                  print(_email);
                },
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(), // Use a border for the decorator
                  hintText: 'Enter your Email',
                ),
              ),
              TextButton(
                onPressed: () {
                  // setState(() {
                  //   names.add(_name);
                  //   emails.add(_email);
                  //   print(names);

                  // });
                  names.add(_name);
                  emails.add(_email);
                  Navigator.pop(context);
                },
                child: Text('Submit'),
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
