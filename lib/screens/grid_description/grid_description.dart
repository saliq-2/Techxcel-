import 'dart:io';

import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';
import 'package:url_launcher/link.dart';
class grid_event_description extends StatefulWidget
{
  String obj,description2;
  grid_event_description({super.key,required this.obj,required this.description2});

  @override
  State<grid_event_description> createState() => _event_descriptionState();
}

class _event_descriptionState extends State<grid_event_description> {
  @override
  Widget build(BuildContext context) {
    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      backgroundColor: Colors.black,
      body:Container(
        color: Colors.black,
        child: Column(
          children: [

            Container(
              width: MediaQuery.of(context).size.width*1,

              height: 400,
              // color: Colors.blue,
              decoration: BoxDecoration(



              ),
              child: Image.asset(widget.obj,),
            ),
            SizedBox(height: 10,),
            Text("Event Description",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.description2,style: TextStyle(fontSize: 15,wordSpacing:2,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
            ),
            Text("data ab"),
            Link(
              uri: Uri.parse(
                  'https://docs.google.com/forms/d/e/1FAIpQLSd15Ds0dIBeqGPQVxJ09y5rnHn1dlFvAM2dOchSfBWKsoYdVQ/viewform'),
              target: LinkTarget.blank,
              builder: (BuildContext ctx, FollowLink? openLink) {
                return



                  ActionSlider.standard(
                    backgroundColor: Colors.yellowAccent.shade100,
                    toggleColor: Colors.white,



                    icon:IconButton(

                        onPressed:
                        openLink,
                        icon: Icon(Icons.arrow_forward,color: Colors.black,)) ,


                    width: 300.0,

                    child:Text("Slide To Register"),

                    action: (controller) async {

                      controller.loading(); //starts loading animation
                      await Future.delayed(const Duration(seconds: 2));
                      controller.success(); //starts success animation
                      openLink?.call();




                      await Future.delayed(const Duration(seconds: 3));

                      controller.reset(); //resets the slider
                    },

                    direction: TextDirection.ltr,
                  );


              },
            ) ,










          ],
        ),
      ) ,
    );
  }


}
