import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/common/app_text_styles.dart';
import 'package:caffeine/features/Settings/presentation/widgets/logout_button.dart';
import 'package:flutter/material.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: screenHeight * 0.30,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            AppColors.extraBlueColor,
            AppColors.primaryColor,
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // widget for settings title
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.18 * 0.4,
                  left: screenWidth * 0.05,
                ),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: "Oswald"),
                ),
              ),
            ],
          ),
        ),

//My Profile section
        Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.05,
              right: screenWidth * 0.05,
              top: screenHeight * 0.18),
          child: Container(
            width: double.infinity,
            height: screenHeight * 0.6,
            decoration: const BoxDecoration(
                color: Color(0xFFD2D0CA),
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: SizedBox(
              height: 100,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 10, left: 20),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.person,
                                size: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              'My Profile  ',
                              style: AppTextStyle.settingsTitle(),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    // widget for changing password

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 25),
                        child: Text(
                          'Change your password',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    // widget for Delete reservation history

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, left: 25),
                        child: Text(
                          'Delete reservation history',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for address
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 25),
                        child: Text(
                          'My Addresses',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromRGBO(91, 91, 91, 1),
                    ),

//her we have settings section
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 20),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.settings,
                                size: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              'Settings',
                              style: AppTextStyle.settingsTitle(),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //widget for dark mode
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 25),
                        child: Text(
                          'Dark Mode',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for chossing language

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Language',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 0.5,
                      color: Color.fromRGBO(91, 91, 91, 1),
                    ),

//help center section
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 20),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Icon(
                                Icons.help_outlined,
                                size: 30,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              'Help Center',
                              style: AppTextStyle.settingsTitle(),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),

                    //widget for about us
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3, left: 25),
                        child: Text(
                          'About us',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for contact us
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'contact us',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for Privacy Policy
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Privacy Policy',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for Terms of Service
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Terms of Service',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for joining us

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Join us as customer',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    // 'Frequently Asked Questions'
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Frequently Asked Questions',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    //widget for ubdates
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 25, bottom: 5),
                        child: Text(
                          'Check for updates',
                          style: AppTextStyle.settingsText(),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        //widget for logout button

        LogoutButton(screenWidth: screenWidth, screenHeight: screenHeight)
      ],
    );
  }
}
