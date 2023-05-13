
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_video/video/provider/videoprovider.dart';
import 'package:video_video/video/view/home_screen.dart';
import 'package:video_video/video/view/video_Screen.dart';
void main()
{
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => vp(),)
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=>Home_Screen(),
            'video':(context)=>VideoScreen(),
          },
        ),
      ),
    )
  );

}