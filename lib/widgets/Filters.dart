import 'package:flutter/material.dart';

import '../dummy-data.dart';

class Filters extends StatefulWidget {
  Filters({Key key}) : super(key: key);

  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 120.0,
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: DUMMY_CATEGORIES.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100.0,
            height: 110.0,
            margin: EdgeInsets.all(10.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  DUMMY_CATEGORIES[index].color[0],
                  DUMMY_CATEGORIES[index].color[1]
                ],
              ),
              borderRadius: BorderRadius.circular(36.0),
            ),
            child: Text(
              DUMMY_CATEGORIES[index].title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
