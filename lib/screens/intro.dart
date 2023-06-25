import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:techxcel/screens/competitions.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:techxcel/screens/fun_actitvities/fun_activities.dart';
import 'package:techxcel/screens/gaming/gaming.dart';
import 'package:techxcel/screens/grid_description/grid_description.dart';
import 'package:techxcel/screens/workshops/workshops.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher.dart';
class intro extends StatefulWidget
{
  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  bool _hasCallSupport = false;

  Future<void>? _launched;

  String _phone = '';

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  List<String> banners=[



    "assets/images/techx.png",
    "assets/images/food.png",
    "assets/images/meta.png",
    "assets/images/gaming.png",

  ];
  List<String> grid_items=[
    "assets/images/aia.png",
    "assets/images/chess.png",
    "assets/images/fif.png",
    "assets/images/spell.png",
    "assets/images/codes.png",
    "assets/images/cs.png",
    "assets/images/treasure.png",
    "assets/images/quiz.png",

  ];

  List<String> grid_itrms_description=[
    "Immerse yourself in the world of Artificial Intelligence at our university's exciting AI competition! Join us for a captivating showcase of cutting-edge technologies and innovative AI solutions. Whether you're an AI expert or just starting to explore this fascinating field, this event offers a thrilling platform to showcase your skills and push the boundaries of AI. Don't miss the opportunity to be part of our university's prestigious AI competition, where creativity and intelligence converge to shape the future.",
    "Experience the ultimate chess showdown at our university's highly-anticipated tournament! Prepare to witness fierce battles and brilliant strategic moves as players from our campus compete for glory. Whether you're a seasoned chess enthusiast or simply curious to delve into the captivating world of chess, this event promises excitement and intellectual stimulation. Join us for an unforgettable display of skill, determination, and strategic brilliance at our university's chess tournament",
    "Get ready for the ultimate FIFA tournament at our university! Join us for an exhilarating showcase of virtual soccer skills and intense competition. Whether you're a seasoned FIFA player or a passionate fan, this event offers an exciting platform to test your gaming prowess and compete against fellow students. Don't miss out on the chance to be part of our university's prestigious FIFA tournament, where thrilling matches and unforgettable moments await. Lace up your virtual boots and get ready for an unforgettable FIFA gaming experience!",
    "Prepare to be spellbound at our university's captivating Spell Bee competition! Join us for an enchanting showcase of language skills and spelling prowess. Whether you're a wordsmith or looking to improve your spelling abilities, this event offers an exciting opportunity to challenge yourself and compete against fellow students. Don't miss the chance to showcase your linguistic talent and participate in our university's prestigious Spell Bee competition. Spellbinding moments and a celebration of language await you in this unforgettable event!",
    "Embark on a coding adventure at our university's thrilling Coding Event! Join fellow programmers in an exciting showcase of coding skills and innovation. Whether you're a coding expert or a curious beginner, this event offers a platform to challenge yourself, solve coding puzzles, and unleash your creativity. Don't miss the opportunity to be part of our university's prestigious Coding Event, where the world of programming comes alive with excitement and endless possibilities.",
    "Get ready for an exhilarating Treasure Hunt Game hosted by our university! Embark on a quest filled with clues, riddles, and hidden treasures. Gather your team and unleash your problem-solving skills as you race against time to uncover the secrets. This thrilling adventure promises excitement, teamwork, and unforgettable moments. Join us for our university's Treasure Hunt Game and embark on an unforgettable journey of discovery and adventure!",
    "Put your knowledge to the test at our university's electrifying General Quiz! Join us for a battle of wits and showcase your expertise in a wide range of topics. From history to science, pop culture to sports, this quiz has it all. Gather your team, sharpen your minds, and get ready to compete against other knowledgeable participants. Don't miss the chance to be part of our university's General Quiz and prove yourself as the ultimate quiz champion",
    "Enhance your digital defenses at our university's immersive Cyber Security Workshop! Dive into the world of cybersecurity as experts guide you through the latest trends, threats, and strategies to protect yourself online. Learn about data privacy, secure coding practices, and cybersecurity best practices. Gain practical knowledge and insights from industry professionals to safeguard your digital life.",
  ];

  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    String hexColor = "#fde582";
    Color color = Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
    Color event_color= Colors.white;

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.5,
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(
              backgroundColor:Colors.black,
              radius: 50,
              child:Image.asset("assets/images/cuklogo.png") ,),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("TechXcel",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(child: Text("FAQ'S",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(child: Text("About us",style: TextStyle(color: color,fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
          ],
        ),

      ),

      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text("TechXcel",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:40,color:color,
          shadows: [
            Shadow(
              blurRadius: 20.0,
              color: color,
              offset: Offset(2.0,2.0),
            )
          ],
        ),
        ),
        ),

      ),
      body: Container(
        child:Column(
          children: [
            Row(
              children: [

              ],
            ),
            CarouselSlider(items: [


                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(





                      decoration: BoxDecoration(

                        image: DecorationImage(
                          image: AssetImage("assets/images/fifa.png",)
                        ),
                        color: Colors.black,
                         borderRadius: BorderRadius.circular(11),
                      ),

                    )
                  ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(




                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(banners[1]),
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),

                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(




                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(banners[2]),
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),

                  )
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(




                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(banners[3]),
                      ),
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(11),
                    ),

                  )
              ),


            ], options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 4/2


            )
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(onPressed: (){

                  }, child: Text("All",style: TextStyle(color: event_color),)),
              TextButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>competitions()));
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: competitions()));
              }, child: Text("Competitions",style: TextStyle(color: event_color),)),





                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>gaming()));


                  }, child: Text("Gaming",style: TextStyle(color: event_color),)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>fun_activities()));
                  }, child: Text("Fun Activities",style: TextStyle(color: event_color),)),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>workshops()));
                  }, child: Text("WorkShops",style: TextStyle(color: event_color),)),
                    // const Padding(padding: EdgeInsets.all(16.0)
                    // ),
                    // FutureBuilder<void>(future: _launched, builder: _launchStatus), ),


                ],
              ),
            ),
            SizedBox(height: 10,),
            Text("Spotlight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: color),),
            SizedBox(height: 10,),
            Container(

              child: Expanded(
                child: GridView.builder(

                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: grid_items.length,
                    itemBuilder: (context,index)=>
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){},
                    child: Container(
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: (){},
                            child: TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>grid_event_description(obj: grid_items[index], description2: grid_itrms_description[index],)));

                              },
                              child: Text("Register Now", style: TextStyle(color: color,fontWeight: FontWeight.bold )),),)
                        ],
                      ),

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(11),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(grid_items[index])
                        ),


                      ),
                      // child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(11),
                      //     child: Image.asset("assets/images/arti.png",fit: BoxFit.fitHeight,)),
                    ),
                  ),
                )


                ),
              ),
            ),
          ],





        ) ,
      ),

    );
  }
}