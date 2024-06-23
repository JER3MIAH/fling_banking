import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
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
          ),
        ],
      ),
    );
  }
}
