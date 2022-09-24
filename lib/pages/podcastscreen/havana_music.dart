

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
// import 'package:podcostmusicapp/contants/contant_color.dart';

class HavanaMusic extends StatefulWidget {
  const HavanaMusic({Key? key}) : super(key: key);

  @override
  State<HavanaMusic> createState() => _HavanaMusic();
}

class _HavanaMusic extends State<HavanaMusic> {
  final listtexts=[
    "Single","Duration : 3mins 25 secs",
    "Release : 2016",
    "Label : Universal studios",
  ];

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: color1,
      home: SafeArea(
        child: Scaffold(
          backgroundColor:color1,
          body: 
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Column(
                      children: [
                        Stack(
                         children: [
                           Image.asset("images/Havena1.jpg",
                           fit: BoxFit.cover,
                           height: 350,width: double.maxFinite,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Container(
                        height:175,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                       gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter, colors: [
                          Colors.transparent,
                         color1.withOpacity(0.5)
                        ]
                       ),
                        ),
                        child:Padding(
                          padding: const EdgeInsets.only(bottom: 56,right: 365,left: 5),
                          child: IconButton(onPressed: (){},
                           icon: Icon(Icons.arrow_back_ios,color: color2,
                           size: 18,)),
                        )
                                ),
                                Container(
                        height:176,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                       gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter, colors: [
                          Colors.transparent,
                         color1.withOpacity(0.99)
                        ]
                       ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150,left: 16),                                                        
                          child: Text("Havana",style: GoogleFonts.poppins(
                            textStyle: TextStyle(color: color2,
                            fontSize: 22,fontWeight: FontWeight.w600
                
                            )
                          ),),
                        ),
                                ),
                              ],
                            )
                  
                         ],
                   ),
                      ],
                    ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(listtexts.length, (index) => 
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 10),
                  child: Text(listtexts[index].toString(),style: GoogleFonts.poppins(
                    textStyle:TextStyle(color: Color.fromRGBO
                    (255, 255, 255, 0.6)),fontSize: 15,fontWeight: 
                    FontWeight.w400)
                  ),),
                ),
                
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16,top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                  Text("Artists",style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: color2,fontSize: 18,fontWeight: FontWeight.w500,
                    )
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Row(
                      children: [
                        Container(
                          height: 230,
                          width: 156,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: color1
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("images/ph35.png"),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text("Camila cabello",style: GoogleFonts.poppins(
                                  textStyle:TextStyle(color: color2,fontSize: 15,
                                  fontWeight: FontWeight.w400)
                                ),),
                              )
                            ],
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(left: 16),
                           child: Container(
                            height: 230,
                            width: 156,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: color1
                            ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset("images/ph36.png"),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: Text("Harry styles",style: GoogleFonts.poppins(
                                textStyle:TextStyle(color: color2,fontSize: 15,
                                fontWeight: FontWeight.w400)
                              ),),
                                    )

                                ],
                              ),
                        ),
                         )
                      ],
                    ),
                  )
               ],
                
                
                  ),
                )
              ]
               ),
          )
      
            
        )
           
          )
          );
      
    
  }
}