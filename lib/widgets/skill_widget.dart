import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/screen_helper.dart';

import '../constant/app_data.dart';

class SkillWidget extends StatelessWidget {
  final TextStyle? textStyle;
  const SkillWidget({super.key, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return AppScreenSizes.isSmallScreen(context)
        ? mobileView()
        : desktopOrTabletView(context);
  }

  Widget mobileView() {
    return ListView.builder(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: PersonalDetails.aboutSkillsList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.play_arrow,
              color: AppColors.darkThemeprimaryColor,
              size: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              PersonalDetails.aboutSkillsList[index],
              style: textStyle ??
                  const TextStyle(
                    color: AppColors.darkThemeTextPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
            )
          ],
        ),
      ),
    );
  }

  Widget desktopOrTabletView(context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.5,
      child: GridView.builder(
        itemCount: PersonalDetails.aboutSkillsList.length,
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 5, crossAxisCount: 2),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(
            top: 4,
            bottom: 4,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.play_arrow,
                color: AppColors.darkThemeprimaryColor,
                size: 20,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.17,
                // height: 200,
                child: Text(
                  PersonalDetails.aboutSkillsList[index],
                  style: textStyle ??
                      const TextStyle(
                        color: AppColors.darkThemeTextPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
