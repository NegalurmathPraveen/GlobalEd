import 'package:flutter/material.dart';

import '../../../data/models/banner.dart';

class BannerBlock extends StatelessWidget {
  final Block data;
  const BannerBlock({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.black,
          ),
        ),
        Image.network(
          data.posts.first.files.first.imagePath!,
          fit: BoxFit.fitHeight,
        )
      ],
    );
  }
}
