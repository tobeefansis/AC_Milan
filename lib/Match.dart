import 'Players.dart';

class Match {
  String status;
  String name;
  String dateBeginning;
  String dateEnd;
  List<PlayerinMatch> players;
  Match({
    this.status,
    this.name,
    this.dateBeginning,
    this.dateEnd,
    this.players,
  });
}

class PlayerinMatch {
  Player player;
  int voites;
  PlayerinMatch({
    this.player,
    this.voites,
  });
}
