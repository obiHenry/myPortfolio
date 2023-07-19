import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/screen_helper.dart';

class EducationDetailsTimelineWidget extends StatelessWidget {
  final String year;
  final String name;
  final String stream;
  final double percentage;

  const EducationDetailsTimelineWidget(
      {Key? key,
      required this.year,
      required this.name,
      required this.stream,
      required this.percentage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              year,
              style: ScreenUiHelper()
                  .body(context)
                  .copyWith(fontSize: 12, fontWeight: FontWeight.w200),
            ),
            Text(
              stream,
              style: ScreenUiHelper().title(context).copyWith(
                  fontSize: 20,
                  fontFamily: SystemProperties.fontName,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: ScreenUiHelper().title(context).copyWith(fontSize: 16),
            ),
            const SizedBox(height: 4),
            RichText(
              text: TextSpan(
                  text: 'Percentage: ',
                  style: ScreenUiHelper()
                      .title(context)
                      .copyWith(fontSize: 14, fontWeight: FontWeight.w300),
                  children: [
                    TextSpan(
                        text: '$percentage',
                        style: ScreenUiHelper().title(context).copyWith(
                            fontSize: 14,
                            color: AppColors.darkThemeprimaryColor,
                            fontWeight: FontWeight.bold))
                  ]),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
