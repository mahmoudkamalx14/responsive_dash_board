import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/models/transaction_history_item_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/card/transaction_history_item.dart';

class TransactionHistoryItemListView extends StatelessWidget {
  TransactionHistoryItemListView({super.key});

  final List<TransactionHistoryItemModel> items = listTransactionHistoryItems;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.asMap().entries.map((e) {
      return TransactionHistoryItem(
        itemModel: e.value,
        indexItem: e.key,
      );
    }).toList());
  }
}
