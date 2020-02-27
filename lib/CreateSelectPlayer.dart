import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_test_projeasct/Match.dart';
import 'package:my_test_projeasct/PlayerCheckList.dart';
import 'package:my_test_projeasct/Players.dart';

import 'Action.dart';

class CreateSelecctPlayer extends StatefulWidget {
final  List<Player> players;
final  Match math;
 final String start;
final  String end;
  CreateSelecctPlayer(this.players, this.math, this.start, this.end, {Key key})
      : super(key: key);

  @override
  _CreateSelecctPlayerState createState() => _CreateSelecctPlayerState();
}

class _CreateSelecctPlayerState extends State<CreateSelecctPlayer> {
  List<Player> players;
  List<PlayerinMatch> selectPlayers;
  Match math;
  PlayerChackList playerChackList;
  String start;
  String end;
  @override
  void initState() {
    players = widget.players;
    math = widget.math;
    selectPlayers = [];
    start = widget.start;
    end = widget.end;
    super.initState();
  }

  String toJson() {
    List<String> linees = [];
    for (Line item in playerChackList.lines) {
      if (item.checked) {
        linees.add(item.id);
      }
    }
    var temp = {
      'start_date': start,
      'end_date': end,
      'match_id': math.matchid,
      'players': linees,
    };

    return json.encode(temp);
  }

  @override
  Widget build(BuildContext context) {
    playerChackList = PlayerChackList(
      lines: players
          .map((Player p) => Line(
                id: p.providerId.toString(),
                text: p.getName(),
                checked: isIncluded(p, selectPlayers),
              ))
          .toList(),
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        icon: Icon(Icons.check),
        label: Text('Create'),
        backgroundColor: Colors.blue[600],
        onPressed: () {
          createMatch(toJson());
          Navigator.pop(context);
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: Text("Select Players"),
      ),
      body: playerChackList,
    );
  }

  bool isIncluded(Player p, List<PlayerinMatch> selectPlayers) {
    for (PlayerinMatch item in selectPlayers) {
      if (item.number == p.number) {
        return true;
      }
    }
    return false;
  }
}
