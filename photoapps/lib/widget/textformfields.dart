import 'package:flutter/material.dart';

import '../shared/theme.dart';

class TextFormFields extends StatelessWidget {
  final String text;
  final bool obscure;
  const TextFormFields({ Key? key, required this.text,this.obscure=false }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: textStyle1.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: textFieldColor,
          ),
          child: TextFormField(
            obscureText: obscure,
            decoration: InputDecoration.collapsed(
              hintText: "Input Your $text",
              hintStyle: textStyle1.copyWith(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}