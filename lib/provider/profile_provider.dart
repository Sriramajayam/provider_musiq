import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:musiq/pages/model/podcast_model.dart';



class PodcastProvider extends ChangeNotifier {
  PodcastGetApi(int index,String title)async{
    var response = await http.get(
        Uri.parse("https://api-musiq.applogiq.org/api/v1/podcast/?limit=100"),
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhYmNkZWZAeC5jb20iLCJleHAiOjE2OTU1Mjk1MTF9.zEinZIr-UaowyJhUHWpjfpBIZqYOt4ctvVLsfLikgp4",
        }); 
        // print(response.statusCode);
        // print(response.body);
        Welcome welcome=Welcome
        .fromJson(jsonDecode(response.body.toString()));
        // print(welcome["records"]["id"])

         var b = jsonDecode(response.body);

        //  print(b);
        //  b["records"]["id"];
       var a=  b["records"][0 ]["id"];
        //  print(b["records"][index ]["title"]);




  }

  // profileGetApi() async {
  //   var id = await secureStorage.read(key: "id");
  //   var accessToken = await secureStorage.read(key: "access_token");
  //   var response = await http.get(
  //       Uri.parse("https://api-musiq.applogiq.org/api/v1/users/${id}"),
  //       headers: {
  //         "Content-Type": "application/json",
  //         "Authorization": "Bearer ${accessToken}",
  //       });
  //   var b = jsonDecode(response.body.toString());
  //   fullName.value = b["records"]["fullname"];
  //   userName.value = b["records"]["username"];
  //   notifyListeners();
  // }
//   profileUpdateApi() async {
//     isLoad = true;
//     var id = await secureStorage.read(key: "id");
//     var accessToken = await secureStorage.read(key: "access_token");
//     var response = await http.put(
//       Uri.parse("https://api-musiq.applogiq.org/api/v1/users/${id}"),
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer ${accessToken}",
//       },
//       body: jsonEncode({
//         "fullname": fullName.value,
//         "username": userName.value,
//         "image": getImageValue
//       }),
//     );
//     isLoad = false;
//     notifyListeners();
//   }

//  updatedAPI() {
//     SignupResponse == profileUpdateApi();
//     notifyListeners();
//   }

//   profileDeleteApi() async {
 
//     // print(userName.value);
//     var id = await secureStorage.read(key: "id");
//     var accessToken = await secureStorage.read(key: "access_token");
//     var response = await http.delete(
//       Uri.parse("https://api-musiq.applogiq.org/api/v1/users/${id}"),
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer ${accessToken}",
//       },
//     );
  
//     notifyListeners();
//   }

//   void deleted() {
//     SignupResponse == profileDeleteApi();
//   }
}
