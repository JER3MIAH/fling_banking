import 'package:fling_banking/src/features/account/presentation/widget/widgets.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(54),
        child: AppBar(
          backgroundColor: appColors.green.withOpacity(.19),
          centerTitle: true,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          title: const AppText(
            text: 'Profile',
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                onTap: () {
                  AppNavigator.showBottomSheet(
                    const NotificationDialogContent(),
                  );
                },
                child: SvgAsset(assetName: notificationBell),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: appColors.green.withOpacity(.19),
            child: Column(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  padding: const EdgeInsets.all(10),
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
                hBox5,
                const AppText(
                  text: 'Kindness Orimolade',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                const AppText(
                  text: 'Savings Account',
                  fontSize: 12,
                ),
                hBox30,
              ],
            ),
          ),
          hBox20,
          AppColumn(
            children: [
              AppTile(
                title: 'Change Password',
                leadingIcon: changePassword,
                onTap: () {},
              ),
              AppTile(
                title: 'Create Pin',
                leadingIcon: createPin,
                onTap: () {},
              ),
              AppTile(
                title: 'Limit Management',
                leadingIcon: limitManagement,
                onTap: () {},
              ),
              AppTile(
                title: 'Biometrics Login',
                leadingIcon: bioLogin,
                onTap: () {},
              ),
              AppTile(
                title: 'Logout',
                leadingIcon: logoutIcon,
                onTap: () {},
              ),
              hBox50,
              SvgAsset(assetName: onlineSupport),
            ],
          ),
        ],
      ),
    );
  }
}
