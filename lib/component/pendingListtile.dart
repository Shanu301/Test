import 'package:flutter/material.dart';

class PendingListtile extends StatelessWidget {
  const PendingListtile({
    Key key,
   this.text,
    this.text2,

     this.widgetleding,
   this.widgettrailing,
  }) : super(key: key);

  final String text;

  final String text2;
  final Widget widgetleding;
  final Widget widgettrailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        hoverColor: Colors.white,
        subtitle: Text(
          text2,
        ),
        leading: widgetleding,
        title: Text(text),
        trailing: widgettrailing,
        dense: false,

      ),
    );
  }
}
