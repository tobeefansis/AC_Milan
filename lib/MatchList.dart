import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CreateMatch.dart';
import 'Result.dart';
import 'Action.dart';
import 'EditMatch.dart';
import 'Match.dart';

class MatchList extends StatefulWidget {
  @override
  _MatchListState createState() => _MatchListState();
}

class TwitterSpinnerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = 25;
    double width = 8;

    Paint innerCirclePaint = Paint()
      ..color = Color(0xFF1da1f2).withOpacity(0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = new Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, innerCirclePaint);
  }

  @override
  bool shouldRepaint(TwitterSpinnerPainter oldDelegate) {
    //Will be changed later
    return false;
  }
}

class _MatchListState extends State<MatchList> {
  List<Match> matchs = [];

  @override
  void initState() {
    update();
    super.initState();
  }

  void showEditMenu(context, Match m) async {
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
                deleteAsync(m.id);
                update();
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
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue[600],
        onPressed: () {
          update();

          Navigator.of(context).push(
            createRoute(
              CreateMatch(),
            ),
          );
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
          IconButton(
            icon: Icon(Icons.update),
            onPressed: () {
              update();
            },
          ),
        ],
      ),
      body: ListView(
        children: matchs.map(
          (Match m) {
            return Padding(
              padding:
                  const EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
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
                  onCanceled: () {},
                  onSelected: (value) async {
                    switch (value) {
                      case 1:
                        getMatches().then((String st) {
                          var temp = MatchPopupItem.fromJsonToList(st);
                          Navigator.of(context).push(
                            createRoute(
                              CreateMatch( matchPopupItem: temp),
                            ),
                          );
                        });

                        break;
                      case 2:
                        Navigator.of(context).push(createRoute(Result(m)));
                        break;
                      case 3:
                        showEditMenu(context, m);
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
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              children: <Widget>[
                                Text("${m.homeTeam} - ${m.awayTeam}",
                                    style: new TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold)),
                                Text(" ${m.status}",
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
                              Text(getDate(m.dateBeginning),
                                  style: new TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400)),
                              Text(getDate(m.dateEnd),
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
            );
          },
        ).toList(),
      ),
    );
  }

  void update() {
    getAsync().then((List<Match> m) {
      matchs = m;
      matchs.sort((a, b) => b.id.compareTo(a.id));
    }).then((List<Match> m) {
      setState(() {});
    }).catchError((exception) => print('DOH!'));
  }

  String getDate(String dateEnd) {
    //2019-10-15T16:28:03.000Z
    RegExp date = new RegExp(r"\d{4}(-|\/)\d{2}(-|\/)\d{2}");
    RegExp time = new RegExp(r"\d{2}(:|\/)\d{2}");
    return date.stringMatch(dateEnd) + " " + time.stringMatch(dateEnd);
  }
}
