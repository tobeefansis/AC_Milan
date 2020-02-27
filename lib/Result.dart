import 'package:flutter/material.dart';
import 'package:my_test_projeasct/Match.dart';

class Result extends StatefulWidget {
  Result(this.m);
  final Match m;
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Match match;
  @override
  void initState() {
    super.initState();
    match = widget.m;
  }

  double calc(int t1, int t2) {
    if (t2 != 0) {
      return t1 / t2;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (match.players != null && match.players.length > 0) {
      return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Text(
                  "Result ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "${match.totalVotes} votes ",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
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
                      children: match.players
                          .map(
                            (PlayerinMatch m) => Column(
                              children: <Widget>[
                                Text(
                                  "${m.firstName} ${m.lastName} ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "${(calc(m.votes, match.totalVotes) * 100).toStringAsFixed(1)}% - ${m.votes} votes ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w200,
                                      fontSize: 18.0),
                                  textAlign: TextAlign.left,
                                ),
                                LinearProgressIndicator(
                                  value: calc(m.votes, match.totalVotes),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: <Widget>[
                Text(
                  "Result ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  textAlign: TextAlign.left,
                ),
                Text(
                  "${match.totalVotes} votes ",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 18.0),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
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
                    alignment: Alignment.center,
                    child: Text(
                      "no votes ",
                      style: TextStyle(
                          fontWeight: FontWeight.w200, fontSize: 36.0),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
  }
}
