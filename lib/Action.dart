import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'Match.dart';

String tokenGlobal = "58b2e429f19c592942a36072c44bdfab";

Future<bool> loginAsync(String loginStr, String passStr) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/acmilan/login';
  Map<String, String> headers = {"content-type": "application/json"};
  String jsonstr = "{\"username\":\"$loginStr\",\"password\":\"$passStr\"}";
  // make POST request
  Response response = await post(url, headers: headers, body: jsonstr);
  String body = response.body;
  var t = json.decode(body);
  String token = t["Token"];
  bool result = false;
  if (token != null) {
    if (token == "123") {
      tokenGlobal = "58b2e429f19c592942a36072c44bdfab";
    } else {
      tokenGlobal = token;
    }
    result = true;
  }
  print(token);
  print(tokenGlobal);
  return result;
}

void deleteAsync(int id) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings/$id';
  // make POST request
  await delete(url, headers: {
    "Content-Type": "application/json",
    "Token": tokenGlobal
  });
}

Future<String> getMatches() async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/games';
  Response response = await get(url, headers: {
    "Content-Type": "application/json",
    "Token": tokenGlobal
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
    "Token": tokenGlobal
  });
  String body = response.body;
  return body;
}

void createMatch(String json) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings';

  // make POST request
  await post(url,
      headers: {
        "Content-Type": "application/json",
        "Token": tokenGlobal
      },
      body: json);
}

void updateMatch(String id, String json) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/motm/votings/$id';
  var t = await put(url,
      headers: {
        "Content-Type": "application/json",
        "Token": tokenGlobal
      },
      body: json);
  print(t.body);
}

Future<List<Match>> getAsync() async {
  Map<String, String> headers = {"Token": tokenGlobal};
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
