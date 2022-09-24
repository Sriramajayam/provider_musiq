

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:musiq/contants/contant_color.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/pages/podcastscreen/podcast_all.dart';
import 'package:just_audio/just_audio.dart';

import 'dart:io';


class MainMusicPlayer extends StatefulWidget {
  final allText;
  String subText;
   
  
  
MainMusicPlayer({Key? key,required this.allText,required this.subText}) : super(key: key);

  @override
  State<MainMusicPlayer> createState() => _MainMusicPlayerState();
}


class _MainMusicPlayerState extends State<MainMusicPlayer> {
late AudioPlayer player;
late final playlist;
  @override
void initState() {
  super.initState();
  player = AudioPlayer();
    
                        playlist=ConcatenatingAudioSource(
                      useLazyPreparation: true,
                       shuffleOrder: DefaultShuffleOrder(),
                      children:[
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=1"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=2"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=3"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=4"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=5"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=6"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=7"), ),
                       AudioSource.uri(Uri.parse("https://api-musiq.applogiq.org/api/v1/audio?song_id=8"), ),
                      ] );
                      
                
  
}
@override
void dispose() {
  player.dispose();
  super.dispose();
}
 

bool tapindex=false;
final pointtext=[
  "0.25x","0.5x","0.75x","1.00x","1.25x","1.5x","1.75x","2x"
];
final List <double> values=[];


  @override
  Widget build(BuildContext context) {
    

   
    return  Scaffold(
        backgroundColor: color1,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                    child: Image.asset(widget.subText,height: 420,width:
                     double.maxFinite,fit: BoxFit.fill,
                  ),
                  ),
                 
                  Container(
                    height: 420,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                        Colors.transparent.withOpacity(0.20),
                        color1.withOpacity(1),
                      ])
                    ),
                    child:  Padding(
                        padding: const EdgeInsets.only(right: 350,bottom: 200),
                        child: InkWell(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios_rounded,
                          color: color2,),
                        ),
                      ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(top: 350,left: 60),
                   child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                       
                    
                    Text("Yeah, I don’t know",
            
                    style:
                    GoogleFonts.poppins(
                      textStyle: TextStyle(color: color2
                      )
                    ),
                    ),
                     Text("May be I should change myself",style:
                    GoogleFonts.poppins(
                      textStyle: TextStyle(color: color5
                      )
                    ),
                    ),
                     Text("You are tough to be around sometimes",style:
                    GoogleFonts.poppins(
                      textStyle: TextStyle(color: color3
                      )
                    ),
                    ),
                    
                    ]
                    ),
                 )
            ],
          ),
          Text("Ted Talks Daily",style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color2,fontSize: 17,fontWeight: FontWeight.w500
            )
          ),),
           Text("Episode-215, Virdas",style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: color5,fontSize: 13,fontWeight: FontWeight.w500
            )
          ),),
          Padding(
            padding: const EdgeInsets.only(right: 24,left: 24,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                 onTap: (() {
                   showModalBottomSheet(context: context, 
                  builder: (context)=>numbersheet(context),
                  backgroundColor: Colors.transparent);
                 }),
                  child: Text("1.0x",style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: color2,fontSize: 16,fontWeight: FontWeight.w500
                    )
                  ),),
                ),
              InkWell(
                onTap: (() {
                  showModalBottomSheet(context: context, 
                  builder: (context)=>bulidsheet(context),
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true
                  );
                }),
                
                child: Icon(Icons.dark_mode_rounded
                 ,color: color2,),
              ) 
              ],
            ),
          ),
         


          Padding(
            padding: const EdgeInsets.only(top: 100,left: 24,right: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (() async{
                         await player.seekToPrevious();
                  }),
                  
                  
                  child: Icon(Icons.skip_previous_rounded,color: color2,size: 40,)),
                InkWell(
                  onTap: (() async{
                    await player.seek(Duration(seconds: player.position.inSeconds-10)) ;
                  }),
                  child: Icon(Icons.replay_10_rounded,color: color2,size: 40,
                  )),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red
                  ),
                  child: 
                InkWell
              
                (
                  onTap: () async {
                  print("sha");
                  await player.setAudioSource(playlist, initialIndex: 0, initialPosition: Duration.zero);

                  //  await player.setUrl("https://api-musiq.applogiq.org/api/v1/audio?song_id=8");
                if (tapindex==false) {
                   player.play();
                }
                else if(tapindex==true){

                player.stop();
                }
                   setState(() {
                     tapindex=!tapindex;
                   });
                  },
                 child: tapindex==false?Icon(Icons.play_arrow_rounded,
                 color: color2,size: 40,):
                 Icon(Icons.pause,color: color2,size: 40,)
                )
                ),
                InkWell(
                  onTap: ()async{
                  await player.seek(Duration(seconds:
                   player.position.inSeconds+10));

                    
                  },
                  
                  child: Icon(Icons.forward_10_rounded,color: color2,size: 40,)),
                InkWell(
                  onTap: () async{
           
                  await player.seekToNext();
                  },
                  child: Icon(Icons.skip_next_rounded,color: 
                  color2,size: 40,),
                ),

              ],
              
            ),
          ),
           
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Container(
                  height: 90,
                  width: double.maxFinite,
                  decoration: BoxDecoration(borderRadius: 
                  BorderRadius.only(topLeft:Radius.circular(15),
                  topRight: Radius.circular(15)
                  ),
                  color: Color.fromRGBO(33, 33, 44, 1)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12),
                          child: Text("Up next",style: GoogleFonts.poppins(
                           textStyle: TextStyle(color:
                            Color.fromRGBO(255, 255, 255, 0.7),fontSize: 17,fontWeight: FontWeight.w500) 
                          ),),
                        ),
                       
                         Row(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 10),
                               child: Text("Episode 216 - Motivation",style: GoogleFonts.poppins(
                               textStyle: TextStyle(color: color2,fontSize: 15,fontWeight: FontWeight.w500) 
                        ),),
                             ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3,right: 16),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(context: context,
                               builder:(context)=> upnext(),

                               
                               isScrollControlled: true,
                               backgroundColor: Colors.transparent
                               );
                            },
                            
                            child: Icon(Icons.keyboard_arrow_up_rounded,color: color2,)),
                        )
                           ],
                         ),
                      ],
                    ),
                  ),
                ),
              )
          
            ]
              ),
        ),
      );
    
  }
}
Widget bulidsheet (context){
  var Sleeptext=[
  "None","10 minutes","20 minutes","30 minutes",
  "40 minutes","50 minutes","60 minutes","40 minutes","50 minutes",
  "60 minutes","40 minutes","50 minutes","60 minutes"];
int setstyle=0;



return Container(
  height: 420,
  width: double.maxFinite,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
  topRight: Radius.circular(25)),
  color: color1
),
child:Column(

  children: [

    Padding(
      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: 
         MainAxisAlignment.spaceBetween,
        children: [
            Text("Sleep timer",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: color2,fontSize: 17,fontWeight: FontWeight.w500
              )
            ),),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: color2,))
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 1,
        width: double.maxFinite,
        color: Color.fromRGBO(255, 255, 255, 0.1),
      ),
    ),
    Expanded(
      child: Sleeptimerlist(Sleeptext: Sleeptext),
    )

  ],

) ,

);}

class Sleeptimerlist extends StatefulWidget {
  const Sleeptimerlist({
    Key? key,
    required this.Sleeptext,
  }) : super(key: key);

  final List<String> Sleeptext;

  @override
  State<Sleeptimerlist> createState() => _SleeptimerlistState();
  
}

class _SleeptimerlistState extends State<Sleeptimerlist> {
  int SleepText=0;
  void _Sleeptext (int index){
    setState(() {
      SleepText=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
     physics: BouncingScrollPhysics(),
   
      children:List.generate(widget.Sleeptext.length, (index) =>
      ListTile(onTap: () {
      setState(() {
        SleepText=index;
      });
        print(index);
      },hoverColor: Colors.amber,
        title: Text(widget.Sleeptext[index],style: GoogleFonts.poppins(
          textStyle:TextStyle(
            color: SleepText==index?color2:color6,fontSize: 15,fontWeight: FontWeight.w400
            
          )
        ),),
        tileColor: color1,
        trailing:SleepText==index?Icon(Icons.done,color: color2,)
        :Container(
          height: 0,
          width: 0,
        ),
      )
      )
    );
  }
}


Widget numbersheet (context){
  final pointtext=[
  "0.25x","0.5x","0.75x","1.00x","1.25x","1.5x","1.75x","2x"
];
int setstyle=0;



return Container(

  
  width: double.maxFinite,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
  topRight: Radius.circular(25)),
  color: color1
),
child:Column(

  children: [

    Padding(
      padding: const EdgeInsets.only(top: 24,left: 16,right: 16),
      child: Row(
        mainAxisAlignment: 
         MainAxisAlignment.spaceBetween,
        children: [
            Text("Playback speed",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: color2,fontSize: 17,fontWeight: FontWeight.w500
              )
            ),),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.close,color: color2,))
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Container(
        height: 1,
        width: double.maxFinite,
        color: Color.fromRGBO(255, 255, 255, 0.1),
      ),
    ),
    Expanded(
      child: Numtimerlist(pointtext: pointtext),
    )

  ],

) ,

);}

class Numtimerlist extends StatefulWidget {
  const Numtimerlist({
    Key? key,
    required this.pointtext,
  }) : super(key: key);

  final List<String> pointtext;

  @override
  State<Numtimerlist> createState() => _NumtimerlistState();
}

class _NumtimerlistState extends State<Numtimerlist> {
  int SleepText=0;
  void _Sleeptext (int index){
    setState(() {
      SleepText=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
     physics: BouncingScrollPhysics(),
   
      children:List.generate(widget.pointtext.length, (index) =>
      ListTile(onTap: () {
      setState(() {
        SleepText=index;
      });
        print(index);
      },hoverColor: Colors.amber,
        title: Text(widget.pointtext[index],style: GoogleFonts.poppins(
          textStyle:TextStyle(
            color: SleepText==index?color2:color6,fontSize: 15,fontWeight: FontWeight.w400
            
          )
        ),),
        tileColor: color1,
        trailing:SleepText==index?Icon(Icons.done,color: color2,)
        :Container(
          height: 0,
          width: 0,
        ),
        
      
        
      )
     
   
    
      )
     
    );
  }
}

class upnext extends StatefulWidget {
  const upnext({Key? key}) : super(key: key);

  @override
  State<upnext> createState() => _upnextState();
}

class _upnextState extends State<upnext> {
  final listMytitle=[
    "Episode 217 - The furry man","Episode 218 - Hard Work",
    "Episode 219 - Power","Episode 220 - Hire power",
    "Episode 221 - You have it",
    "Episode 222 - New castle","Episode 223 - Message for you",
    "Episode 224 - Great chain","Episode 225 - Supply",
    "Episode 217 - The furry man","Episode 217 - The furry man",
  ];

   final listMysubtitle=[
    "45mins - Mar 25, 2022","53mins - Mar 27, 2022",
    "1hr - Mar 29, 2022","1hr 2mins - Mar 31, 2022",
    "1hr 25mins - Apr 02, 2022",
    "1hr 1min - Apr 04, 2022","48mins - Apr 06, 2022",
    "35mins - Apr 08, 2022","47mins - Apr 10, 2022",
    "Episode 217 - The furry man","Episode 217 - The furry man",
  ];

  int ourtitle=0;
  
  
  @override
  Widget build(BuildContext context) {
    
  
  
  
return Container(
height: 750,
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: 

  Radius.circular(15),

  ),

  color: color1

),

child: Padding(

  padding: const EdgeInsets.only(right: 16.0,),

  child:   Column(
  
  
  
    crossAxisAlignment: CrossAxisAlignment.start,
  
  
  
    children: [
  
  
  
      Padding(
  
        padding: const EdgeInsets.only(top: 24,left: 16),
  
        child: Row(
  
          children: [
  
            Text("Up next",style: GoogleFonts.poppins(
  
              textStyle: TextStyle(
  
                fontSize: 17,color: Color.fromRGBO(255, 255, 255, 0.7)
  
            
  
              )
  
            
  
            ),),
  
            Spacer(),
  
            InkWell(
  
              onTap: (() {
  
                Navigator.pop(context);
  
              }),
  
              child: Icon(Icons.keyboard_arrow_down,color: color2,))
  
          ],
  
        ),
  
      ),
  
  
  
      Expanded(
  
        
          child: ListView(
          
            shrinkWrap: true,
          
            scrollDirection: Axis.vertical,
          
            physics: BouncingScrollPhysics(),
          
            children: [
          
              // Row(
          
              //   children: [
          
              //     Padding(
          
              //       padding: const EdgeInsets.only(left: 5,top: 40),
          
              //       child: Icon(Icons.play_arrow_rounded,color: Colors.red,size: 35,),
          
              //     ),
          
              //     Padding(
          
              //       padding: const EdgeInsets.only(top: 40),
          
              //       child: Padding(
          
              //         padding: const EdgeInsets.only(left: 16),
          
              //         child: Column(
          
              //           crossAxisAlignment: CrossAxisAlignment.start,
          
              //           children: [
          
              //             Text("Episode 216 - Motivation",style: GoogleFonts.poppins(
          
              //               textStyle: TextStyle(
          
              //                 fontSize: 15,fontWeight: FontWeight.w400,color: color2
          
              //               ),
          
              //             ),),
          
              //              Text("1hr 25mins - Mar 23, 2022",style: GoogleFonts.poppins(
          
              //           textStyle: TextStyle(
          
              //             fontSize: 13,fontWeight: FontWeight.w400,color: color6
          
              //           ),
          
              //         ),),
          
              //           ],
          
              //         ),
          
              //       ),
          
              //     ),
          
                  
          
              
          
              //   ],
          
              // ),
          
            
          
              Column(
          
                crossAxisAlignment: CrossAxisAlignment.start,
          
                children:List.generate(10, (index) =>  
          
                
          
          
          
             
          
                
          
                  Padding(
          
                    padding: const EdgeInsets.only(top: 40),
          
                    child: InkWell(
                      onTap: (() {
                        setState(() {
                          print("hi");
                          ourtitle=index;
                        });
                      }),
                      child: Row(
                              
                        mainAxisAlignment: MainAxisAlignment.start,
                              
                              
                              
                        
                              
                        children: [
                              
                          Padding(
                              
                            padding: const EdgeInsets.only(left: 8),
                              
                            child: ourtitle==index? 
                            Icon(Icons.play_arrow_rounded,color: Colors.red):
                            Icon(Icons.view_stream_rounded,
                            color:color2,size: 25,),
                              
                          ),
                              
                          Padding(
                              
                            padding: const EdgeInsets.only(right: 5),
                              
                            child: Padding(
                              
                              padding: const EdgeInsets.only(left: 21),
                              
                              child: Column(
                              
                                crossAxisAlignment: CrossAxisAlignment.start,
                              
                                children: [
                              
                                  Text(listMytitle[index].toString(),style: GoogleFonts.poppins(
                              
                                    textStyle: TextStyle(
                              
                                      fontSize: 15,fontWeight: FontWeight.w400,color: color2
                              
                                    ),
                              
                                  ),),
                              
                                   Text(listMysubtitle[index].toString(),style: GoogleFonts.poppins(
                              
                                textStyle: TextStyle(
                              
                                  fontSize: 13,fontWeight: FontWeight.w400,color: color6
                              
                                ),
                              
                              ),),
                              
                                ],
                              
                              ),
                              
                            ),
                              
                          ),
                              
                        ],
                              
                      ),
                    ),
          
                  ),
          
                  
          
                
          
                )
          
                 
          
              
          
                
          
              ),
          
            ],
          
          ),
        ),
  
      
  
  
  
    ],
  
  
  
  ),

),

);
}
}