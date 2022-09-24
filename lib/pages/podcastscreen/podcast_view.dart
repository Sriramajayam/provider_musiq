import 'package:flutter/material.dart';
import 'package:musiq/contants/contant_color.dart';

import 'package:google_fonts/google_fonts.dart';

class PodcastView extends StatefulWidget {
  const PodcastView({Key? key}) : super(key: key);

  @override
  State<PodcastView> createState() => _PodcastViewState();
}

class _PodcastViewState extends State<PodcastView> {
    int selecteddindex=0;
    void tapcontroller (int index){
      setState(() {
        selecteddindex=index;
      });
    }
        PageController _pagecontroller=PageController(
          initialPage: 0,
          keepPage: true,
        );
    
  
 
  @override
  Widget build(BuildContext context) {
    
final listtexts=[
"All","News","Comedy","Technology","TV&flim","All","News","Comedy","Technology","TV&flim",
];
 final listimages=["images/review.jpg",
    "images/banana.jpg","images/MAN.webp",
    "images/job.webp","images/PH31.jpg",
    "images/much.jpg","images/mottai.jpg",
    "images/ph33.jpg","images/PH32.jpg",
  ];
    final TITLE=["Movies Review","Mr.Banana Live Show",
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

    return Scaffold(
       backgroundColor: color1,
        appBar: AppBar(
          backgroundColor:color1,
          elevation: 0,
          title: Text("Podcast",style:GoogleFonts.poppins(
          textStyle:
           TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),fontSize: 30,
           
           fontWeight: FontWeight.w600
           ),),),
           body:  Column(
             children: [
               Container(
          height: 50,
          width: double.maxFinite,

          color: color1,
          child: Container(
                height: 30,
                width: double.maxFinite,
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: List.generate(listtexts.length, (index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: IntrinsicWidth(
                      child: InkWell(
                        onTap: (){
                          print(index);
                          selecteddindex=index;
                          print(selecteddindex);
                          setState(() {
                            selecteddindex;
          
                          });
                        },
                        child: Column(
                          children: [
                            Text(listtexts[index].toString(),
                            style: TextStyle(
                              color: color2
                            ),),
                            Container(
                             height: 2, 
                             color: selecteddindex==index?Colors.red:Colors.transparent 
                            ),
                          
                          
                            
                          ],
                        ),
                      ),
                    ),
                  )
                  ),
                  
                ),
          ),
        
          

        ),
       
  
                
            ],
          ),
        );
      
    
  }
}
