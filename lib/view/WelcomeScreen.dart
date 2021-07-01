import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'LandingScreen.dart';


class WelcomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2),
            Center(
              child: ClipOval(
                child: Image.network(
                  'https://www.gullynetwork.com/img/hero-mobile.c89b2b9f.png',
                  width: 300,
                  height: 600,
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(flex: 1),
            Center(
              child:   TypewriterAnimatedTextKit(
                text: ['Welcome To GullyNetwork'],
                textStyle: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),


            Spacer(flex: 3),
            FittedBox(
              child: TextButton(
                  onPressed: () {


                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LandingScreen(),
                      ),
                    );

                  },
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: TextStyle(color: Colors.black)
                      ),
                      SizedBox(width: 2),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                          color: Colors.black,
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
