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

  static TextStyle loading = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 40,
    fontWeight: FontWeight.w400,
  );

  static final loginText = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final typeChip = GoogleFonts.nunito(
    color: AppColors.white,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final type = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static final descriptionText = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static final code = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static final progressBarText = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final loginButton = GoogleFonts.nunito(
    color: AppColors.white,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static final chip = GoogleFonts.nunito(
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final homeTitle = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );

  static final homeText = GoogleFonts.nunito(
    color: AppColors.blue,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
