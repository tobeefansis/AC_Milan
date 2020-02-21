import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Action.dart';
import 'DatePicker.dart';
import 'Players.dart';
import 'SelectPlayer.dart';
import 'Match.dart';

class EditMatch extends StatefulWidget {
  EditMatch({Key key}) : super(key: key);

  @override
  _EditMatchState createState() => _EditMatchState();
}

List<PopupMenuEntry<int>> createMenu(List<Match> matchs) {
  var list = List<PopupMenuEntry<int>>();
  for (Match item in matchs) {
    list.add(
      PopupMenuItem(
        child: Container(child: Text(item.name), ),
      ),
    );
  }

  return list;
}

class _EditMatchState extends State<EditMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        icon: Icon(Icons.arrow_forward),
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
                  RaisedButton(
                    onPressed: () {},
                    child: new PopupMenuButton<int>(
                      offset: Offset(0, -10),
                      itemBuilder: (context) {
                        return createMenu(Match.getMatch());
                      },
                      initialValue: -1,
                      onCanceled: () {
                        print("You have canceled the menu.");
                      },
                      onSelected: (value) async {},
                      captureInheritedThemes: false,
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Milan - SPAL",
                              style: new TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.arrow_downward)))
                        ],
                      ),
                    ),
                  ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
