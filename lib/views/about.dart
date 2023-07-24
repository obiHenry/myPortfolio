import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/screen_helper.dart';

import '../constant/app_data.dart';
import '../widgets/divider_widget.dart';
import '../widgets/eductaion_timeline_widget.dart';
import '../widgets/featured_skill_widget.dart';
import '../widgets/skill_widget.dart';
import '../widgets/timeline_widget.dart';

@RoutePage()
class AboutPage extends StatefulWidget {
  const AboutPage({
    super.key,
  });

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  // ScreenUiHelper? uiHelpers;
  @override
  Widget build(BuildContext context) {
    return NextContainer(
        // fluid: true,
        // crossAxisAlignment: CrossAxisAlignment.start,
        padding: ScreenUiHelper().padding(
            context: context,
            top: 0.01,
            bottom: AppScreenSizes.isSmallScreen(context) ? 50 : 140),
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Wow, a whole page about my journey!',
              style: ScreenUiHelper().headline(context),
            ),
          ),
          NextRow(
            crossAxisAlignment: WrapCrossAlignment.start,
            horizontalAlignment: WrapAlignment.start,
            verticalAlignment: WrapAlignment.center,
            padding: const EdgeInsets.only(top: 40),
            children: [
              NextCol(
                sizes: 'col-12 col-md-6 col-sm-12',
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Me,talking about myself',
                      style: ScreenUiHelper().title(context),
                    ),
                    const SizedBox(
                      width: 80,
                      child: DividerWidget(
                        width: 80,
                        dividerColor: AppColors.darkThemeprimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(PersonalDetails.intro,
                        style: ScreenUiHelper().body(context).copyWith(
                            // wordSpacing: 2,
                            // letterSpacing: 1.5,
                            fontSize: 15,
                            color: AppColors.darkThemeTextPrimaryColor)),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Technical Skills',
                      style: ScreenUiHelper()
                          .title(context)
                          .copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      width: 70,
                      child: DividerWidget(
                        width: 70,
                        dividerColor: AppColors.darkThemeprimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const SkillWidget(),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Featured Skills',
                      style: ScreenUiHelper()
                          .title(context)
                          .copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      width: 75,
                      child: DividerWidget(
                        width: 75,
                        dividerColor: AppColors.darkThemeprimaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const FeaturedSkillWidget(),
                  ],
                ),
              ),
              NextCol(
                sizes: 'col-12 col-md-6 col-sm-12',
                child: Padding(
                  padding: EdgeInsets.only(
                      left: AppScreenSizes.isSmallScreen(context)
                          ? 0
                          : AppScreenSizes.isMediumScreen(context)
                              ? 100
                              : 140.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Education',
                        style: ScreenUiHelper()
                            .title(context)
                            .copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        width: 70,
                        child: DividerWidget(
                            width: 70,
                            dividerColor: AppColors.darkThemeprimaryColor),
                      ),
                      const SizedBox(height: 15),
                      Timeline(
                          indicatorSize: 16,
                          indicatorColor: AppColors.darkThemeprimaryColor,
                          lineColor: AppColors.darkThemeTextPrimaryColor,
                          shrinkWrap: true,
                          itemGap: 25,
                          lineGap: 0,
                          children: const [
                            EducationDetailsTimelineWidget(
                                name: EducationDetails.universityName,
                                stream: EducationDetails.universityStream,
                                year: EducationDetails.universityTimeline,
                                percentage:
                                    EducationDetails.universityPercentage),
                            EducationDetailsTimelineWidget(
                                name: EducationDetails.secondaryName,
                                stream: EducationDetails.secondaryStream,
                                year: EducationDetails.secondaryTimeline,
                                percentage:
                                    EducationDetails.secondaryPercentage),
                            // EducationDetailsTimelineWidget(
                            //     name: EducationDetails.primaryName,
                            //     stream: EducationDetails.primaryStream,
                            //     year: EducationDetails.primaryTimeline,
                            //     percentage: EducationDetails.primaryPercentage),
                          ])
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]);
  }
}
