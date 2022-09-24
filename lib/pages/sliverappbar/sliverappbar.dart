import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';

class Slive extends StatefulWidget {
  @override
  _SliveState createState() => _SliveState();
}
class _SliveState extends State<Slive> {
  List<Widget> _getItems()
  {
    List<Container> _cards=[];
    for(int i=1;i<=20;i++)
      {
        _cards.add(Container(
          height: 60,
          color: color1,
          margin: EdgeInsets.all(8.0),
          child: Row(
                children: [
                  Image.asset("images/mpr1.png"),
                  Padding(
                    padding:  EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sunflower",style: GoogleFonts.poppins(
                          textStyle:TextStyle(fontSize: 14,fontWeight: 
                          FontWeight.w400,color: color2)
                        ),),
                         Text("Post malone - Spiderman..",style: GoogleFonts.poppins(
                          textStyle:TextStyle(fontSize: 14,fontWeight: 
                          FontWeight.w400,color: color5)
                        ),),
                        
                      ],
                    ),
                  ),
                  Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5,right: 10),
                          child: Icon(Icons.more_vert,color: color2,),
                        )

                ],
          )
          
            
          ),
        );
      }
    return _cards;
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: color1,
      body: CustomScrollView(
        slivers: [
          
          SliverAppBar(centerTitle: true,backgroundColor: color1,
            snap: true,
            pinned: true,
            floating: true,
            
            expandedHeight:height*0.400 ,
            flexibleSpace:
            FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: width*0.050,bottom: 13),
              title: Text("Trending Hits",style: GoogleFonts.poppins(
               textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w600)
              ),),
            background: Image.asset("images/sliv1.png",
             fit: BoxFit.fill,
            ),),
            leading: IconButton(onPressed: (){},
            icon: Padding(
              padding: const EdgeInsets.only(left:0,right: 90),
              child: Icon(Icons.arrow_back_ios,color: color2,size: height*0.020,),
            ),),

          ),
          SliverList(delegate: SliverChildListDelegate(_getItems()))
        ],
      ),
    );
  }
}