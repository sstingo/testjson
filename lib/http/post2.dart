import 'package:flutter/material.dart';
import 'package:test1/http/http_service2.dart';
import 'package:test1/http/post_detail2.dart';
import 'package:test1/http/post_model2.dart';
import 'package:test1/http/search_club.dart';

final HttpService2 httpService = HttpService2();

class PostsPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("社團"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: SearchClub(),
              );
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: httpService.getPosts2(),
        builder: (BuildContext context, AsyncSnapshot<List<Post2>> snapshot) {
          if (snapshot.hasData) {
            List<Post2> posts = snapshot.data;
            return ListView(
              children: posts
                  .map((Post2 post2) => ListTile(
                        leading: CircleAvatar(
                          backgroundImage: post2.logo != null
                              ? NetworkImage(post2.logo)
                              : AssetImage(
                                  "assets/images/圖片顯示中.jpg",
                                ),
                        ),
                        title: Text(post2.name),
                        subtitle: Text(
                          post2.id.toString(),
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                        onTap: () =>
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => PostDetail2(
                                      post2: post2,
                                    ))),
                      ))

                  ///
                  .toList(),
            );
          }

          return CircularProgressIndicator();
        },
      ),
      // ],
      // ),
    );
  }
}
