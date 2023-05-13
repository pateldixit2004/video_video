import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:video_video/video/provider/videoprovider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  vp? providerF;
  vp? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<vp>(context, listen: false);
    providerT = Provider.of<vp>(context, listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Video Player",style: TextStyle(color: Colors.teal),),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return InkWell(
          onTap: () {

            Provider.of<vp>(context,listen: false).loadvideo("${providerT!.videoList[index].video}");
            Navigator.pushNamed(context, 'video',arguments: index);
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30.h,
              width: 100.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(color: Colors.teal,
                        blurStyle: BlurStyle.outer,
                        blurRadius: 5)
                  ],
                  image: DecorationImage(
                      image: AssetImage("${providerF!.videoList[index].img}",),
                      fit: BoxFit.fill)
              ),
            ),
          ),
        );
      }, itemCount: providerF!.videoList.length,),
    ),);
  }
}
