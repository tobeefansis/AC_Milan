import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  Result({Key key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Result"),
        ),
        body: Center(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 20.0),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                        ),
                        LinearProgressIndicator(
                          value: 0.4,
                        ),
                        Padding(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                        ),
                        LinearProgressIndicator(
                          value: 0.4,
                        ),
                        Padding(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                        ),
                        LinearProgressIndicator(
                          value: 0.4,
                        ),
                        Padding(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                        ),
                        LinearProgressIndicator(
                          value: 0.4,
                        ),
                        Padding(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child:RaisedButton(child: Text("Close"), onPressed: (){},)
                          ),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
