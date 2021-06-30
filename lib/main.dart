import 'package:exampleproject/model/burc.dart';
import 'package:flutter/material.dart';
import 'burc_listesi.dart';
import 'model/burc.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: BurcListesi(
      ),

    );
  }
}
