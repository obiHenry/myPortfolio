import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:henryportfolio/widgets/experience_widget.dart';

import '../constant/colorConst.dart';
import '../utils/screen_helper.dart';
import '../widgets/divider_widget.dart';

@RoutePage()
class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return NextContainer(
        padding: ScreenUiHelper().padding(
            context: context,
            top: 0,
            bottom: AppScreenSizes.isSmallScreen(context) ? 0.0 : 120),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Experience',
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
            height: 20,
          ),
          const ExprienceWidget(),
        ]);
  }
}
