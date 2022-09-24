import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';
class MusicPlayerRegister extends StatefulWidget {
  const MusicPlayerRegister({Key? key}) : super(key: key);

  @override
  State<MusicPlayerRegister> createState() => _MusicPlayerRegisterState();
}

class _MusicPlayerRegisterState extends State<MusicPlayerRegister> {
  @override
  Widget build(BuildContext context) {
   

   final fullname=
   
    TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Color.fromRGBO(255, 255, 255, 0.1),
      filled: true,
      focusColor: color2
     ),
   );
   
   final EmailAdress=TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Color.fromRGBO(255, 255, 255, 0.1),
      filled: true,
      focusColor: color2
     ),
   );
   final UserName=TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Color.fromRGBO(255, 255, 255, 0.1),
      filled: true,
      focusColor: color2
     ),
   );
   final password=TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Color.fromRGBO(255, 255, 255, 0.1),
      filled: true,
      focusColor: color2
     ),
   );
   final ConformPassword=TextField(
     decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      fillColor: Color.fromRGBO(255, 255, 255, 0.1),
      filled: true,
      focusColor: color2
     ),
   );
   
   
   
   
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
            resizeToAvoidBottomInset: false,   

      backgroundColor: color1,
      appBar: AppBar(
        leading: IconButton(onPressed: (){}
        , icon:Icon(Icons.arrow_back_ios_rounded,color: color2,size: 18,)),
        backgroundColor: color1,
        elevation: 0,
        title: Text("New Account",style: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 24,fontWeight: FontWeight.w600,color: color2
          )
        ),),
      ),
      body: 
        Padding(
          padding:  EdgeInsets.only(top: height*0.0032),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
          padding:  EdgeInsets.only(left: width*0.024),
          child: Text("Full Name",style:GoogleFonts.poppins(
            textStyle:TextStyle(
              color: color2,fontSize: 15,fontWeight: FontWeight.w500
            )
          ),),
          ),
          Padding(
          padding:  EdgeInsets.only(left: width*0.016,right: width*0.016,top:height*0.0008),
          child: fullname,
          ),
           Padding(
          padding:  EdgeInsets.only(left: width*0.024
          ,top: height*0.0016),
          child: Text("Email Address",style:GoogleFonts.poppins(
            textStyle:TextStyle(
              color: color2,fontSize: 15,fontWeight: FontWeight.w500
            )
          ),),
          ),
          Padding(
          padding:  EdgeInsets.only(left: width*0.016,right: width*0.016,top:height*0.0008),
          child: EmailAdress,
          ),
           Padding(
          padding: 
           EdgeInsets.only(left: width*0.024, top:height*0.0016),
          child: Text("Username",style:GoogleFonts.poppins(
            textStyle:TextStyle(
              color: color2,fontSize: 15,fontWeight: FontWeight.w500
            )
          ),),
          ),
          Padding(
          padding:  EdgeInsets.only(left: width*0.016,right: width*0.016,top:height*0.0008),
          child: UserName,
          ),
           Padding(
          padding:  EdgeInsets.only(left: width*0.024,top:height*0.016),
          child: Text("Password",style:GoogleFonts.poppins(
            textStyle:TextStyle(
              color: color2,fontSize: 15,fontWeight: FontWeight.w500
            )
          ),),
          ),
          Padding(
          padding: EdgeInsets.only(left: width*0.016,right: width*0.016,top:height*0.008),
          child: password,
          ),
           Padding(
          padding:  EdgeInsets.only(left: width*0.024,top:height*0.016),
          child: Text("Confirm Password",style:GoogleFonts.poppins(
            textStyle:TextStyle(
              color: color2,fontSize: 15,fontWeight: FontWeight.w500
            )
          ),),
          ),
          Padding(
          padding:  EdgeInsets.only(left: width*0.016,right: width*0.016,top:height*0.0008),
          child: ConformPassword,
          ),
          Padding(
          padding: EdgeInsets.only(top:height*0.008,left: width*0.016,right: width*0.016),
          child: Container(
             height: 78,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(255, 255, 255, 0.05),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [
                    Icon(Icons.info,color: Color.fromRGBO(255, 255, 255, 0.6),),
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.008),
                      child: Text("""The password must contain alteast 8 characters,
include 1 uppercase, 1 lowercase,1 number and
1 special character."""
                      ,style:GoogleFonts.poppins(
                                    textStyle:TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.6),
                                      fontSize: 12,fontWeight: FontWeight.w500
                                    )
                                  ),),
                    ),
                  ],
          
                ),
              ),
            ),
          ),
          ),
          Spacer(),
          Padding(
          padding:  EdgeInsets.only(right: width*0.016,left:
           width*0.016,bottom: height*0.054),
          child: Container(
            height: 52,
            decoration: BoxDecoration(
              color: Colors.red,
             borderRadius: BorderRadius.circular(15)
            ),
            child:Center(
              child: Text("Create account",style:GoogleFonts.poppins(
              textStyle:TextStyle(
                color: color2,fontSize: 16,fontWeight: FontWeight.w500
              )
          ),),
            ),
          ),
          )
          ]
          ),
        ),
      );
    
    
  }
}