import 'package:flutter/material.dart';

import 'views/views.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Validacion de formularios',
     initialRoute: 'home',
     routes: {
      'login':(context) => const LoginView(),
      'home':(context) => const HomeView()
     },
     theme:  ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
        color: Colors.indigo,
        elevation: 0,

      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.indigo,
        elevation: 0,
      )
     ),
    );
  }
}