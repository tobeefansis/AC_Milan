import 'Players.dart';

class Match {
  static List<Match> getMatch() {
    return [
      Match(
        name: "name 1",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
      Match(
        name: "name 2 sdfsdfsdfsdfsdfsddddddddddddddddd sdfsd fsdf",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
      Match(
        name: "name 3",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
      Match(
        name: "name 4",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
      Match(
        name: "name 5",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
      Match(
        name: "name 6",
        dateBeginning: "1/1/1",
        dateEnd: "2/2/2",
        status: "live",
      ),
    ];
  }

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
