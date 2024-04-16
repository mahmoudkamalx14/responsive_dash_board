import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensessAndQuickInvoiceSection(),
                        )),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
