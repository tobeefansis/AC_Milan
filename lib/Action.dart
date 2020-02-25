import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'Match.dart';

Future<String> loginAsync(String loginStr, String passStr) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/acmilan/login';
  Map<String, String> headers = {"content-type": "application/json"};
  String json = "{\"username\":\"$loginStr\",\"password\":\"$passStr\"}";
  // make POST request
  Response response = await post(url, headers: headers, body: json);
  String body = response.body;
  return body;
}

void deleteAsync(int id) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings/$id';
  // make POST request
  await delete(url, headers: {
    "Content-Type": "application/json",
    "Token": "58b2e429f19c592942a36072c44bdfab"
  });
}

Future<String> getMatches() async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/games';
  Response response = await get(url, headers: {
    "Content-Type": "application/json",
    "Token": "58b2e429f19c592942a36072c44bdfab"
  });
  String body = response.body;
  return body;
}

Future<String> getPlayers(String id) async {
  // set up POST request arguments
  String url =
      'https://acmilan-api-integ.netcosports.com/api/motm/games/$id/players';
  Response response = await get(url, headers: {
    "Content-Type": "application/json",
    "Token": "58b2e429f19c592942a36072c44bdfab"
  });
  String body = response.body;
  return body;
}

void createMatch(String startDate,String endDate,String matchId,String players) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings';
  String json =
      "{\"start_date\":\"$startDate\",\"end_date\":\"$endDate\",\"match_id\":\"$matchId\",\"players\":$players}";
  // make POST request
  await post(url,
      headers: {
        "Content-Type": "application/json",
        "Token": "58b2e429f19c592942a36072c44bdfab"
      },
      body: json);
}

void updateMatch(String id, String json) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings/$id';
var t =   await put(url,
      headers: {
        "Content-Type": "application/json",
        "Token": "58b2e429f19c592942a36072c44bdfab"
      },
      body: json);
      print(t.body);
}

Future<List<Match>> getAsync() async {
  Map<String, String> headers = {"Token": "58b2e429f19c592942a36072c44bdfab"};
  var response = await get(
      'https://acmilan-api-integ.netcosports.com/api/motm/votings',
      headers: headers);
  return Match.fromJsonToList(response.body);
}

Route createRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
