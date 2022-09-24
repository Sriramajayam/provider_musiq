import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/consFile.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/model/podcast_model.dart';
import 'package:musiq/pages/podcastscreen/episodes.dart';
import 'package:musiq/provider/profile_provider.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;




class PodcastAll extends StatefulWidget {
  const PodcastAll({Key? key}) : super(key: key);

  @override
  State<PodcastAll> createState() => _PodcastAllState();
}

class _PodcastAllState extends State<PodcastAll> {
  int selectedindex=0;
  bool isLoad=true;
  Welcome? welcome;
   PodcastGetApi()async{
    var response = await http.get(
        Uri.parse("https://api-musiq.applogiq.org/api/v1/podcast/?limit=100"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmNkZWZAeC5jb20iLCJleHAiOjE2OTU1Mjk1MTF9.zEinZIr-UaowyJhUHWpjfpBIZqYOt4ctvVLsfLikgp4",
        }); 
        // print(response.statusCode);
        // print(response.body);
        welcome=Welcome
        .fromJson(jsonDecode(response.body.toString()));
        isLoad=false;
        setState(() {
          
        });

         print(welcome!.records[0].id);

        //  var b = jsonDecode(response.body);


        //  print(b);
        //  b["records"]["id"];
      //  var a=  b["records"][0 ]["id"];
        //  print(b["records"][index ]["title"]);




  }
  
  void onitemtapped(int index){
  print(index);
  setState(() {
    selectedindex=index;
  });}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    PodcastGetApi();
  }
 
    @override
    Widget build(BuildContext context) {
      var pro=Provider.of<PodcastProvider>(context);
      
    return isLoad?Center(child:CircularProgressIndicator(),):
    ListView(
     shrinkWrap: true,
     scrollDirection: Axis.vertical,
     children: [
     Padding(
     padding: const EdgeInsets.only(left: 16),
           child: InkWell(
            onTap: () {
            //  PodcastGetApi();
            },
             child: Text("Recentlty Played",style:GoogleFonts.poppins(
              textStyle:
              TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              fontSize: 24,
              fontWeight: FontWeight.w500
              ),),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
            child: ListView(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection:Axis.horizontal,
               children:   List.generate(welcome!.records.length, (index) =>  Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: InkWell(
                  onTap: () {
                  String ph25=con1image[index].toString();
                  String ph24=con1Title[index].toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => 
                 Episodes(text:ph25,headline: ph24,)));
                  },
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      ClipRRect(
                borderRadius: BorderRadius.circular(15),
               child: SizedBox.fromSize(
                size: Size.fromRadius(60),
                  child:  Image.network(generateImageUrl(welcome!.records[index].id.toString(), welcome!.records[index].title),fit: BoxFit.cover,),
      ),

    ),
                      //  Image.network("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png"),
                      //  Padding(
                      //    padding: const EdgeInsets.only(top: 4),
                      //    child: Text(recentlyPlayed[index].PodCastTitle,style:
                      //      GoogleFonts.poppins(
                      //     textStyle:TextStyle(
                      //       color:color2,
                      //       overflow: TextOverflow.ellipsis
                      //  ),
                      //      )
                      //    )
                      //      ),
                      //  Padding(
                      //    padding: const EdgeInsets.only(top: 2),
                      //    child: Text(recentlyPlayed[index].PodCastSubTitle,
                      //      style: GoogleFonts.poppins(
                      //       textStyle: TextStyle(
                      //         color:color3,
                      // fontSize: 12,fontWeight: FontWeight.w400
                      //       )
                      //      ),
                      //      ),
                      //  ),
                     
                     
                     ],
                   ),
                 ),
               ),
               )
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10),
           child: Text16,
         ),
         Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: List.generate(TopPodcast.length, (index) =>  Padding(
                 padding: const EdgeInsets.only(left: 8),
                 child: InkWell(
                  onTap: () {
                    String ph24=con2image[index].toString();
                     String ph25=con3Title[index].toString();
                   Navigator.push(context, MaterialPageRoute(builder: (context) => 
                 Episodes(text:ph24,headline: ph25,),));
                  },
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      ClipRRect(
                borderRadius: BorderRadius.circular(15),
               child: SizedBox.fromSize(
                size: Size.fromRadius(60),
                  child:  Image.network(TopPodcast1[index].podCastImage,fit: BoxFit.cover,),
      ),

    ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(TopPodcast[index].PodCastTitle,style:
                           GoogleFonts.poppins(
                          textStyle:TextStyle(
                            color:color2,
                            overflow: TextOverflow.ellipsis
                       ),
                           )
                         )
                           ),
                       Padding(
                         padding: const EdgeInsets.only(top: 2),
                         child: Text(TopPodcast[index].PodCastSubTitle,
                           style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color:color3,
                      fontSize: 12,fontWeight: FontWeight.w400
                            )
                           ),
                           ),
                       ),
                     ],
                   ),
                 ),
               ),
               )
             ),
           ),
         ),
        Padding(
          padding: const EdgeInsets.only(top: 0,left: 16),
          child: Text23,
        ),
        Container(
          height: 280,
          width: double.maxFinite,
          child: ListView(
            physics: BouncingScrollPhysics(),
             shrinkWrap: true,
               scrollDirection:Axis.horizontal,
             children:List.generate(Artist.length, (index) => 
             Padding(
               padding: const EdgeInsets.only(left: 16,),
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Image.asset(Artist[index].ArtistImage,height: 240,width: 190,),
                   SizedBox(height: 8,),
                   Text(Artist[index].ArtistTitle,style: TextStyle(color: color2),)
                 ],
               ),
             ),
             )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16,top: 10),
          child: Text26,
        ),
        Padding(
           padding: const EdgeInsets.only(left: 16,top: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: List.generate(TopPodcast1.length, (index) =>
              
               
                InkWell(
                  onTap: (() {
                      String ph23=con3image[index].toString();
                       String ph24=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   Episodes(text:ph23,headline: ph24,),));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                     children: [
                       Column(
                         children: [
                           Image.asset(TopPodcast1[index].podCastImage),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(TopPodcast1[index].PodCastTitle,style:
                         GoogleFonts.poppins(
                        textStyle:TextStyle(
                          color:color2,
                      fontSize: 12,fontWeight: FontWeight.w400)
                        )
                         )
                         ,),
                       
                       Padding(
                         padding: const EdgeInsets.only(top: 2),
                         child: Text(TopPodcast1[index].PodCastSubTitle,
                         style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color:color3,
                    fontSize: 12,fontWeight: FontWeight.w400
                          )
                         ),
                         )
                       ),
                     ],
                                 ),
                  ),
                ),
               
               
               )
              
               
             ),
           ),
         ),
        
        
         Padding(
           padding: const EdgeInsets.only(left: 16,bottom: 10),
           child: Text16,
         ),
          Padding(
           padding: const EdgeInsets.only(left: 16),
           child: Container(
            height: 180,
            width: double.maxFinite,
             child: ListView(
              physics: BouncingScrollPhysics(),
               shrinkWrap: true,
               scrollDirection:Axis.horizontal,
               children: List.generate(3,(index)=>
               InkWell(
                onTap: ((){
                  String ph23=con4image[index].toString();
                       String ph24=con3Title[index].toString();
                     Navigator.push(context, MaterialPageRoute(builder: (context) => 
                   Episodes(text:ph23,headline: ph24,),));
                }),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 8),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset
                       (TopPodcast2[index].podCastImage),
                      Padding(
                         padding: const EdgeInsets.only(top: 4),
                         child: Text(TopPodcast2[index].PodCastTitle,style:
                         GoogleFonts.poppins(
                        textStyle:TextStyle(
                          color:color2,
                      fontSize: 12,fontWeight: FontWeight.w400)
                        )
                         )
                         ,),
                       
                       Padding(
                         padding: const EdgeInsets.only(top: 2),
                         child: Text(TopPodcast2[index].PodCastSubTitle,
                         style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color:color3,
                    fontSize: 12,fontWeight: FontWeight.w400
                          )
                         ),
                         )
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           ),
         ),
    
          )
      ],
    );
  }
}
