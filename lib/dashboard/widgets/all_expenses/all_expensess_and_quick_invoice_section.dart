import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess.dart';
import 'package:responsive_dash_board/dashboard/widgets/quick_invoice/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        AllExpenses(),
        SizedBox(height: 20),
        QuickInvoice(),
      ],
    );
  }
}
