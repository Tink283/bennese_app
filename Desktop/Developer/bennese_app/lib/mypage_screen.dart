import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

final String id = '000000000';
final int totalStudyTime = 60;
final int money = 30000;
final bool isLabelChart = false;
final bool isPoorPerson = true;
final formatter = NumberFormat("#,###"); // formatter.format(数字)　3桁ごとにカンマ区切る
/// isLabelChart == true　でラベル付き

//final dataList2 = [
//  new OrdinalSales('23', 5),
//  new OrdinalSales('24', 100),
//  new OrdinalSales('2', 25),
//  new OrdinalSales('2015', 25),
//];

/// dataList = [日付<String>, 時間<int>]
/// 左からリストの順でグラフ表示
List dataList = [
  ['23', 5],
  ['24', 100],
  ['2', 25],
  ['2015', 25],
  ['2w3', 5],
  ['2q4', 100],
//  ['2w', 25],
//  ['2r015', 25],
//  ['23', 5],
//  ['24', 100],
//  ['2', 25],
//  ['15', 25],
//  ['2faw3', 5],
//  ['2qa4', 100],
//  ['2wf', 25],
//  ['2ra015', 25],
//  ['23', 5],
//  ['24', 100],
//  ['2', 25],
//  ['2015', 25],
//  ['2w3', 5],
//  ['2q4', 100],
//  ['2w', 25],
//  ['2r015', 25],
//  ['23', 5],
//  ['24', 100],
//  ['2', 25],
//  ['1d5', 25],
//  ['2faqw3', 5],
//  ['2qaa4', 100],
//  ['2wfq', 25],
//  ['2raw015', 25],
];

///
class MyPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: isPoorPerson

                  /// isPoorPerson == true　でラベル付き
                  ? PoorCard()
                  : RichCard(),
            ),
            Expanded(
              child: GraphArea(),
            ),
          ],
        ),
    );
  }
}

class GraphArea extends StatelessWidget {
  const GraphArea({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            '学習時間の記録',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Text(
                  '分',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Expanded(
                    child: isLabelChart

                        /// isLabelChart == true　でラベル付き
                        ? VerticalBarLabelChart.withSampleData()
                        : SimpleBarChart.withSampleData()),
              ],
            ),
          ),
          Text(
            '日付',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class PoorCard extends StatelessWidget {
  const PoorCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('ID: ' + id),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.blue.shade400,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.blue.shade400,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '総勉強時間：',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${totalStudyTime} 分', // 所持金額
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '累計金額：',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '￥${formatter.format(money)}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '勉強を始めた日：',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '2020年7月25日',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10.0, bottom: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/poor_person.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '将来：貧困層',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
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

class RichCard extends StatelessWidget {
  const RichCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('ID: ' + id),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Colors.blue.shade400,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.blue.shade400,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '総勉強時間：',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '${totalStudyTime} 分', // 所持金額
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '累計金額：',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '￥${formatter.format(money)}',
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                '勉強を始めた日：',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '2020年7月25日',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 10, left: 10.0, bottom: 10.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/rich_person.jpg'),
                                fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '将来：富豪',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
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

/// ↓グラフのあれこれ

/// グラフに入れるデータを作る関数
List<OrdinalSales> DataIntoGlaph() {
  List<OrdinalSales> GlaphDataList = [];
  int count = 0;

  for (var data in dataList) {
    OrdinalSales glaphData;
    count++;

    if (count != dataList.length) {
      glaphData = new OrdinalSales(
          data[0], data[1], charts.ColorUtil.fromDartColor(Colors.blue)); //
    } else {
      glaphData = new OrdinalSales(
          data[0], data[1], charts.ColorUtil.fromDartColor(Colors.red));
    }
    GlaphDataList.add(glaphData);
  }
  return GlaphDataList;
}

/// ラベル付き棒グラフ 参考<https://google.github.io/charts/flutter/example/bar_charts/vertical_bar_label.html>
class VerticalBarLabelChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  VerticalBarLabelChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory VerticalBarLabelChart.withSampleData() {
    return new VerticalBarLabelChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }

  // [BarLabelDecorator] will automatically position the label
  // inside the bar if the label will fit. If the label will not fit,
  // it will draw outside of the bar.
  // Labels can always display inside or outside using [LabelPosition].
  //
  // Text style for inside / outside can be controlled independently by setting
  // [insideLabelStyleSpec] and [outsideLabelStyleSpec].
  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      // Set a bar label decorator.
      // Example configuring different styles for inside/outside:
      //       barRendererDecorator: new charts.BarLabelDecorator(
      //          insideLabelStyleSpec: new charts.TextStyleSpec(...),
      //          outsideLabelStyleSpec: new charts.TextStyleSpec(...)),
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    return [
      new charts.Series<OrdinalSales, String>(
          id: 'SstudyTime',
          domainFn: (OrdinalSales studyTime, _) => studyTime.day,
          measureFn: (OrdinalSales studyTime, _) => studyTime.studyTime,
          colorFn: (OrdinalSales segment, _) => segment.color,
          data: DataIntoGlaph(),
          // Set a label accessor to control the text of the bar label.
          labelAccessorFn: (OrdinalSales studyTime, _) =>
              '${studyTime.studyTime.toString()}')
    ];
  }
}

/// シンプル棒グラフ
class SimpleBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {this.animate});

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return new SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Sales',
        domainFn: (OrdinalSales studyTime, _) => studyTime.day,
        measureFn: (OrdinalSales studyTime, _) => studyTime.studyTime,
        colorFn: (OrdinalSales segment, _) => segment.color,
        data: DataIntoGlaph(),
      )
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String day; // お金
  final int studyTime; // 勉強した時間
  charts.Color color;

  OrdinalSales(this.day, this.studyTime, this.color);
}
