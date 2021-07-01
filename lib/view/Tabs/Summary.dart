import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fluttertest/Model/Trainning.dart';
import 'package:fluttertest/component/Charts/HBar.dart';
import 'package:fluttertest/component/Charts/pie.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Summary extends StatefulWidget {
  final Widget child;

  Summary({Key key, this.child}) : super(key: key);

  _Summary createState() => _Summary();
}

class _Summary extends State<Summary> {
  List<charts.Series<Trainning, String>> _seriesData;
  String _chosenValue;
  _generateData() {
    var data1 = [
      new Trainning('1', 75),
    ];
    var data2 = [
      new Trainning('2', 90),
    ];
    var data3 = [
      new Trainning('3', 70),
    ];
    var data4 = [
      new Trainning('4', 100),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Trainning trainning, _) => trainning.place,
        measureFn: (Trainning trainning, _) => trainning.quantity,
        id: '1',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Trainning trainning, _) =>
            charts.ColorUtil.fromDartColor(Colors.orange),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Trainning trainning, _) => trainning.place,
        measureFn: (Trainning trainning, _) => trainning.quantity,
        id: '2',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Trainning trainning, _) =>
            charts.ColorUtil.fromDartColor(Colors.orange),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Trainning trainning, _) => trainning.place,
        measureFn: (Trainning trainning, _) => trainning.quantity,
        id: '3',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Trainning trainning, _) =>
            charts.ColorUtil.fromDartColor(Colors.orange),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData = List<charts.Series<Trainning, String>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 30,
          leading: IconButton(
            icon:
                Icon(Icons.menu, color: Colors.black45), // set your color here
            onPressed: () {},
          ),
          title: Text(
            'Summary',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 10),
                      child: Text( DateFormat.MMMMd('en_US') .format(DateTime.now()),style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),)
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right:13.0),
                    child: DropdownButton<String>(
                      focusColor:Colors.white,
                      value: _chosenValue,
                      //elevation: 5,
                      style: TextStyle(color: Colors.white),
                      iconEnabledColor:Colors.black,
                      items: <String>[
                        'Today',
                        'This Week',
                        'This month',

                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value,style:TextStyle(color:Colors.black),),
                        );
                      }).toList(),
                      hint:  Icon(Icons.filter_alt_outlined,color: Colors.black,),
                      onChanged: (String value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(

                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        child: Container(
                          height: 300,
                          width: 200,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Activity',
                                  style: TextStyle(
                                      fontSize: 14.0, fontWeight: FontWeight.bold),
                                ),
                                Expanded(
                                  child: charts.BarChart(
                                    _seriesData,
                                    animate: true,
                                    barGroupingType: charts.BarGroupingType.grouped,
                                    //behaviors: [new charts.SeriesLegend()],
                                    animationDuration: Duration(seconds: 5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    HBar()
                  ],
                ),
              ),

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HBar(),
                    Pie(),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  }
}

