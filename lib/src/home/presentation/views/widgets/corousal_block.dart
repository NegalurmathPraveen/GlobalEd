import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education/core/ui/widgets/title_and_body_widget.dart';

import '../../../data/models/banner.dart';

class CarouselBlock extends StatelessWidget {
  final Block data;

  const CarouselBlock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TitleAndBodyWidget(title: "Upcoming Events", body: CarouselSlider.builder(
      itemCount: data.count - 1,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 8.w,vertical: 5.h),
          child: Image.network(
            data.posts[index].files.first.imagePath ?? "",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        );
      },
      options: CarouselOptions(
        height: 184.h,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.9,
      ),
    ));
  }
}
