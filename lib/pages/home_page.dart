import 'package:flutter/material.dart';
import 'package:pga_experience/components/ui/nav/mobile_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        bottomNavigationBar: const MobileBottom(),
      ),
    );
  }
}
