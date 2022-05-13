import 'package:flutter/cupertino.dart';

class Story {
  Story({
    required this.by,
    required this.descendants,
    required this.id,
    required this.score,
    required this.time,
    required this.title,
    required this.type,
    required this.url,
  });

  final String by;
  final String descendants;
  final String id;
  final String score;
  final String time;
  final String title;
  final String type;
  final String url;

  Story.fromJson(Map<String, dynamic> json)
      : by = json['by'].toString(),
        descendants = json['descendants'].toString(),
        id = json['id'].toString(),
        score = json['score'].toString(),
        time = json['time'].toString(),
        title = json['title'].toString(),
        type = json['type'].toString(),
        url = json['url'].toString();
}