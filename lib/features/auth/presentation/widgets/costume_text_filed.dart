import 'package:flutter/material.dart';

class CostumeTextFiled extends StatelessWidget {
  const CostumeTextFiled({
    required this.title,
    super.key,
    required this.textEditingController,
    this.isPassword,
    this.validate,
  });

  final String title;
  final TextEditingController textEditingController;
  final bool? isPassword;
  final  String? Function(String? value)? validate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 13),
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator:validate,
          obscureText: isPassword ?? false,
          controller: textEditingController,
          decoration: const InputDecoration(),
        )
      ],
    );
  }
}
