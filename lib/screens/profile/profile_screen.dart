import 'package:flutter/material.dart';

import '../../components/custom_bottom_navigation_bar.dart';
import '../../enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';

  const ProfileScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: const Body(),
      bottomNavigationBar:
          const CustomBottomNavigationBar(selectedMenu: MenuState.profile),
    );
  }
}
