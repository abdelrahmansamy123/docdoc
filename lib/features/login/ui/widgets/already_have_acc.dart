import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAcc extends StatelessWidget {
  const AlreadyHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Already have an account yet?  ",
        style: TextStyles.font13GDarkBlackRegular,
        children: [
          TextSpan(text: 'Sign Up', style: TextStyles.font13GBlueSemiBold),
        ],
      ),
    );
  }
}
