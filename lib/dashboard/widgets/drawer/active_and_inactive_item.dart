import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/models/drawer_item_model.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleMedium16,
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          child: Text(
            drawerItemModel.title,
            style: AppStyles.styleBold16,
          ),
        ),
        trailing: Container(
          width: 3.27,
          decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
        ),
      ),
    );
  }
}
