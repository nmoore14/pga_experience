import 'package:flutter/material.dart';
import 'package:pga_experience/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.lightGreen,
        navigationBarTheme: NavigationBarTheme.of(context).copyWith(
          indicatorColor: Colors.lightGreen[200],
          indicatorShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          surfaceTintColor: Colors.lightGreen[900],
        ),
      ),
      home: HomePage(),
    );
  }
}
