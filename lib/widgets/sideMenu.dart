import 'package:flutter/material.dart';
import 'package:henryportfolio/models/dashBoard.view_model.dart';

import '../constant/app_data.dart';
import '../constant/colorConst.dart';
import '../utils/services.dart';

// ignore: must_be_immutable
class SideMenu extends StatefulWidget {
  DashboardViewModel? model;
  // ignore: prefer_typing_uninitialized_variables
  final scaffoldKey;
  SideMenu({Key? key, this.model, this.scaffoldKey}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  widget.scaffoldKey.currentState!.closeEndDrawer();
                },
                icon: const Icon(Icons.cancel)),
          ),
          DrawerHeader(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 1))),
            child: InkWell(
              onTap: () => Services().showAlertDialog(context),
              child: const CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage(
                  PersonalDetails.logoImage,
                ),
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Column(
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
                    (e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          widget.scaffoldKey.currentState!.closeEndDrawer();
                          widget.model!.itemScrollController.scrollTo(
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
                    ),
                  )
                  .toList()),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}

// class DrawerListTile extends StatelessWidget {
//   const DrawerListTile({
//     Key? key,
//     // For selecting those three line once press "Command+D"
//     required this.title,
//     required this.svgSrc,
//     required this.press,
//   }) : super(key: key);

//   final String title, svgSrc;
//   final VoidCallback press;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onTap: press,
//       horizontalTitleGap: 0.0,
//       leading: SvgPicture.asset(
//         svgSrc,
//         color: Colors.white54,
//         height: 16,
//       ),
//       title: Text(
//         title,
//         style: const TextStyle(
//           color: Colors.white,
//         ),
//       ),
//     );
//   }
// }
