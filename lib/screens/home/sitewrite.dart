// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
//
// class Todo {
//   final String title;
//   final String description;
//
//   Todo(this.title, this.description);
// }
//
// void main() {
//   runApp(MaterialApp(
//     title: 'Passing Data',
//     home: TodosScreen(
//       todos: List.generate(
//         20,
//             (i) => Todo(
//           'Todo $i',
//           'A description of what needs to be done for Todo $i',
//         ),
//       ),
//     ),
//   ));
// }
//
// class TodosScreen extends StatefulWidget {
//   final List<Todo> todos;
//
//   TodosScreen({Key key, @required this.todos}) : super(key: key);
//
//   @override
//   _TodosScreenState createState() => _TodosScreenState();
// }
//
// class _TodosScreenState extends State<TodosScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: widget.todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(widget.todos[index].title),
//             // When a user taps the ListTile, navigate to the DetailScreen.
//             // Notice that you're not only creating a DetailScreen, you're
//             // also passing the current todo through to it.
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailScreen(),
//                   // Pass the arguments as part of the RouteSettings. The
//                   // DetailScreen reads the arguments from these settings.
//                   settings: RouteSettings(
//                     arguments: widget.todos[index],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class DetailScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Todo todo = ModalRoute.of(context).settings.arguments;
//
//     // Use the Todo to create the UI.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:dia_app/screens/services/site.dart';
// //
// // //Firestore crud operation read and write
// // class SitePage extends StatefulWidget {
// //   @override
// //   _SitePageState createState() => _SitePageState();
// // }
// //
// // class _SitePageState extends State<SitePage> {
// //   String siteID;
// //
// //   String latitude;
// //
// //   crudMethods siteObj = new crudMethods();
// //
// //   Future<bool> addDialog(BuildContext context) async {
// //     return showDialog(context: context,
// //         barrierDismissible: false,
// //         builder: (BuildContext context) {
// //           return AlertDialog(
// //             title: Text('Add Data', style: TextStyle(fontSize: 15.0)),
// //             content: Column(
// //               children: <Widget>[
// //                 TextField(
// //                   decoration: InputDecoration(hintText: 'Enter siteID'),
// //                   onChanged: (value) {
// //                     this.siteID = value;
// //                   },
// //                 ),
// //                 SizedBox(height: 5.0),
// //                 TextField(
// //                   decoration: InputDecoration(hintText: 'Enter latitude'),
// //                   onChanged: (value) {
// //                     this.latitude = value;
// //                   },
// //                 )
// //               ],
// //             ),
// //             actions: <Widget>[
// //               FlatButton(
// //                 child: Text('Add'),
// //                 textColor: Colors.blue,
// //                 onPressed: () {
// //                   Navigator.of(context).pop();
// //                   Map siteData = {
// //                     'siteID': this.siteID,
// //                     'latitude': this.latitude
// //                   };
// //                   siteObj.addData(siteData).then((result) {
// //                  dialogTrigger(context);
// //                 });
// //                 },
// //               ),
// //             ],
// //           );
// //         });
// //   }
// //
// //   Future<bool> dialogTrigger(BuildContext context) async {
// //     return showDialog(
// //         context: context,
// //         barrierDismissible: false,
// //         builder: (BuildContext context) {
// //           return AlertDialog(
// //             title: Text('job done', style: TextStyle(fontSize: 15.0)),
// //             content: Text('Added'),
// //             actions: <Widget>[
// //               FlatButton(
// //                 child: Text('alright'),
// //                 textColor: Colors.blue,
// //                 onPressed: () {
// //                   Navigator.of(context).pop();
// //                 },
// //               )
// //             ],
// //           );
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //       appBar: AppBar(
// //         title: Text('Site Page'),
// //         actions: <Widget>[
// //           IconButton(
// //             icon: Icon(Icons.add),
// //             onPressed: () {
// //               addDialog(context);
// //             },
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// //
