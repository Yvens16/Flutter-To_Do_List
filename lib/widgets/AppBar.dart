import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  const Bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(),
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(right: 300.0),
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}