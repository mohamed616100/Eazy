
import 'package:eazy_app/features/home/manager/slider_cubit.dart';
import 'package:eazy_app/features/home/views/widgets/home/slider/slider_image.dart';
import 'package:eazy_app/features/home/views/widgets/home/slider/slider_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderSection extends StatelessWidget {
  const SliderSection({super.key});

  final List<Widget> _sliderItems = const [
    SliderImage(),
    SliderImage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SliderCubit(),
      child: Column(
        children: [
          const SizedBox(
            height: 154,
            child: SliderImage(),
          ),
          const SizedBox(height: 8),
          BlocBuilder<SliderCubit, int>(
            builder: (context, activeIndex) {
              return SliderIndicator(
                activeIndex: activeIndex,
                count: _sliderItems.length,
              );
            },
          ),
        ],
      ),
    );
  }
}
