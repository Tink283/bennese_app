import 'package:flutter/material.dart';




class MyPage extends StatelessWidget {
  int totalTime = 100;
  String incomeMake(int totalTime) {
    int income;
    income = totalTime*500;
    String annualIncome = income.toString();
    return annualIncome;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('マイページ'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  color: Colors.blue[50],
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 30.0),
                    child: Text(
                      '$totalTime\h',
                      style: TextStyle(fontSize: 25.0, color: Colors.grey[600]),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                  color: Colors.blue[50],
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 30.0),
                    child: Text(
                      '年収'+incomeMake(totalTime)+'万円',
                      style: TextStyle(fontSize: 25.0, color: Colors.grey[600]),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Center(child: Text('グラフ',)),
              width: 300.0,
              height: 300.0,
              color: Colors.grey[200],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  heroTag: "hero1",
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.dehaze,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 150.0,
                ),
                FloatingActionButton(
                  heroTag: "hero2",
                  backgroundColor: Colors.lightBlueAccent,
                  child: Icon(
                    Icons.timer,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}