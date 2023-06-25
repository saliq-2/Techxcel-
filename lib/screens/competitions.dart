import 'package:flutter/material.dart';
import 'package:techxcel/screens/event_description.dart';
class competitions extends StatefulWidget
{

  @override
  State<competitions> createState() => _competitionsState();
}

class _competitionsState extends State<competitions> {
  List <String> image_comp=[
    "assets/images/chess.png",
    "assets/images/fif.png",
    "assets/images/codes.png",


  ];

  List <String> description_events=[
    "Experience the ultimate chess showdown at our university's highly-anticipated tournament! Prepare to witness fierce battles and brilliant strategic moves as players from our campus compete for glory. Whether you're a seasoned chess enthusiast or simply curious to delve into the captivating world of chess, this event promises excitement and intellectual stimulation. Join us for an unforgettable display of skill, determination, and strategic brilliance at our university's chess tournament.",
    "Experience the thrill of virtual soccer at our university's FIFA gaming tournament! Join us for a competitive showdown where gaming enthusiasts showcase their skills on the digital pitch. Whether you're a seasoned FIFA player or a passionate fan, this event promises excitement and intense gameplay. Compete against fellow students and immerse yourself in the world of virtual soccer at our university's thrilling FIFA gaming tournament.",
    "Get ready for the ultimate coding competition at our university! Join us for a thrilling showcase of programming skills and innovation. Whether you're a seasoned coder or a budding enthusiast, this event offers an exciting opportunity to test your abilities and solve challenging problems. Don't miss out on the chance to showcase your expertise and compete with fellow coding enthusiasts at our university's prestigious coding competition."
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
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
                  color: Colors.blue,

                  child: Image.asset(image_comp[index],fit: BoxFit.cover,),
                ),
              ),
            ),
          ),

      ),
    );
  }
}