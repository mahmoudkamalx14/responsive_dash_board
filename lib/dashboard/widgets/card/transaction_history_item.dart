import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/models/transaction_history_item_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem(
      {super.key, required this.itemModel, this.indexItem});

  final TransactionHistoryItemModel itemModel;
  final int? indexItem;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemModel.title,
                    style: AppStyles.styleSemiBold16,
                    maxLines: 2,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      itemModel.date,
                      style: AppStyles.styleRegular12,
                    ),
                  ),
                ],
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                itemModel.price,
                style: AppStyles.styleSemiBold20.copyWith(
                  color: indexItem == 0
                      ? const Color(0xFFF3735E)
                      : const Color(0xFF7CD87A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
