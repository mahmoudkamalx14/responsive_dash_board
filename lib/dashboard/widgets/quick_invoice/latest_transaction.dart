import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/latest_transction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Latest Transaction', style: AppStyles.styleMedium16),
        const SizedBox(height: 12),
        LatestTransactionListView()
      ],
    );
  }
}
