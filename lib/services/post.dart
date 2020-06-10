import 'package:flutter/material.dart';
import 'package:test1/services/http_service.dart';
import 'package:test1/services/post_detail.dart';
import 'package:test1/services/post_model.dart';

final HttpService httpService = HttpService();

class PostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        ),
        body: FutureBuilder(future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if(snapshot.hasData) {
            List<Post> posts = snapshot.data;

            return ListView(
              children: posts
              .map((Post post) => ListTile(
                title: Text(post.title),
                subtitle: Text(post.id.toString(),),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PostDetail(post: post,))
                ),
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