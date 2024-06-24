import 'package:fling_banking/src/features/auth/data/enums.dart';
import 'package:fling_banking/src/features/auth/logic/blocs/auth_state.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewSignUpStepsScreen extends StatelessWidget {
  const ViewSignUpStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> step = [
      'Personal information',
      'Employment Information',
      'Next of Kin Section',
      'Identification Section'
    ];
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (_, state) {
          return AppColumn(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BackAndTitleWidget(
                otherWidget: SvgAsset(
                  assetName: flingTextLogo,
                  height: 30.27,
                ),
              ),
              hBox15,
              AppText(
                text:
                    '${state.user.accountType == AccountType.savings ? 'Savings' : 'Current'} Account',
                isCentered: true,
              ),
              const AppText(
                text: 'In these few steps, your account will be ready',
                height: 2,
                isCentered: true,
              ),
              hBox40,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  step.length,
                  (index) => _buildStepWidget(index: index, title: step[index]),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15).copyWith(bottom: 50),
        child: AppButton(
          title: 'Proceed',
          onTap: () {
            AppNavigator.pushNamed(AuthRoutes.signUpStep1);
          },
        ),
      ),
    );
  }

  Widget _buildStepWidget({
    required int index,
    required String title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 32,
              width: 32,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appColors.elevatedSurface,
              ),
              child: AppText(
                text: '0${index + 1}',
                color: const Color(0xFF667085),
              ),
            ),
            wBox25,
            AppText(
              text: title,
            )
          ],
        ),
        index == 3
            ? const SizedBox.shrink()
            : Container(
                width: 32,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Center(
                  child: Container(
                    color: const Color(0xFF006879).withOpacity(.6),
                    height: 8,
                    width: 1,
                  ),
                ),
              ),
      ],
    );
  }
}
