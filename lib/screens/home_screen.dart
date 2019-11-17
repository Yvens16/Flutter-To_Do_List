import 'package:flutter/material.dart';

import '../widgets/AppBar.dart';
import '../widgets/Filters.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Bar(),
        preferredSize: Size.fromHeight(50.0),
      ),
      body: Stack(
        children: <Widget>[
          Filters(),
        ],
      ),
    );
  }
}
