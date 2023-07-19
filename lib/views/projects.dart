import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/models/project_model.dart';
import 'package:henryportfolio/utils/screen_helper.dart';
import 'package:henryportfolio/widgets/project-item.widget.dart';

import '../constant/colorConst.dart';
import '../widgets/divider_widget.dart';

@RoutePage()
class Projects extends StatelessWidget {
  static String routeName = '/projects';
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return NextContainer(
      padding: ScreenUiHelper().padding(
          context: context,
          top: 0,
          bottom: AppScreenSizes.isSmallScreen(context) ? 50 : 140),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Some Things I’ve Built',
                  style: ScreenUiHelper().headline(context)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: const DividerWidget(
                width: 75,
                dividerColor: AppColors.darkThemeprimaryColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        NextRow(
            // verticalSpacing: 30,
            children: PersonalDetails.projectsList
                .map(
                  (ProjectModel e) => NextCol(
                    sizes: 'col-12 col-lg-3 col-md-6 col-xs-12 col-sm-6',
                    child: ProjectItemWidget(
                      project: e,
                    ),
                  ),
                )
                .toList()

            // featuresList
            //     .map((ProjectModel e) => NextCol(
            //           sizes: 'col-12 col-lg-3 col-md-6 col-xs-12 col-sm-6',
            //           child:
            //         ))
            //     .toList(),
            ),
      ],
    );
  }
}
