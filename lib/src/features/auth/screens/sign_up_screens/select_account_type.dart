import 'package:fling_banking/src/features/auth/data/enums.dart';
import 'package:fling_banking/src/features/auth/logic/blocs/auth_state.dart';
import 'package:fling_banking/src/features/auth/widgets/savings_or_current_container.dart';
import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectAccountTypeScreen extends StatelessWidget {
  const SelectAccountTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void selectAcctType(AccountType type) {
      context.read<AuthBloc>().add(
            SelectAccountTypeEvent(
              accountType: type,
            ),
          );
    }

    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (_, state) {
          return AppColumn(
            children: [
              BackAndTitleWidget(
                otherWidget: SvgAsset(
                  assetName: flingTextLogo,
                  height: 30.27,
                ),
              ),
              hBox5,
              const AppText(
                text: 'Select an account type',
                fontSize: 20,
                isCentered: true,
              ),
              hBox20,
              SavingsOrCurrentCont(
                isSavings: true,
                onProceed: () {
                  selectAcctType(AccountType.savings);
                  AppNavigator.pushNamed(AuthRoutes.viewSignUpSteps);
                },
              ),
              SavingsOrCurrentCont(
                isSavings: false,
                onProceed: () {
                  selectAcctType(AccountType.current);
                  AppNavigator.pushNamed(AuthRoutes.viewSignUpSteps);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
