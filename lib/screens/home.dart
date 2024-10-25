// import 'package:flutter/material.dart';
// import 'package:provider_test/models/todo.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Consumer<Todo>(builder: (context,value,child)=> Scaffold(appBar: AppBar(
//       title: Text("Todo"),
//     ),
//     body: ListView(
//       children: 
//       value.list.map((e)=>ListTile(
//         title:Text(e),
//         trailing: IconButton(onPressed: 
//         (){
//           value.remove(e);
//         }, icon: Icon(Icons.delete)),
//       ),
//       ).toList(),
      
//     ),
//     floatingActionButton: ElevatedButton(onPressed: (){
//       value.add("Todo - ${ value.list.length + 1}");
//     }, child: Text("Add todo")),
//     ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider_test/models/todo.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
    // final value = context.watch<Todo>();
//     return Scaffold(appBar: AppBar(
//       title: Text("Todo"),
//     ),
//     body: ListView(
//       children: 
//       value.list.map((e)=>ListTile(
//         title:Text(e),
//         trailing: IconButton(onPressed: 
//         (){
//           value.remove(e);
//         }, icon: Icon(Icons.delete)),
//       ),
//       ).toList(),
      
//     ),
//     floatingActionButton: ElevatedButton(onPressed: (){
//       value.add("Todo - ${ value.list.length + 1}");
//     }, child: Text("Add todo")),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider_test/models/todo.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final value = context.read<Todo>();
//     return Scaffold(appBar: AppBar(
//       title: Text("Todo"),
//     ),
//     body: ListView(
//       children: 
//       value.list.map((e)=>ListTile(
//         title:Text(e),
//         trailing: IconButton(onPressed: 
//         (){
//           value.remove(e);
//         }, icon: Icon(Icons.delete)),
//       ),
//       ).toList(),
      
//     ),
//     floatingActionButton: ElevatedButton(onPressed: (){
//       value.add("Todo - ${ value.list.length + 1}");
//     }, child: Text("Add todo")),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:provider_test/models/todo.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final value = context.watch<Todo>();
    int count= context.select<Todo,int>((e)=>e.count);
    return Scaffold(appBar: AppBar(
      title: Text("Todo"),
    ),
    body: ListView(
      children: 
      value.list.map((e)=>ListTile(
        title:Text("$count"),
        trailing: IconButton(onPressed: 
        (){
          value.remove(e);
        }, icon: Icon(Icons.delete)),
      ),
      ).toList(),
      
    ),
    floatingActionButton: ElevatedButton(onPressed: (){
      value.increment();
      value.add("Todo - ${ value.list.length + 1}");
    }, child: Text("Add todo")),
    );
  }
}

