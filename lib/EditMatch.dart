import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_test_projeasct/PlayerCheckList.dart';

import 'Action.dart';
import 'DatePicker.dart';
import 'SelectPlayer.dart';

class EditMatch extends StatefulWidget {
  EditMatch({Key key}) : super(key: key);

  @override
  _EditMatchState createState() => _EditMatchState();
}

class _EditMatchState extends State<EditMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        icon: Icon(Icons.navigate_next),
        label: Text('Next'),
        backgroundColor: Colors.blue[600],
        onPressed: () {
          Navigator.of(context).push(createRoute(SelecctPlayer()));

          // Add your onPressed code here!
        },
      ),
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          child: Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                children: <Widget>[
                  Text(
                    "Start",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: DateTimePicker("asd", "asd"),
                  ),
                  Text(
                    "End",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10.0,
                    ),
                    child: DateTimePicker("asd", "asd"),
                  ),
                  //  Container(child:  ListView(
                  //     // children: <Widget>[
                  //     //   Row(
                  //     //     children: <Widget>[
                  //     //       Transform.scale(
                  //     //         scale: 1.4,
                  //     //         child: Checkbox(
                  //     //           activeColor: Colors.blue[600],
                  //     //           onChanged: (bool t) {},
                  //     //           value: false,
                  //     //         ),
                  //     //       ),
                  //     //       Expanded(
                  //     //         child: Text(
                  //     //           "p",
                  //     //           style: TextStyle(
                  //     //               fontWeight: FontWeight.bold, fontSize: 18.0),
                  //     //         ),
                  //     //       )
                  //     //     ],
                  //     //   ),
                  //     // ],
                  //   ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
