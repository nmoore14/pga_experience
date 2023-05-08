import 'package:flutter/material.dart';

class HorizontalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Colors.white,
      child: InkWell(
        splashColor: Colors.blueGrey.withAlpha(40),
        onTap: () {
          debugPrint('Card Tapped');
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(
                  Icons.sports_golf,
                  color: Colors.green,
                  size: 45,
                ),
                title:Text(
                  'Wells Fargo Championship',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                subtitle:Text('May 4, 2023 - May 7, 2023'),
                trailing: Icon(
                  Icons.more_vert,
                  color: Colors.black87,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
