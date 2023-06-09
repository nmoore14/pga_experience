import 'package:flutter/material.dart';

class GolfersPage extends StatelessWidget {
  const GolfersPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.filter_list),
          )
        ],
      ),
      body: Center(
        child: Text('List of Golfers'),
      ),
    );
  }
}
