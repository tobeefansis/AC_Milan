import 'package:flutter/material.dart';
import 'package:my_test_projeasct/MatchList.dart';

import 'Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        accentColor: Color.fromARGB(255, 201, 36, 13),
        primaryColor: Color.fromARGB(255, 201, 36, 13),
        backgroundColor:  Color.fromARGB(255, 243, 243, 243),
      ),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Login(),
      },
    );
  }
}
