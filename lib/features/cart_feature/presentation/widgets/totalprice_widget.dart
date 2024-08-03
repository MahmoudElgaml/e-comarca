import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/routes/routes.dart';
import '../../../../core/utils/app_color.dart';
import '../../../../core/utils/app_style.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({super.key,required this.totalPrice});
 final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
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
              "EGP $totalPrice",
              style: AppStyle.style18(context),
            ),
          ],
        ),
        const Gap(33),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              context.push(AppRoute.cartScreen);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: FittedBox(
                child: Row(
                  children: [


                    Center(
                      child: Text(
                        "Check out ->",
                        style: AppStyle.styleMedium20(context)
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
