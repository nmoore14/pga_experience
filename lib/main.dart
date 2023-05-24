import 'package:flutter/material.dart';
import 'package:pga_experience/pages/home_page.dart';
import 'package:pga_experience/pages/login_page.dart';
import 'package:pga_experience/services/auth_service.dart';

// domain: nmoore-dev.us.auth0.com
// client-id: jcY4ZXvquCIgFO1nLAjkqjZqQftlkbs7
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }): super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isProgressing = false;
  bool isLoggedIn = false;
  String errorMessage = '';
  String? name;

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
      home: LoginPage(),
    );
  }
}
