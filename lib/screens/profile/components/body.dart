import 'package:flutter/material.dart';
import 'profile_avatar.dart';
import 'profile_menu.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ProfileAvatar(),
              const SizedBox(height: 20),
              ProfileMenu(
                text: 'My Account',
                icon: 'assets/icons/User Icon.svg',
                press: () {},
              ),
              ProfileMenu(
                text: 'Notification',
                icon: 'assets/icons/Bell.svg',
                press: () {},
              ),
              ProfileMenu(
                text: 'Settings',
                icon: 'assets/icons/Settings.svg',
                press: () {},
              ),
              ProfileMenu(
                text: 'Help Center',
                icon: 'assets/icons/Question mark.svg',
                press: () {},
              ),
              ProfileMenu(
                text: 'Log Out',
                icon: 'assets/icons/Log out.svg',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
