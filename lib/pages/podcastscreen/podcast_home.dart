import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/podcastscreen/music_player_podcast.dart';

import 'package:musiq/pages/profilescreen/profile_page.dart';




class ListView extends StatefulWidget {
  const ListView({Key? key}) : super(key: key);

  @override
  State<ListView> createState() => _ListViewState();

  
}

class _ListViewState extends State<ListView> {
int _selectedintex=0;
static const List<Widget>_widgetoptions=<Widget>[
  ProfilePage(),
];

  void _onitemtapped(int index){
  print(index);
  setState(() {
    _selectedintex=index;

  });
}



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: color1,
        appBar: AppBar(
          backgroundColor:color1,
          elevation: 0,
          title: Text("Podcast",style:GoogleFonts.poppins(
          textStyle:
           TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),fontSize: 30,
           
           fontWeight: FontWeight.w600
           ),),),
           body: PodcastAll(),
           
                 

      )
    );
  }
  
}
          
        
    
    

