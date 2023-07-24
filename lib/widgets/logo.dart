import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:henryportfolio/utils/screen_helper.dart';
import 'package:henryportfolio/utils/services.dart';

import '../constant/app_data.dart';

class LogoComponent extends StatefulWidget {
  const LogoComponent({Key? key}) : super(key: key);

  @override
  State<LogoComponent> createState() => _LogoComponentState();
}

class _LogoComponentState extends State<LogoComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 10, left: AppScreenSizes.isSmallScreen(context) ? 20 : 50),
      child: Row(
        children: [
          InkWell(
            onTap: () => Services().showAlertDialog(context),
            child: AvatarGlow(
              glowColor: Colors.blue,
              duration: const Duration(milliseconds: 2000),
              repeat: true,
              child: const Material(
                // Replace this child with your own
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(
                    PersonalDetails.logoImage,
                  ),
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text.rich(TextSpan(children: [
            const TextSpan(
              text: 'Obi ',
              style:
                  TextStyle(fontSize: 14, color: AppColors.darkThemeIconColor),
            ),
            TextSpan(
              text: 'Henry',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: context.primaryColor,
                fontSize: 14,
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
