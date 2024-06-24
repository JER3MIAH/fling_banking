import 'package:fling_banking/src/features/auth/data/enums.dart';
import 'package:fling_banking/src/features/auth/logic/blocs/auth_state.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewSignUpStepsScreen extends StatelessWidget {
  const ViewSignUpStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              hBox15,
              AppText(
                text:
                    '${state.user.accountType == AccountType.savings ? 'Savings' : 'Current'} Account',
                isCentered: true,
              ),
              const AppText(
                text: 'In these few steps, your account will be ready',
                isCentered: true,
              ),
            ],
          );
        },
      ),
    );
  }
}
