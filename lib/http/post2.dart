import 'package:flutter/material.dart';
import 'package:test1/http/http_service2.dart';
import 'package:test1/http/post_detail2.dart';
import 'package:test1/http/post_model2.dart';

final HttpService2 httpService = HttpService2();

class PostsPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts2(),
        builder: (BuildContext context, AsyncSnapshot<List<Post2>> snapshot) {
          if (snapshot.hasData) {
            List<Post2> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((Post2 post) => ListTile(
                        title: Text(post.name),
                        subtitle: Text(
                          post.id.toString(),
                        ),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PostDetail2(
                                      post: post,
                                    ))),
                      ))
                  .toList(),
            );
          }

          return CircularProgressIndicator();
        },
      ),
    );
  }
}
