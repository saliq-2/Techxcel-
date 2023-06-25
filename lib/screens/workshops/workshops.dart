import 'package:flutter/material.dart';
import 'package:techxcel/screens/event_description.dart';
class workshops extends StatefulWidget
{

  @override
  State<workshops> createState() => _workshopsState();
}

class _workshopsState extends State<workshops> {
  List <String> image_comp=[
    "assets/images/aia.png",
    "assets/images/nano.jpg",
    "assets/images/augmented.png",
    "assets/images/cloud.png",
    "assets/images/iot.png",
    "assets/images/photography.png",



  ];

  List <String> description_events=[


    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
    "Immerse yourself in the fascinating world of nanotechnology at our university's enlightening workshop! Join us for an engaging showcase of cutting-edge scientific advancements and innovation. Whether you're a science enthusiast or simply curious about the wonders of nanotechnology, this workshop offers an exciting opportunity to delve into this rapidly evolving field. Discover the potential applications, explore nanomaterials, and learn about the future of nanotechnology. Don't miss out on the chance to be part of our university's prestigious nanotechnology workshop, where knowledge and innovation converge to shape the future of science.",
    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
  ];

  @override
  Widget build(BuildContext context) {

    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    return Scaffold(
      appBar: AppBar(

        title: Text("UNLOCK ",style: TextStyle(color:color,fontSize: 20,fontWeight: FontWeight.bold ),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: image_comp.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)=>

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>event_description(obj: image_comp[index], description1: description_events[index])));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container
                  (
                  

                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: Image.asset(image_comp[index],fit: BoxFit.cover,)),
                ),
              ),
            ),
          ),

      ),
    );
  }
}