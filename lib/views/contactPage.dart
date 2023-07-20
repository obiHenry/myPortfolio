import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_next/flutter_next.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:henryportfolio/constant/app_data.dart';
import 'package:henryportfolio/controller/portfolioController.dart';
import 'package:henryportfolio/utils/services.dart';

import '../utils/screen_helper.dart';
import '../widgets/contact_list_tile.widget.dart';
import '../widgets/custom_textfield.widget.dart';

@RoutePage()
class ContactScreen extends StatelessWidget {
  ContactScreen({Key? key}) : super(key: key);

  final portfolioController = Get.find<PortfolioController>();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return NextContainer(
      padding: ScreenUiHelper().padding(context: context, top: 0, bottom: 5),
      children: [
        NextRow(children: [
          NextCol(
            sizes: 'col-12 col-md-6',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONTACT ME💬",
                  style: GoogleFonts.breeSerif(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text("Let's talk about project/oppurtunity"),
                const SizedBox(
                  height: 30,
                ),
                const ContactListTile(
                    title: 'Location:',
                    subtitle: PersonalDetails.location,
                    leadingIcon: FontAwesomeIcons.locationArrow),
                const ContactListTile(
                    title: 'Email:',
                    subtitle: PersonalDetails.email,
                    leadingIcon: Icons.email_outlined),
                const ContactListTile(
                    title: 'Call:',
                    subtitle: PersonalDetails.call,
                    leadingIcon: Icons.mobile_friendly_rounded)
              ],
            ),
          ),
          NextCol(
              sizes: 'col-12 col-md-6',
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Send me a message",
                      style: GoogleFonts.breeSerif(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            keyboardType: TextInputType.name,
                            controller: portfolioController.nameController,
                            title: 'Your name',
                            validator: (value) {
                              if (value == null || value == '') {
                                return "Enter name";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: CustomTextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: portfolioController.emailController,
                            title: 'Your Email',
                            validator: (value) {
                              if (value == null || value == '') {
                                return "Enter Email";
                              }
                              return null;
                            },
                          ),
                        )
                      ],
                    ),
                    CustomTextField(
                      keyboardType: TextInputType.text,
                      controller: portfolioController.subjectController,
                      title: 'Subject',
                      validator: (value) {
                        if (value == null || value == '') {
                          return "Enter Subject";
                        }
                        return null;
                      },
                    ),
                    CustomTextField(
                        keyboardType: TextInputType.multiline,
                        controller: portfolioController.messageController,
                        title: 'Message',
                        validator: (value) {
                          if (value == null || value == '') {
                            return "Enter message";
                          }
                          return null;
                        },
                        maxLines: 4),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(FontAwesomeIcons.share),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          String email =
                              Uri.encodeComponent(PersonalDetails.email);
                          String subject = Uri.encodeComponent(
                              portfolioController.subjectController.text);
                          String body = Uri.encodeComponent(
                              portfolioController.messageController.text);

                          String mail =
                              "mailto:$email?subject=$subject&body=$body";
                          Services().urlLauncher(mail);
                        }
                      },
                      label: const Text(
                        "Send",
                      ),
                    )
                  ],
                ),
              ))
        ]),
        const SizedBox(
          height: 60,
        )
      ],
    );
  }
}
