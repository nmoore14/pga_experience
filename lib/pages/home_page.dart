import 'package:flutter/material.dart';
import 'package:pga_experience/components/ui/nav/mobile_bottom.dart';
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

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        bottomNavigationBar: const MobileBottom(navDestinations: destinations,),
      ),
    );
  }
}
