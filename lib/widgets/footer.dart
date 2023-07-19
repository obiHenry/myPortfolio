import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:henryportfolio/constant/colorConst.dart';

import '../utils/screen_helper.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: ScreenUiHelper().padding(context: context, top: 0, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(
              color: AppColors.darkThemeTextSecondaryColor,
            ),
            SizedBox(
              height: 20,
            ),
            NextContainer(children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Let's Connect",
                      style: GoogleFonts.breeSerif(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "Feel free to reach out for collaborations or just a friendly hello 😀",
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text("kumarshashi5294@gmail.com"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.github,
                          ),
                        ),
                      ]
                          .map((e) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: context.width * 0.02),
                                child: e,
                              ))
                          .toList(),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ));
  }
}
