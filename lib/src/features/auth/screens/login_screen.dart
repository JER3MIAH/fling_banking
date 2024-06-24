import 'package:fling_banking/src/features/navigation/app_navigator.dart';
import 'package:fling_banking/src/features/navigation/routes.dart';
import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    final isPasswordObscure = useState<bool>(true);

    return Scaffold(
      backgroundColor: appColors.blackBg,
      body: AppColumn(
        children: [
          Center(child: SvgAsset(assetName: flingTextLogo, height: 56)),
          hBox10,
          const AppText(
            text: 'Welcome to Fling banking',
            fontSize: 20,
            isCentered: true,
          ),
          hBox40,
          AppTextField(
            controller: usernameController,
            labelText: 'Username',
          ),
          hBox30,
          AppTextField(
            controller: passwordController,
            labelText: 'Password',
            isObscure: isPasswordObscure.value,
            suffixIcon: GestureDetector(
              onTap: () {},
              child: SvgAsset(
                padding: const EdgeInsets.all(8).copyWith(right: 12),
                assetName: fingerprintIcon,
              ),
            ),
          ),
          hBox20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  isPasswordObscure.value = !isPasswordObscure.value;
                },
                child: Container(
                  color: Colors.transparent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppCheckBox(
                        isSelected: !isPasswordObscure.value,
                      ),
                      const AppText(
                        text: 'Show password',
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
              BounceInAnimation(
                onTap: () {},
                child: AppText(
                  text: 'Forgot password?',
                  fontWeight: FontWeight.w500,
                  color: appColors.green,
                ),
              ),
            ],
          ),
          hBox50,
          AppButton(
            title: 'Login',
            onTap: () {},
          ),
          hBox30,
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const AppText(text: 'Want to bank with Fling? '),
              BounceInAnimation(
                onTap: () {
                  AppNavigator.pushNamed(AuthRoutes.selectAccountTpe);
                },
                child: AppText(
                  text: 'Create account',
                  color: appColors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
