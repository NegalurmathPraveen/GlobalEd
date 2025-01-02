import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education/core/ui/widgets/title_and_body_widget.dart';
import 'package:miles_education/src/home/data/models/banner.dart';
import 'package:miles_education/src/home/presentation/views/widgets/video_player_screen.dart';

import '../../../../../core/ui/ui_constants.dart';

class YoutubeVideosBlock extends StatelessWidget {
  final Block data;

  const YoutubeVideosBlock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return TitleAndBodyWidget(
      title: "Accounting Unplugged",
      body: SizedBox(
        height: 0.9.sh,
        child: ListView.builder(
          itemCount: data.count,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var video = data.posts[index];
            return GestureDetector(
              onTap: () {
                // Navigate to the video player screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VideoPlayerScreen(videoId: video.files.first.videoUrl ?? ""),
                  ),
                );
              },
              child: Card(
                margin: const EdgeInsets.all(10),
                color: Colors.black,
                child: Column(
                  children: [
                    SizedBox(width: 0.9.sw, height: 170.h, child: Image.network(video.files.first.thumbnail ?? "", fit: BoxFit.fill)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          const CircleAvatar(backgroundImage: NetworkImage(UIConstants.kLogoUrl)),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  video.title,
                                  style: TextStyle(color: Colors.white, fontSize: 12.h, fontWeight: FontWeight.w300),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  '${video.likes} likes',
                                  style: TextStyle(color: Colors.blueGrey, fontSize: 12.h, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
