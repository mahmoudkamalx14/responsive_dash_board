import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/theme/app_styles.dart';
import 'package:responsive_dash_board/core/utils/app_images.dart';

class MyCardImage extends StatelessWidget {
  const MyCardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        height: 560,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xFF4DB7F2),
          image: const DecorationImage(
            image: AssetImage(Assets.assetsImagesCardBackground),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: ListTile(
                  title: Text(
                    'Name card',
                    style:
                        AppStyles.styleRegular16.copyWith(color: Colors.white),
                  ),
                  subtitle:
                      const Text('Syah Bandi', style: AppStyles.styleMedium20),
                  trailing: const Icon(Icons.camera_alt_rounded),
                ),
              ),
              const Expanded(child: SizedBox()),
              Expanded(
                child: FittedBox(
                  child: Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular12.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
