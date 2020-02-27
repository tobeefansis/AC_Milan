import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Result.dart';
import 'Action.dart';
import 'EditMatch.dart';
import 'Match.dart';

class Search extends StatefulWidget {
  Search({
    Key key,
  }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Function onChanged;
  MyCustomAppBar({
    Key key,
    this.onChanged,
    @required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue[600],
          padding: EdgeInsets.only(top: 35, bottom: 5),
          child: Row(children: [
            BackButton(
              color: Colors.white,
            ),
            Expanded(
              child: Container(
                child: TextFormField(
                  onChanged: (text) {
                    // loginStr = text;
                    onChanged(text);
                  },
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Colors.blue)),
                    filled: true,
                    contentPadding:
                        EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.white,
              onPressed: () => null,
            ),
          ]),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}

class _SearchState extends State<Search> {
  List<Match> matchs = [];

  String searchSrt = "";

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
                Navigator.of(context).pop();
                Navigator.of(context).pop();
                
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: MyCustomAppBar(
          onChanged: (String text) {
            searchSrt = text;
            setState(() {});
          },
          height: 50,
        ),
        body: ListView(
          children: matchs.map(
            (Match m) {
              if ("${m.homeTeam} - ${m.awayTeam}"
                  .contains(new RegExp(searchSrt, caseSensitive: false))) {
                return Padding(
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
                      onCanceled: () {},
                      onSelected: (value) async {
                        switch (value) {
                          case 1:
                            getMatches().then((String st) {
                              var temp = MatchPopupItem.fromJsonToList(st);
                              Navigator.of(context).push(
                                createRoute(
                                  EditMatch(math: m, matchPopupItem: temp),
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
                                padding: const EdgeInsets.only(
                                    top: 15.0, bottom: 15.0),
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
              } else {
                return Container();
              }
            },
          ).toList(),
        ),
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
