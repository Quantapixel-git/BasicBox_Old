import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final bool fullWidth;

  const BorderButton({
    super.key,
    required this.onTap,
    required this.text,
    this.borderColor,
    this.textColor,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: borderColor != null ? BorderSide(color: borderColor!) : null,
          foregroundColor: textColor,
        ),
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}
