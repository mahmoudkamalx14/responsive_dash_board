import 'package:responsive_dash_board/core/utils/app_images.dart';

class DrawerItemModel {
  final String title;
  final String image;

  const DrawerItemModel({required this.title, required this.image});
}

List<DrawerItemModel> itemsDrawer = [
  const DrawerItemModel(
      title: 'Dashboard', image: Assets.assetsImagesDashboard),
  const DrawerItemModel(
      title: 'My Transaction', image: Assets.assetsImagesMyTransctions),
  const DrawerItemModel(
      title: 'Statistics', image: Assets.assetsImagesStatistics),
  const DrawerItemModel(
      title: 'Wallet Account', image: Assets.assetsImagesWalletAccount),
  const DrawerItemModel(
      title: 'My Investments', image: Assets.assetsImagesMyInvestments),
];
