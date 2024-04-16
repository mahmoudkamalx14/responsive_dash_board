import 'package:flutter/material.dart';
import 'package:responsive_dash_board/dashboard/models/user_info_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  final List<UserInfoModel> items = itemsTransaction;

  LatestTransactionListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
