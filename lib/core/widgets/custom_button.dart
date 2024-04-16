import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.backgourndColor, this.textColor, required this.text});

  final Color? backgourndColor, textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 62,
        decoration: BoxDecoration(
            color: backgourndColor ?? const Color(0xFF4DB7F2),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            text,
            style: AppStyles.styleSemiBold18.copyWith(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
