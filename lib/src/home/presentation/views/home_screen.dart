import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:miles_education/core/ui/context_extensions.dart';
import 'package:miles_education/src/home/presentation/views/widgets/reels_block.dart';

import '../../../../core/init_app.dart';
import '../../../../core/ui/ui_constants.dart';
import '../cubit/home_cubit.dart';
import 'widgets/banner_block.dart';
import 'widgets/corousal_block.dart';
import 'widgets/master_class_block.dart';
import 'widgets/name_widget.dart';
import 'widgets/youtube_videos_block.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeCubit _homeCubit = getIt<HomeCubit>();

  @override
  void initState() {
    _homeCubit.getHomeDataEvent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizedBox20 = SizedBox(
      height: 20.h,
    );
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            width: 75.w,
            height: 25.h,
            child: Image.network(
              UIConstants.kLogoUrl,
              fit: BoxFit.fitWidth,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 20.w,
                color: Colors.white,
              ))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _homeCubit.getHomeDataEvent();
        },
        child: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: BlocConsumer<HomeCubit, HomeState>(
              bloc: _homeCubit,
              listener: (context, state) {
                if (state is HomeDataFailedState) {
                  context.showSnackBar(text: state.message);
                }
              },
              builder: (context, state) {
                if (state is HomeDataLoadedState) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const NameWidget(),
                      BannerBlock(
                        data: state.data[0],
                      ),
                      sizedBox20,
                      ReelsBlock(data: state.data[1]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Image.network(
                          state.data[2].posts.first.files.first.imagePath!,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      sizedBox20,
                      CarouselBlock(
                        data: state.data[3],
                      ),
                      sizedBox20,
                      YoutubeVideosBlock(
                        data: state.data[4],
                      ),
                      sizedBox20,
                      MasterClassBlock(
                        data: state.data[5],
                      ),
                      SizedBox(
                        height: 50.h,
                      )
                    ],
                  );
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ),
      ),
    );
  }
}
