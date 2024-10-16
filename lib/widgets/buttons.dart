import 'package:flutter/material.dart';

class SigninButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  const SigninButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: constraints.maxWidth * 0.8,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class LandingButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;

  const LandingButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5, 
                ),
              ),
              const SizedBox(width: 8), 
              Icon(
                Icons.arrow_forward, 
                color: textColor, 
                size: 20, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}



