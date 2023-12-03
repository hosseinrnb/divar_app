import 'package:divar_app/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class GenerateTitleWithIcon extends StatelessWidget {
  const GenerateTitleWithIcon(
      {super.key, required this.title, required this.iconPath});
  final String title;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(iconPath),
        const SizedBox(width: 8.0),
        Text(
          title,
          style: const TextStyle(
            fontFamily: 'sb',
            fontSize: 16.0,
            color: CustomColors.grey700,
          ),
        ),
      ],
    );
  }
}
