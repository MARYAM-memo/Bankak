import 'package:bankak_app/modules/login.dart';
import 'package:bankak_app/shared/components/consts.dart';
import 'package:bankak_app/shared/components/form_fields/email_field.dart';
import 'package:bankak_app/shared/components/form_fields/password_field.dart';
import 'package:bankak_app/shared/components/form_fields/text_field.dart';
import 'package:bankak_app/shared/components/shared_widgets.dart';
import 'package:bankak_app/shared/resources/icons.dart';
import 'package:bankak_app/shared/resources/images.dart';
import 'package:bankak_app/shared/resources/styles.dart';
import 'package:flutter/material.dart';
import '../shared/resources/colors.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          //top design
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: appGradient,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                freeV(h: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(img1, height: 80),
                    const Icon(
                      Icons.link,
                      color: white,
                      size: 40,
                    ),
                    Image.asset(img6, height: 80),
                  ],
                ),
                freeV(h: 30),
                Text(
                  'Connect to your bank account',
                  style: getmedium(color: white.withOpacity(.95), size: 20),
                ),
                freeV()
              ],
            ),
          ),
          //bottom design
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                freeV(),
                //fields
                SizedBox(
                  width: 400,
                  child: Column(
                    children: [
                      freeH(),
                      const InputTextField(
                        hint: 'Full Name',
                      ),
                      freeV(h: 15),
                      InputTextField(
                        hint: 'Bank Account',
                        keyboardType: TextInputType.emailAddress,
                        prefix: Icon(person),
                      ),
                      freeV(h: 15),
                      const EmailInputField(),
                      freeV(h: 15),
                      const PasswordInputField(),
                      freeV(h: 30),
                      Row(
                        children: [
                          Checkbox(
                            activeColor: blue2,
                            value: checkBox,
                            onChanged: (_) {
                              setState(() {
                                checkBox = !checkBox;
                              });
                            },
                          ),
                          Expanded(
                            child: Text(
                                'By Signing up, you agree to Bankak\'s term of uses & privecy policies',
                                style: getlight(),
                                maxLines: 2,
                                textAlign: TextAlign.left),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                freeV(h: 10),
                defaultButton(
                  txtButton: 'Sign Up',
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already signed up?',
                      style: getlight(),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        },
                        child: Text(
                          'Login Now',
                          style: links,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
