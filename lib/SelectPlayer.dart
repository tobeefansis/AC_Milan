import 'package:flutter/material.dart';
import 'package:my_test_projeasct/PlayerCheckList.dart';

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
        icon: Icon(Icons.navigate_next),
        label: Text('Next'),
        backgroundColor: Colors.blue[600],
        onPressed: () {
          //   Navigator.of(context).push(createRoute(SelecctPlayer()));

          // Add your onPressed code here!
        },
      ),
      appBar: AppBar(
        title: Text("Edit"),
      ),
      body: PlayerChackList(),
    );
  }
}
