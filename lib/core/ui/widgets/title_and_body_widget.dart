import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'gradient_line.dart';

class TitleAndBodyWidget extends StatelessWidget {
  final String title;
  final Widget body;

  const TitleAndBodyWidget({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.w),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16.w, color: Colors.white),
              ),
            ),
            SizedBox(width: 5.w,),
            const GradientLine()
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        body,
      ],
    );
  }
}
