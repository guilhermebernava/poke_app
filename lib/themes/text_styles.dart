import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_app/themes/app_colors.dart';

class TextStyles {
  static TextStyle loginTitle(Color color) {
    return GoogleFonts.nunito(
      color: color,
      fontSize: 35,
      fontWeight: FontWeight.w700,
    );
  }

  static final loginText = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final loginButton = GoogleFonts.nunito(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
}
