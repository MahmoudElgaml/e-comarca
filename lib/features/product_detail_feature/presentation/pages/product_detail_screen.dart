import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  static const List<Color> items = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.black,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("products details", style: AppStyle.styleMedium20(context)),
        actions: const [
          Icon(
            Icons.search,
            size: 35,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 35,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 398 / 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    Assets.imagesProductDetailTest,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Gap(24),
              Row(
                children: [
                  Text(
                    "Nike Air Jordan",
                    style: AppStyle.style18(context),
                  ),
                  const Spacer(),
                  Text(
                    "EGP 3,500",
                    style: AppStyle.style18(context),
                  ),
                ],
              ),
              const Gap(24),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0x4C004182),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "3,230 Sold",
                      style: AppStyle.style14(context),
                    ),
                  ),
                  const Gap(16),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "4.8",
                    style: AppStyle.style14(context),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 11),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF004182),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.asset(Assets.imagesDecreaseIocn),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          child: Text(
                            "1",
                            style: AppStyle.style18(context),
                          ),
                        ),
                        SvgPicture.asset(Assets.imagesIncreaseIcon),
                      ],
                    ),
                  )
                ],
              ),
              const Gap(16),
              Text(
                "Description",
                style: AppStyle.style18(context),
              ),
              const Gap(8),
              Text(
                "Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories",
                style: AppStyle.style14(context).copyWith(
                  color: const Color(0x9906004E),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const Gap(16),
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
              const Gap(16),
              Text(
                "Color",
                style: AppStyle.style18(context),
              ),
              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) =>
                      ColorItem(itemColor: items[index]),
                  separatorBuilder: (context, index) => const Gap(8),
                  itemCount: items.length,
                ),
              ),
              const Gap(48),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Total Price",
                        style: AppStyle.style18(context).copyWith(
                          color: const Color(0x9906004E),
                        ),
                      ),
                      const Gap(12),
                      Text(
                        "EGP 3,500",
                        style: AppStyle.style18(context),
                      ),
                    ],
                  ),
                  Gap(33),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: FittedBox(
                          child: Row(
                            children: [
                              Gap(25),
                              const Icon(
                                Icons.add_shopping_cart_outlined,
                                color: Colors.white,
                              ),
                              Gap(24),
                              Text(
                                "Add To Cart",
                                style: AppStyle.styleMedium20(context)
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
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

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.itemColor});

  final Color itemColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(shape: BoxShape.circle, color: itemColor),
    );
  }
}
