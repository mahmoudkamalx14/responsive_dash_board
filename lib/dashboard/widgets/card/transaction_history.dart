import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(
                child: Text('Transaction History',
                    style: AppStyles.styleSemiBold20)),
            GestureDetector(
              onTap: () {},
              child: Text(
                'See all',
                style: AppStyles.styleMedium16.copyWith(
                  color: const Color(0xFF4EB7F2),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text('13 April 2022',
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0xFFAAAAAA),
            )),
        TransactionHistoryItemListView(),
      ],
    );
  }
}
