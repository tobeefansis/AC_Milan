import 'package:flutter/material.dart';
import 'package:my_test_projeasct/PlayerCheckList.dart';
import 'package:my_test_projeasct/Players.dart';

class SelecctPlayer extends StatefulWidget {
  SelecctPlayer({Key key}) : super(key: key);

  @override
  _SelecctPlayerState createState() => _SelecctPlayerState();
}

class _SelecctPlayerState extends State<SelecctPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        icon: Icon(Icons.check),
        label: Text('Create'),
        backgroundColor: Colors.blue[600],
        onPressed: () {
          //   Navigator.of(context).push(createRoute(SelecctPlayer()));

          // Add your onPressed code here!
        },
      ),
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: PlayerChackList(
        lines: PlayerList.players
            .map((Player p) => Line(
                  text: p.name,
                  checked: false,
                ))
            .toList(),
      ),
    );
  }
}
