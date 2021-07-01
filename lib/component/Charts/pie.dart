import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fluttertest/Model/Task.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Pie extends StatefulWidget {
  final Widget child;

  Pie({Key key, this.child}) : super(key: key);

  _Pie createState() => _Pie();
}

class _Pie extends State<Pie> {

  List<charts.Series<Task, String>> _seriesPieData;


  _generateData() {


    var piedata = [

      new Task('Training', 75, Colors.orange),
      new Task('Other', 25, Colors.grey),
    ];










    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Today',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );



  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _seriesPieData = List<charts.Series<Task, String>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return


        SingleChildScrollView(
          child: Container(
            height: 250,
            width: 200,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Today Result',style: TextStyle(fontSize: 14.0,fontWeight: FontWeight.bold),),
                      SizedBox(height: 10.0,),
                      Expanded(
                        child: charts.PieChart(
                            _seriesPieData,
                            animate: true,
                            animationDuration: Duration(seconds: 5),
                            behaviors: [
                              new charts.DatumLegend(
                                outsideJustification: charts.OutsideJustification.endDrawArea,
                                horizontalFirst: false,
                                desiredMaxRows: 2,
                                cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                                entryTextStyle: charts.TextStyleSpec(
                                    color: charts.MaterialPalette.purple.shadeDefault,
                                    fontFamily: 'Georgia',
                                    fontSize: 11),
                              )
                            ],
                            defaultRenderer: new charts.ArcRendererConfig(
                                arcWidth: 100,
                                arcRendererDecorators: [
                                  new charts.ArcLabelDecorator(
                                      labelPosition: charts.ArcLabelPosition.inside)
                                ])),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );

  }
}



