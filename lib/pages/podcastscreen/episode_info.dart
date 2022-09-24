import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
class EpisodesInfo extends StatefulWidget {
  final w1image;
  final w1text;
  final w2text;
  const EpisodesInfo({Key? key,required this.w1image,required this.w1text,
  required this.w2text}) : super(key: key);

  @override
  State<EpisodesInfo> createState() => _EpisodesInfoState();
}

class _EpisodesInfoState extends State<EpisodesInfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: color1,
   home: Scaffold(
    backgroundColor: color1,
   body: Column(
    children: [
      Stack(
        children: [
          Image.asset(widget.w1image,height: 330,fit: BoxFit.fill,width: double.maxFinite,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                height: 170,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: 
                  [
                    color1,
                    Colors.transparent
                  ])
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 340),
                  child: InkWell(
                    onTap: (() {
                      Navigator.pop(context);
                    }),
                    
                    child: Icon(Icons.arrow_back_ios,color:
                   color2,)),
                ),
              ),
               Container(
            height: 170,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: 
                  [
                      Colors.transparent.withOpacity(0.010),
                     color1.withOpacity(0.99),
                 
                   
                  ])
                ),
            
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16,right: 16),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.w1text,style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 25,fontWeight: FontWeight.w600,color: color2
                  )
                ),),
                 Text("MusiQ Studios - Jay shetty",style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w600,color: Color.fromRGBO(255, 255, 255, 0.8)
                  )
                ),),
                 Padding(
                   padding: const EdgeInsets.only(top: 24),
                   child: Text(widget.w2text,style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,color: color2
                    )
                ),),
                 ),
  
                  Text("How the Iphone Changed Everything",style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w500,color: color2
                    )
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text('A podcast description often also called podcast'
                     ' summary) is a brief blurb of text that describes'
                      "your show. You can use it to tell listeners"
                      'anything you want, which makes it a powerful'
                       'tool to convince people to listen.'
                     ,style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,
                      color: color6
                    )
                ),),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text("Duration : 3mins 25 secs",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: 
                        Color.fromRGBO(255, 255, 255, 0.6),
                      )
                  ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Release : 2016",style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w500,color: 
                           Color.fromRGBO(255, 255, 255, 0.6),
                      )
                  ),),
                    ),

                
            
              ],
            ),
          )
            ],
          ),
          
        ],
      )
    ],
   ),
   ),
    );
  }
}