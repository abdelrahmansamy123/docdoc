import 'package:doctor/core/helper/extention.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedBtn extends StatelessWidget {
  const GetStartedBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: TextButton.styleFrom(
        backgroundColor: ColorsManager.kPrimaryColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text('Get Started', style: TextStyles.fontSize16BlueBold),
    );
  }
}
