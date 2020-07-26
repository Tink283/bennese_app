import 'package:bennese_app/HomePage.dart';
import 'package:bennese_app/add_note.dart';
import 'package:bennese_app/input_time.dart';
import 'package:bennese_app/note_list.dart';
import 'package:flutter/material.dart';
import 'package:bennese_app/toppage.dart';
import 'package:bennese_app/timer.dart';
import 'package:bennese_app/clock.dart';
import 'package:bennese_app/add_note.dart';

void main() {
  runApp(MyApp(
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => TopPage(),
        '/first':(context) => InputPage(),
        '/second':(context) => Home(),
        '/third' :(context) => MyHomePage(),
        '/fourth' :(context) => AddNote(),
        '/fifth' :(context) => NoteList(),
      },
    );
  }
}


