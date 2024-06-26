import 'package:fling_banking/src/features/home/data/data.dart';
import 'package:fling_banking/src/features/home/presentation/widgets/widgets.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DashboardScreen extends HookWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isOverview = useState<bool>(true);

    return Scaffold(
      body: AppColumn(
        children: [
          hBox10,
          _topInfo(),
          hBox30,
          const DashboardAccountDetails(),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15).copyWith(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...dbActions.map((action) => DashboardActionWidget(
                      text: action.title,
                      icon: action.icon,
                      onTap: action.onTap,
                    )),
              ],
            ),
          ),
          hBox30,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _selectionTile(
                title: 'Overview',
                isSelected: isOverview.value,
                onTap: () {
                  if (!isOverview.value) {
                    isOverview.value = true;
                  }
                },
              ),
              _selectionTile(
                title: 'Transaction History',
                isSelected: !isOverview.value,
                onTap: () {
                  if (isOverview.value) {
                    isOverview.value = false;
                  }
                },
              ),
            ],
          ),
          hBox30,
          isOverview.value
              ? const DashboardOverview()
              : const DashboradTransactionHistory(),
        ],
      ),
    );
  }

  Widget _selectionTile({
    required String title,
    required VoidCallback onTap,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding:
            EdgeInsets.only(right: title == 'Overview' ? 40 : 15, left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          border: isSelected
              ? Border(
                  bottom: BorderSide(width: 1, color: appColors.green),
                  left: BorderSide(width: 1.5, color: appColors.green),
                )
              : null,
        ),
        child: AppText(
          text: title,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _topInfo() {
    return SizedBox(
      height: 74,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 56,
            width: 56,
            padding: const EdgeInsets.all(10).copyWith(bottom: 0, right: 15),
            decoration: BoxDecoration(
              color: appColors.elevatedSurface,
              shape: BoxShape.circle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                profileImage,
                height: 1,
                width: 1,
              ),
            ),
          ),
          const Text.rich(
            TextSpan(
              text: 'Hi,\n',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              children: [
                TextSpan(
                  text: 'Kindness Orimolade',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgAsset(assetName: contactServices),
            ],
          ),
        ],
      ),
    );
  }
}
