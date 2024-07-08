import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/account_feature/presentation/widgets/custome_textfiled.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: Image.asset(Assets.imagesLogo, fit: BoxFit.fill),
        toolbarHeight: 35,
      ),
      body: CustomScrollView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        slivers: [
          const SliverToBoxAdapter(child: Gap(16)),
          SliverAppBar(
            surfaceTintColor: Colors.transparent,
            pinned: true,
            titleSpacing: 0,
            title: Column(
              children: [
                Text(
                  "Welcome, Mohamed",
                  style: AppStyle.style18(context),
                ),
                const Gap(5),
                Text(
                  "mohamed.N@gmail.com",
                  style: AppStyle.style14(context)
                      .copyWith(color: const Color(0x9906004E)),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: Gap(40)),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomTextFiled(
                    title: "Your full name", hint: "Mohamed Mohamed Nabil"),
                CustomTextFiled(
                    title: "Your E-mail", hint: "mohamed.N@gmail.com"),
                CustomTextFiled(title: "Your password", hint: "*******"),
                CustomTextFiled(
                    title: "Your mobile number", hint: "01061746848"),
                CustomTextFiled(
                    title: "Your Address", hint: "6th October, street 11....."),

              ],
            ),
          )
        ],
      ),
    );
  }
}
