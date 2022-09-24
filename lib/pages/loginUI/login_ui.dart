import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musiq/contants/contant_color.dart';                                                                                                                                                                                                                                                                
class LoginUI extends StatefulWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  State<LoginUI> createState() => _LoginUIState();
  
}

class _LoginUIState extends State<LoginUI> {
  bool _PasswordVisible=false;

  TextEditingController _myText=TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    print(height);
    final _formkey=GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: color1,
    body: SingleChildScrollView(
      child: Container(
        color: color1,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
               Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: Column(
                      children: [
    
                        
                           Stack(
                             children: [
                               Container(
                                 child: Image.asset("images/login.jpg",
                                 fit: BoxFit.cover,
                          height: height,),
                               ),
                          Column(
                            children: [
                              Container(
                                height: height*0.58,
                                width: width*1,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    
                                    begin: Alignment.topCenter,
                                  end:  Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      color1
                                    ]
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 240 ,left: 24),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Image.asset("images/plogo.png"),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 34),
                                        child: Text("Welcome Back",style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 25,fontWeight: FontWeight.w600,
                                            color: Colors.white
                                          )
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 46),
                                        child: Text("Email Address",style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              fontSize: 15,fontWeight: FontWeight.w500,
                                              color: Colors.white
                                            )
                                          ),),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                           
                          Container(
                            color: color1,
                            height: height*0.42,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 16,left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextField(
             
                                    decoration: InputDecoration(
                                      errorText:_myText.text.length>8&&_myText.text.length<8?"Please Enter Above 8 Characters" :""
                                      ,errorStyle: TextStyle(color: Colors.red),
                                      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),
                                      borderSide:BorderSide(
                                        color: color1
                                      )
                                      ),
    
                                     
                                      
                                 border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  
                               
                                 ) , 
                                 fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                 filled: true ,
                                 focusColor: color2 ,
                                    ),
                                    controller: _myText,
                                    
                                 
                                   
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7,top: 16),
                                    child: Text("Password",style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.w500,
                                                color: Colors.white
                                              )
                                            ),),
                                  ),
                          
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: TextFormField(
                                            
                                              style: TextStyle(color: color2),
                                              obscureText:!_PasswordVisible,
                                              validator:(value){
                                                if(value==null||value.isEmpty){
                                                       return "";
                                                }
                                              },
                                    decoration: InputDecoration(
    
                                      errorText: "ram",errorStyle: TextStyle(color: color2),
                                    focusColor: color2,
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: color1),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  
                                      
                                      suffixIcon: InkWell(
                                        onTap: () {
                                         setState(() {
                                         _PasswordVisible=!_PasswordVisible;
                                         });
                                        },
                                        child: Icon(_PasswordVisible?
                                          Icons.visibility:
                                          Icons.visibility_off_rounded
                                          ,color: color2,
                                        )
                                        ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                 border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  // borderSide: BorderSide(color: color1)
                                
                               
                                 ) , 
                                 fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                                 filled: true  ,
                            
                                    ),
                                   
              
                                    
                                    
                                    
                                  ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 8),
                                            child: Align(
                                              alignment:Alignment.topRight,
                                              child: Text("Forgot Password ?",style: GoogleFonts.poppins(
                                                textStyle: TextStyle(
                                                  fontSize: 15,fontWeight: FontWeight.w500,
                                                  color: Colors.white
                                                )
                                              ),),
                                            ),
                                          ),
                                         Spacer(),
                                      
                                          Container(
                                            height: 52,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Color.fromRGBO(254, 86, 49, 1)
                                            ),
                                            child: Center(
                                              child: Text("Log In",style: 
                                              GoogleFonts.poppins(
                                                textStyle:TextStyle(
                                                  color: color2,fontSize: 15,fontWeight: FontWeight.w500
                                                )
                                              ),),
                                            ),
                                          )
                                ],
                              ),
                            ),
                           
                          ),
                           ],
                          ),
                             ],
                           ),
                        
                      ],
                    ),
                    
                  ),
                ],
              
            ),
          ],
        ),
      ),
    )
    );  
  }
}
