import 'package:flutter/material.dart';
import 'updater.dart'; // Make sure to import your main.dart properly

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  
  final StringUpdater _name = StringUpdater();
  final StringUpdater _email = StringUpdater();

  bool isEmail = false;
  bool isName = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Form'),
        ),
        body: Container(
          padding: const EdgeInsets.all(
              16.0), // Add padding to constrain the content
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Align children to the start of the column
            children: [
              const Text("Name:"),
              const SizedBox(height: 8.0), // Add some vertical spacing
              TextFormField(
                onChanged: (value) {
                  _name.name = value;
                  setState(() {
                    isName = true;
                  });
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
                  _email.email = value;
                  setState(() {
                    isEmail = true;
                  });
                },
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(), // Use a border for the decorator
                  hintText: 'Enter your Email',
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: ElevatedButton(
                  onPressed: (isName && isEmail) ? () {
                    _name.addName();
                    _email.addEmail();
                    Navigator.pop(context);
                  } : null,
                  child: const Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}