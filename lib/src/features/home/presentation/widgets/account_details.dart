import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashboardAccountDetails extends HookWidget {
  const DashboardAccountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final showBalance = useState<bool>(true);

    void toggleShowBalance() {
      showBalance.value = !showBalance.value;
    }

    return SizedBox(
      height: 171,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 158,
            padding: const EdgeInsets.all(15).copyWith(bottom: 10),
            decoration: BoxDecoration(
              color: appColors.elevatedSurface,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Savings Account\n',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        children: [
                          TextSpan(
                            text: '6274538221',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: appColors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgAsset(assetName: active),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    SvgAsset(assetName: greenNaira),
                    AppText(
                      text: showBalance.value ? '150,000' : ' ******',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppText(
                      text: 'Account Balance',
                      fontSize: 12,
                    ),
                    GestureDetector(
                      onTap: toggleShowBalance,
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const AppText(
                              text: 'Hide',
                              fontSize: 12,
                            ),
                            wBox5,
                            SvgAsset(
                                assetName:
                                    showBalance.value ? showing : hidden),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                hBox8,
                const AppText(
                  text: 'Acc 1 of 1',
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  isCentered: true,
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: appColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
