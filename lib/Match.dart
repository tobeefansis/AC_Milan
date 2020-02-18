class Match {
  String status;
  String name;
  String dateBeginning;
  String dateEnd;
  List<Player> players;
  Match({
    this.status,
    this.name,
    this.dateBeginning,
    this.dateEnd,
    this.players,
  });
}

class Player {
  String name;
  int voites;
  Player({
    this.name,
    this.voites,
  });
}
