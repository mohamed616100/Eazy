
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcons extends StatelessWidget {
  const CustomIcons({super.key, required this.image, required this.text,this.onTap});
final String image;
final String text;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child: InkWell(
           onTap:onTap ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
                Icon(Icons.arrow_back_ios_new_outlined),
               Row(children: [
                Text(text,
                style: AppStyles.textStyle14w400FF.copyWith(
                  color: AppColors.textHomeSection
                )
                ),
              SizedBox(width: MediaQuery.of(context).size.width/30,),
            
                CustomSvg(path: image,
                  width: 16.w,
                  height: 16.h,
                  color: AppColors.blue,
                  )
               ],)
            
              ],),
          ),
        );
  }
}