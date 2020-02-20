import 'package:flutter/material.dart';
import 'package:my_test_projeasct/MatchList.dart';
import 'Action.dart';

final _formKey = GlobalKey<FormState>();

String passStr;

String loginStr;

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: Container(
        child: Form(
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
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () async {
                      await Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MatchList()));
                    },
                    child: Text('Отмена'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      loginAsync(loginStr, passStr);

                      final snackBar = SnackBar(
                          content: Text('Вход прошел успешно'),
                          backgroundColor: Color.fromARGB(255, 61, 194, 54));
                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                    child: Text('Войти'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
