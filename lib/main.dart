import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routs.dart';
import 'screens/sign_in/components/sign_form.dart';
import 'screens/splash/splash_screen.dart';
import 'theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (final context) => SignFormData(),
      child: const Main(),
    ),
  );
}

/// This widget is the root of my application
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
