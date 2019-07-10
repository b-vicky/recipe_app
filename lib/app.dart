import 'package:flutter/material.dart';
import 'package:recipes_app/themes/simple.theme.dart';
import 'package:recipes_app/views/home.dart';
import 'package:recipes_app/views/login.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipes',
      initialRoute: '/login',
      theme: buildTheme(),
      routes: {
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
