import 'package:flutter/material.dart';
import 'package:fluttertest/component/mytaskcard.dart';
import 'package:fluttertest/component/pendingListtile.dart';

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 30,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black45), // set your color here
          onPressed: () {},
        ),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'My Task',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyTaskCard(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      image: Image.network(
                          'https://www.pngfind.com/pngs/m/336-3367489_mobile-application-development-mobile-app-development-png-transparent.png'),
                      text3: '2 Task',
                      text2: 'Design',
                      text1: 'Mobile App',
                      color: Colors.orange,
                    ),
                    MyTaskCard(
                      icon: Icon(Icons.arrow_forward_ios_rounded),
                      image: Image.network(
                          'https://www.pngfind.com/pngs/m/336-3367489_mobile-application-development-mobile-app-development-png-transparent.png'),
                      text3: '4 Task',
                      text2: 'Design',
                      text1: 'Website',
                      color: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Pending',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 30,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wrap_text,
                    color: Colors.blueAccent,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 140, top: 17),
                    child: Column(
                      children: [
                        Text(
                          'Product Design Task',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Online Class app',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(
                            width: 5,
                          ),
                          Text('12.00 PM - 01.00PM'),
                          Spacer(),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Chip(
                              elevation: 20,
                              padding: EdgeInsets.all(2),
                              backgroundColor: Colors.pink[100],

                              label: Text(
                                '3 days running',
                                style:
                                    TextStyle(fontSize: 8, color: Colors.blue),
                              ), //Text
                            ),
                          ), //Chip
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 30,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wrap_text,
                    color: Colors.blueAccent,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 140, top: 17),
                    child: Column(
                      children: [
                        Text(
                          'Packaging branding',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'Full Design.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(
                            width: 5,
                          ),
                          Text('02.00 PM - 04.00PM'),
                          Spacer(),
                          Chip(
                            elevation: 20,
                            padding: EdgeInsets.all(2),
                            backgroundColor: Colors.pink[100],

                            label: Text(
                              '4 days running',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.orange),
                            ), //Text
                          ), //Chip
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 30,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.wrap_text,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(right: 140, top: 17),
                    child: Column(
                      children: [
                        Text(
                          'sketching illustration',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'logo & character',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  subtitle: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.timer),
                          SizedBox(
                            width: 5,
                          ),
                          Text('12.00 PM - 01.00PM'),
                          Spacer(),
                          Chip(
                            elevation: 20,
                            padding: EdgeInsets.all(2),
                            backgroundColor: Colors.pink[100],

                            label: Text(
                              '3 days running',
                              style:
                                  TextStyle(fontSize: 8, color: Colors.blue),
                            ), //Text
                          ), //Chip
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
