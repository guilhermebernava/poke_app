import 'package:flutter/material.dart';
import 'package:poke_app/screens/home/children/profile_picture.dart';
import 'package:poke_app/themes/app_images.dart';
import 'package:poke_app/themes/text_styles.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfilePicture(
              image: AppImages.profilePicture,
              width: size.width * 0.5,
            ),
            Text(
              'Nick: IsraelZ',
              style: TextStyles.loading,
            )
          ],
        ),
      ),
    );
  }
}
