import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTaskCard extends StatelessWidget {
  Image image;
  final String text1;
  final String text2;
  final String text3;
  final color;
  // final  passionPin;
  // final  referrerId;
  final Widget icon;

  MyTaskCard({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    // required this.passionPin,
    // required this.referrerId,
    this.icon,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200,
      height: 200,
      padding: new EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: color,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Container( height:80,width: 60,child: image),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child: Text((text1),style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Text((text2),style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text((text3),style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 50,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,),
                ],
              ),

            ],
          ),
        ),
      ),
    ));
  }
}
