import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';


class PickSizeList extends StatelessWidget {
  const PickSizeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style: AppStyle.style18(context),
        ),
        SizedBox(
          height: 40,
          child: ListView.separated(
            separatorBuilder: (context, index) => const Gap(8),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
            const SizeItem(isSelected: true),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
class SizeItem extends StatelessWidget {
  const SizeItem({super.key, required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
          color: isSelected ? AppColor.primaryColor : Colors.transparent,
          shape: BoxShape.circle),
      child: Center(
        child: Text(
          "40",
          style: AppStyle.style14(context).copyWith(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
