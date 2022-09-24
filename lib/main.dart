import 'package:flutter/material.dart';
import 'package:musiq/contants/contant_color.dart';
import 'package:musiq/pages/bottom_naigation_bar.dart';
import 'package:musiq/pages/loginUI/musicplayerregisterartist.dart';
import 'package:musiq/pages/progress_bar/progress_bar.dart';
import 'package:musiq/provider/profile_provider.dart';
import 'package:provider/provider.dart';
void main(){
   runApp(MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context)=>PodcastProvider()),
  
    ],  
      child: MaterialApp(
        color: color1,
        debugShowCheckedModeBanner: false,
        home:Bottom()
       
    
      ),
    );
  }
  }