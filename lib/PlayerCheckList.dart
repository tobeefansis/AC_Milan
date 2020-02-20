import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Players.dart';

class PlayerChackList extends StatefulWidget {
  PlayerChackList({Key key}) : super(key: key);

  @override
  _PlayerChackListState createState() => _PlayerChackListState();
}

class _PlayerChackListState extends State<PlayerChackList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:PlayerList.getPlayers(PlayerList.players),
    );
  }
}
