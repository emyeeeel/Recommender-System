import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final double constraint;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.constraint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constraint,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.5),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.fromLTRB(10, 1.5, 10, 1.5),
      child: TextFormField(
        style:  const TextStyle(
          color: Colors.white, 
          fontWeight: FontWeight.normal, 
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: hintText, 
          labelStyle: TextStyle(
            color: Colors.white.withOpacity(0.5), 
            fontWeight: FontWeight.normal, 
          ),
        ),
      ),
    );
  }
}
