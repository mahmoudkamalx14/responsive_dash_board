import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/core/widgets/income_details_item_model.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.itemModel});

  final IncomeDetailsItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: FittedBox(
            child: Container(
              width: 12,
              height: 12,
              decoration: ShapeDecoration(
                color: itemModel.color,
                shape: const OvalBorder(),
              ),
            ),
          ),
        ),
        FittedBox(
          fit: BoxFit.none,
          child: Text(
            itemModel.title,
            style: AppStyles.styleRegular16,
            maxLines: 1,
          ),
        ),
        const Spacer(),
        Flexible(
          child: FittedBox(
            child: Text(
              itemModel.value,
              style: AppStyles.styleMedium16,
              maxLines: 1,
            ),
          ),
        ),
      ],
    );
    // return ListTile(
    //   leading: Container(
    //     width: 12,
    //     height: 12,
    //     decoration: ShapeDecoration(
    //       color: itemModel.color,
    //       shape: const OvalBorder(),
    //     ),
    //   ),
    //   title: Text(
    //     itemModel.title,
    //     style: AppStyles.styleRegular16,
    //   ),
    //   trailing: Text(
    //     itemModel.value,
    //     style: AppStyles.styleMedium16,
    //   ),
    // );
  }
}
