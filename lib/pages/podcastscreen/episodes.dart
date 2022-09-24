
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/podcastscreen/episode_info.dart';
import 'package:musiq/pages/podcastscreen/podcast.dart';
import 'package:musiq/pages/podcastscreen/music_player.dart';
import 'package:musiq/pages/podcastscreen/havana_music.dart';
import 'episode_info.dart';
class Episodes extends StatefulWidget {
   String text;
  final headline;
  Episodes({Key? key,required this.headline,required this.text}) : super(key: key);

  @override
  State<Episodes> createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
  @override
  
  Widget build(BuildContext context) {
final punchtexts=[
  "A podcast description often also called",
  "podcast summary is a brief blurb of text that "
];
final punchimage=[

  
];
final punchtitle=[
  "Motivation","The furry man","Hard work","Power",
  "Hire power","You have it","New castle","Message for you",
  "MotivWe don’t talk"
];
final punchsubtitle=[
  "Episode 1 - Jay shetty","Episode 2 - Jay shetty",
  "Episode 3 - Jay shetty","Episode 4 - Jay shetty",
  "Episode 5 - Jay shetty",
  "Episode 6 - Jay shetty",
  "Episode 7 - Jay shetty","Episode 8 - Jay shetty",
  "Episode 9 - Jay shetty","Episode 10 - Jay shetty",
];

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
    ));
    return  Scaffold(
      
        backgroundColor: color1,
        body:ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Column(
              
             
              children: [
               Stack(
                 children: [
                   Image.asset(widget.text,height: 200,
                   width: double.maxFinite,
                   fit: BoxFit.fill,),
                   Column(
                     children: [
                       Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration:BoxDecoration(
                          color: color1,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          color1,
                            Colors.transparent.withOpacity(0.01),
                              
            
                          ]),
                       
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 350),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,
                          color: color2,),
                        ),
                      ),
                       ),
                   Container(
                    height: 100,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: color1,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                       
                        Colors.transparent.withOpacity(0.01),
                         color1,
                         
                      ]
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment:MainAxisAlignment.end ,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(widget.headline,style: GoogleFonts.poppins(
                          textStyle:TextStyle(color: color2,fontSize: 25,fontWeight: FontWeight.w600)
                        ),),
                          Text("MusiQ Studios - Jay shetty",style: GoogleFonts.poppins(
                          textStyle:TextStyle(color: color6,fontSize: 15,fontWeight: FontWeight.w600)
                        ),)
                        ]
                        ),
                    ),
                    ),
                   
                   ],
                   ),
                 ],
               )
              ]
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(punchtexts.length, (index) =>
                      Text(punchtexts[index].toString(),style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          color: color6,fontSize: 15,fontWeight: FontWeight.w400
                        )
                      ),)
                      )
                     ),
                     Text("show more",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: color2,
                        fontSize: 15,fontWeight: FontWeight.w500
                      )
                     ),)
                   ],
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 16,left: 16),
                 child: Container(
                  height: 50,
                  width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                color: Colors.red
                 ),
                 child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.play_arrow_rounded,color:color2,),
                    Text("Play",style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        color: color2,fontSize: 15,fontWeight: FontWeight.w400
                      )
                    ),)
                  ],
                 ),
               )
               ),
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Row(
                  children: [
                    Text("36 episodes",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize:22,fontWeight: FontWeight.w600,color: color2
                      )
                    ),),
                    Spacer(),
                    Icon(Icons.swap_vert_rounded,color: color2,),
                    Text("Sort",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize:15,fontWeight: FontWeight.w400,color: color2
                      )
                    ),),
                    
                  ],
                 ),
               ),
               InkWell(
                onTap: (() {
                 
                 String imagess=widget.text;
                  Navigator.push(context, MaterialPageRoute(builder: 
                  (context)=>MainMusicPlayer(allText:imagess,subText: imagess, )));
                }),
                 child: Column(
                  children: List.generate(9, (index) => 
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      
                      children: [Image.asset
                    (widget.text.toString(),height: 60,width: 60,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 13),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            Text(punchtitle[index].toString(),style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,color: color2
                              )
                            ),),
                             Text(punchsubtitle[index].toString(),style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,color: color3
                              )
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                   PopupMenuButton(
                    offset:Offset (0,45),
                    color: Color.fromRGBO(33, 33, 44, 1),
                    icon: Icon(Icons.more_vert_rounded,color: 
                    color2),
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    
                    
                    itemBuilder: (BuildContext context ){
                          return [
                            
                         PopupMenuItem(child:  Text("Play Next",style: 
                         TextStyle(color:color2),)),
                         PopupMenuItem(child: InkWell(
                          onTap: (() {
                            print("123");
                            String mytext=punchtitle[index].toString();
                            String myinfo=widget.text;
                            String myhead=punchsubtitle[index].toString();
                            Navigator.push(context,
                             MaterialPageRoute(builder: (context) => EpisodesInfo(w1image:myinfo ,w1text:mytext ,w2text: myhead,),));
                          }),
                           child: Text("Episode info",style: 
                           TextStyle(color:color2)),
                         ))

                          ];

                    }),
                    
                    ]
               
                    ),
                  ),
               
                             
                  ),
                 ),
               )
          ],
        
        ),
      );
    
  }
}