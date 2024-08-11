import 'package:flutter/material.dart';

class CostumeTextFiled extends StatelessWidget {
  const CostumeTextFiled({required this.title, super.key,required this.textEditingController});

  final String title;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 13),
        ),
         TextField(
          controller: textEditingController,
          decoration: const InputDecoration(),
        )
      ],
    );
  }
}
