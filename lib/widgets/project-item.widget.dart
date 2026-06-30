import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  bool _isHovered = false;

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
    return Theme(
      data: Theme.of(context)
          .copyWith(primaryColor: AppColors.darkThemeprimaryColor),
      child: MouseRegion(
        onEnter: (_) {
          setState(() => _isHovered = true);
          _controller.forward();
        },
        onExit: (_) {
          setState(() => _isHovered = false);
          _controller.reverse();
        },
        child: ScaleTransition(
          // Slightly toned down from 1.08 -> 1.04.
          // A subtle lift reads as "polished" — a bigger jump can feel
          // like the whole card is jumping at the user, which gets
          // distracting when scanning multiple cards quickly.
          scale: Tween(begin: 1.0, end: 1.04).animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeOut),
          ),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            // Slowed the color/shadow transition down to match the scale
            // animation (was 700ms vs 300ms controller — mismatched timing
            // made hover feel slightly laggy/disconnected before).
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // Instead of flipping straight to the full accent color,
              // this keeps the dark surface but adds a visible accent
              // BORDER on hover. This avoids the "everything turns black
              // text on bright teal" contrast jump, and instead draws
              // the eye with a glow/outline — a more common, easier-to-read
              // pattern for dark-themed portfolio sites.
              color: AppColors.darkThemeProjectSurfaceColor,
              border: Border.all(
                color: _isHovered
                    ? AppColors.darkThemeprimaryColor
                    : Colors.transparent,
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: _isHovered
                      ? AppColors.darkThemeprimaryColor.withOpacity(0.25)
                      : const Color.fromRGBO(18, 66, 101, 0.08),
                  blurRadius: _isHovered ? 25 : 15,
                  spreadRadius: _isHovered ? 2 : 5,
                  offset: Offset(2.0, _isHovered ? 6.0 : 2.0),
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      FontAwesomeIcons.folder,
                      // Icon now always uses the accent color — no more
                      // flipping to black on hover. Keeps a consistent
                      // visual anchor regardless of hover state.
                      color: AppColors.darkThemeprimaryColor,
                      size: 30,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.project.websiteLink == null)
                          const SizedBox()
                        else
                          ScreenUiHelper().iconButton(
                              icon: FontAwesomeIcons.link,
                              url: widget.project.websiteLink,
                              isHovered: _isHovered),
                        if (widget.project.githubLink == null)
                          const SizedBox()
                        else
                          ScreenUiHelper().iconButton(
                              icon: FontAwesomeIcons.github,
                              url: widget.project.githubLink!,
                              isHovered: _isHovered),
                        if (widget.project.playstoreLink == null)
                          const SizedBox()
                        else
                          ScreenUiHelper().iconButton(
                              icon: FontAwesomeIcons.googlePlay,
                              url: widget.project.playstoreLink,
                              isHovered: _isHovered),
                        if (widget.project.appstoreLink == null)
                          const SizedBox()
                        else
                          ScreenUiHelper().iconButton(
                              icon: FontAwesomeIcons.appStore,
                              url: widget.project.appstoreLink,
                              isHovered: _isHovered),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  widget.project.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: AppScreenSizes.isSmallScreen(context) ? 18 : 20,
                    // Title stays white/light always — no more black flip.
                    // This is the most important text on the card and
                    // should never lose contrast or "jump" in color.
                    color: AppColors.darkThemeTextPrimaryColor,
                  ),
                  textAlign: TextAlign.start, // was center — left-aligned
                  // reads more naturally with the rest of the card's
                  // left-aligned content below it.
                ),
                const SizedBox(height: 12),
                Text(
                  widget.project.description,
                  style: ScreenUiHelper().body(context).copyWith(
                        fontSize: 15,
                        color: AppColors.darkThemeTextSecondaryColor,
                      ),
                  textAlign: TextAlign.start,
                ),

                // ============================================================
                // NEW: "My Role" section
                // ============================================================
                // Only renders if a role was provided — keeps the model
                // flexible in case some older/simpler project entries
                // don't have one yet.
                if (widget.project.role!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text(
                    'MY ROLE',
                    style: ScreenUiHelper().body(context).copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                          // Small accent-colored label acts as a section
                          // header so recruiters scanning quickly can
                          // jump straight to "what did THEY actually do"
                          color: _isHovered
                              ? AppColors.darkThemeprimaryColor
                              : AppColors.darkThemeprimaryColor
                                  .withOpacity(0.8),
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.project.role!,
                    style: ScreenUiHelper().body(context).copyWith(
                          fontSize: 14,
                          color: AppColors.darkThemeTextSecondaryColor,
                        ),
                    textAlign: TextAlign.start,
                  ),
                ],

                // ============================================================
                // NEW: "Challenge Solved" section
                // ============================================================
                if (widget.project.challenge!.isNotEmpty) ...[
                  const SizedBox(height: 16),
                  Text(
                    'CHALLENGE SOLVED',
                    style: ScreenUiHelper().body(context).copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1.2,
                          color: _isHovered
                              ? AppColors.darkThemeprimaryColor
                              : AppColors.darkThemeprimaryColor
                                  .withOpacity(0.8),
                        ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    widget.project.challenge!,
                    style: ScreenUiHelper().body(context).copyWith(
                          fontSize: 14,
                          color: AppColors.darkThemeTextSecondaryColor,
                        ),
                    textAlign: TextAlign.start,
                  ),
                ],

                const SizedBox(height: 16),
                Wrap(
                  children: [
                    for (int i = 0; i < widget.project.tools.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4)
                            .copyWith(right: 16),
                        child: Container(
                          // Tools now get a small pill/chip background
                          // instead of plain text — makes them visually
                          // distinct as "tags" rather than reading like
                          // part of a sentence, which is the convention
                          // most recruiters expect from skill tags.
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.darkThemeprimaryColor
                                .withOpacity(0.12),
                          ),
                          child: Text(
                            widget.project.tools[i],
                            style: ScreenUiHelper().body(context).copyWith(
                                  fontSize:
                                      AppScreenSizes.isSmallScreen(context)
                                          ? 10
                                          : 12,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.darkThemeprimaryColor,
                                ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
