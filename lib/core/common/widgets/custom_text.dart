// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomText extends StatelessWidget {
//   final String text;
//   final TextStyle? style;
//   final Color? color;
//   final double? scaleFactor;
//   final int maxLines;
//   final TextOverflow overflow;
//   final TextAlign? textAlign;

//   const CustomText({
//     super.key,
//     required this.text,
//     this.style,
//     this.color,
//     this.maxLines = 2,
//     this.overflow = TextOverflow.ellipsis,
//     this.scaleFactor,
//     this.textAlign,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       maxLines: maxLines,
//       overflow: overflow,
//       textAlign: textAlign,
//       style: fontFamily == FontFamily.roboto
//           ? GoogleFonts.roboto(textStyle: style)
//           : GoogleFonts.alata(textStyle: style),
//     );
//   }
// }
