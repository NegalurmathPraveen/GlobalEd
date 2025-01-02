import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientBorderWidget extends StatelessWidget {
  final Size? size;
  final Widget child;
  const GradientBorderWidget({super.key, this.size,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size?.height.h,
      width: size?.width.w,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.w,
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
          bottomLeft: Radius.zero, // No border radius on bottom left
        ),
        // Applying the gradient as the border
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(115, 244, 213, 0.7),
            Color.fromRGBO(253, 172, 27, 0.7),
            Color.fromRGBO(184, 57, 250, 0.7),
            Color.fromRGBO(247, 82, 172, 0.7),
            Color.fromRGBO(57, 33, 252, 0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
