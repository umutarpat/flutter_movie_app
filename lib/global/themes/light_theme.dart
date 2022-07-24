import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/utils/const_design.dart';

/// We may need [context] later so i am calling it here.
ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    cupertinoOverrideTheme: const CupertinoThemeData(
      textTheme: CupertinoTextThemeData(),
    ),
    scaffoldBackgroundColor: kBgColor,
    appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
  );
}
