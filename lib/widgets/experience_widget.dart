import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:henryportfolio/constant/colorConst.dart';

import '../constant/app_data.dart';
import '../utils/screen_helper.dart';

class ExprienceWidget extends StatefulWidget {
  final TextStyle? textStyle;
  const ExprienceWidget({super.key, this.textStyle});

  @override
  State<ExprienceWidget> createState() => _ExprienceWidgetState();
}

class _ExprienceWidgetState extends State<ExprienceWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScreenSizes.isSmallScreen(context)
        ? mobileView(context)
        : desktopOrTabletView(context);
  }

  Widget mobileView(context) {
    return DefaultTabController(
      length: PersonalDetails.experienceList.length,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
                labelStyle: const TextStyle(
                    color: AppColors.darkThemeprimaryColor,
                    fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(
                    color: AppColors.darkThemeprimaryColor,
                    fontWeight: FontWeight.w300),
                unselectedLabelColor: AppColors.darkThemeTextSecondaryColor,
                labelColor: AppColors.darkThemeprimaryColor,
                isScrollable: true,
                physics: const BouncingScrollPhysics(),
                tabs: [
                  for (int i = 0;
                      i < PersonalDetails.experienceList.length;
                      i++)
                    Tab(
                      child: Text(PersonalDetails.experienceList[i].title),
                    )
                ]),
            Expanded(
              child:
                  TabBarView(physics: const BouncingScrollPhysics(), children: [
                for (int i = 0; i < PersonalDetails.experienceList.length; i++)
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          RichText(
                            text: TextSpan(
                                text: PersonalDetails.experienceList[i].title,
                                style: ScreenUiHelper().title(context).copyWith(
                                    color: AppColors.darkThemeTextPrimaryColor),
                                children: [
                                  TextSpan(
                                    text:
                                        '  @${PersonalDetails.experienceList[i].position}',
                                    style: ScreenUiHelper()
                                        .body(context)
                                        .copyWith(
                                            color: AppColors
                                                .darkThemeprimaryColor),
                                  )
                                ]),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            PersonalDetails.experienceList[i].timePeriod,
                            style: ScreenUiHelper().body(context).copyWith(
                                color: AppColors.darkThemeTextSecondaryColor),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            primary: false,
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.play_arrow, size: 20),
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: Text(
                                        PersonalDetails.experienceList[i]
                                            .description[index],
                                        style: ScreenUiHelper().body(context),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            itemCount: PersonalDetails
                                .experienceList[i].description.length,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Tools Used',
                            style: ScreenUiHelper().title(context),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.16,
                            child: const Divider(
                              color: AppColors.darkThemeprimaryColor,
                              thickness: 2.5,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ListView.builder(
                            primary: false,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.play_arrow,
                                      color:
                                          AppColors.darkThemeTextPrimaryColor,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      PersonalDetails
                                          .experienceList[i].tools[index],
                                      style: ScreenUiHelper().body(context),
                                    ),
                                  ],
                                ),
                              );
                            },
                            itemCount:
                                PersonalDetails.experienceList[i].tools.length,
                          )
                        ],
                      ),
                    ),
                  )
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget desktopOrTabletView(context) {
    return ListView.builder(
      physics: const AlwaysScrollableScrollPhysics(),
      itemCount: PersonalDetails.experienceList.length,
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return exprienceDesktopViewItem(context, index);
      }),
    );
  }

  Widget exprienceDesktopViewItem(context, index) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.darkThemeExperienceDesktopBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
                text: PersonalDetails.experienceList[index].title,
                style: ScreenUiHelper().title(context).copyWith(
                      color: AppColors.darkThemeTextPrimaryColor,
                    ),
                children: [
                  TextSpan(
                    text:
                        '  @${PersonalDetails.experienceList[index].position}',
                    style: ScreenUiHelper().body(context).copyWith(
                          fontWeight: FontWeight.w100,
                          color: AppColors.darkThemeprimaryColor,
                        ),
                  )
                ]),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.access_time,
                color: AppColors.darkThemeprimaryColor,
                size: 14,
              ),
              const SizedBox(width: 4),
              Text(
                PersonalDetails.experienceList[index].timePeriod,
                style: ScreenUiHelper().body(context).copyWith(
                    color: AppColors.darkThemeTextSecondaryColor, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Accomplishments',
                    style:
                        ScreenUiHelper().title(context).copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: ListView.builder(
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.play_arrow,
                                color: AppColors.darkThemeprimaryColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  PersonalDetails
                                      .experienceList[index].description[i],
                                  style: ScreenUiHelper()
                                      .body(context)
                                      .copyWith(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: PersonalDetails
                          .experienceList[index].description.length,
                    ),
                  )
                ],
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tools Used:',
                    style:
                        ScreenUiHelper().title(context).copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: AppScreenSizes.isMediumScreen(context)
                        ? MediaQuery.of(context).size.width * 0.145
                        : MediaQuery.of(context).size.width * 0.23,
                    child: Wrap(
                      children: [
                        for (int i = 0;
                            i <
                                PersonalDetails
                                    .experienceList[index].tools.length;
                            i++)
                          HoverWidget(
                              hoverDuration: Duration.zero,
                              builder: (BuildContext context, bool isHovered) {
                                if (isHovered) {
                                  _controller.forward();
                                } else {
                                  _controller.reverse();
                                }
                                return ScaleTransition(
                                  scale: Tween(begin: 1.0, end: 1.08)
                                      .animate(_controller),
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 700),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: isHovered
                                              ? AppColors.darkThemeprimaryColor
                                              : AppColors
                                                  .darkThemeTextSecondaryColor),
                                      borderRadius: BorderRadius.circular(15),
                                      color: isHovered
                                          ? context.primaryColor
                                          : AppColors
                                              .darkThemeExperienceDesktopBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromRGBO(
                                              18, 66, 101, 0.08),
                                          blurRadius: 15,
                                          spreadRadius: isHovered ? 10 : 5,
                                          offset: Offset(
                                            2.0,
                                            isHovered ? 6.0 : 2.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    margin: EdgeInsets.symmetric(
                                        horizontal:
                                            AppScreenSizes.isMediumScreen(
                                                    context)
                                                ? 2
                                                : 10,
                                        vertical: 5),
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            AppScreenSizes.isMediumScreen(
                                                    context)
                                                ? 10
                                                : 25,
                                        vertical: 6),
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      PersonalDetails
                                          .experienceList[index].tools[i],
                                      style: ScreenUiHelper()
                                          .body(context)
                                          .copyWith(
                                              fontSize:
                                                  AppScreenSizes.isSmallScreen(
                                                          context)
                                                      ? 10
                                                      : 12,
                                              fontWeight: FontWeight.w100,
                                              color: isHovered
                                                  ? Colors.black
                                                  : AppColors
                                                      .darkThemeTextPrimaryColor),
                                    ),
                                  ),
                                );
                              }),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
