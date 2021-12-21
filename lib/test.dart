import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class MarqueeEX extends StatefulWidget {
  MarqueeEX({Key? key}) : super(key: key);

  @override
  _MarqueeEXState createState() => _MarqueeEXState();
}

class _MarqueeEXState extends State<MarqueeEX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(height: 30,child: Marquee(text: 'Anything You want to write will be displayed in marque and many things can be written is this marquee please',),)
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Marquee(
              text:
                  'Anything You want to write will be displayed in marque and many things can be written is this marquee please',
              scrollAxis: Axis.horizontal,
              // crossAxisAlignment: CrossAxisAlignment.start,
              blankSpace: 20.0,
              velocity: 100.0,
              pauseAfterRound: Duration(seconds: 1),
              showFadingOnlyWhenScrolling: true,
              fadingEdgeStartFraction: 0.1,
              fadingEdgeEndFraction: 0.1,
              startPadding: 10.0,
              accelerationDuration: Duration(seconds: 1),
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
            ),
          ),
        ],
      ),
    );
  }
}
