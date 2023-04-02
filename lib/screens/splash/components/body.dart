import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/components/splash_content.dart';
import 'package:shop_app/size_config.dart';

/// Body of the Splash Screen
class Body extends StatefulWidget {
  /// Constructor
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
  Widget build(BuildContext context) {
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
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
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
                        (index) => Dot(
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
  /// Index of dot
  final int index;

  /// Status of dot
  final bool isActive;

  /// Constructor
  const Dot({
    super.key,
    required this.index,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
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
