import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Generating dummy data for testing purpose
  final List dummyData = List.generate(100, (index) => '$index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SHASHI'),
      ),
      body: CupertinoScrollbar(
          thickness: 8,
          isAlwaysShown: true,
          child: ListView.builder(
            itemCount: dummyData.length,
            itemBuilder: (context, index) => Card(
              color: Colors.blue[200],
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Text(
                    dummyData[index],
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}