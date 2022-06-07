import 'package:flutter/material.dart';

class Video {
  AssetImage thumbnail;
  AssetImage avatar;
  String title;
  String channelName;
  String viewCount;
  String uploadDate;

  Video(this.thumbnail, this.avatar, this.title, this.channelName, this.viewCount, this.uploadDate);
}