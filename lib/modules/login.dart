import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/form_fields/email_field.dart';
import 'package:bankak_app/shared/components/form_fields/password_field.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/colors.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'sign.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top design
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: appGradient,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  freeV(h: 40),
                  Text(
                    'Welcome!',
                    style: getmedium(
                        color: white, size: 48, weight: FontWeight.w800),
                  ),
                  freeV(),
                  SizedBox(
                      height: h * .55 * .5,
                      child: Image.asset(
                        img2,
                      )),
                  freeV(h: 40),
                ],
              ),
            ),
            //bottom
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20),
              // height: h * .45,
              width: 400,
              child: Column(children: [
                freeV(h: 40),
                //email & password fields
                SizedBox(
                    child: Column(
                  children: [
                    const EmailInputField(),
                    freeV(h: 15),
                    const PasswordInputField()
                  ],
                )),
                freeV(),
                //login button
                defaultButton(
                  txtButton: 'Login',
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                freeV(),
                Text(
                  'Forget Password?',
                  style: links,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Bankak App?',
                      style: getlight(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: Text(
                          'Sign Up',
                          style: links,
                        )),
                  ],
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
