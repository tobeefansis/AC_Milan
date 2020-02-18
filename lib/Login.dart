 import 'package:flutter/material.dart';
 import 'Action.dart';
  final _formKey = GlobalKey<FormState>();

  String passStr;

  String loginStr;
 class Login {
   Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextFormField(
              onChanged: (text) {
                loginStr = text;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Логин',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextField(
              onChanged: (text) {
                passStr = text;
              },
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Пароль',
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            child: RaisedButton(
              onPressed: () {
                loginAsync(loginStr, passStr);

                final snackBar = SnackBar(content: Text('Вход прошел успешно'), backgroundColor: Color.fromARGB(255, 61, 194, 54));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('Вход'),
            ),
          ),
        ],
      ),
    );
  }
 }
 