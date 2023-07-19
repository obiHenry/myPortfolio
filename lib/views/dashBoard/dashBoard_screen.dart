import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/router/auto_router.gr.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';
import '../../utils/screen_helper.dart';
import '../../widgets/logo.dart';
import 'dashBoard.view_model.dart';

@RoutePage()
class DashBoard extends StatefulWidget {
  static String routeName = '/dash_board';
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DashboardViewModel>.reactive(
      viewModelBuilder: () => DashboardViewModel(),
      builder: (context, model, _) {
        return AutoTabsRouter.pageView(
          routes: const [
            HomeRoute(),
            AboutRoute(),
            Projects(),
            Experience(),
            ContactRoute()
          ],
          builder: (context, child, pageController) => Scaffold(
            appBar: AppBar(
              title: AppScreenSizes.isSmallScreen(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/icons/menu.svg',
                              color: AppColors.darkThemeIconColor),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: {
                        'Home': 0,
                        'About': 1,
                        "Projects": 2,
                        'Exprience': 3,
                        'Contact': 4,
                      }
                          .entries
                          .map(
                            (e) => TextButton(
                              onPressed: () {
                                print(e.value);
                                model.itemScrollController.scrollTo(
                                    index: e.value,
                                    duration: const Duration(
                                      milliseconds: 600,
                                    ));
                              },
                              child: Text(
                                e.key,
                                style: const TextStyle(
                                    color: AppColors.darkThemeprimaryColor),
                              ),
                            ),
                          )
                          .toList()),
              leadingWidth: 400,
              leading: const LogoComponent(),
            ),
            // backgroundColor: ColorConfigs.backgroundColor,
            body: ScrollablePositionedList.builder(
              itemCount: model.views.length,
              itemBuilder: (context, index) => model.views[index],
              itemPositionsListener: model.itemPositionsListener,
              itemScrollController: model.itemScrollController,
            ),
          ),
        );
      },
    );
  }
}
