import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess_header.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/all_expensess_items_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
