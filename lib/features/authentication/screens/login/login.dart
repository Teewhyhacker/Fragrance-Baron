import "package:flutter/material.dart";
import "package:fragrancebaron/common/styles/spacing_styles.dart";
import 'package:fragrancebaron/common/widgets/login_SignUp/divider_widget.dart';
import 'package:fragrancebaron/common/widgets/login_SignUp/social_icon_widget.dart';
import "package:fragrancebaron/features/authentication/screens/login/widgets/login_form.dart";
import "package:fragrancebaron/features/authentication/screens/login/widgets/login_header.dart";
import "package:fragrancebaron/utils/constants/sizes.dart";
import "package:fragrancebaron/utils/constants/text_strings.dart";


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return const Scaffold(
      body: SingleChildScrollView(
          child: Padding(
        padding: FBSpacingStyles.paddingWithAppBarHeight,
        child: Column(
          children: [
            //  LOGO AND TITLE AND SUBTITLE
             FBLoginHeader(),
            // Form
            FBLoginForm()

            // Divider
            ,
           DividerWidget(dividerText: FBTexts.orSignInWith),
             SizedBox(
              height: FBSizes.spaceBtwSections - 15,
            ),
             // FOOTER
            SocialIconWidget()
          ],
        ),
      )),
    );
  }
}
