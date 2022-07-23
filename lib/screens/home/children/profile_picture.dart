import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String image;
  const ProfilePicture({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 25.0,
        top: 5,
        bottom: 5,
      ),
      child: SizedBox(
        width: 45,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
