import 'package:flutter/material.dart';
import 'package:my_test_projeasct/MatchList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MatchList(),
      routes: <String, WidgetBuilder> {
      '/home': (BuildContext context) => MatchList(),
    },
    );
  }
}