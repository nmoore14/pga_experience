import 'package:flutter/material.dart';
import 'package:pga_experience/pages/clubhouse/clubhouse_page.dart';
import 'package:pga_experience/pages/golfers/golfers_page.dart';
import 'package:pga_experience/pages/tournaments/tournaments_page.dart';

class NavDestination {
  const NavDestination(this.label, this.icon, this.selectedIcon, this.page);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
  final Widget page;
}

const List<NavDestination> destinations = <NavDestination>[
  NavDestination(
    'Golfers',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
    GolfersPage(title: 'Golfers'),
  ),
  NavDestination(
    'Tournaments',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
    TournamentsPage(title: 'Tournaments'),
  ),
  NavDestination(
    'Club House',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
    ClubhousePage(title: 'My Club House'),
  ),
];

class MobileBottom extends StatefulWidget {
  const MobileBottom({super.key});

  @override
  State<MobileBottom> createState() => _MobileBottomState();
}

class _MobileBottomState extends State<MobileBottom> {
  int currentPageIndex = 1;

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
        destinations: destinations.map(
          (NavDestination destination) {
            return NavigationDestination(
              icon: destination.icon,
              selectedIcon: destination.selectedIcon,
              label: destination.label,
            );
          }
        ).toList(),
      ),
      body: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Container(
            alignment: Alignment.center,
            child: const GolfersPage(title: 'Golfers'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Container(
            alignment: Alignment.center,
            child: const TournamentsPage(title: 'Tournaments'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 48.0),
          child: Container(
            alignment: Alignment.center,
            child: const ClubhousePage(title: 'My Club House'),
          ),
        ),
      ][currentPageIndex],
    );
  }
}
