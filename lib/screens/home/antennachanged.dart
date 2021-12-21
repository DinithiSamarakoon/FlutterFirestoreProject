// //to add changed antenna notifier to our App
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// import 'package:flutter/material.dart';
// import 'package:dia_app/models/antenna.dart';
//
//
// class AntennaList extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return new StreamBuilder<QuerySnapshot>(
//       stream: Firestore.instance.collection('Antenna').snapshots(),
//       builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
//         if (!snapshot.hasData) return new Text('Loading...');
//         return new ListView(
//           children: snapshot.data.documents.map((DocumentSnapshot document) {
//             return new ListTile(
//               title: new Text(document['siteID']),
//               subtitle: new Text(document['latitude']),
//             );
//           }).toList(),
//         );
//       },
//     );
//   }
// }