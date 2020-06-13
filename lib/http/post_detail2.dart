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
                        : Image.asset(
                            "assets/images/圖片顯示中.jpg",
                            width: 100,
                          )),
                ListTile(
                  title: Text(post2.name),
                  subtitle: Text(post2.id),
                ),
                ListTile(
                  title: Text("性質"),
                  subtitle: Text(post2.type),
                ),
                ListTile(
                  title: Text("社辦地點"),
                  subtitle:
                      post2.office != null ? Text(post2.office) : Text("社辦地點"),
                ),
                ListTile(
                  title: Text("屆數"),
                  subtitle: post2.session != null
                      ? Text("第${post2.session}屆")
                      : Text("第?屆"),
                ),
                ListTile(
                  title: Text("指導老師"),
                  subtitle: post2.teacher != null
                      ? Text(post2.teacher)
                      : Text("指導老師"),
                ),
                ListTile(
                  title: Text("社費"),
                  subtitle: post2.teacher != null
                      ? Text("${post2.fee}元/學期")
                      : Text("社費"),
                ),
                ListTile(
                  title: Text("簡介"),
                  subtitle: post2.introduction != null
                      ? Text(post2.introduction)
                      : Text(""),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
