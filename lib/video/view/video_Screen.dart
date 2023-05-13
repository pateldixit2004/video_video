import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_video/video/provider/videoprovider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  vp? providerF;
  vp? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<vp>(context, listen: false);
    providerT = Provider.of<vp>(context, listen: true);
    int index= ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_sharp)),
        backgroundColor: Colors.black,
        title: Text("${providerT!.videoList[index].name}",style: TextStyle(color: Colors.teal),),
      ),
      body:Chewie(
        controller: providerT!.chewieController!,
      ),
    ),);
  }
}
