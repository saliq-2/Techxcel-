import 'package:flutter/material.dart';
import 'package:techxcel/screens/event_description.dart';
class gaming extends StatefulWidget
{

  @override
  State<gaming> createState() => _gamingState();
}

class _gamingState extends State<gaming> {
  List <String> image_comp=[
    "assets/images/chess.png",
    "assets/images/fif.png",
     "assets/images/bgmi.jpg",
    "assets/images/tekken.jpg",



  ];

  List <String> description_events=[
    "Experience the ultimate chess showdown at our university's highly-anticipated tournament! Prepare to witness fierce battles and brilliant strategic moves as players from our campus compete for glory. Whether you're a seasoned chess enthusiast or simply curious to delve into the captivating world of chess, this event promises excitement and intellectual stimulation. Join us for an unforgettable display of skill, determination, and strategic brilliance at our university's chess tournament.",
    "Experience the thrill of virtual soccer at our university's FIFA gaming tournament! Join us for a competitive showdown where gaming enthusiasts showcase their skills on the digital pitch. Whether you're a seasoned FIFA player or a passionate fan, this event promises excitement and intense gameplay. Compete against fellow students and immerse yourself in the world of virtual soccer at our university's thrilling FIFA gaming tournament.",
    "Immerse yourself in the action-packed world of Battlegrounds Mobile India (BGMI) at our university's thrilling gaming event! Join us for an electrifying showcase of mobile gaming skills and intense competition. Whether you're a seasoned BGMI player or a passionate gamer, this event offers an exciting platform to test your reflexes, strategy, and teamwork. Don't miss out on the chance to be part of our university's prestigious BGMI gaming event, where thrilling battles and unforgettable moments await. Gear up, drop into the battleground, and show off your gaming prowess in this epic tournament!",
    "Step into the virtual arena and prepare for an exhilarating Tekken gaming tournament at our university! Join us for an epic showcase of fighting skills and intense competition. Whether you're a seasoned Tekken player or a passionate gamer, this event offers an exciting platform to test your reflexes, strategy, and mastery of martial arts. Don't miss out on the chance to participate in our university's prestigious Tekken gaming tournament, where fierce battles and unforgettable moments await. Get ready to unleash your combos and dominate the competition in this thrilling fighting game showdown!"
  ];

  @override
  Widget build(BuildContext context) {
    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Blazing Battle",style: TextStyle(color:color ,fontWeight: FontWeight.bold,fontSize: 20


        ),),
      ),
      backgroundColor: Colors.black,
      body:

      GridView.builder(
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
                       borderRadius: BorderRadius.circular(8),
                      child: Image.asset(image_comp[index],fit: BoxFit.cover,)),
                ),
              ),
            ),
          ),

      ),
    );
  }
}