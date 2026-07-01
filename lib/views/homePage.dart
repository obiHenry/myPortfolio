import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/screen_helper.dart';
import 'package:henryportfolio/utils/services.dart';
import 'package:henryportfolio/widgets/custom_skill_design.dart';

import '../widgets/custom_text.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static String routeName = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool onHover = false;
    final isSmall = AppScreenSizes.isSmallScreen(context);
    return Padding(
      padding: ScreenUiHelper().padding(
          context: context,
          top: isSmall ? 50 : 140,
          bottom: isSmall ? 50 : 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isSmall
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _leftColumn(context, onHover),
                    const SizedBox(height: 40),
                    const CustomSkillDesignWidget()
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(child: _leftColumn(context, onHover)),
                    const Expanded(child: CustomSkillDesignWidget()),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _leftColumn(BuildContext context, bool onHover) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Hey!👋 ',
          style: ScreenUiHelper().headlineNormal(context),
        ),
        const SizedBox(height: 2),
        CustomText(
          text: "I'm, [b'Henry]",
          textMap: {
            "b": GoogleFonts.breeSerif(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                foreground: Paint()
                  ..shader = LinearGradient(
                    colors: [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor,
                    ],
                  ).createShader(const Rect.fromLTWH(0.0, 0.0, 30, 30))),
          },
          style: ScreenUiHelper().headlineNormal(context),
        ),
        const SizedBox(height: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: PersonalDetails.shortIntro[0],
                  style: ScreenUiHelper().body(context).copyWith(fontSize: 16),
                ),
              ]),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: PersonalDetails.shortIntro[1],
                style: ScreenUiHelper().body(context).copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: PersonalDetails.shortIntro[2],
                style: ScreenUiHelper().body(context).copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 15),
            RichText(
              text: TextSpan(
                text: PersonalDetails.shortIntro[3],
                style: ScreenUiHelper().body(context).copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
        const SizedBox(height: 18),
        StatefulBuilder(builder: (context, setState) {
          return MouseRegion(
            onEnter: (_) {
              setState(() => onHover = true);
            },
            onExit: (_) {
              setState(() => onHover = false);
            },
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.darkThemeprimaryColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: onHover
                    ? AppColors.darkThemeprimaryColor
                    : Colors.transparent,
              ),
              onPressed: () => Services().urlLauncher(SocialLinks.whatsappLink),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Get In Touch  ➡️",
                  style: TextStyle(
                      color: onHover
                          ? Colors.black
                          : AppColors.darkThemeprimaryColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ).animate(target: onHover ? 1.0 : 0.0).scaleXY(
                begin: 1.0,
                end: 1.04,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut,
              );
        }),
      ],
    );
  }
}
