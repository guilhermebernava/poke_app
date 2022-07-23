import 'package:flutter/material.dart';
import '../screens/home/children/profile_picture.dart';
import '../themes/app_colors.dart';
import '../themes/app_images.dart';

class AppBarHome extends AppBar {
  AppBarHome({
    Key? key,
    Widget? leading,
  }) : super(
          key: key,
          iconTheme: const IconThemeData(color: Colors.black),
          leading: leading,
          elevation: 0,
          backgroundColor: AppColors.white,
          title: Image.asset(AppImages.logo),
          actions: const [ProfilePicture(image: AppImages.profilePicture)],
        );
}
