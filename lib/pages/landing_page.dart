import 'package:flutter/material.dart';
import 'package:movie_recommender/pages/sign_up.dart';
import 'package:movie_recommender/widgets/buttons.dart';

import 'package:google_fonts/google_fonts.dart';
import '../widgets/user_textfield.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
          Container(
            width: double.infinity,
            height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
                borderRadius: BorderRadius.circular(8.0),
              ),
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
                          return Row(
                            children: [
                             const Text(
                                'NETFLIX',
                                style: TextStyle(
                                  color: Color(0xFFE50915),
                                  fontSize: 50,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE50915),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: MaterialButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SignUpPage()),
                                      );
                                    },
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.center, 
                                      children: [
                                        Text(
                                          'Sign in',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          );
                        }),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        width: MediaQuery.sizeOf(context).width / 2,
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            LayoutBuilder(builder: (context, constraints){
                              return SizedBox(
                                width: constraints.maxWidth * 0.8,
                                child: Column(
                                  children: [
                                    RichText(
                                    textAlign: TextAlign.center,
                                    text:  TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Unlimited movies,  ',
                                          style:  GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'TV shows, and more',
                                          style:  GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 60,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text:  TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Starts at ₱149. Cancel anytime.',
                                          style:  GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text:  TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Ready to watch? Enter your email to create or restart your membership.',
                                          style:  GoogleFonts.roboto(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  ],
                                ),
                              );
                            }),
                            const SizedBox(height: 20),
                            LayoutBuilder(builder: (context, constraints){
                              return SizedBox(
                                width: constraints.maxWidth * 0.8,
                                child: Row(
                                  children: [
                                    CustomTextField(hintText: 'Email address', constraint: constraints.maxWidth * 0.5,),
                                    const SizedBox(width: 10),
                                    const Expanded(
                                      child: LandingButton(
                                        text: 'Get Started',
                                        buttonColor: Color(0xFFE50915),
                                        textColor: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
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
