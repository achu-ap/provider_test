import 'package:flutter/material.dart';
class Todo with ChangeNotifier{
  final List<String> _list =[];
  List<String> get list=>_list;
  int count=0;
  void increment(){
    count++;
    notifyListeners();
  }
  void add(String todo){
    _list.add(todo);
   
    notifyListeners();
  }
  void remove(String todo){
     _list.remove(todo);
     notifyListeners();
  }
}