import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20,
        ),
        Expanded(
          child: SizedBox(),
        ),
        RangeOptions(),
      ],
    );
  }
}
