import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Config.dart';
import 'DropDown.dart';

class EditMatch extends StatefulWidget {
  EditMatch({Key key}) : super(key: key);

  @override
  _EditMatchState createState() => _EditMatchState();
}

class _EditMatchState extends State<EditMatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       darkTheme: Config.getTheme(),
       home:Scaffold(
         appBar: AppBar(title: Text("test"),),
         body: DropDown(),
       )
    );
  }
}