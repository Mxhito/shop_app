import 'package:flutter/material.dart';
import '../../components/custom_bottom_navigation_bar.dart';
import '../../enums.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavigationBar(selectedMenu: MenuState.home),
    );
  }
}
