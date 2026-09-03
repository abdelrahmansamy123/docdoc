import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialtySeeAll extends StatelessWidget {
  const DoctorSpecialtySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctors Speciality', style: TextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        Text('See All', style: TextStyles.font12blueRegular),
      ],
    );
  }
}
