import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/models/todo.dart';
import 'package:provider_test/screens/home.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (context)=> Todo(),
  child: Myapp(),));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Home(),
    );
  }
}