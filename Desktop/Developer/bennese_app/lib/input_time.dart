import 'package:flutter/material.dart';
import 'package:bennese_app/constant.dart';
import 'package:bennese_app/reusable.dart';
import 'package:bennese_app/bottom_button.dart';
import 'package:bennese_app/clock.dart';

class InputPage extends StatefulWidget {
  @override
  InputPageState createState() => InputPageState();
}

class InputPageState extends State<InputPage> {



  int time = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent.shade700,
          title: Text('Set Time'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Time' ,
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          time.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'min',
                          style: kLabelTextStyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTickMarkColor: Color(0xff8d8e98),
                        activeTrackColor: Colors.black,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value : time.toDouble(),
                        min: 1,
                        max: 70,
                        onChanged: (double newValue){
                          setState(() {
                            time = newValue.round();
                          });
                        },
                      ),
                    ),
                    RaisedButton(
                      color: Colors.red,
                      child: Text('set time'),
                      onPressed: () {
                        //print(time);
                        Navigator.pushNamed(context,'/second');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}
