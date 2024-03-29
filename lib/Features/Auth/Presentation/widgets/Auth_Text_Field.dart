import 'package:flutter/material.dart';
import 'package:gppharmacy/Utils/AppStyles.dart';
import 'package:gppharmacy/Utils/Color_Maneger.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      this.hintText,
      this.hintStyle,
      this.onSubmitted,
      this.validator,
      this.icon,
      this.suffixIcon,
      this.controller,
      this.onChanged,
      this.keyboardType,
      this.label,
      this.onSaved});
  final String? hintText;
  final TextStyle? hintStyle;
  final Function(String)? onSubmitted;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? icon;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      onSaved: onSaved,
      decoration: InputDecoration(
        label: Text(
          label ?? '',
          style: AppStyles.styleMeduim16(context),
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: BuildBorder(true),
        focusedBorder: BuildBorder(false),
      ),
    );
  }

  OutlineInputBorder BuildBorder(bool isEnabled) {
    return OutlineInputBorder(
      borderSide: isEnabled
          ? const BorderSide(color: Colors.grey)
          : const BorderSide(color: ColorManeger.lightPrimaryColor),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
