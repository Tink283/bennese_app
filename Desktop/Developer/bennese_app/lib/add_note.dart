import 'package:flutter/material.dart';
import 'package:bennese_app/note_list.dart';
import 'package:bennese_app/toppage.dart';


void main() {
  runApp(AddNote());
}

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'メモ追加',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.amberAccent.shade700,
          title: Text('メモ追加'),
        ),
        body: Column(
          children: <Widget>[
            ChangeForm(),
            RaisedButton(
              color: Colors.red,
              child: Text('save'),
              onPressed: () {
                Navigator.pushNamed(context,'/third');
              },
            ),
          ],
        ),
        //////// // フッターです/////////////
        ///// /////////ここまでフッター/////////////////////////
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  String _text = '';

  void _handleText(String e) {
    setState(() {
      _text = e;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            /*Text(
              "$_text",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500),
            ),*/
            /*new TextField(
              enabled: true,
              // 入力数
              maxLength: 30,
              maxLengthEnforced: false,
              style: TextStyle(color: Colors.black),
              obscureText: false,
              maxLines: 1,
              decoration: const InputDecoration(
                icon: Icon(Icons.add_comment),
                hintText: '感想・気づいたことなど',
                labelText: 'メモ *',
              ),
              //パスワード
              onChanged: _handleText,
            ),*/
            Changememo(),
            /*RaisedButton(
              color: Colors.red,
              child: Text('save'),
              onPressed: () {
                Navigator.pushNamed(context,'/');
              },
            ),*/
          ],
        ));
  }
}
class Changememo extends StatefulWidget {
  @override
  _ChangememoState createState() => _ChangememoState();
}

class _ChangememoState extends State<Changememo> {
    String _text = '';

    @override

    void _handleText(String e) {
      setState(() {
        _text = e;
      });
    }

    Widget build(BuildContext context) {
      return Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              Text(
                "$_text",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500
                ),
              ),
              new TextField(
                enabled: true,
                // 入力数
                maxLength: 10,
                maxLengthEnforced: false,
                style: TextStyle(color: Colors.black),
                obscureText: false,
                maxLines:1 ,
                decoration: const InputDecoration(
                  icon: Icon(Icons.face),
                  hintText: 'メモ',
                  labelText: '内容*',
                ),
                //パスワード
                onChanged: _handleText,
              ),
            ],
          )
      );
    }
}

