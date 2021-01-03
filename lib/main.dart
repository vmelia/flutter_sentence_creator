import 'package:flutter/material.dart';
import 'package:flutter_sentence_creator/pages/sentence_creator_page.dart';
import 'package:flutter_sentence_creator/view_models/sentence_creator_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColorLight: Colors.blueGrey[50],  
        primaryColorDark: Colors.blueGrey[900],
      ),
      home: ChangeNotifierProvider(
        create: (context) => SentenceCreatorViewModel(),
        child: SentenceCreatorPage(),
      ),
    );
  }
}