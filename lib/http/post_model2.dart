import 'package:flutter/foundation.dart';

class Post2 {
  final String id;
  final String name;
  final String type;
  final String office;
  final int session;
  final String teacher;
  final int fee;
  final String introduction;
  final String logo;

  Post2({
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.office,
    @required this.session,
    @required this.teacher,
    @required this.fee,
    @required this.introduction,
    @required this.logo,
  });

  factory Post2.fromJson(Map<String, dynamic> json) {
    return Post2(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      office: json['office'] as String,
      session: json['session'] as int,
      teacher: json['teacher'] as String,
      fee: json['fee'] as int,
      introduction: json['introduction'] as String,
      logo: json['logo'] as String,
    );
  }
}
