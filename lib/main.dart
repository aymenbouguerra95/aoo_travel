import 'package:e_commerce_app/screnns/Categore_Scriptt.dart';
import 'package:flutter/material.dart';
import 'screnns/screnn.categore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Catgorescrenns(),
      routes:{ CategoreScriptt.nameofPAgeScript:(ctx)=>CategoreScriptt(),}
    );
  }
}

 