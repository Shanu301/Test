import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class HBar extends StatefulWidget {
  @override
  _HBar createState() => _HBar();
}

class _HBar extends State<HBar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orangeAccent,
      child: Container(
        height: 250,
        width: 150,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _title('Trainning'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ChartLine(title: 'Wireframe', number: 100, rate: 1),
                    SizedBox(height: 5,),
                    ChartLine(title: 'Landing Screen', number: 80, rate: 0.8)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    ChartLine(
                      title: 'Prototype',
                      rate: 0.7,
                      number: 70,
                    ),
                    SizedBox(height: 5,),
                    ChartLine(
                      title: 'illustration',
                      rate: 0.5,
                      number: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 4),
      child: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  const ChartLine({
    Key key,
    @required this.rate,
    @required this.title,
    this.number,
  })  : assert(title != null),
        assert(rate != null),
        assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  final double rate;
  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final lineWidget = constraints.maxWidth * rate;
      return Padding(
        padding: const EdgeInsets.only(bottom: 1.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: lineWidget),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    if (number != null)
                      Text(
                        number.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              height: 20,
              width: lineWidget,
            ),
          ],
        ),
      );
    });
  }
}
