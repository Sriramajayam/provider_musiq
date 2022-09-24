import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/podcastscreen/podcast_all.dart';

class MusicPlayerregisterArtist extends StatefulWidget {
  const MusicPlayerregisterArtist({Key? key}) : super(key: key);

  @override
   State<MusicPlayerregisterArtist> createState() => _MusicPlayerregisterArtistState();
}

  class _MusicPlayerregisterArtistState extends State<MusicPlayerregisterArtist> {
   final MprImages=[
    "images/mpr1.png","images/mpr2.png","images/mpr3.png","images/mpr4.png",
    "images/mpr5.png","images/mpr6.png","images/mpr7.png","images/mpr8.png","images/mpr8.png","images/mpr8.png","images/mpr8.png",
   ];
    final MprTitle=[
    "Taylor Swift","Justin Beiber","Ed Shereen","Harry Styles",
    "Justi Timberlake","Drake","Bruno Mars","Eminem","Eminem","Eminem","Eminem",
   ];

 
  double counter=1.0;

  void decrementcount(){
  setState(() {

counter--;
});
}
//  bool mprtitle=false;
int mprtitle=0;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
            backgroundColor: color1,
            body: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: [
                Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: height*0.024,right: width*0.032,left: width*0.032),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("""Select 3 or more of your
favourite artists""",style: GoogleFonts.poppins(
                    textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: color2)
                  ),),
                  Icon(Icons.search,color: color2,size: 36,)
                        ],
                      ),
                    ),
                  
                Padding(
                  padding:EdgeInsets.only(right: width*0.032,
                  left: width*0.032,top: height*0.024 ),
                  child: Column(
                    children: List.generate(11,((index) =>
                     
                      Padding(
                        padding:  EdgeInsets.only(top: height*0.024 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(MprImages[index].toString(),
                            height: 60,width: 60,),
                           Padding(
                             padding:  EdgeInsets.only(left: width*0.017),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text(MprTitle[index].toString(),style: GoogleFonts.poppins(
                                 textStyle: TextStyle(fontSize: 15,
                                fontWeight: FontWeight.w400,color:color2 )
                               ),),
                                 Row(
                                   children: [
                                     Icon(Icons.people,color: color2,),
                                      Text("  ${counter}M followers",style: GoogleFonts.poppins(
                                 textStyle: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w400,color:color2 )
                               ),),
                                     
                                   ],
                                 ),
                              ],
                             ),
                           ),
                           Spacer(),
                           Padding(
                             padding:  EdgeInsets.only(right: width*0.032),
                              child: InkWell(
                              onTap: (() {
                                print(index);
                                setState(() {
                                  // mprtitle=!mprtitle;
                                  if(mprtitle!=index){
                                    print("hello");
                                     Container();
                                  }
                                });
                                decrementcount();
                              }),
                               child:
                               
                                Container(
                                height: height*0.030,
                                width: width*0.154,
                               decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color:  Color.fromRGBO(254, 86, 49, 1),
                               ),
                               child: Center(
                                 child:
                                  Text("Follow",style: GoogleFonts.poppins(
                                  textStyle:TextStyle(fontSize: 14,fontWeight:
                                   FontWeight.w400,color: color2)
                                 ),)

                               
                               ),
                             
                             )
                              // Container(
                              //   height: height*0.030,
                              //   width: width*0.184,
                              //  decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.circular(5),
                              //   color:  Color.fromRGBO(254, 86, 49, 0.7),
                              //  ),
                              //  child: Center(
                              //    child: Text("Unfollow",style: GoogleFonts.poppins(
                              //     textStyle:TextStyle(fontSize: 14,fontWeight:
                              //      FontWeight.w400,color: color2)
                              //    ),),
                              //  ),
                              //  )
                           ),
                           )
                          ],
                        ),
                      )
                    )
                    )
                  ),
                ),
                ],
                
                ),
              ],
            ),
      ),
    );
  }
} 