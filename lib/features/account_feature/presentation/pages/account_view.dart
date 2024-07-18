import 'package:e_comarce_clean/core/service_locator/config.dart';
import 'package:e_comarce_clean/core/utils/app_style.dart';
import 'package:e_comarce_clean/features/account_feature/presentation/manager/account_cubit.dart';
import 'package:e_comarce_clean/features/account_feature/presentation/widgets/custome_textfiled.dart';
import 'package:e_comarce_clean/features/auth/domain/entities/UserEntity.dart';
import 'package:e_comarce_clean/features/auth/presentation/manager/auth_cubit.dart';
import 'package:e_comarce_clean/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/cache/storage_token.dart';
import '../../../../core/utils/cpmponents/no_loged_widget.dart';

class AccountView extends StatefulWidget {
  AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: Image.asset(Assets.imagesLogo, fit: BoxFit.fill),
        toolbarHeight: 35,
      ),
      body: BlocBuilder<AccountCubit, AccountState>(
        builder: (context, state) {
          if(state is AccountNotLoggedState){
            return const NoLoggedWidget();
          }
          else if(state is AccountIsLoggedState){
            User? user=getIt<AuthCubit>().signedUser?.user;
            return CustomScrollView(
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
                        "Welcome,${user!.name} ",
                        style: AppStyle.style18(context),
                      ),
                      const Gap(5),
                      Text(
                        user.email??"",
                        style: AppStyle.style14(context)
                            .copyWith(color: const Color(0x9906004E)),
                      ),
                    ],
                  ),
                ),
                const SliverToBoxAdapter(child: Gap(40)),
                 SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      CustomTextFiled(
                          title: "Your full name", hint: user.name??""),
                      CustomTextFiled(
                          title: "Your E-mail", hint: user.email??""),
                      CustomTextFiled(title: "Your password", hint: "*******"),
                      CustomTextFiled(
                          title: "Your mobile number", hint: "01061746848"),
                      CustomTextFiled(
                          title: "Your Address",
                          hint: "6th October, street 11....."),
                    ],
                  ),
                )
              ],
            );
          }
          else{
           return Center(child: const CircularProgressIndicator());
          }

        },
      ),
    );
  }
}
