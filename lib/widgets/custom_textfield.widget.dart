import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final int? maxLines;
  final String title;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  const CustomTextField(
      {Key? key,
      required this.controller,
      this.maxLines = 1,
      required this.title,
      this.validator,
      this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEEEEEE))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFEEEEEE))),
              focusColor: Colors.white,
              labelText: title,
              alignLabelWithHint: true,
              labelStyle: const TextStyle(color: Color(0xFFEEEEEE))),
          maxLines: maxLines,
          controller: controller,
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
