import 'package:flutter_next/flutter_next.dart';
import 'package:flutter/material.dart';
import 'package:henryportfolio/constant/colorConst.dart';
import 'package:henryportfolio/models/project_model.dart';
import 'package:henryportfolio/utils/screen_helper.dart';

// ignore: must_be_immutable
class ProjectItemWidget extends StatefulWidget {
  ProjectModel project;
  ProjectItemWidget({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectItemWidget> createState() => _ProjectItemWidgetState();
}

class _ProjectItemWidgetState extends State<ProjectItemWidget>
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
    return NextCol(
      child: Theme(
        data: Theme.of(context)
            .copyWith(primaryColor: AppColors.darkThemeprimaryColor),
        child: HoverWidget(
            hoverDuration: Duration.zero,
            builder: (BuildContext context, bool isHovered) {
              if (isHovered) {
                _controller.forward();
              } else {
                _controller.reverse();
              }
              return ScaleTransition(
                scale: Tween(begin: 1.0, end: 1.08).animate(_controller),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 700),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: isHovered
                        ? context.primaryColor
                        : AppColors.darkThemeProjectSurfaceColor,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromRGBO(18, 66, 101, 0.08),
                        blurRadius: 15,
                        spreadRadius: isHovered ? 10 : 5,
                        offset: Offset(
                          2.0,
                          isHovered ? 6.0 : 2.0,
                        ),
                      ),
                    ],
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.folder_outlined,
                              color: isHovered
                                  ? Colors.black
                                  : AppColors.darkThemeprimaryColor,
                              size: 30,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                if (widget.project.websiteLink == null)
                                  const SizedBox()
                                else
                                  ScreenUiHelper().iconButton(
                                      icon: Icons.link_outlined,
                                      url: widget.project.websiteLink,
                                      isHovered: isHovered),
                                if (widget.project.githubLink == null)
                                  const SizedBox()
                                else
                                  ScreenUiHelper().iconButton(
                                      icon: Icons.hub_outlined,
                                      url: widget.project.githubLink!,
                                      isHovered: isHovered),
                                if (widget.project.playstoreLink == null)
                                  const SizedBox()
                                else
                                  ScreenUiHelper().iconButton(
                                      icon: Icons.play_arrow_outlined,
                                      url: widget.project.playstoreLink,
                                      isHovered: isHovered),
                              ],
                            ),
                          ],
                        ),
                        // Icon(
                        //   widget.project.icon,
                        //   size: 36,
                        //   color: isHovered ? Colors.white : context.primaryColor,
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          widget.project.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize:
                                AppScreenSizes.isSmallScreen(context) ? 16 : 20,
                            color: isHovered
                                ? Colors.black
                                : AppColors.darkThemeTextPrimaryColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.project.description,
                          style: ScreenUiHelper().body(context).copyWith(
                                fontSize: AppScreenSizes.isSmallScreen(context)
                                    ? 12
                                    : 14,
                                color: isHovered
                                    ? Colors.black
                                    : AppColors.darkThemeTextPrimaryColor,
                              ),
                          textAlign: TextAlign.start,
                        ),

                        SizedBox(
                          height: 15,
                        ),

                        Wrap(
                          children: [
                            for (int i = 0;
                                i < widget.project.tools.length;
                                i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4)
                                    .copyWith(right: 16),
                                child: Text(
                                  widget.project.tools[i],
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
                                                  .darkThemeTextSecondaryColor),
                                ),
                              ),
                          ],
                        )
                      ]),
                ),
              );
            }),
      ),
    );
  }
}
