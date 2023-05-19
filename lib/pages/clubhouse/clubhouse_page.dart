import 'package:flutter/material.dart';

class ClubhousePage extends StatelessWidget {
  const ClubhousePage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('My Clubhouse'),
      ),
    );
  }
}
