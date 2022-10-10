import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const yColor = Color.fromARGB(255, 255, 180, 58);
const wColor = Color.fromARGB(255, 255, 255, 255);
const bColor = Colors.black;
Text btext(
  text,
) {
  return Text(
    text,
    style: const TextStyle(
        color: bColor, fontWeight: FontWeight.bold, wordSpacing: 2),
  );
}



Text greyText(String text, double size) {
  return Text(
    text,
    style: TextStyle(color: Colors.grey, fontSize: size),
  );
}

const Color transparent = Colors.transparent;

class TextFrave extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextOverflow textOverflow;
  final int maxLines;
  final TextAlign textAlign;

  const TextFrave(
      {super.key,
      required this.text,
      this.fontSize = 18,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black,
      this.textOverflow = TextOverflow.visible,
      this.maxLines = 1,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.getFont('Roboto',
          fontSize: fontSize, fontWeight: fontWeight, color: color),
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
