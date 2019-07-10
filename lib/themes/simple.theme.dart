import 'package:flutter/material.dart';

ThemeData buildTheme() {
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
            fontFamily: 'Merriweather',
            fontSize: 40.0,
            color: const Color(0xFFFFFFFF)));
  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(textTheme: _buildTextTheme(base.textTheme));
}
