import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientLine extends StatelessWidget {
  const GradientLine({super.key});

  @override
  Widget build(BuildContext context) {
    final smallLine = Flexible(
      flex: 1,
      child: Container(
        height: 4.h,
        decoration: BoxDecoration(
          color: const Color(0xFFFFA548),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    );

    final sizedBox5 = SizedBox(width: 7.w);

    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 2, // This makes the first line take up twice the space
            child: Container(
              height: 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.black.withOpacity(0), // Faded black on the left
                    const Color(0xFFFFA548), // Gradient color at the right
                  ],
                ),
              ),
            ),
          ),
          sizedBox5,
          smallLine,
          sizedBox5,
          smallLine,
          sizedBox5
        ],
      ),
    );
  }
}
