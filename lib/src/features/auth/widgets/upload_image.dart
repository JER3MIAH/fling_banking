import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class UploadImageContainer extends StatelessWidget {
  final bool isImage;
  const UploadImageContainer({
    super.key,
    this.isImage = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 327,
      margin: const EdgeInsets.only(bottom: 23),
      padding: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: appColors.elevatedSurface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 92,
            child: Column(
              children: [
                SvgAsset(assetName: uploadCloud),
                const Spacer(),
                BounceInAnimation(
                  onTap: () {},
                  child: AppText(
                    text: 'Click to upload',
                    fontWeight: FontWeight.w500,
                    color: appColors.green,
                  ),
                ),
                hBox8,
                AppText(
                  text: 'PNG, JPG or GIF (max. 800x400px)',
                  color: appColors.white.withOpacity(.7),
                ),
              ],
            ),
          ),
          Container(
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: appColors.black.withOpacity(.12),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: !isImage
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.center,
              children: isImage
                  ? [
                      SvgAsset(assetName: cameraIcon),
                    ]
                  : [
                      AppText(
                        text: 'Type',
                        color: appColors.white.withOpacity(.7),
                        fontSize: 16,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: appColors.white.withOpacity(.7),
                      ),
                    ],
            ),
          ),
        ],
      ),
    );
  }
}
