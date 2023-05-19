import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
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
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: Colors.lightGreen[900],
                    ),
                    child: const Text('Players'),
                    onPressed: () {
                      debugPrint('Players Pressed');
                    },
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.green,
                      side: BorderSide(
                        width: 2,
                        color: Colors.green
                      ),
                    ),
                    child: const Text('More Info'),
                    onPressed: () {
                      debugPrint('More info pressed');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
