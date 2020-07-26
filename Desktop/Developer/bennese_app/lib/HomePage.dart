import 'package:bennese_app/clock.dart';
import 'package:bennese_app/input_time.dart';
import 'package:bennese_app/note_list.dart';
import 'package:flutter/material.dart';
import 'package:bennese_app/mypage_screen.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("マイページ"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent.shade700,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.help), onPressed: null),
          IconButton(icon: Icon(Icons.view_headline), onPressed: null)
        ],
      ),
      body: new PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: [
          new MyPageScreen(),
          new InputPage(),
          new NoteList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapBottomNavigation, // onTapBottomNavigation
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("マイページ")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("短時間で未来投資")),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_books), title: Text("メモ一覧"))
        ],
      ),
    );
  }

  void onTapBottomNavigation(int page) {
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}