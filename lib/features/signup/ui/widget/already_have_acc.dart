import 'package:doctor/core/helper/extention.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAcc extends StatelessWidget {
  const AlreadyHaveAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Already have an account? ",
        style: TextStyles.font13GDarkBlackRegular,
        children: [
          TextSpan(
            text: ' Login',
            style: TextStyles.font13GBlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
