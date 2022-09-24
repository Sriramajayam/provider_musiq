import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomProgressBar extends StatefulWidget {
  const CustomProgressBar({Key? key}) : super(key: key);

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 5,height: 20,decoration: progressDecoration(),),

            Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 14,decoration: progressDecoration(),),
Container(width: 5,height: 14,decoration: progressDecoration(),),
          Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),
          Container(width: 5,height: 24,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),

         Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 14,decoration: progressDecoration(),),
Container(width: 5,height: 14,decoration: progressDecoration(),),
          Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),
          Container(width: 5,height: 24,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),

            Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 14,decoration: progressDecoration(),),
Container(width: 5,height: 14,decoration: progressDecoration(),),
          Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),
          Container(width: 5,height: 24,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),

           Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 14,decoration: progressDecoration(),),
Container(width: 5,height: 14,decoration: progressDecoration(),),
          Container(width: 5,height: 18,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),
          Container(width: 5,height: 24,decoration: progressDecoration(),),
          Container(width: 5,height: 20,decoration: progressDecoration(),),

           
         
        ],
      )),
    );
  }

  BoxDecoration progressDecoration() => BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color(0xFFFE5631));
}