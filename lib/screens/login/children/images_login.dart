import 'package:flutter/material.dart';
import '../../../themes/app_images.dart';
import '../../../widgets/image_stack.dart';

class ImagesLogin extends SizedBox {
  ImagesLogin({Key? key, required Size size})
      : super(
          key: key,
          height: size.height * 0.42,
          child: Stack(
            children: [
              Container(
                alignment: const Alignment(0.6, 1.2),
                child: Image.asset(AppImages.groupBalls1),
              ),
              Container(
                alignment: const Alignment(-0.1, -0.4),
                child: Image.asset(AppImages.groupBalls2),
              ),
              const ImageStack(
                image: AppImages.redShape,
                backgroundImage: AppImages.pikachu,
                alignment: Alignment(0.8, 0.3),
              ),
              const ImageStack(
                image: AppImages.greenShape,
                backgroundImage: AppImages.iversaur,
                alignmentBackground: Alignment(1, -1.5),
                alignment: Alignment(-0.5, 2.1),
              ),
              const ImageStack(
                image: AppImages.yellowShape,
                backgroundImage: AppImages.toggepi,
                alignment: Alignment(-0.8, -0.2),
              ),
              Container(
                alignment: const Alignment(-0.75, -1.1),
                child: Image.asset(AppImages.logo),
              )
            ],
          ),
        );
}
