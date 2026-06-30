import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    return Padding(
      padding: ScreenUiHelper().padding(
          context: context,
          top: 0,
          bottom: AppScreenSizes.isSmallScreen(context) ? 50 : 140),
      child: Column(
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
          const SizedBox(height: 50),
          LayoutBuilder(
            builder: (context, constraints) {
              final width = constraints.maxWidth;
              final cols = width >= 1200 ? 4 : width >= 800 ? 2 : 1;
              const spacing = 16.0;
              final itemWidth = (width - spacing * (cols - 1)) / cols;
              return Wrap(
                spacing: spacing,
                runSpacing: 20,
                children: PersonalDetails.projectsList
                    .map(
                      (ProjectModel e) => SizedBox(
                        width: itemWidth,
                        child: ProjectItemWidget(project: e),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
