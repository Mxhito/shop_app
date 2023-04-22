import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../sign_in/sign_in_screen.dart';
import 'splash_content.dart';

/// Body of the Splash Screen
class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final double mainElementWigth = 20;

  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      'text': "Welcome to Tokoto, Lets's shop!",
      'image': "assets/images/splash_1.png",
    },
    {
      'text': "We help people connect with store \naround all world",
      'image': "assets/images/splash_2.png",
    },
    {
      'text': "We show the easy way to shop.\n Just stay at home with  us",
      'image': "assets/images/splash_3.png",
    },
  ];

  @override
  Widget build(final BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              flex: 3,
              //* Widget for swiping splash screen
              child: PageView.builder(
                onPageChanged: (final value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (final context, final index) => SplashContent(
                  text: splashData[index]['text'] ?? '',
                  image: splashData[index]['image'] ?? '',
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(mainElementWigth),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (final index) => Dot(
                          index: index,
                          isActive: currentPage == index,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    DefaultButton(
                      text: 'Continue',
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Dot for a page indicator
class Dot extends StatelessWidget {
  final int index;
  final bool isActive;

  const Dot({
    super.key,
    required this.index,
    required this.isActive,
  });

  @override
  Widget build(final BuildContext context) {
    const double sizeFactor = 6;
    const double currentPageWigth = 20;

    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: sizeFactor,
      child: AnimatedContainer(
        duration: kAnimationDuration,
        width: isActive ? currentPageWigth : sizeFactor,
        decoration: BoxDecoration(
          color: isActive ? kPrimaryColor : Colors.grey,
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
