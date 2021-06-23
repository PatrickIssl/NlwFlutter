import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nlwflutter/shared/themes/app_colors.dart';
import 'package:nlwflutter/shared/themes/app_images.dart';
import 'package:nlwflutter/shared/themes/app_text_styles.dart';
import 'package:nlwflutter/shared/themes/social_login/social_login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Container(
                color: AppColors.primary,
                width: size.width,
                height: size.height * 0.36,
              ),
              Positioned(
                child: Image.asset(
                  AppImages.person,
                  height: 300,
                  width: 208,
                ),
                left: 0,
                right: 0,
                top: 40,
              ),
              Positioned(
                  bottom: size.height * 0.05,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.logomini),
                      Padding(
                        padding: EdgeInsets.only(top: 30, right: 70, left: 70),
                        child: Text("Organize seus boletos em um só lugar",
                            textAlign: TextAlign.center,
                            style: TextStyles.titleHome),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, right: 40, top: 40),
                        child: SocialLoginButton(onTap: (){
                          GoogleSignIn _googleSignIn = GoogleSignIn(
                            scopes:[
                              'email',
                              'https://www.googleapis.com/auth/contacts.readonly',
                            ],
                          );
                        },),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
