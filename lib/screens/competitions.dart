import 'package:animated_text_kit/animated_text_kit.dart';
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
    "assets/images/spell.png",
    "assets/images/treasure.png",
    "assets/images/quiz.png",


  ];

  List <String> description_events=[
        "Experience the ultimate chess showdown at our university's highly-anticipated tournament! Prepare to witness fierce battles and brilliant strategic moves as players from our campus compete for glory. Whether you're a seasoned chess enthusiast or simply curious to delve into the captivating world of chess, this event promises excitement and intellectual stimulation. Join us for an unforgettable display of skill, determination, and strategic brilliance at our university's chess tournament.",
        "Experience the thrill of virtual soccer at our university's FIFA gaming tournament! Join us for a competitive showdown where gaming enthusiasts showcase their skills on the digital pitch. Whether you're a seasoned FIFA player or a passionate fan, this event promises excitement and intense gameplay. Compete against fellow students and immerse yourself in the world of virtual soccer at our university's thrilling FIFA gaming tournament.",
        "Get ready for the ultimate coding competition at our university! Join us for a thrilling showcase of programming skills and innovation. Whether you're a seasoned coder or a budding enthusiast, this event offers an exciting opportunity to test your abilities and solve challenging problems. Don't miss out on the chance to showcase your expertise and compete with fellow coding enthusiasts at our university's prestigious coding competition.",
        "Prepare to be spellbound at our university's captivating Spell Bee competition! Join us for an enchanting showcase of language skills and spelling prowess. Whether you're a wordsmith or looking to improve your spelling abilities, this event offers an exciting opportunity to challenge yourself and compete against fellow students. Don't miss the chance to showcase your linguistic talent and participate in our university's prestigious Spell Bee competition. Spellbinding moments and a celebration of language await you in this unforgettable event!",
    "Get ready for an exhilarating Treasure Hunt Game hosted by our university! Embark on a quest filled with clues, riddles, and hidden treasures. Gather your team and unleash your problem-solving skills as you race against time to uncover the secrets. This thrilling adventure promises excitement, teamwork, and unforgettable moments. Join us for our university's Treasure Hunt Game and embark on an unforgettable journey of discovery and adventure!",
    "Put your knowledge to the test at our university's electrifying General Quiz! Join us for a battle of wits and showcase your expertise in a wide range of topics. From history to science, pop culture to sports, this quiz has it all. Gather your team, sharpen your minds, and get ready to compete against other knowledgeable participants. Don't miss the chance to be part of our university's General Quiz and prove yourself as the ultimate quiz champion",

  ];

  @override
  Widget build(BuildContext context) {
    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      title:





      Text("Lock Horns",style: TextStyle(color:color ,fontWeight: FontWeight.bold,fontSize: 20),),
      ),

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