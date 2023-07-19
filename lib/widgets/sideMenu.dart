// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SideMenu extends StatefulWidget {
//   const SideMenu({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<SideMenu> createState() => _SideMenuState();
// }

// class _SideMenuState extends State<SideMenu> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           DrawerHeader(
//             decoration: const BoxDecoration(
//                 border:
//                     Border(bottom: BorderSide(color: Colors.grey, width: 1))),
//             child: Image.asset(
//               'assets/images/logo_white.png',
//               width: 175,
//             ),
//           ),
//           DrawerListTile(
//             title: "Dashboard",
//             svgSrc: "assets/icons/menu_dashbord.svg",
//             press: () {
//               Navigator.popAndPushNamed(
//                 context,
//                 DashboardScreen.routeName,
//               );
//             },
//           ),
//           DrawerListTile(
//             title: "Deposit",
//             svgSrc: "assets/icons/menu_tran.svg",
//             press: () {
//               setState(() {
//                 setDepositOrWithdrawalButton(context, 'deposit');
//               });
//               Navigator.popAndPushNamed(
//                 context,
//                 SelectCoinToDeposit.routeName,
//               );
//             },
//           ),
//           DrawerListTile(
//             title: "Withdrawal",
//             svgSrc: "assets/icons/menu_tran.svg",
//             press: () {
//               setState(() {
//                 setDepositOrWithdrawalButton(context, 'withdraw');
//                 // setScreen(context, 'depositOrWithdrawalScreen');
//                 // Provider.of<VariableProvider>(context, listen: false)
//                 //     .setFromWithdrawalButton = true;
//                 // Provider.of<VariableProvider>(context, listen: false)
//                 //     .setFromDepositButton = false;
//               });

//               Navigator.popAndPushNamed(
//                 context,
//                 SelectCoinToDeposit.routeName,
//               );
//             },
//           ),
//           DrawerListTile(
//             title: "Asset Invest",
//             svgSrc: "assets/icons/menu_tran.svg",
//             press: () {
//               Navigator.popAndPushNamed(
//                 context,
//                 InvestmentScreen.routeName,
//               );
//             },
//           ),
//           // DrawerListTile(
//           //   title: "Wallet Connect",
//           //   svgSrc: "assets/icons/menu_doc.svg",
//           //   press: () {},
//           // ),
//           // DrawerListTile(
//           //   title: "KYC",
//           //   svgSrc: "assets/icons/menu_doc.svg",
//           //   press: () async {
//           //     Navigator.popAndPushNamed(
//           //       context,
//           //       KYCScreen.routeName,
//           //     );
//           //   },
//           // ),
//           // DrawerListTile(
//           //   title: "Profile",
//           //   svgSrc: "assets/icons/menu_profile.svg",
//           //   press: () {
//           //     Navigator.popAndPushNamed(
//           //       context,
//           //       ProfileScreen.routeName,
//           //     );
//           //   },
//           // ),
//           DrawerListTile(
//             title: "Investments",
//             svgSrc: "assets/icons/menu_doc.svg",
//             press: () async {
//               Navigator.popAndPushNamed(
//                 context,
//                 InvestmentProgressScreen.routeName,
//               );
//             },
//           ),
//           // DrawerListTile(
//           //   title: "Referral Earnings",
//           //   svgSrc: "assets/icons/menu_profile.svg",
//           //   press: () {
//           //     Navigator.popAndPushNamed(
//           //       context,
//           //       ReferralsScreen.routeName,
//           //     );
//           //   },
//           // ),
//           DrawerListTile(
//             title: "Settings",
//             svgSrc: "assets/icons/menu_setting.svg",
//             press: () {
//               Navigator.popAndPushNamed(
//                 context,
//                 SettingsScreen.routeName,
//               );
//             },
//           ),
//           // DrawerListTile(
//           //   title: "Logout",
//           //   svgSrc: "assets/icons/menu_setting.svg",
//           //   press: () {
//           //     showModal.showModalWidget(
//           //         context: context,
//           //         widget: AlertDialog(
//           //           title: const Text("Sign out"),
//           //           content: const Text("Do you want to Sign out?"),
//           //           actions: [
//           //             GestureDetector(
//           //               onTap: () {
//           //                 Fluttertoast.showToast(
//           //                     msg: 'You are logged out',
//           //                     toastLength: Toast.LENGTH_LONG,
//           //                     gravity: ToastGravity.BOTTOM,
//           //                     backgroundColor: Colors.black,
//           //                     textColor: Colors.white);

//           //                 Navigator.of(context).pop();
//           //                 Navigator.pushNamedAndRemoveUntil(context,
//           //                     SignInScreen.routeName, (route) => false);
//           //               },
//           //               child: const Text(
//           //                 "Yes",
//           //                 style: TextStyle(color: kPrimaryColor),
//           //               ),
//           //             ),
//           //             const SizedBox(
//           //               width: 20,
//           //             ),
//           //             GestureDetector(
//           //               onTap: () {
//           //                 Navigator.of(context).pop();
//           //               },
//           //               child: const Text(
//           //                 "No",
//           //                 style: TextStyle(color: kPrimaryColor),
//           //               ),
//           //             ),
//           //           ],
//           //         ));
//           //   },
//           // ),
//           const SizedBox(width: 12),
//         ],
//       ),
//     );
//   }
// }

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
