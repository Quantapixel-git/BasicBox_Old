import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color textColor;

  const OnboardingTextButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: textColor,
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: GoogleFonts.montserrat(),
        ));
  }
}
