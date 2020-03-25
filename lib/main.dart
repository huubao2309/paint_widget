import 'package:flutter/material.dart';

import 'lib_use.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Paint Event Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaintEventDemo(),
    );
  }
}
