import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final isSmall = AppScreenSizes.isSmallScreen(context);
    return Padding(
      padding: ScreenUiHelper()
          .padding(context: context, top: 0.01, bottom: isSmall ? 50 : 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Wow, a whole page about my journey!',
              style: ScreenUiHelper().headline(context),
            ),
          ),
          const SizedBox(height: 40),
          isSmall
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _leftColumn(context),
                    const SizedBox(height: 40),
                    _rightColumn(context)
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: _leftColumn(context)),
                    Expanded(child: _rightColumn(context)),
                  ],
                ),
        ],
      ),
    );
  }

  Widget _leftColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('A bit more about how I got here',
            style: ScreenUiHelper().title(context)),
        const SizedBox(
          width: 80,
          child: DividerWidget(
              width: 80, dividerColor: AppColors.darkThemeprimaryColor),
        ),
        const SizedBox(height: 15),
        Text(PersonalDetails.intro,
            style: ScreenUiHelper().body(context).copyWith(
                fontSize: 15, color: AppColors.darkThemeTextPrimaryColor)),
        const SizedBox(height: 25),
        Text('Technical Skills',
            style: ScreenUiHelper().title(context).copyWith(fontSize: 24)),
        const SizedBox(
          width: 70,
          child: DividerWidget(
              width: 70, dividerColor: AppColors.darkThemeprimaryColor),
        ),
        const SizedBox(height: 15),
        const SkillWidget(),
        const SizedBox(height: 25),
        Text('Featured Skills',
            style: ScreenUiHelper().title(context).copyWith(fontSize: 24)),
        const SizedBox(
          width: 75,
          child: DividerWidget(
              width: 75, dividerColor: AppColors.darkThemeprimaryColor),
        ),
        const SizedBox(height: 15),
        const FeaturedSkillWidget(),
      ],
    );
  }

  Widget _rightColumn(BuildContext context) {
    final isSmall = AppScreenSizes.isSmallScreen(context);
    final isMedium = AppScreenSizes.isMediumScreen(context);
    return Padding(
      padding: EdgeInsets.only(
          left: isSmall
              ? 0
              : isMedium
                  ? 100
                  : 140.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education',
              style: ScreenUiHelper().title(context).copyWith(fontSize: 24)),
          const SizedBox(
            width: 70,
            child: DividerWidget(
                width: 70, dividerColor: AppColors.darkThemeprimaryColor),
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
                    percentage: EducationDetails.universityPercentage),
                EducationDetailsTimelineWidget(
                    name: EducationDetails.secondaryName,
                    stream: EducationDetails.secondaryStream,
                    year: EducationDetails.secondaryTimeline,
                    percentage: EducationDetails.secondaryPercentage),
              ]),
        ],
      ),
    );
  }
}
