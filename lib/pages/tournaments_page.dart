import 'package:flutter/material.dart';
import 'package:pga_experience/components/ui/horizontal_card.dart';
import 'package:pga_experience/components/ui/schedule_card.dart';

class TournamentsPage extends StatelessWidget {
  const TournamentsPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            ScheduleCard(),
            HorizontalCard(),
          ]
        ),
      ),
    );
  }
}
