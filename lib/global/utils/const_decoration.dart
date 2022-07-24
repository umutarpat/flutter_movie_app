import 'package:flutter/material.dart';
import 'package:flutter_movie_app/global/utils/const_design.dart';

InputBorder inputDecorationEnabledBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(15)),
  );
}

InputBorder inputDecorationDisabledBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(15)),
  );
}

InputBorder inputDecorationFocusedBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(15)),
  );
}

InputBorder inputDecorationBorder() {
  return OutlineInputBorder(
    borderSide: const BorderSide(color: kPrimaryColor, width: 1),
    borderRadius: BorderRadius.all(Radius.circular(15)),
  );
}
