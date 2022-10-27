import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:cashcover/core/app_export.dart';
import 'package:cashcover/presentation/home_screen/widgets/spacing.dart';
import 'package:cashcover/presentation/set_pin_screen/set_pin_screen.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;
  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![1],
      ResolutionPreset.max,

    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (pictureFile != null)
    {

      return Scaffold(
      body: Stack(
        children: [
          Image.file(File(pictureFile!.path, ),
          
          height: size.height,),
         
         
       
     Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
      
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
         
          InkWell(
            onTap: ()async{
             Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SetPinScreen()),
  );
            },
            child: Image.asset(ImageConstant.cameraButton,
            height: getVerticalSize(80),
            width: getHorizontalSize(80),
            ),
          ),
          
         
         
        ],
      ),
      VerticalSpace(height: 50),
       ],
     ),
    
            
    
    
        ],
      ),
    );
 
    }



    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: size.height,
              width: size.width,
              // width: 400,
              // height: 400,
              child: CameraPreview(controller,
              
              ),
            ),
          ),
         
         
       
     Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Padding(
              padding: getPadding(
                left: 24,
                right: 24,
                bottom: 30
              ),
              child: Image.asset(ImageConstant.faceBox,
              height: getVerticalSize(400),
              )),
      Text("Center your face",
      
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Urbanist",
        fontSize: 20,
        fontWeight: FontWeight.w700
      ),
      ),
      
      
VerticalSpace(height: 8),
      Container(
        width: getHorizontalSize(260),
        child: Text("point your face right at the box, then take a photo",
      maxLines: null,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontFamily: "Urbanist",
        fontSize: 16,
        fontWeight: FontWeight.w400
      ),
      ),
      
 
      ),
      
      
      VerticalSpace(height: 24),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      
          Image.asset(ImageConstant.cameraButton1,
          height: getVerticalSize(59),
          width: getHorizontalSize(59),
          ),
          HorizontalSpace(width: 24),
          InkWell(
            onTap: ()async{
               pictureFile = await controller.takePicture();
              setState(() {});
            },
            child: Image.asset(ImageConstant.cameraButton,
            height: getVerticalSize(80),
            width: getHorizontalSize(80),
            ),
          ),
           HorizontalSpace(width: 24),
          Image.asset(ImageConstant.cameraButton3,
          height: getVerticalSize(59),
          width: getHorizontalSize(59),
          ),
         
         
        ],
      ),
      VerticalSpace(height: 30),
       ],
     ),
    
            
    
    
        ],
      ),
    );
 
 
 
  }
}


  //show picture:

            // if (pictureFile != null)
            //   // Image.network(
            //   //   pictureFile!.path,
            //   //   height: 200,
            //   // )
              
            //   //Android/iOS
            //   Image.file(File(pictureFile!.path)