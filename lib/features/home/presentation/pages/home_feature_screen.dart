import 'package:e_comarce_clean/core/utils/app_color.dart';
import 'package:e_comarce_clean/core/utils/app_images.dart';
import 'package:e_comarce_clean/core/utils/app_string.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_appbar.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/costume_category.dart';
import 'package:e_comarce_clean/features/home/presentation/widgets/title_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:gap/gap.dart';

import '../widgets/costume_offer_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 9,
            left: 17,
            right: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CostumeAppBar(),
              const Gap(16),
              const CostumeOfferImage(),
              const Gap(24),
             const TitleRow(),
              const Gap(16),
              SizedBox(
                height: 320,
                width: 412,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.2,
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) => const CostumeCategory(),
                  itemCount: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
