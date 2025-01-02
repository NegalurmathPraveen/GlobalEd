import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/init_app.dart';
import 'src/home/presentation/views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initApp();
  runApp(const MilesEducationApp());
}

class MilesEducationApp extends StatelessWidget {
  const MilesEducationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Miles Education',
        theme: ThemeData(
          fontFamily: "SFUIText",
          primaryColor: Colors.black,
          appBarTheme: const AppBarTheme(color: Colors.black),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
