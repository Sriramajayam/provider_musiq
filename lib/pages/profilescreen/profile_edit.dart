
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';



class MyProfilePage extends StatefulWidget {
  const MyProfilePage ({Key? key}) : super(key: key);
  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
  
  
}

class _MyProfilePageState extends State<MyProfilePage> {
 
   

   
  @override
  Widget build(BuildContext context) {
    
    
    return  Scaffold(
        backgroundColor:Color.fromRGBO(22, 21, 28, 1),
        body: SafeArea(child: 
       SingleChildScrollView(
         child: Container(
          height: MediaQuery.of(context).size.height,
           child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12,left: 0),
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.pop(context);
                          
                            // Navigator.pop(context,MaterialPageRoute(builder:
                            //  (context)=>profilepage()));
                        }, 
                        icon: Icon(Icons.arrow_back_ios_new_sharp,
                        size: 18,
                        color: Color.fromRGBO(255, 255, 255, 1),)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: Text("My Profile",style: 
                          GoogleFonts.poppins(
                            textStyle:TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w600,fontSize: 20
                            ) 
                          )
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Stack(
                      children: [
                    
                        //  Image.asset("images/ph30.png",),
                        Padding(
                          padding: const EdgeInsets.only(top: 80,left: 78),
                          child: Positioned(
                            child: 
                        InkWell(
                          onTap: () {
                           showModalBottomSheet(context: context
                           , builder:( context)=>bulidsheet(context),
                           backgroundColor: Colors.transparent,
                           

                           );
                            // clipBehavior: Clip.antiAlias,
                          //  builderckgroundColor: Colors.transparent,: (BuildContext context)
                          },
                          child: Container(
                                 height: 40,
                                 width: 36,
                                 decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                   color: Colors.white,
                                 ),
                                child: CircleAvatar(backgroundColor: Colors.black,
                                radius: 20,
                                child: Icon(Icons.edit,color: Colors.white,),
                                ),
                              ),
                        ),
                           ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33,right: 280,),
                    child: Text("Name",style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                      ),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12,left: 12,top: 5),
                    child: TextField( decoration: InputDecoration(
                      focusedBorder:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)),
                        border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(15)),
                          fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                          filled: true,
                          focusColor: Colors.transparent
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16,right: 238,),
                    child: Text("Username",style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                      ),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 5),
                    child: TextField(
               decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
                fillColor: Color.fromRGBO(255, 255, 255, 0.1),
                filled: true,
               ),
                    ),
                  ),
                  Spacer(),
                    InkWell(
                      onTap: (){
                         setState(()
                          {
                          
                            }); 
                      },
                      child: Padding(
                       padding: const EdgeInsets.only(right: 16,
                       left: 16,bottom: 15),
                       child: Container(
                        height: 47,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(254, 86, 49, 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 11,
                          bottom: 11,left: 150,),
                          child: Text("Save",style: 
                          GoogleFonts.poppins(textStyle: 
                           TextStyle(color:
                            Color.fromRGBO(255,255,255,1),
                            fontSize: 16,fontWeight: FontWeight.w500
                            ),),)
                        ),
                       ),               ),
                    ),
                ],
              ),
         ),
       ),
        )
        );
    
  }
}


 Widget bulidsheet(context){
  File? Image;
  Future pickImage()async{
  try{
    final Image=await ImagePicker().pickImage(source: ImageSource.camera,);
    if(Image==null) return;
    final imagetemp=File(Image.path);
   

  }on PlatformException catch(e){
    print("filed to pick image${e}");
  }

  }
 File? gallery;
 Future pickGallery()async{
  try{
    final gallery=await ImagePicker() .pickImage(source: 
    ImageSource.gallery);
    if(gallery==null) return;
    final imagetemp1=File(gallery.path);
    
  }on PlatformException catch(e){
    print("please click a image");
  }
 }
  return
  Container(
    
    height: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),
      topRight: Radius.circular(25)),
      color: Color.fromRGBO(33, 33, 44, 1),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(11.0),
          child: ListTile(
             title: Text("Profile photo",style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1,),
                  fontWeight: FontWeight.w500,fontSize: 20
              )
            ),),
            trailing:IconButton(onPressed: (){
             
              Navigator.pop(context);
                    }, 
       icon:Icon(Icons.close_rounded,color:
     Color.fromRGBO(255, 255, 255, 1),),
                             ) ,
          ),
        ),
        Divider(
          thickness: 1,
          height: 0,
         
          color: Color.fromRGBO(255, 255, 255, 0.1),),
           ListTile(
                 leading: Icon(Icons.photo_camera,
                 color: Color.fromRGBO(255, 255, 255, 0.7),
                 size: 24,),
                title:InkWell(
                  onTap:(){
                    pickImage();
                    print("hi");
                  },
                 
                
                 
                  
                  child: Text("Open camera",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,color:
                       Color.fromRGBO(255, 255, 255, 1)
                    )
                  ) ,
                               ),
                )
               ),
                InkWell(
                  onTap: (() {
                    pickGallery();

                  }),
                  child: ListTile(
                   leading: Icon(Icons.image,
                   color: Color.fromRGBO(255, 255, 255, 0.7),
                   size: 25,),
                  title:Text("Choose from gallery",style: GoogleFonts.poppins(
                    textStyle:TextStyle(
                      fontSize: 15,fontWeight: FontWeight.w400,color:
                       Color.fromRGBO(255, 255, 255, 1)
                    )
                  ) ,
                               )
                               ),
                ),
                ListTile(
                 leading: Icon(Icons.delete,
                 color: Color.fromRGBO(255, 255, 255, 0.7),
                 size: 25,),
                title:Text("Delete picture",
                style: GoogleFonts.poppins(
                  textStyle:TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w400,color:
                     Color.fromRGBO(255, 255, 255, 1),
                  )
                ) ,
               )
               ),
      ],
    ),
      

  );
 } 