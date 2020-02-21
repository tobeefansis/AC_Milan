import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_test_projeasct/Players.dart';
import 'package:my_test_projeasct/Result.dart';
import 'Action.dart';
import 'EditMatch.dart';
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
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11.14.2019(16:49)",
        dateEnd: "11.14.2019(16:49)"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - Napoli",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Juventus - Milan",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Bologna - Milan",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
        ],
        name: "Milan - SPAL",
        dateBeginning: "11/14/2019 - 16:49",
        dateEnd: "11/22/2019 - 16:49"),
    Match(
        status: "Fixture",
        players: [
          PlayerinMatch(player: PlayerList.players[1], voites: 11),
          PlayerinMatch(player: PlayerList.players[2], voites: 1),
          PlayerinMatch(player: PlayerList.players[3], voites: 12),
          PlayerinMatch(player: PlayerList.players[4], voites: 1),
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

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(color: Colors.blue[600]),
            ),
            ListTile(
              title: CircleAvatar(child: Text("ok")),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text("Management Console "),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              //   _showPushDialog();
            },
          ),
        ],
      ),
      body: ListView(
        children: matchs
            .map(
              (Match m) => Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, left: 12.0, right: 12.0),
                child: RaisedButton(
                  onPressed: () {},
                  child: new PopupMenuButton<int>(
                    offset: Offset(0, -10),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text("Edit"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("Results"),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text("Delete"),
                      ),
                    ],
                    initialValue: 0,
                    onCanceled: () {
                      print("You have canceled the menu.");
                    },
                    onSelected: (value) async {
                      print("value:$value");
                      switch (value) {
                        case 1:
                          Navigator.of(context).push(createRoute(EditMatch()));

                          break;
                        case 2:
                            Navigator.of(context).push(createRoute(Result()));
                          break;
                        case 3:
                          showEditMenu(context);
                          break;
                        default:
                      }
                    },
                    captureInheritedThemes: false,
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10.0, bottom: 8.0),
                          child: new Align(
                            alignment: Alignment.topLeft,
                            child: new Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Row(
                                children: <Widget>[
                                  Text("Milan - SPAL",
                                      style: new TextStyle(
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold)),
                                  Text(" Fixture",
                                      style: new TextStyle(
                                          fontSize: 11.0,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, top: 10.0, bottom: 8.0),
                            child: Column(
                              children: <Widget>[
                                Text("11/23/2019 - 22:50",
                                    style: new TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400)),
                                Text("11/24/2019 - 00:50",
                                    style: new TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
