import 'package:flutter/material.dart';
import 'package:musiq/contants/contant_color.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: color1,
    body: Center(
      child: Text("library",style: TextStyle(color: color2,fontSize: 30),),
    ),
   );
  }
}