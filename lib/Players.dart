import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Player {
  String name;
  Player({
    this.name,
  });
}

class PlayerList {
  static List<Player> players = [
    Player(name: "name 1name 1name 1name 1name 1name 1name 1"),
    Player(name: "name 2"),
    Player(name: "name 3"),
    Player(name: "name 4"),
    Player(name: "name 5"),
    Player(name: "name 6"),
    Player(name: "name 7"),
    Player(name: "name 8"),
    Player(name: "name 9"),
    Player(name: "name 10"),
    Player(name: "name 11"),
    Player(name: "name 12"),
    Player(name: "name 13"),
    Player(name: "name 14"),
    Player(name: "name 14"),
    Player(name: "name 15"),
  ];
  static List<Widget> getPlayers(List<Player> players) {
    return players
        .map(
          (Player p) => Padding(
            padding:
                const EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 1.4,
                  child: Checkbox(
                    activeColor: Colors.blue[600],
                    onChanged: (bool t) {},
                    value: false,
                  ),
                ),
                Expanded(
                  child: Text(
                    p.name,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
        )
        .toList();
    //
  }
}
