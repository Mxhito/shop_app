import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

void main() => runApp(const Main());

/// This widget is the root of my application
class Main extends StatelessWidget {
  /// Constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Muli',
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor),
        ),
      ),
      //home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
