
import 'package:flutter/material.dart';
import 'package:my_test_projeasct/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to рFlutter',
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
