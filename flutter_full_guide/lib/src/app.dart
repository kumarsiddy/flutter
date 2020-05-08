import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_full_guide/src/models/image_model.dart';
import 'package:flutter_full_guide/src/widgets/image_list.dart';
import 'package:http/http.dart' show get;

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchImage() async {
    counter += 1;
    var url = "https://jsonplaceholder.typicode.com/photos/$counter";
    var response = await get(url);
    ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is title'),
        ),
        body: ImageList(images),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );
  }
}
