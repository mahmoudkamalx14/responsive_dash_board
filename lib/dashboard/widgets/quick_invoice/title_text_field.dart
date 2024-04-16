import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/core/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title, required this.hint});

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Customer name',
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        ),
      ],
    );
  }
}
