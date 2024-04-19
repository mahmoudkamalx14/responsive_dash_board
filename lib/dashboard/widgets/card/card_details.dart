import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/my_card_page_view.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/transaction_history.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20),
        SizedBox(height: 20),
        MyCardPageView(),
        Divider(height: 40, color: Color(0xffF1F1F1)),
        TransactionHistory(),
      ],
    );
  }
}
