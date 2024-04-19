import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/income_details_item_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/income/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  IncomeDetails({super.key});

  final List<IncomeDetailsItemModel> items = listItemsIncomeDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: IncomeDetailsItem(itemModel: e),
              ))
          .toList(),
    );
  }
}
