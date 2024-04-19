import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';
import 'package:responsive_dash_board/dashboard/models/drawer_item_model.dart';
import 'package:responsive_dash_board/dashboard/models/user_info_model.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/active_and_inactive_item.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/drawer_items_list_view.dart';
import 'package:responsive_dash_board/dashboard/widgets/drawer/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.assetsImagesAvatar3,
                title: 'Lekan Okeowo',
                subTitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting system',
                    image: Assets.assetsImagesSettings,
                  ),
                ),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account',
                      image: Assets.assetsImagesLogout),
                ),
                SizedBox(height: 48),
              ],
            ),
          )
        ],
      ),
    );
  }
}
