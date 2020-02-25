import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Action.dart';
import 'DatePicker.dart';
import 'Match.dart';
import 'Players.dart';
import 'SelectPlayer.dart';

class EditMatch extends StatefulWidget {
  Match math;
  List<MatchPopupItem> matchPopupItem;
  EditMatch({
    Key key,
    this.math,
    this.matchPopupItem,
  }) : super(key: key);

  @override
  _EditMatchState createState() => _EditMatchState();
}

class _EditMatchState extends State<EditMatch> {
  Match math;
  List<MatchPopupItem> matchPopupItem;
  MatchPopupItem selectMatch;
  String startDate;
  String endDate;
  String startTime;
  String endTime;
  @override
  void initState() {
    math = widget.math;
    matchPopupItem = widget.matchPopupItem;
    selectMatch = getMatchPopupItem(math.match);
    startDate = getDate(math.dateBeginning);
    startTime = getTime(math.dateBeginning);
    endDate = getDate(math.dateEnd);
    endTime = getTime(math.dateEnd);
    super.initState();
  }

  String getDate(String dateEnd) {
    //2019-10-15T16:28:03.000Z
    RegExp date = new RegExp(r"\d{4}(-|\/)\d{2}(-|\/)\d{2}");
    return date.stringMatch(dateEnd);
  }

  String getTime(String dateEnd) {
    RegExp time = new RegExp(r"\d{2}(:|\/)\d{2}");
    return time.stringMatch(dateEnd);
  }

  MatchPopupItem getMatchPopupItem(String id) {
    for (MatchPopupItem item in matchPopupItem) {
      if (item.id == id) {
        return item;
      }
    }
    return null;
  }

  List<PopupMenuEntry<int>> createMenu() {
    var list = List<PopupMenuEntry<int>>();
    for (MatchPopupItem item in matchPopupItem) {
      list.add(
        PopupMenuItem(
          value: int.parse(item.id.substring(1)),
          child: Container(
            child: Text(
                "${item.homeTeamName} - ${item.awayTeamName}   ${getDate(item.date)}"),
          ),
        ),
      );
    }

    return list;
  }

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
          getPlayers(selectMatch.id).then((String str) {
            var temp = Player.fromJsonToList(str);
            math.matchid = selectMatch.id;
            Navigator.of(context).push(createRoute(SelecctPlayer(temp, math ,"${startDate}T$startTime:00.000Z","${endDate}T$endTime:00.000Z")));
          });

          // Add your onPressed code here!
        },
      ),
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text("Edit"),
            Text(
              " ${selectMatch.getName()}",
              style: new TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
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
                      offset: Offset(10, 0),
                      itemBuilder: (context) {
                        return createMenu();
                      },
                      initialValue: -1,
                      onCanceled: () {
                        print("You have canceled the menu.");
                      },
                      onSelected: (value) async {
                        selectMatch = getMatchPopupItem("g$value");
                        setState(() {});
                      },
                      captureInheritedThemes: false,
                      child: Row(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              selectMatch.getName(),
                              style: new TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(Icons.arrow_downward),
                            ),
                          ),
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
                    child: DateTimePicker(startDate, startTime,(String date,String time){
                      this.startDate = date;
                      this.startTime = time;
                    }),
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
                    child: DateTimePicker(endDate, endTime,(String date,String time){
                      this.endDate = date;
                      this.endTime = time;
                    }),
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

class MatchPopupItem {
  String id;
  int seasonId;
  int competitionId;
  String date;
  String homeTeamId;
  String homeTeamName;
  String awayTeamId;
  String awayTeamName;
  String status;
  int competitionid;
  String homeTeam;
  String awayTeam;
  MatchPopupItem({
    this.id,
    this.seasonId,
    this.competitionId,
    this.date,
    this.homeTeamId,
    this.homeTeamName,
    this.awayTeamId,
    this.awayTeamName,
    this.status,
    this.competitionid,
    this.homeTeam,
    this.awayTeam,
  });

  String getName() {
    return "$homeTeamName $awayTeamName";
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'season_id': seasonId,
      'competition_id': competitionId,
      'date': date,
      'home_team_id': homeTeamId,
      'home_team_name': homeTeamName,
      'away_team_id': awayTeamId,
      'away_team_name': awayTeamName,
      'status': status,
      'competitionid': competitionid,
      'home_team': homeTeam,
      'away_team': awayTeam,
    };
  }

  static List<MatchPopupItem> fromJsonToList(String source) {
    var t = json.decode(source);
    List<MatchPopupItem> temp = [];
    for (var item in t) {
      temp.add(fromMap(item));
    }
    return temp;
  }

  static MatchPopupItem fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MatchPopupItem(
      id: map['id'],
      seasonId: map['season_id'],
      competitionId: map['competition_id'],
      date: map['date'],
      homeTeamId: map['home_team_id'],
      homeTeamName: map['home_team_name'],
      awayTeamId: map['away_team_id'],
      awayTeamName: map['away_team_name'],
      status: map['status'],
      competitionid: map['competitionid'],
      homeTeam: map['home_team'],
      awayTeam: map['away_team'],
    );
  }

  String toJson() => json.encode(toMap());

  static MatchPopupItem fromJson(String source) => fromMap(json.decode(source));
}

String getDate(String dateEnd) {
  //2019-10-15T16:28:03.000Z
  RegExp date = new RegExp(r"\d{4}(-|\/)\d{2}(-|\/)\d{2}");
  return date.stringMatch(dateEnd);
}
