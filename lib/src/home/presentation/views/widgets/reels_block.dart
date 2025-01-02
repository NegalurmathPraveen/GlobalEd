import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education/core/ui/widgets/title_and_body_widget.dart';
import 'package:miles_education/src/home/presentation/views/widgets/reels_widget.dart';

import '../../../data/models/banner.dart';

class ReelsBlock extends StatelessWidget {
  final Block data;

  const ReelsBlock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TitleAndBodyWidget(
        title: "The Global Accountant",
        body: SizedBox(
          height: 0.65.sh,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.70,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.w,
            ),
            itemCount: data.count,
            itemBuilder: (context, index) {
              return ReelsWidget(
                data: data.posts[index],
              );
            },
          ),
        ));
  }
}
