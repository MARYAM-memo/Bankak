import 'package:bankak_app/consts.dart';
import 'package:bankak_app/screens/home.dart';
import 'package:bankak_app/screens/sign.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .55,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: grad,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      color: white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * .55 * .5,
                      child: Image.asset(
                        'assets/images/bank.png',
                      ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20),
              //color: Colors.yellow,
              height: MediaQuery.of(context).size.height * .45,
              width: double.infinity,
              child: Column(children: [
                freeV(),
                freeV(),
                SizedBox(
                    child: Column(
                  children: [
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Email Address',
                            prefixIcon: const Icon(Icons.email),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                    freeV(h: 15),
                    TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: const Icon(Icons.remove_red_eye),
                            prefixIcon: const Icon(Icons.lock),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)))),
                  ],
                )),
                freeV(),
                button(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }, 'Login'),
                freeV(),
                const Text(
                  'Forget Password?',
                  style: TextStyle(color: blue1, fontSize: 15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New to Bankak App?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: const Text(
                          'Sign Up',
                          style:
                              TextStyle(color: blue1, fontSize: 15),
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
