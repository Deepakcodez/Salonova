import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTexts {
  static Widget nunito({
    required String text,
    TextAlign? textAlign,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.nunito(fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  static Widget roboto({
    required String text,
    TextAlign? textAlign,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.roboto(fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  static Widget openSans({
    required String text,
    TextAlign? textAlign,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.openSans(fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  static Widget lato({
    required String text,
    TextAlign? textAlign,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.lato(fontSize: fontSize, fontWeight: fontWeight),
    );
  }

  static Widget montserrat({
    required String text,
    TextAlign? textAlign,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return Text(
      textAlign: textAlign,
      text,
      style: GoogleFonts.montserrat(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
