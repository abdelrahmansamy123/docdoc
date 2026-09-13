import 'package:doctor/core/helper/spacing.dart';
import 'package:doctor/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctor/features/home/ui/widgets/doctor_specialty_see_all.dart';
import 'package:doctor/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorBlueContainer(),
              verticalSpace(24.h),
              const DoctorSpecialtySeeAll(),
              verticalSpace(18.h),
              const SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
