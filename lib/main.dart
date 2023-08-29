import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'form.dart';
import 'updater.dart';

void main() {
  runApp(const MyApp());
}

List<String> names = ['hitesh', 'bharadwaj', 'mickey'];
List<String> emails = ['hitesh@xyz', 'bharadwaj@xyz', 'mickey@xyz'];

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(builder: (context) {
        return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: names.length,
          itemBuilder: ((context, index) {
            return ListTile(
              tileColor: (index % 2) != 0
                  ? Color.fromARGB(255, 100, 53, 0)
                  : Color.fromARGB(255, 0, 57, 100),
              title: Text(names[index]),
              subtitle: Text(emails[index]),
            );
          }),
        );
      }),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyForm()),
          );
          setState(() {
            // Update the UI after the form is closed
          });
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
