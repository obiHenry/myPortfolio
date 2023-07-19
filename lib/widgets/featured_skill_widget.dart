import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/colorConst.dart';

import '../constant/app_data.dart';
import 'linear_percent_indicator.dart';

class FeaturedSkillWidget extends StatelessWidget {
  const FeaturedSkillWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: PersonalDetails.featuredSkills.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: LinearPercentIndicator(
                progressColor: AppColors.darkThemeprimaryColor,
                title: PersonalDetails.featuredSkills[index].name,
                percent:
                    PersonalDetails.featuredSkills[index].percent.toDouble() /
                        100,
              ),
            ));
  }
}
