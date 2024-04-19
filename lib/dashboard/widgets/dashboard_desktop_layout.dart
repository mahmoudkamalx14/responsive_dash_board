import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/my_card_and_income.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(
          flex: 8,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 24),
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 5, child: AllExpensessAndQuickInvoiceSection()),
                      SizedBox(width: 24),
                      Expanded(flex: 3, child: MyCardAndIncome()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
