import 'package:flutter/material.dart';

import '../../theme/app_color.dart';

class ProfileDtlWidget extends StatelessWidget {
  final String image,number,title;
  final Color color;
  const ProfileDtlWidget({super.key, required this.image,
    required this.number, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row( spacing: 5,
          children: [
            Image(image:
            AssetImage(image)),
            Text(number,style: TextStyle(color: color),)
          ],
        ),
        Text(title,style: TextStyle(color: AppColor.lightGreyColor_02.withOpacity(0.4)),)
      ],
    );
  }

}
