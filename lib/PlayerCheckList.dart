import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PlayerChackList extends StatefulWidget {
  List<Line> lines;
  
  PlayerChackList({
    Key key,
    this.lines,
  }) : super(key: key);

  @override
  _PlayerChackListState createState() => _PlayerChackListState();
}

class _PlayerChackListState extends State<PlayerChackList> {
  @override
  void initState() {
    super.initState();
    lines = widget.lines;
  }

  List<Line> lines;
  @override
  Widget build(BuildContext context) {
    return ListView(children: 
      lines.map(
          (Line l) => Padding(
            padding:
                const EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
            child: Row(
              children: <Widget>[
                Transform.scale(
                  scale: 1.4,
                  child: Checkbox(
                    activeColor: Colors.blue[600],
                    onChanged: (bool t) {
                      l.checked = t;
                      print("ch $t");
                      setState(() {
                        
                      });
                    },
                    value: l.checked,
                  ),
                ),
                Expanded(
                  child: Text(
                   l.text,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                )
              ],
            ),
          ),
        )
        .toList()
    );
  }
}

class Line {
  bool checked;
  String text;
  void change(bool t){
    checked =t;
  }
  Line({
    this.checked,
    this.text,
  });
}
