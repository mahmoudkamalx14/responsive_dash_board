import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/my_card_and_income.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(height: 20),
          MyCardAndIncome(),
        ],
      ),
    );
  }
}
