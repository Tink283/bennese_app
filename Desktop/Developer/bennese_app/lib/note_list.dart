import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'メモ一覧';

    return ListView(children: listTiles);
  }

  List<Widget> listTiles = <Widget>[
    Container(
      child: ListTile(
        title: Text(
          "7/26(日)",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.green,
      ),
    ),
    Container(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(color: Colors.black),
          ),
        ),
        child: ListTile(
          leading: Icon(Icons.comment),
          title: Text('good'),
        )),
    Container(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(color: Colors.black),
          ),
        ),
        child: ListTile(
          leading: Icon(Icons.comment),
          title: Text('集中できた'),
        )),
    Container(
        decoration: new BoxDecoration(
          border: new Border(
            bottom: new BorderSide(color: Colors.black),
          ),
        ),
        child: ListTile(
          leading: Icon(Icons.comment),
          title: Text('頑張った'),
        )),
  ];
}
