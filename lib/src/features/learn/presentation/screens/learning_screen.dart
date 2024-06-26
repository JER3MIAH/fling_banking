import 'package:fling_banking/src/features/learn/presentation/widgets/widgets.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(94),
          child: AppBar(
            backgroundColor: appColors.blackBg,
            centerTitle: true,
            automaticallyImplyLeading: false,
            scrolledUnderElevation: 0,
            title: const AppText(
              text: 'Financial Education',
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: appColors.green,
              labelColor: appColors.white,
              unselectedLabelColor: appColors.grey,
              tabs: const [
                Tab(text: 'Learn'),
                Tab(text: 'Quizzes'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            LearnTab(),
            QuizzesTab(),
          ],
        ),
      ),
    );
  }
}
