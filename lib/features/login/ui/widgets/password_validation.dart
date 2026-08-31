import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/core/theming/colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool hasMinLength;
  const PasswordValidation({
    super.key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacters,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At Least 1 lowercase letter', hasLowercase),
        verticalSpace(2),
        buildValidationRow('At Least 1 uppercase letter', hasUppercase),
        verticalSpace(2),
        buildValidationRow(
          'At Least 1 special character',
          hasSpecialCharacters,
        ),
        verticalSpace(2),
        buildValidationRow('At Least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At Least 8 character long', hasMinLength),
        verticalSpace(2),
      ],
    );
  }

  buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.kGray),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13BlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.kGray : ColorsManager.kDarkBlue,
          ),
        ),
      ],
    );
  }
}
