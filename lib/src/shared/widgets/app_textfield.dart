import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String labelText;
  final Widget? suffixIcon;
  final bool isObscure;
  final bool readOnly;
  final TextInputType? keyboardType;
  const AppTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.validator,
    this.suffixIcon,
    this.isObscure = false,
    this.readOnly = false,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 56,
        child: TextFormField(
          controller: controller,
          validator: validator,
          obscureText: isObscure,
          readOnly: readOnly,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: labelText,
            floatingLabelStyle: TextStyle(color: appColors.grey),
            focusedBorder: _buildInbutBorder(appColors.green),
            border: _buildInbutBorder(appColors.grey),
            enabledBorder: _buildInbutBorder(appColors.grey),
            disabledBorder: _buildInbutBorder(appColors.grey),
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _buildInbutBorder(Color bColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: bColor,
        width: .9,
      ),
    );
  }
}
