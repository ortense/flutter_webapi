import 'package:flutter/material.dart';

import 'screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Client Example',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}