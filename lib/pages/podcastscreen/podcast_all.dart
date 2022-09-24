import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/podcastscreen/music_player.dart';


class MyMaterialApp extends StatefulWidget {
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  State<MyMaterialApp> createState() => _MyMaterialAppState();
}

class _MyMaterialAppState extends State<MyMaterialApp> {

  @override
  Widget build(BuildContext context) {
  
  
    return 
       SafeArea(
        child: Scaffold(
        body:MyPageView()
        ),
      );
  }
}

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
    final listimages=["images/review.jpg",
    "images/banana.jpg","images/MAN.webp",
    "images/job.webp","images/PH31.jpg",
    "images/much.jpg","images/mottai.jpg",
    "images/ph33.jpg","images/PH32.jpg",
  ];
    final TITLE=["Movies Revie","Mr.Banana Live Show",
    "The Mindvalley","Blow your mind",
    "Holy Shift","Mucho Success",
    "Tehran Sens","That’s What She Said",
    "Business Matter",

    ];
    final SUBTITLE=[
      "James smith","The WeekEnd",
      "Vishen Lakhiani","Dua lipa",
      "Heather hubb","Jose Pinero",
      "Arash","Richard Scott",
      "Joseph Williams",
      
    ];
  @override
  Widget build(BuildContext context) {
    return
         ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
          Padding(
         padding: const EdgeInsets.only(top: 28,left: 16,right: 16),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text("Artists",style: GoogleFonts.poppins(
             textStyle:TextStyle(
               color: color2,fontSize: 17,fontWeight: FontWeight.w500
             )
           ),),
           Text("View ALL",style: GoogleFonts.poppins(
             textStyle:TextStyle(
               color: Colors.red,fontSize: 15,
               fontWeight: FontWeight.w400
             )
           ),)
          ],
         ),
          ),
          containerWidget(),
          Padding(
         padding: const EdgeInsets.only(left: 16,right: 16),
         child: Text("New In This Category",style: GoogleFonts.poppins(
           textStyle: TextStyle(
             fontSize: 17,fontWeight: FontWeight.w500,color: color2
           )
         ),),
          ),
          
            
          
           ListView(
           scrollDirection: Axis.vertical,
           shrinkWrap: true,
           physics: BouncingScrollPhysics(),
           children:List.generate(9, (index) =>  
           Padding(
             padding: const EdgeInsets.only(left: 16,top: 16,),
             child: InkWell(
               onTap: (() {
                 String po2= listimages[index];
                 // Navigator.push(context, MaterialPageRoute(builder: 
                 // (BuildContext context)=>pages0(poo2: po2,huge: po2,)));
                     Navigator.push(context, MaterialPageRoute(builder: 
               (context)=>MainMusicPlayer(allText:po2,subText: po2)));
                
               }),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
               ClipRRect(child: Image.asset(listimages[index],height: 60,width: 60,
               ),
               borderRadius: BorderRadius.circular(12),),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 12),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(TITLE[index],style: GoogleFonts.poppins(
                         textStyle: TextStyle(
                           color: color2,fontSize: 15,fontWeight: FontWeight.w400
                         )
                       ),),
                        Text(SUBTITLE[index],style: GoogleFonts.poppins(
                     textStyle: TextStyle(
                       color: color3,fontSize: 15,fontWeight: FontWeight.w400
                     )
                   ),)
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.only(right: 48),
                 child: Icon(Icons.play_arrow_rounded,color: color2 ,size: 25,),
               ),
                Icon(Icons.more_vert_rounded,color: color2 ,size: 25,),
               ],
               ),
             ),
           ),
         )
         ),
            
            ],
          
          );
  }
}
class containerWidget extends StatelessWidget {
  const containerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      color: color1,
      
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16,top: 16),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [
               Column(
                 children: [
                   Image.asset("images/ph7.png"),
                   Text("Jay Shetty",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,
                      color: color2
                    )
                   ),)
                 ],
               ),
                 Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Column(
                     children: [
                       Image.asset("images/ph7.png"),
                       Text("Jay Shetty",style: GoogleFonts.poppins(
                      textStyle:TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w400,
                        color: color2
                      )
                     ),)
                     ],
                   ),
                 ),
                
            ],
          ),
        ),
      
    );
  }
}