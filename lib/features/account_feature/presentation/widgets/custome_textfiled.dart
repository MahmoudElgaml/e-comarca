import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomTextFiled extends StatefulWidget {
  const CustomTextFiled({super.key, required this.title, required this.hint});

  final String title;
  final String hint;

  @override
  State<CustomTextFiled> createState() => _CustomTextFiledState();
}

class _CustomTextFiledState extends State<CustomTextFiled> {
  bool isEnable = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppStyle.style18(context),
        ),
        const Gap(16),
        Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            TextField(
              onTapOutside: (event) {
                isEnable = false;
                setState(() {});
              },
              enabled: isEnable,
              decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: AppStyle.style14(context),
                enabledBorder: buildTextFiledBorder(),
                disabledBorder: buildTextFiledBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  isEnable = true;
                  setState(() {});
                },
                icon: const Icon(Icons.edit, color: Colors.grey),
              ),
            ),
          ],
        ),
        const Gap(24),
      ],
    );
  }

  OutlineInputBorder buildTextFiledBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0x4C004182),
      ),
    );
  }
}
