import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18GDarkBlueBold),
            Text('How Are you Today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: Colors.grey[200],
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        ),
      ],
    );
  }
}
