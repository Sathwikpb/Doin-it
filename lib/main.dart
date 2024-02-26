

import 'appbar_page.dart';
import 'package:flutter/material.dart';


void main() {
 
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: AppBarPage(),
      
    );
  }
}
