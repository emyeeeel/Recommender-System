import 'package:flutter/material.dart';
import 'package:movie_recommender/widgets/buttons.dart';

import '../widgets/custom_checkbox.dart';
import '../widgets/user_textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _isChecked = false; 

  @override
  Widget build(BuildContext context) {
    return Material( 
      child: Stack(
        children: <Widget>[
          Image.asset(
            'lib/assets/login-background.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: ListView(
              physics: const PageScrollPhysics(),
              children: <Widget>[
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * .8,
                        child: LayoutBuilder(builder: (context, constraint) {
                          return const Row(
                           children: [
                             Text(
                                    'NETFLIX',
                                    style: TextStyle(
                                      color: Color(0xFFE50915),
                                      fontSize: 50,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                           ],
                         );
                        }),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: MediaQuery.sizeOf(context).width / 3.5,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            const Text(
                              'Sign in',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            LayoutBuilder(builder: (context, constraints){
                              return CustomTextField(hintText: 'Email or mobile number', constraint: constraints.maxWidth * 0.8,);
                            }),
                            const SizedBox(height: 20),
                            LayoutBuilder(builder: (context, constraints){
                              return CustomTextField(hintText: 'Password', constraint: constraints.maxWidth * 0.8,);
                            }),
                            const SizedBox(height: 20),
                            const SigninButton(
                              text: 'Sign in',
                              buttonColor: Color(0xFFE50915),
                              textColor: Colors.white,
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'OR',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SigninButton(
                              text: 'Use a Sign-in Code',
                              buttonColor: Colors.grey.withOpacity(.4),
                              textColor: Colors.white,
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            const SizedBox(height: 5),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth * 0.8,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(0,10,0,10),
                                    child: CustomCheckboxListTile(
                                      title: "Remember me",
                                      value: _isChecked,
                                      onChanged: (newValue) {
                                        setState(() {
                                          _isChecked = newValue ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 15),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth * 0.8,
                                  child: RichText(
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'New to Netflix? ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Sign up now.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 20),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return SizedBox(
                                  width: constraints.maxWidth * 0.8,
                                  child: RichText(
                                    textAlign: TextAlign.justify,
                                    text: const TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'This page is protected by Google reCAPTCHA to ensure you\'re not a bot. ',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Learn more.',
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
