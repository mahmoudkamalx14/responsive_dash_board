import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/all_expenses/inactive_and_active_all_expensesss_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem(
      {super.key, required this.itemModel, required this.isSelected});

  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
