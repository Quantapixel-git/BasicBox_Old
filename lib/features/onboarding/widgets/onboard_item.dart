import 'package:ecom2/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardItem extends StatelessWidget {
  final String title;
  final String description;
  final String localImage;

  const OnboardItem({
    super.key,
    required this.title,
    required this.description,
    required this.localImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          localImage,
          height: 300,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            color: AppColors.grey2,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
