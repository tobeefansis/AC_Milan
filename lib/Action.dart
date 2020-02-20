import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

void loginAsync(String loginStr, String passStr) async {
  // set up POST request arguments
  String url = 'https://acmilan-api-integ.netcosports.com/api/acmilan/login';
  Map<String, String> headers = {"content-type": "application/json"};
  String json = "{\"username\":\"$loginStr\",\"password\":\"$passStr\"}";
  // make POST request
  Response response = await post(url, headers: headers, body: json);
  String body = response.body;
  print(body);
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

