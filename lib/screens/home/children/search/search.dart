import 'package:flutter/material.dart';
import './search_controller.dart';
import '../../../../themes/app_colors.dart';

class Search extends StatelessWidget {
  final Size size;
  final TextEditingController textEditController;
  const Search({
    Key? key,
    required this.size,
    required this.textEditController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SearchController();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: AppColors.white,
          ),
          width: size.width * 0.4,
          height: 35,
          child: TextFormField(
            controller: textEditController,
            maxLines: 1,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: size.width * 0.025,
                bottom: size.height * 0.016,
              ),
              label: const Text(''),
              fillColor: AppColors.white,
              border: InputBorder.none,
            ),
          ),
        ),
        InkWell(
          onTap: controller.onPressed,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: AppColors.red,
                  blurRadius: 6,
                )
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 12,
              ),
              child: Icon(
                Icons.search,
                size: 25,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
