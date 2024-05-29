import 'package:flutter/material.dart';
import 'package:flutter_understand_widget/data/data.dart';
import 'package:flutter_understand_widget/data/movie.dart';
import 'package:flutter_understand_widget/page/show_movie_page.dart';


void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Movie> list = showList;
  void reorder() async {
    showList.shuffle(); // to shuffle the elements of showList
    if (mounted) {
      setState(() {
        list = showList; // to set list with updated showList
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowMoviePage(
        //child widget receive its configuration from the parent
        showList: list,
        refresh: reorder,
      ),
    );
  }
}
