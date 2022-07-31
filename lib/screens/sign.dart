import 'package:bankak_app/screens/home.dart';
import 'package:flutter/material.dart';
import '../consts.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .32,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: grad,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                freeV(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset('assets/images/bank_grid.png', height: 80),
                    const Icon(
                      Icons.link,
                      color: white,
                      size: 40,
                    ),
                    Image.asset('assets/images/phone.png', height: 80),
                  ],
                ),
                freeV(),
                const Text(
                  'Connect to your bank account',
                  style: TextStyle(color: white, fontSize: 18),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                freeV(),
                SizedBox(
                  child: Column(
                    children: [
                      freeH(),
                      TextFormField(
                          //keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Full name',
                              //prefixIcon: const Icon(Icons.email),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      freeV(h: 15),
                      TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Bank Account',
                              //suffixIcon: const Icon(Icons.remove_red_eye),
                              prefixIcon: const Icon(Icons.person),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      freeV(h: 15),
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
                  ),
                ),
                freeV(h: 30),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (_) {},
                    ),
                    const Expanded(
                      child: Text(
                          'By Signing up, you agree to Bankak\'s term of uses & privecy policies',
                          style: TextStyle(color: gry),
                          maxLines: 2,
                          textAlign: TextAlign.left),
                    ),
                    /* Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.,
                          shape: BoxShape.rectangle, color: Colors.amber),
                    ), */
                  ],
                ),
                freeV(h: 10),
                button(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                }, 'Sign Up'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already signed up?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login Now',
                          style: TextStyle(color: blue1, fontSize: 15),
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
