import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';

class MusicPlayerPod extends StatefulWidget {
  const MusicPlayerPod({Key? key}) : super(key: key);

  @override
  State<MusicPlayerPod> createState() => _MusicPlayerPodState();
  
}
class _MusicPlayerPodState extends State<MusicPlayerPod> {

bool setindex=false;
  @override
  Widget build(BuildContext context) {
     final height=MediaQuery.of(context).size.height;
 final width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: color1,
      body: Column(
        children:[
              Stack(
                children: [
                  Image.asset("images/mpp1.jpg",height: height*0.470,width:double.maxFinite,fit: BoxFit.cover,),
                  Column(
                    children: [
                      Container(
                        height: height*0.258,
                        width: width*double.maxFinite,
                         decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          color1.withOpacity(0.20),
                          Colors.transparent.withOpacity(0.01),
                          
                        ]
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: width*0.048,right: width*0.048),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_back_ios,color: color2,),
                          Icon(Icons.more_vert_rounded,color: color2,),
                        ],
                      ),
                    ),
                        
                      ),
                      Container(
                        
                    height: height*0.258,
                    width: width*double.maxFinite,
                    decoration: BoxDecoration(
                     
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent.withOpacity(0.01),
                          color1.withOpacity(0.99)
                        ]
                        ),
                    ),

                    child: Column(
                      children: [
                        SizedBox(height: 95,),
                        Center(
                          child: Text(
                            
                             """
             Waste time with a masterpiece, 
       don't waste time with a masterpiece (huh)
             You should be rollin' with me,""",style: TextStyle(color: color6,fontSize:17, ),),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
                   
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top: height*0.020),
                child: Text("Cake by the ocean",style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w500,color: color2,
                  )
                ),),
              ),
          Padding(
            padding:  EdgeInsets.only(top: height*0.002),
            child: Text("DNCE",style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.w400,color: color5,
                    )
                  ),),
          ),  
          Padding(
            padding:  EdgeInsets.only(left: width*0.048,right: width*0.048,top: height*0.013),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(  Icons.shuffle,color: color2,),
              Icon(  Icons.favorite_rounded,color: color2,),
              ],
            ),

          ),
          Padding(
            padding:  EdgeInsets.only(top:height*0.115,left: width*0.048,right: width*0.048,),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Icon(  Icons.playlist_add,color: color2,),
                Icon(  Icons.skip_previous_rounded,color: color2,),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.red
                  ),
                  child: InkWell(
                    onTap: (() => setState(() {
                       
                       setindex=!setindex;
                       })),
                    child: 
                    setindex==false?
                    Icon(  Icons.play_arrow_rounded,color: color2,):Container(),
                    )
                    ),
                Icon(  Icons.skip_next_rounded,color: color2,),
                Icon(  Icons.repeat,color: color2,),
                ],
              ),
          ),
          Spacer(),
          Container(
            height: height*0.120,
          width: width*double.maxFinite,
       decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(33, 33, 44, 1),
       ),
       child:
         Padding(
           padding:  EdgeInsets.only(right: width*0.048,left: width*0.048),
           child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding:  EdgeInsets.only(top:height*0.010),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Up next",style: GoogleFonts.poppins(
                     textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color.fromRGBO(255, 255, 255, 0.7)) ,
                    ),),
                    Icon(Icons.expand_less_rounded,color:Color.fromRGBO(255, 255, 255, 0.7) ,)
                  ],       ),
               ),
                 Padding(
                   padding:  EdgeInsets.only(bottom: height*0.020),
                   child: Text("Wolves - Selena Gomez",style: GoogleFonts.poppins(
               textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: color2) ,
              ),),
                 ),
             ],
           ),
         ),
       ),
          
        ]
      ),
    );
  }
}