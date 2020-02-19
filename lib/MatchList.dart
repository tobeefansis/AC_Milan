import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'DatePicker.dart';
import 'Match.dart';

class MatchList extends StatefulWidget {
  @override
  _MatchListState createState() => _MatchListState();
}

class _MatchListState extends State<MatchList> {
  List<Match> matchs = [
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11.14.2019(16:49)",
        dateEnd: "11.14.2019(16:49)"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - Napoli",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Juventus - Milan",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Bologna - Milan",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          Player(name: "player1", voites: 11),
          Player(name: "player2", voites: 1),
          Player(name: "player3", voites: 12),
          Player(name: "player4", voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
  ];

  String testData = "asd";

  @override
  void initState() {
    super.initState();
  }

  void showEditMenu(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete a game'),
          actions: <Widget>[
            FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Delete'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  // ListTile(
  //     title: Text(m.name),
  //     subtitle: Text("status: "+m.status),
  //     trailing: Text("Begin "+m.dateBeginning+" \n\nEnd   "+m.dateEnd),
  //     leading: CircleAvatar(child: Text("2"),),
  //   )
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        home: Scaffold(
            backgroundColor: Colors.grey[350],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              child: Icon(Icons.add),
              backgroundColor: Colors.red,
            ),
            appBar: AppBar(
              backgroundColor: Colors.red,
              title: Text("Management Console"),
              actions: <Widget>[
                Material(
                  color: Colors.transparent,
                  child: Center(
                    child: Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.search),
                        color: Colors.red[900],
                        onPressed: () {
                          //   _showPushDialog();
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
            body: ListView(
                children: matchs
                    .map((Match m) => Padding(
                          padding: const EdgeInsets.only(
                              bottom: 5.0, left: 12.0, right: 12.0),
                          child: new Card(
                              child: Row(
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0, bottom: 8.0),
                                    child: new Align(
                                      alignment: Alignment.topLeft,
                                      child: new Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 8.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text("Milan - SPAL",
                                                style: new TextStyle(
                                                    color: new Color.fromARGB(
                                                        255, 117, 117, 117),
                                                    fontSize: 18.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(" Fixture",
                                                style: new TextStyle(
                                                    color: new Color.fromARGB(
                                                        255, 117, 117, 117),
                                                    fontSize: 11.0,
                                                    fontWeight:
                                                        FontWeight.bold))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10.0, top: 10.0, bottom: 8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("11/23/2019 - 22:50",
                                            style: new TextStyle(
                                                color: new Color.fromARGB(
                                                    255, 117, 117, 117),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400)),
                                        Text(" - 11/24/2019 - 00:50",
                                            style: new TextStyle(
                                                color: new Color.fromARGB(
                                                    255, 117, 117, 117),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w400))
                                      ],
                                    ),
                                  ),
                                  Text(testData)
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: ButtonBar(
                                  children: <Widget>[
                                    Material(
                                      color: Colors.white,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.red,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.edit),
                                            color: Colors.white,
                                            onPressed: () {
                                               Navigator.push(context,MaterialPageRoute(builder: (context)=>DateTimePicker(testData,testData),settings: RouteSettings())); 
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.white,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.red,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.insert_chart),
                                            color: Colors.white,
                                            onPressed: () {
                                              //  _neverSatisfied(context);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.white,
                                      child: Center(
                                        child: Ink(
                                          decoration: const ShapeDecoration(
                                            color: Colors.red,
                                            shape: CircleBorder(),
                                          ),
                                          child: IconButton(
                                            icon: Icon(Icons.delete),
                                            color: Colors.white,
                                            onPressed: () {
                                              showEditMenu(context);
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )),
                        ))
                    .toList())));
  }
}
