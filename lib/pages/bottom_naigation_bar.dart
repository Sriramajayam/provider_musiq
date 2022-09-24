import 'package:flutter/material.dart';
import 'package:musiq/contants/contant_color.dart';


import 'package:musiq/pages/home_screen/home.dart';

import 'package:musiq/pages/library_screen/library.dart';

import 'package:musiq/pages/podcastscreen/podcast.dart';

import 'profilescreen/profile_page.dart';
import 'package:google_fonts/google_fonts.dart';

 


class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);


  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedintex=0;
static  List<Widget>_widgetoptions=<Widget>[
 
    HomePage(),
    LibraryPage(),
   PodCastMainScreen(),
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
    return 
     
    
       Scaffold(
          backgroundColor: color1,
          body: Center(
            child:_widgetoptions.elementAt(_selectedintex) ,
          ),
            bottomNavigationBar: 
          BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(27, 100, 100, 100),
            items: <BottomNavigationBarItem>
          [
            BottomNavigationBarItem(
             icon: Column(
              children: [
               CircleAvatar(
                backgroundColor: _selectedintex==0?Colors.red:Colors.transparent,
               
                child: Icon(Icons.home,color: _selectedintex==0?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
               ),
                Text("Home",style: 
                GoogleFonts.poppins(textStyle:
                TextStyle(
                  color: _selectedintex==0?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35) ),),
                )
              ],
             ),
             label: ""
            ),
          
           BottomNavigationBarItem(
             icon: Column(
              children: [
                CircleAvatar(
                  backgroundColor: _selectedintex==1?Colors.red:Colors.transparent,
                  child: Icon(Icons.music_note,color: _selectedintex==1?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
                ),
                Text("Library",style:
                GoogleFonts.poppins(textStyle:
                 TextStyle(
                   color: _selectedintex==1?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
                )
              ],
             ),
             label: ""
            
              
            
            ),
          
           BottomNavigationBarItem(
             icon: Column(
              children: [
               CircleAvatar(
                backgroundColor: _selectedintex==2?Colors.red:Colors.transparent,
                child: Icon(Icons.podcasts,color: _selectedintex==2?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),
               ),
                
                Text("Podcost",style: 
                GoogleFonts.poppins(textStyle: 
                TextStyle(
                 color: _selectedintex==2?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)),),
                )
              ],
             ),
             label: ""
            
              
            
            ),
           
          
            BottomNavigationBarItem(
             icon: Column(
              children: [
                CircleAvatar(
                  backgroundColor:_selectedintex==3? Colors.red:Colors.transparent,
                  child: Icon(Icons.person,color: _selectedintex==3?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35),),
                ),
               
                Text("Profile",style:
                GoogleFonts.poppins(textStyle: 
                 TextStyle(color: _selectedintex==3?
              Colors.white:Color.fromRGBO(255, 255, 255, 0.35)
                  ),),
                )
              ],
             ),
             label: ""
            
              
            
            ),
           
            ],
          
            currentIndex: _selectedintex,
            selectedItemColor: Colors.yellow,
            unselectedItemColor: Color.fromARGB(88, 179, 49, 49),
            
            
            onTap: _onitemtapped,
            
            
            ),
       );
    
    
    
    
  }
  
}
          
        
    
    


   