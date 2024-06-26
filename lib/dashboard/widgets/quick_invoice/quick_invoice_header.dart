import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(
          fit: FlexFit.loose,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Quick Invoice',
              style: AppStyles.styleSemiBold20,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(
          fit: FlexFit.loose,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Container(
              width: 48,
              height: 48,
              decoration: const ShapeDecoration(
                color: Color(0xFFFAFAFA),
                shape: OvalBorder(),
              ),
              child: const Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            ),
          ),
        )
      ],
    );
  }
}
