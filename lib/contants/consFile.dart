import 'package:flutter/material.dart';
import 'package:musiq/pages/model/model.dart';
generateImageUrl(String id,String title){
 var url="https://admin-api-musiq.applogiq.org/api/v1/public/podcast/${title[0].toUpperCase()}/${title}/image/${id}.png";
 return url;
}

List<PodCastModel> recentlyPlayed=[
PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png",
 "Safari ", "Single - selena go.."),
PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast_1/image/1.png", "Safari", "Single - serena"),
PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podacst_3/image/3.png", "Reputation", "Single - Taylor Sw.."),
PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
];
List<PodCastModel> TopPodcast=[
  PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", 
  "Monday Podcast", "Morning FM"),
  PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Coversation With c..", "The katie carlson.."),
  PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Office Ladies", "Earwolf FM"),
  PodCastModel("https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
];
List<PodCastModel> TopPodcast1=[
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Coversation With c..", "The katie carlson.."),
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Office Ladies", "Earwolf FM"),
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
];

List<PodCastModel> TopPodcast2=[
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
  PodCastModel(  "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Coversation With c..", "The katie carlson.."),
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Office Ladies", "Earwolf FM"),
  PodCastModel( "https://admin-api-musiq.applogiq.org/api/v1/public/podcast/P/podcast2/image/2.png", "Monday Podcast", "Morning FM"),
];
List<PodcastArtist> Artist=[
  PodcastArtist( "images/ph7.png", "Joy Shetty",),
  PodcastArtist(  "images/vir.png", "VirDas"),
 
];


final con3image=[
  "images/Ph19.png", "images/ph20.png", "images/pic.png",
];

final con3Title=[
  "Monday Podcast", "Coversation ", "Office Ladies",
];

final con3Subtitle=[
  "Morning FM", "The katie carlson..", "Earwolf FM",
];

final con2image=[
  "images/ph4.png", "images/ph5.png", "images/pic2.png",
];
final con1image=[
  "images/ph1.png", "images/ph3.png", "images/pic3.png",
];
final con1Title=[
  "Selfish love", "Safari ", "Reputation",
];
final con4image=[
  "images/pic11.png", "images/ph23.png", "images/pic12.png",
];




