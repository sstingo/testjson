import 'dart:convert';

import 'package:http/http.dart';
import 'package:test1/http/post_model2.dart';

class HttpService2 {
  final String url = "http://140.134.79.128:40130/";

  Future<List<Post2>> getPosts2() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post2> posts =
          body.map((dynamic item) => Post2.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get posts.";
    }
  }
}
