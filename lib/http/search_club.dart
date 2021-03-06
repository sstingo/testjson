import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:test1/http/post_model2.dart';

class SearchClub extends SearchDelegate<Post2> {
  // final UnmodifiableListView<Post2> post2;

  // SearchClub(this.post2);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text(query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
