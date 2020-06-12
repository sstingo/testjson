import 'package:flutter/material.dart';
import 'package:test1/http/http_service2.dart';
import 'package:test1/http/post_model2.dart';

class PostDetail2 extends StatelessWidget {
  final Post2 post2;
  final HttpService2 httpService2 = HttpService2();

  PostDetail2({
    @required this.post2,
  });

  @override
  Widget build(BuildContext context) {
    print(post2.logo); ////////////
    return Scaffold(
      appBar: AppBar(
        title: Text(post2.name),
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
                  title: post2.logo != null
                      ? Image.network(post2.logo)
                      : Text("沒圖"),
                  // Image.asset(
                  //     "assets/images/圖片顯示中.jpg",
                  //     width: 100,
                  //   )
                ),
                ListTile(
                  title: Text(post2.name),
                  subtitle: Text(post2.id),
                ),
                ListTile(
                  title: Text("ID"),
                  subtitle: Text(post2.id),
                ),
                ListTile(
                  title: Text("性質"),
                  subtitle: Text(post2.type),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
