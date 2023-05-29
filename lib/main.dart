import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  //display data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ເລືອກເມນູ"),
      ),
      body: Center(
          child: ListView(
        children: getData(15),
      )),
    );
  }

// function ກຽມຂໍ້ມູນ
  List<Widget> getData(int count) {
    // group data text widget
    List<Widget> data = [];

    for (var i = 0; i < count; i++) {
      var menu = ListTile(
        title: Text(
          "ເມນູທີ່ ${i + 1}",
        ),
        subtitle: Text(
          "ຫົວຂໍ້ຍ່ອຍ",
          style: TextStyle(fontSize: 15),
        ),
      );
      data.add(menu);
    }
    return data;
  }
}
