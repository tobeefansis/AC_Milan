import 'dart:convert';

class Player {
  int id;
  int competitionId;
  String matchId;
  String teamId;
  String providerId;
  String position;
  String firstName;
  String lastName;
  String knownName;
  String number;
  String playerProviderId;
  String providerid;
  String firstname;
  String lastname;
  Player({
    this.id,
    this.competitionId,
    this.matchId,
    this.teamId,
    this.providerId,
    this.position,
    this.firstName,
    this.lastName,
    this.knownName,
    this.number,
    this.playerProviderId,
    this.providerid,
    this.firstname,
    this.lastname,
  });

  String getName() {
    return "$firstName $lastName";
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'competition_id': competitionId,
      'match_id': matchId,
      'team_id': teamId,
      'provider_id': providerId,
      'position': position,
      'first_name': firstName,
      'last_name': lastName,
      'known_name': knownName,
      'number': number,
      'player_provider_id': playerProviderId,
      'providerid': providerid,
      'firstname': firstname,
      'lastname': lastname,
    };
  }

  static List<Player> fromJsonToList(String source) {
    var t = json.decode(source);
    List<Player> temp = [];
    for (var item in t) {
      temp.add(fromMap(item));
    }
    return temp;
  }

  static Player fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Player(
      id: map['id'],
      competitionId: map['competition_id'],
      matchId: map['match_id'],
      teamId: map['team_id'],
      providerId: map['provider_id'],
      position: map['position'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      knownName: map['known_name'],
      number: map['number'],
      playerProviderId: map['player_provider_id'],
      providerid: map['providerid'],
      firstname: map['firstname'],
      lastname: map['lastname'],
    );
  }

  String toJson() => json.encode(toMap());

  static Player fromJson(String source) => fromMap(json.decode(source));
}

