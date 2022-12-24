import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsonobj/data_class.dart';

void main() {
  runApp(const MyApp());
}

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
  void getData() async {
    final jsonString = await rootBundle.loadString('assets/data.json');
    final data = jsonDecode(jsonString)['tags'] as List;
    //print(data);
    //List<Tag> tagObjs = data.map((e) => Tag.fromJson(e)).toList();
    List<Tag> tagObj = data.map((e) => Tag.fromJson(e)).toList();
    print(tagObj.runtimeType);
    for (var i = 0; i < tagObj.length; i++) {
      print(tagObj[i].name);
      print(tagObj[i].quantity);
    }
    //return tagObj;
  }

  @override
  Widget build(BuildContext context) {
    // print(getData());
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                getData();
              },
              child: const Text('Print Data'),
            )
          ],
        ),
      ),
    );
  }
}
