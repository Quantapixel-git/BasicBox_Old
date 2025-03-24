import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String label;
  final String placeholder;
  final bool showLabel;
  final TextEditingController? controller;
  final TextInputType type;
  final bool secureEntry;
  final Widget? suffixIcon;
  final int minLines;
  final int maxLines;

  const Input({
    super.key,
    required this.label,
    required this.placeholder,
    this.controller,
    this.type = TextInputType.text,
    this.secureEntry = false,
    this.suffixIcon,
    this.showLabel = true,
    this.maxLines = 1,
    this.minLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showLabel)
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        if (showLabel)
          SizedBox(
            height: 20.0,
          ),
        TextField(
          minLines: minLines,
          maxLines: maxLines,
          keyboardType: type,
          obscureText: secureEntry,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.black,
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 16.0),
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.grey1,
            ),
            hintText: placeholder,
            filled: true,
            fillColor: AppColors.grey,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
