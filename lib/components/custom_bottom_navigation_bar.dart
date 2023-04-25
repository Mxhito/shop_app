import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final MenuState selectedMenu;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedMenu,
  });

  @override
  Widget build(final BuildContext context) {
    const Color inActiveColor = Color(0xffb6b6b6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xffdadada).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
              icon: SvgPicture.asset(
                'assets/icons/Shop icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () =>
                  Navigator.pushNamed(context, ProfileScreen.routeName),
              icon: SvgPicture.asset(
                'assets/icons/User icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
