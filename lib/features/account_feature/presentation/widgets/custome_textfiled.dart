import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.title, required this.hint});

  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.style18(context),
        ),
        const Gap(16),
        TextField(
          decoration: InputDecoration(
              hintText: hint,
              hintStyle: AppStyle.style14(context),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0x4C004182),
                ),
              )),
        ),
        const Gap(24),
      ],
    );
  }
}
