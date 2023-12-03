import 'package:divar_app/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class GenerateElevatedButton extends StatelessWidget {
  final Color backgrounColor;
  final Widget child;
  final Function() onPressed;
  final double verticalPadding;
  const GenerateElevatedButton(
      {super.key,
      this.backgrounColor = CustomColors.baseColor,
      required this.child,
      required this.onPressed,
      this.verticalPadding = 0});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding:
              EdgeInsets.symmetric(vertical: verticalPadding, horizontal: 8),
          shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: CustomColors.baseColor,
              ),
              borderRadius: BorderRadius.circular(4)),
          backgroundColor: backgrounColor,
          elevation: 0),
      child: child,
    );
  }
}
