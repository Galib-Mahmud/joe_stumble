import 'package:flutter/material.dart';

import '../app_text.dart';

class AppTextField extends StatelessWidget {
  final String? label;
  final String hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  final bool enabled; // ✅ new parameter
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;

  final Color? borderColor;         // fallback / default border
  final Color? enabledBorderColor;  // ✅ new
  final Color? focusedBorderColor;  // ✅ new
  final Color? disabledBorderColor; // ✅ new for disabled state
  final Color? labelColor;
  final Color? hintColor;
  final Color? fillColor;
  final Color? disabledFillColor;   // ✅ new for disabled state
  // ✅ background color

  const AppTextField({
    super.key,
    this.label,
    required this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.enabled = true, // ✅ default to enabled
    this.validator,
    this.focusNode,
    this.borderColor,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.disabledBorderColor,
    this.labelColor,
    this.hintColor,
    this.fillColor,
    this.disabledFillColor,
  });

  @override
  Widget build(BuildContext context) {
    final defaultBorderColor = borderColor ?? Colors.transparent;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null && label!.isNotEmpty)
          AppText(
            data: label!,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: labelColor ?? const Color(0xff18365D),
          ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          enabled: enabled, // ✅ pass enabled parameter
          validator: validator,
          focusNode: focusNode,
          style: TextStyle(
            color: enabled ? Colors.black : Colors.grey[600], // ✅ different color when disabled
            fontSize: 16,
            fontFamily: 'Poppins',
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: hintColor ?? Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins',
            ),
            filled: true,
            fillColor: enabled
                ? (fillColor ?? Colors.white)
                : (disabledFillColor ?? Colors.grey[100]), // ✅ different fill color when disabled
            prefixIcon: prefixIcon != null
                ? Icon(
                prefixIcon,
                color: enabled ? Colors.grey[700] : Colors.grey[400], // ✅ different icon color when disabled
                size: 20
            )
                : null,
            suffixIcon: suffixIcon != null
                ? Icon(
                suffixIcon,
                color: enabled ? Colors.grey[700] : Colors.grey[400], // ✅ different icon color when disabled
                size: 20
            )
                : null,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: defaultBorderColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: enabledBorderColor ?? defaultBorderColor,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: focusedBorderColor ?? defaultBorderColor,
                width: 1.2,
              ),
            ),
            disabledBorder: OutlineInputBorder( // ✅ new disabled border style
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: disabledBorderColor ?? Colors.grey[300]!,
                width: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}