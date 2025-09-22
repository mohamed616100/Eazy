import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appIcons.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ionicons/ionicons.dart';


class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Twitter
        _buildSocialIcon(
          child: CustomSvg(path: AppIcons.TwitterLogo),
          color: Colors.lightBlue,
          onTap: () {
            // TODO: اضف لينك تويتر
          },
        ),
        const SizedBox(width: 12),

        // Instagram (بـ Gradient)
        _buildSocialIcon(
          child: Icon(Ionicons.logo_instagram,size: 30,color: AppColors.white,),
          gradient: const LinearGradient(
            colors: [
              Color(0xFF6C1CD1), // بنفسجي
              Color(0xFFFF1C74), // وردي
              Color(0xFFFF7950), // برتقالي
              Color(0xFFFCB720), // أصفر برتقالي
              Color(0xFFFAE100), // أصفر
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          onTap: () {
            // TODO: اضف لينك انستجرام
          },
        ),
        const SizedBox(width: 12),

        // Facebook
        _buildSocialIcon(
          child: CustomSvg(path: AppIcons.FaceBookLogo),
          color: Colors.blue,
          onTap: () {
            // TODO: اضف لينك فيسبوك
          },
        ),
        const SizedBox(width: 12),

        // WhatsApp
        _buildSocialIcon(
          child: CustomSvg(path: AppIcons.WhatsAppLogo),
          color: Colors.green,
          onTap: () {
            // TODO: اضف لينك واتساب
          },
        ),
      ],
    );
  }

  Widget _buildSocialIcon({
    required Widget child,
    Color? color,
    LinearGradient? gradient,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.r,
        height: 56.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: gradient == null ? color : null,
          gradient: gradient,
        ),
        child: Center(child: child),
      ),
    );
  }
}
