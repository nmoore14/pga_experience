import 'package:flutter/material.dart';
import 'package:pga_experience/pages/second_page.dart';


class FirstPage extends StatelessWidget {
  const FirstPage ({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const SecondPage(title: 'Second Page');
            }));
          },
          child: const Text('Next'),
        ),
      ),
    );
  }
}
