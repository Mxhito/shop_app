import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/routs.dart';
import 'package:shop_app/screens/sign_in/components/sign_form.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SignFormData(),
      child: const Main(),
    ),
  );
}

/// This widget is the root of my application
class Main extends StatelessWidget {
  /// Constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      //home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
