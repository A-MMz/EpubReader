import 'package:flutter/material.dart';
import 'demo3.dart';
void main(){
  runApp(Demo());
}

class Demo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white10,
        appBarTheme:  const AppBarTheme(
          backgroundColor:  Colors.white10,
        ),
      ),
      home:  Demo3(),
    );
  }
}