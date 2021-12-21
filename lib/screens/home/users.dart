// import 'package:flutter/material.dart';
//
// import 'package:firebase_core/firebase_core.dart';
// // Import the firebase_core and cloud_firestore plugin
//
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class AddUser extends StatelessWidget {
//
//
//   final String siteID;
//   final String latitude;
//
//
//   AddUser(this.siteID, this.latitude);
//
//   @override
//   Widget build(BuildContext context) {
//     // Create a CollectionReference called users that references the firestore collection
//     var FirebaseFirestore;
//     CollectionReference antenna = FirebaseFirestore.instance.collection('antenna');
//
//     Future<void> addUser() {
//       // Call the user's CollectionReference to add a new user
//       return antenna
//           .add({
//         'siteID': siteID, // John Doe
//         'latitude': latitude, // fff
//
//       })
//           .then((value) => print("User Added"))
//           .catchError((error) => print("Failed to add user: $error"));
//     }
//
//     return TextButton(
//       onPressed: addUser,
//       child: Text(
//         "Add User",
//       ),
//     );
//   }
// }