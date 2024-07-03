import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({super.key});

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  int selectIndex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height - 230,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius:
        BorderRadius.only(topLeft: Radius.circular(10)),
        border: Border(
          left: BorderSide(
            width: 1,
            color: Color(0x4C004182),
          ),
          top: BorderSide(
            width: 1,
            color: Color(0x4C004182),
          ),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) => InkWell(
            onTap: () {
              selectIndex = index;
              setState(() {});
            },
            child:
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: CategoryItem(isSelected: index == selectIndex),
            )),
        itemCount: 10,
        shrinkWrap: true,
      ),
    );
  }
}