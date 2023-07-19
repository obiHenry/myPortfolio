import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/screen_helper.dart';
import 'package:henryportfolio/widgets/custom_skill_design.dart';

import '../widgets/custom_text.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  static String routeName = '/home_page';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return NextContainer(children: [
      NextRow(
        crossAxisAlignment: WrapCrossAlignment.center,
        horizontalAlignment: WrapAlignment.center,
        verticalAlignment: WrapAlignment.center,
        padding: ScreenUiHelper().padding(
            context: context,
            top: AppScreenSizes.isSmallScreen(context) ? 50 : 140,
            bottom: AppScreenSizes.isSmallScreen(context) ? 50 : 120),
        children: [
          NextCol(
            // padding: EdgeInsets.all(10),
            sizes: 'col-12 col-md-6',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hey!👋 ',
                  style: ScreenUiHelper().headlineNormal(context),

                  //  TextStyle(
                  //   fontSize: 32,
                  //   fontWeight: FontWeight.w300,
                  // ),
                ),
                const SizedBox(
                  height: 2,
                ),
                CustomText(
                  text: "This, is, [b'Obi Henry]",
                  textMap: {
                    "b": GoogleFonts.breeSerif(
                        fontWeight: FontWeight.w500,
                        fontSize: 32,
                        foreground: Paint()
                          ..shader = const LinearGradient(
                            colors: [Color(0xFF00dd9b), Color(0xFF1eebb3)],
                          ).createShader(
                              const Rect.fromLTWH(0.0, 0.0, 30, 30))),
                  },
                  style: ScreenUiHelper().headlineNormal(context),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  PersonalDetails.shortIntro,
                  style: ScreenUiHelper().body(context),
                ),
                const SizedBox(
                  height: 18,
                ),

                NextButton(
                  borderRadius: BorderRadius.circular(5),
                  onPressed: () {},
                  color: AppColors.darkThemeBackgroundColor,
                  variant: NextButtonVariant.outlined,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Get In Touch  ➡️"),
                  ),
                )
                // DecoratedBox(
                //   decoration: BoxDecoration(
                //     boxShadow: NextShadow.shadow400(
                //       color: Colors.white,
                //     ),
                //   ),
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: ElevatedButton(
                //       onPressed: () {},
                //       child: const Text("Contact Me"),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          const NextCol(
            sizes: 'col-12 col-md-6',
            child: CustomSkillDesignWidget(),
          ),
        ],
      ),
    ]);
  }
}
