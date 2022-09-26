import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String hintText;
  final bool secure;
  final Widget? prefixIcon;
  final Widget? sufficIcon;
  const AppTextfield({
    Key? key,
    required this.hintText,
    this.secure = false,
    this.prefixIcon,
    this.sufficIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secure,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: sufficIcon,
      ),
    );
  }
}
