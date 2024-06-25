import 'package:fling_banking/src/features/account/presentation/screens/profile_screen.dart';
import 'package:fling_banking/src/features/home/presentation/screens/dashboard.dart';
import 'package:fling_banking/src/features/invest/presentation/screens/investment_screen.dart';
import 'package:fling_banking/src/features/learn/presentation/screens/learning_screen.dart';
import 'package:fling_banking/src/features/services/presentation/screens/services_screen.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(0);

    List<Widget> pages = const [
      DashboardScreen(),
      ServicesScreen(),
      LearningScreen(),
      InvestmentScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex.value,
        children: pages,
      ),
      bottomNavigationBar: SizedBox(
        height: 81,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: BottomNavigationBar(
            currentIndex: selectedIndex.value,
            onTap: (value) {
              selectedIndex.value = value;
            },
            enableFeedback: false,
            backgroundColor: appColors.elevatedSurface,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: appColors.green,
            unselectedItemColor: appColors.white,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedLabelStyle: TextStyle(
              fontSize: 12,
              color: appColors.white,
              fontWeight: FontWeight.w500,
            ),
            selectedLabelStyle: TextStyle(
              color: appColors.green,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            items: [
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: dashboard),
                label: 'Home',
                activeIcon:
                    SvgAsset(assetName: dashboard, color: appColors.green),
              ),
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: services),
                label: 'Services',
                activeIcon:
                    SvgAsset(assetName: services, color: appColors.green),
              ),
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: learn),
                label: 'Learn',
                activeIcon: SvgAsset(assetName: learn, color: appColors.green),
              ),
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: investment),
                label: 'Invest',
                activeIcon:
                    SvgAsset(assetName: investment, color: appColors.green),
              ),
              BottomNavigationBarItem(
                icon: SvgAsset(assetName: profile),
                label: 'Account',
                activeIcon:
                    SvgAsset(assetName: profile, color: appColors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
