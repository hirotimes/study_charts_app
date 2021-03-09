import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Landing();
  }
}

class _Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<_Landing> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Landing page'),
        automaticallyImplyLeading: false, //hide back button
      ),
      body: ClipRect(
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.clip,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Charts sample',
                      overflow: TextOverflow.ellipsis,
                      // textAlign: TextAlign.end,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlueAccent, fontSize: 20),
                    ),
                    // const Text.rich(
                    //   TextSpan(
                    //     text: 'Hello', // default text style
                    //     children: <TextSpan>[
                    //       TextSpan(
                    //           text: ' beautiful ',
                    //           style: TextStyle(
                    //               fontStyle: FontStyle.italic, color: Colors.cyan)),
                    //       TextSpan(
                    //           text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                    //     ],
                    //   ),
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'バーチャート : ',
                        ),
                        RaisedButton(
                          child: const Text('stacked bar charts'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/stacked_bar_charts');
                          },
                          highlightElevation: 16,
                          highlightColor: Colors.blue,
                          onHighlightChanged: (value) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'パイチャート : ',
                        ),
                        RaisedButton(
                          child: const Text('auto label pie charts'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/pie_charts');
                          },
                          highlightElevation: 16,
                          highlightColor: Colors.blue,
                          onHighlightChanged: (value) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '時間バーチャート : ',
                        ),
                        RaisedButton(
                          child: const Text('time charts'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/time_charts');
                          },
                          highlightElevation: 16,
                          highlightColor: Colors.blue,
                          onHighlightChanged: (value) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'mock : ',
                        ),
                        RaisedButton(
                          child: const Text('mock'),
                          onPressed: () {
                            Navigator.pushNamed(context, '/mock');
                          },
                          highlightElevation: 16,
                          highlightColor: Colors.blue,
                          onHighlightChanged: (value) {},
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
