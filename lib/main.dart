import 'package:flutter/material.dart';
import 'package:pga_experience/pages/golfers_page.dart';
import 'package:pga_experience/pages/tournaments_page.dart';

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
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.golf_course),
            icon: Icon(Icons.golf_course_outlined),
            label: 'Tournaments',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.groups),
            icon: Icon(Icons.groups_outlined),
            label: 'Golfers',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.star_rounded),
            icon: Icon(Icons.star_outline_rounded),
            label: 'Favorites',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const TournamentsPage(title: 'Tournaments'),
        ),
        Container(
          alignment: Alignment.center,
          child: const GolfersPage(title: 'Golfers'),
        ),
        Container(
          alignment: Alignment.center,
          child: const GolfersPage(title: 'Favorite Golfers'),
        ),
      ][currentPageIndex],
    );
  }
}
