import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';

class HomePage extends StatefulWidget {
const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool Music_integ=false;
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.height;
    return Scaffold(
    backgroundColor: color1,
    body: SafeArea(
      child: Column(
        children: [
          SizedBox(height: 350,),
          Text("HOME",style: TextStyle(color: color2,fontSize: 30),),
          Spacer(),
          Container(
            color: Color.fromRGBO(27, 27, 35, 1),
      
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 17,bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/mpimage.png",height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Cake by the ocean",style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize:14,fontWeight: FontWeight.w400,
                          color: color2
                          )
                        ),
                        ),
                        Text("DNCE",style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize:11,fontWeight: FontWeight.w400,
                      color: color6
                      )
                    ),
                    )
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.skip_previous_rounded,color: color2,size: 32,),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red
                      ),
                      child: InkWell(
                        onTap: (){
                       setState(() {
                          Music_integ=!Music_integ;
                       });
                        },
                     
                         child:Music_integ==false?
                          Icon(Icons.play_arrow_rounded,color: color2,size: 32,
                         ): Icon(Icons.pause,color: color2,size: 32,)
                      )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 22),
                    child: Icon(Icons.skip_next_rounded,color: color2,size: 32,),
                  ),

                  
                ],
              ),
            ),
          ),
         Container(
          height: 1,
          color: color7,
         )
        ],
      ),
    ),

   );
    
  }
}