import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:flutter_next/flutter_next.dart';

import '../constant/app_data.dart';

class LogoComponent extends StatelessWidget {
  const LogoComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          PersonalDetails.logoImage,
          height: 100,
          width: 100,
        ),
        // const SizedBox(
        //   width: 6,
        // ),
        Text.rich(TextSpan(children: [
          const TextSpan(
            text: 'Obi ',
            style: TextStyle(fontSize: 14, color: AppColors.darkThemeIconColor),
          ),
          TextSpan(
              text: 'Henry',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: context.primaryColor,
                fontSize: 14,
              )),
        ]))
      ],
    );
  }
}
