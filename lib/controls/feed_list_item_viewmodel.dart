import 'package:flutter/material.dart';

class FeedListItemViewModel {
  // Title of the feed
  final String title;
  // Subtitle of the feed
  final String subtitle;
  // Cover image url of the feed
  final String image;
  // background and accent color of the feed
  final Color backgroundColor;

  // Constructor
  FeedListItemViewModel(
      {this.title, this.subtitle, this.image, this.backgroundColor});

  // Gets a fixed dataset for mocking
  static List<FeedListItemViewModel> fixture = [
    new FeedListItemViewModel(
        title: "tscholze",
        subtitle: "Bavarian Software Engineer and Community Enthusiast",
        image:
            "https://github.com/tscholze/tscholze.github.com/blob/master/tscholze-logo-white.png?raw=true",
        backgroundColor: Colors.tealAccent),
    new FeedListItemViewModel(
        title: "Apfeltalk",
        subtitle: "Größe Apple Community Deutschlands",
        image:
            "https://www.apfeltalk.de/magazin/wp-content/uploads/2016/12/ElCapitan-700x420.jpg",
        backgroundColor: Colors.redAccent),
    new FeedListItemViewModel(
        title: "Dr. Windows",
        subtitle: "Am Puls von Microsoft",
        image:
            "https://www.drwindows.de/news/wp-content/uploads/2018/10/onecast_artikelbild_neu.jpg",
        backgroundColor: Colors.lightBlueAccent)
  ];
}
