import 'dart:io';

import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:techxcel/screens/intro.dart';
import 'package:url_launcher/link.dart';
class event_description extends StatefulWidget
{
  String obj;
  String description1;

  event_description({super.key,required this.obj,required this.description1});

  @override
  State<event_description> createState() => _event_descriptionState();
}

class _event_descriptionState extends State<event_description> {

  List <String> image_comp=["assets/images/fifa.png"];



  @override
  Widget build(BuildContext context) {
    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.black,
      ) ,
      body:SingleChildScrollView(
        child: Container(
           height: MediaQuery.of(context).size.height*1,
          color: Colors.black,
          child: Column(
            children: [

              Container(
                width: MediaQuery.of(context).size.width*1,

                height: 400,

                decoration: BoxDecoration(



                ),
                child: Image.asset(widget.obj,),
              ),
              SizedBox(height: 10,),
              Text("Event Description",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.description1,style: TextStyle(fontSize: 15,wordSpacing:2,fontWeight: FontWeight.bold,color: Colors.white,height: 1.5),),
              ),
              Text("data ab"),
              //
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
        ),
      ) ,
    );
  }

  confirm() {
    print("ds");
  }
}