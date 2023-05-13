import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:video_video/video/Modal/videoModal.dart';

class vp extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  
  void loadvideo(String? videopath)
  {
    videoPlayerController=VideoPlayerController.asset("$videopath");
    videoPlayerController!.initialize();
    chewieController=ChewieController(videoPlayerController: videoPlayerController!,autoPlay: false);
    
  }

  List<videoModal> videoList=[
    videoModal(name: 'Aarambh',video: 'assets/video/Aarambh.mp4',img: 'assets/image/img.png'),
    videoModal(name: 'Kgf',video: 'assets/video/kgf.mp4',img: 'assets/image/img_1.png'),
    videoModal(name: 'Sandeep maheshwari',video: 'assets/video/Sandeep.mp4',img: 'assets/image/img_2.png'),
    videoModal(name: 'Happy relationship',video: 'assets/video/happy.mp4',img: 'assets/image/img_3.png'),
    videoModal(name: 'Kgf',video: 'assets/video/kgf.mp4',img: 'assets/image/img_1.png'),

    videoModal(name: 'Best workout',video: 'assets/video/Best workout.mp4',img: 'assets/image/img_4.png'),
  ];
  
}