import 'dart:convert';

import 'EditMatch.dart';

class Match {
  int id;
  String dateBeginning;
  String dateEnd;
  int competitionid;
  String match;
  String matchid;
  String homeTeam;
  String awayTeam;
  int competitionId;
  String homeTeamName;
  String awayTeamName;
  String status;
  int totalVotes;
  List<PlayerinMatch> players;

  static Match fromPopup(MatchPopupItem item) {
    Match m = Match(
      awayTeam: item.awayTeam,
      id: int.parse(item.id.substring(1)),
      dateBeginning: item.date,
      dateEnd: item.date,
      competitionid: item.competitionid,
      homeTeam: item.homeTeam,
      competitionId: item.competitionId,
      homeTeamName: item.homeTeamName,
      awayTeamName: item.awayTeamName,
      status: item.status,
      
    );
    return m;
  }

  Match({
    this.status,
    this.dateBeginning,
    this.dateEnd,
    this.players,
    this.competitionid,
    this.id,
    this.match,
    this.matchid,
    this.awayTeam,
    this.homeTeam,
    this.competitionId,
    this.homeTeamName,
    this.awayTeamName,
    this.totalVotes,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'status': status,
      'dateBeginning': dateBeginning,
      'dateEnd': dateEnd,
      'competitionid': competitionid,
      'match': match,
      'matchid': matchid,
      'home_team': homeTeam,
      'away_team': awayTeam,
      'competition_id': competitionId,
      'home_team_name': homeTeamName,
      'away_team_name': awayTeamName,
      'total_votes': totalVotes,
      'players': List<dynamic>.from(players.map((x) => x.toMap())),
    };
  }

  static Match fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return Match(
      id: map['id'],
      status: map['status'],
      dateBeginning: map['start_date'],
      dateEnd: map['end_date'],
      competitionid: map['competitionid'],
      match: map['match'],
      matchid: map['matchid'],
      homeTeam: map['home_team'],
      awayTeam: map['away_team'],
      competitionId: map['competition_id'],
      homeTeamName: map['home_team_name'],
      awayTeamName: map['away_team_name'],
      totalVotes: map['total_votes'],
      players: List<PlayerinMatch>.from(
          map['players']?.map((x) => PlayerinMatch.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  static List<Match> fromJsonToList(String source) {
    var t = json.decode(source);
    List<Match> temp = [];
    for (var item in t) {
      temp.add(fromMap(item));
    }
    return temp;
  }
}

class PlayerinMatch {
  int id;
  int votingId;
  int votes;
  String playerProviderId;
  String providerid;
  String firstname;
  String lastname;
  String providerId;
  String firstName;
  String lastName;
  String number;
  String percentage;
  int rank;
  PlayerinMatch({
    this.id,
    this.votingId,
    this.votes,
    this.playerProviderId,
    this.providerid,
    this.firstname,
    this.lastname,
    this.providerId,
    this.firstName,
    this.lastName,
    this.number,
    this.percentage,
    this.rank,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'voting_id': votingId,
      'votes': votes,
      'player_provider_id': playerProviderId,
      'providerid': providerid,
      'firstname': firstname,
      'lastname': lastname,
      'provider_id': providerId,
      'first_name': firstName,
      'last_name': lastName,
      'number': number,
      'percentage': percentage,
      'rank': rank,
    };
  }

  static PlayerinMatch fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PlayerinMatch(
      id: map['id'],
      votingId: map['voting_id'],
      votes: map['votes'],
      playerProviderId: map['player_provider_id'],
      providerid: map['providerid'],
      firstname: map['firstname'],
      lastname: map['lastname'],
      providerId: map['provider_id'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      number: map['number'],
      rank: map['rank'],
    );
  }

  String toJson() => json.encode(toMap());

  static PlayerinMatch fromJson(String source) => fromMap(json.decode(source));
}
