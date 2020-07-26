import 'package:flutter/material.dart';
import 'package:bennese_app/clock.dart';
import 'package:bennese_app/input_time.dart';
class TopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade700,
        title: Text('TopPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text(
             'RICH or POOR',
            style: TextStyle(
              fontFamily: 'DancingScript',
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
           ),
            Text(
              '〜１分で変える自分の未来〜',
              style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              )
            ),
            ChangeForm(),
            RaisedButton(
              color: Colors.red,
              child: Text('Lets work!'),
              onPressed: () {
                Navigator.pushNamed(context,'/third');
              },
            ),
          ],
        ),
      ),
    );
  }
}
class InputText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: ChangeForm(),
        ),
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
                hintText: 'お名前を教えてください',
                labelText: '名前 *',
              ),
              //パスワード
              onChanged: _handleText,
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
                icon: Icon(Icons.mail),
                hintText: 'email',
                labelText: 'メールアドレスを教えてください*',
              ),
              //パスワード
              onChanged: _handleText,
            ),
          ],
        )
    );
  }
}
