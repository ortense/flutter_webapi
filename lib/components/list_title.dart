import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  final String title;

  ListTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 24),
      child: Center(
        child: Text(title.toUpperCase(),
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800)),
      ),
    );
  }
}
