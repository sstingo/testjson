import 'package:flutter/material.dart';
import 'package:test1/http/http_service2.dart';
import 'package:test1/http/post_model2.dart';

class PostDetail2 extends StatelessWidget {
  final Post2 post;
  final HttpService2 httpService2 = HttpService2();

  PostDetail2({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.name),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.delete),
      //   onPressed: () async {
      //     await httpService.deletePost(post2.id);
      //     Navigator.of(context).pop();
      //   },
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: post.logo == null
                      ? Image.asset(
                          "assets/images/圖片顯示中.jpg",
                          width: 100,
                        )
                      : Image.network(post.logo),
                ),
                ListTile(
                  title: Text(post.name),
                  subtitle: Text(post.id),
                ),
                ListTile(
                  title: Text("ID"),
                  subtitle: Text(post.id),
                ),
                ListTile(
                  title: Text("性質"),
                  subtitle: Text(post.type),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
