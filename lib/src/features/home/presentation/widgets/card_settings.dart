import 'package:fling_banking/src/shared/shared.dart';
import 'package:flutter/material.dart';

class CardSettings extends StatelessWidget {
  const CardSettings({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardSettings = [
      'Card Request',
      'Card Activation',
      'Card Control',
      'Virtual Card',
    ];
    return AppAnimatedColumn(
      children: List.generate(
        cardSettings.length,
        (index) => AppTile(
          title: cardSettings[index],
          onTap: () {},
        ),
      ),
    );
  }
}
