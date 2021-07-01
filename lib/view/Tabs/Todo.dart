import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:table_calendar/table_calendar.dart';


Color purple = Color(0xff5c4db1);
Color pink = Color(0xffdc4f89);

class Todo extends StatefulWidget {
  @override
  _Todo createState() => _Todo();
}

class _Todo extends State<Todo> {
  CalendarController _calendarController;
  bool valuefirst = false;
  bool selected = true;
  String _chosenValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 30,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black45,
          ), // set your color here
          onPressed: () {},
        ),
        title: Text(
          'To-do',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    DateFormat.MMMMd('en_US').format(DateTime.now()),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 13.0),
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Today',
                    'This Week',
                    'This month',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  hint: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.black,
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _chosenValue = value;
                    });
                  },
                ),
              ),
            ],
          ),
          TableCalendar(
            calendarController: _calendarController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 16),
              leftChevronIcon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 15,
              ),
              rightChevronIcon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 15,
              ),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            calendarStyle: CalendarStyle(
                weekendStyle: TextStyle(color: Colors.black),
                weekdayStyle: TextStyle(color: Colors.black)),
            daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.black),
                weekdayStyle: TextStyle(color: Colors.black)),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Divider(
                            color: purple,
                          ),
                          dayTask("10.00 AM", "Landing Page Design", "2 hours",
                              colors: Colors.blue),
                          Divider(
                            color: purple,
                          ),
                          dayTask("12.00 AM", "Mobile App Prototype", "",
                              colors: Colors.yellow),
                          dayTask("01.00 PM", "Lunch time", "",
                              colors: Colors.pink),
                          dayTask("02.00 PM", "Design Training", "",
                              colors: Colors.green),
                          dayTask("06.00 PM", "Hangout with Friends", "",
                              colors: Colors.purple),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Row dayTask(String time, String name, String name1, {MaterialColor colors}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width * 0.2,
          child: Text(
            time,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Card(
            color: colors,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Spacer(),
                      // RoundCheckBox(
                      //   onTap: (selected) {},
                      //   uncheckedColor: Colors.white,
                      //   checkedColor: Colors.white,
                      //   animationDuration: Duration(
                      //     seconds: 1,
                      //   ),
                      //   isChecked: true,
                      //   size: 2,
                      //
                      // ),
                      // CircularCheckBox(
                      //     value: this.selected,
                      //     checkColor: Colors.black,
                      //     activeColor: Colors.white,
                      //     inactiveColor: Colors.redAccent,
                      //     disabledColor: Colors.grey,
                      //     onChanged: (val) => this.setState(() {
                      //           this.selected = !this.selected;
                      //         })),

Checkbox(

                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: valuefirst,
                        onChanged: (value) {
                          setState(() {
                            valuefirst = value;
                          });
                          print('the new value is $value');
                        },
                      ),
                    ],
                  ),
                  Text(
                    name1,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
