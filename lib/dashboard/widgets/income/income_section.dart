import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/widgets/income/income_chart.dart';
import 'package:responsive_dash_board/dashboard/widgets/income/income_details.dart';
import 'package:responsive_dash_board/dashboard/widgets/income/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const IncomeSectionHeader(),
        const SizedBox(height: 16),
        MediaQuery.sizeOf(context).width <= 415
            ? Column(
                children: [
                  const IncomeChart(),
                  const SizedBox(height: 24),
                  IncomeDetails(),
                ],
              )
            : Row(
                children: [
                  const Expanded(flex: 2, child: IncomeChart()),
                  const SizedBox(width: 14),
                  Expanded(flex: 5, child: IncomeDetails()),
                ],
              ),
        const Divider(height: 56, color: Color(0xffF1F1F1)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: const Text(
                'See detail',
                textAlign: TextAlign.center,
                style: AppStyles.styleSemiBold16,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
