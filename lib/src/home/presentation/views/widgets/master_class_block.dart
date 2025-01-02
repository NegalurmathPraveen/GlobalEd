import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/ui/widgets/title_and_body_widget.dart';
import '../../../data/models/banner.dart';

class MasterClassBlock extends StatelessWidget {
  final Block data;

  const MasterClassBlock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TitleAndBodyWidget(title: "Our Programs", body: CarouselSlider.builder(
      itemCount: data.count - 1,
      itemBuilder: (context, index, realIndex) {
        return InkWell(
          onTap: (){

          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
            child: Image.network(
              data.posts[index].files.first.imagePath ?? "",
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
        );
      },
      options: CarouselOptions(
        height: 350.h,
        autoPlay: true,enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 3),
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.8,
      ),
    ));
  }
}
