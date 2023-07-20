import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/utils/router/auto_router.gr.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:stacked/stacked.dart';
import '../utils/screen_helper.dart';
import '../widgets/logo.dart';
import '../widgets/sideMenu.dart';
import '../models/dashBoard.view_model.dart';

@RoutePage()
class DashBoard extends StatefulWidget {
  static String routeName = '/dash_board';
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
            endDrawerEnableOpenDragGesture: true,

            key: scaffoldKey,
            endDrawer: SideMenu(
              model: model,
              scaffoldKey: scaffoldKey,
            ),
            appBar: AppBar(
              actions: <Widget>[
                AppScreenSizes.isSmallScreen(context)
                    ? IconButton(
                        onPressed: () {
                          if (scaffoldKey.currentState!.isDrawerOpen) {
                            scaffoldKey.currentState!.closeEndDrawer();
                            //close drawer, if drawer is open
                          } else {
                            scaffoldKey.currentState!.openEndDrawer();
                            //open drawer, if drawer is closed
                          }
                        },
                        icon: SvgPicture.asset('assets/icons/menu.svg',
                            color: AppColors.darkThemeIconColor),
                      )
                    : Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Row(
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
                                      model.itemScrollController.scrollTo(
                                          index: e.value,
                                          duration: const Duration(
                                            milliseconds: 600,
                                          ));
                                    },
                                    child: Text(
                                      e.key,
                                      style: const TextStyle(
                                          color:
                                              AppColors.darkThemeprimaryColor),
                                    ),
                                  ),
                                )
                                .toList()),
                      ),
              ],
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
