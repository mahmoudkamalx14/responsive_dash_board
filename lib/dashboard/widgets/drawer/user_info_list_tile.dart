import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/dashboard/models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      child: Expanded(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoModel.image,
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.title,
              style: AppStyles.styleSemiBold16,
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              userInfoModel.subTitle,
              style: AppStyles.styleRegular12,
            ),
          ),
        ),
      ),
    );
  }
}
