import 'package:flutter/material.dart';

import 'screens/intro.dart';
import 'screens/auth/register.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carrot Market',
      initialRoute: '/',
      routes: {
        '/': (context) => const Intro(),
        '/register': (context) => const Register(),
      },
    );
  }
}
