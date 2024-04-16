import 'package:responsive_dash_board/core/utils/app_images.dart';

class UserInfoModel {
  final String image, title, subTitle;

  const UserInfoModel(
      {required this.image, required this.title, required this.subTitle});
}

List<UserInfoModel> itemsTransaction = [
  const UserInfoModel(
      image: Assets.assetsImagesAvatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail'),
  const UserInfoModel(
      image: Assets.assetsImagesAvatar2,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail'),
  const UserInfoModel(
      image: Assets.assetsImagesAvatar3,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail'),
];
