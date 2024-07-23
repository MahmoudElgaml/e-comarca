import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'costume_avatar.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CostumeAvatar(AppImages.google),
        CostumeAvatar(AppImages.faceBook),
        CostumeAvatar(AppImages.apple)
      ],
    );
  }
}
