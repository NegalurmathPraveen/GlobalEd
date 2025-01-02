import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/ui/widgets/gradient_border_widget.dart';
import '../../../data/models/post.dart';

class ReelsWidget extends StatelessWidget {
  final Post data;

  const ReelsWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GradientBorderWidget(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(20.r),
          bottomRight: Radius.circular(20.r),
          bottomLeft: Radius.zero,
        ),
        child: Image.network(
          data.files.first.thumbnail ?? "", // Replace with your image URL
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
