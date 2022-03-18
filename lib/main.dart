import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_json/models/news_data.dart';
import 'package:provider_json/pages/stories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => NewsData(),
        builder: (context, child) {
          return const StoriesPage();
        },
      ),
    );
  }
}
