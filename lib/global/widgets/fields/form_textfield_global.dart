import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:get/get.dart';

class GlobalFormTextField extends StatelessWidget {
  String? name;
  double? width;
  double height;
  String? initialValue;
  bool enableInteractiveSelection;
  InputDecoration decoration;
  void Function(String?)? onChanged;
  String? Function(String?)? validator;
  void Function()? onTap;
  void Function(String?)? onSubmitted;
  dynamic Function(String?)? valueTransformer;
  bool expands;
  bool enabled;
  TextAlign? textAlign;
  bool readOnly;
  bool obscureText;
  TextInputType? keyboardType;
  List<TextInputFormatter>? inputFormatters;
  String? title;
  Color? fillColor;

  GlobalFormTextField({
    this.name,
    this.width,
    this.height = 50,
    this.textAlign = TextAlign.start,
    this.initialValue,
    this.enableInteractiveSelection = true,
    this.validator,
    this.onChanged,
    this.onSubmitted,
    this.decoration = const InputDecoration(),
    this.onTap,
    this.valueTransformer,
    this.expands = false,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.visiblePassword,
    this.inputFormatters,
    this.title,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? context.width * 0.90,
      height: height,
      child: FormBuilderTextField(
        maxLines: expands ? null : 1,
        minLines: expands ? null : 1,
        expands: expands,
        name: name!,
        enabled: enabled,
        readOnly: readOnly,
        obscureText: obscureText,
        decoration: decoration,
        textAlign: textAlign!,
        initialValue: initialValue,
        onChanged: onChanged,
        validator: validator,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        onTap: onTap,
        onSubmitted: onSubmitted,
        valueTransformer: valueTransformer,
      ),
    );
  }
}
