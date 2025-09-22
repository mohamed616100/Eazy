
import 'package:eazy_app/core/utils/appColor.dart';
import 'package:eazy_app/core/utils/appStyles.dart';
import 'package:eazy_app/core/widgets/customSvg.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final bool autoFocus;
  final bool isClickable;
  final VoidCallback? onTap;

  const SearchWidget({
    super.key,
    this.autoFocus = false,
    this.isClickable = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: GestureDetector(
        onTap: isClickable ? onTap : null,
        child: AbsorbPointer(
          absorbing: isClickable,
          child: TextField(
            autofocus: autoFocus,
            readOnly: isClickable,
            textDirection: TextDirection.rtl,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              filled: true,
              fillColor: autoFocus ? AppColors.white : AppColors.white2,
              prefixIcon: IconButton(
                onPressed: () {},
                icon: const CustomSvg(
                  path: 'assets/icons/search.svg',
                  width: 24,
                  height: 24,
                  color: AppColors.gray,
                ),
              ),
              hintText: 'ابحث عن درس ',
              hintStyle:
                  AppStyles.textStyle14w400FF.copyWith(color: AppColors.gray),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
