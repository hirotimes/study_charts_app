import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pie_charts_view.dart';
import 'stacked_bar_charts_view.dart';

class MockView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _Mock();
  }
}

class _Mock extends StatefulWidget {
  @override
  _MockState createState() => _MockState();
}

class _MockState extends State<_Mock> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Mock'),
        automaticallyImplyLeading: false, //hide back button
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        // child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Charts sample',
                overflow: TextOverflow.ellipsis,
                // textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lightBlueAccent, fontSize: 20),
              ),
              Text("折れ線グラフ"),
              Text( '2020年7月の１週間の売上推移'),
              Expanded(
                  flex: 1,
                  child: Card(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: DonutAutoLabelChart.withSampleData()
                      )
                  )
              ),
            ],
          // ),
        ),
      ),
    );
  }
}
