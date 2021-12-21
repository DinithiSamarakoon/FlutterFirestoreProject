// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dia_app/widgets/progress.dart';
// import 'package:flutter/material.dart';
//
// final siteRef = Firestore.instance.collection('Site');
// class Timeline extends StatefulWidget {
//   @override
//   _TimelineState createState() => _TimelineState();
// }
//
// class _TimelineState extends State<Timeline> {
//
//   @override
//   void initState(){
//     //getSites();
//     //   //createSite();
//     // updateSite();
//     //deleteSite();
//     super.initState();
//   }
//
//   createSiteInFirestore(){
//
// }
//
//   //to add a document to a collection
//   // createSite() {
//   //   siteRef.document("JA0001").setData({"siteID": "JA0001", "latitude": 23.245, "longitude": 1432.24}
//   //
//   //   );
//   // }
//
//   //to update a data in a document
//   // updateSite() async{
//   //  final doc = await siteRef.document("Vy9bZby1e3Hk9CUhlm1a").get();
//   //  if(doc.exists){
//   //    doc.reference.updateData({"siteID": "JA0012", "latitude": 12.2, "longitude": 34.5});
//   //  }
//     //.updateData({"siteID": "JA0012", "latitude": 12.2, "longitude": 34.5}
//     //);
//
//   // }
//   // deleteSite() async{
//   //   final DocumentSnapshot doc= await siteRef.document("Vy9bZby1e3Hk9CUhlm1a").get();
//   //   if(doc.exists){
//   //     doc.reference.delete();
//   //   }
//   // }
//
//   // deleteSite(){
//   //   siteRef
//   //   .document("JA0001").delete();
//   // }
//   getSites(){
//     siteRef.getDocuments().then((QuerySnapshot snapshot){
//       snapshot.documents.forEach((DocumentSnapshot doc){
//         print(doc.data);
//         print(doc.documentID);
//         print(doc.exists);
//       });
//     });
//   }

//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//         backgroundColor: Colors.brown[500],
//         elevation: 0.0,
//         title: Text('Timeline'),
//     ),
//       body: circularProgress(),
//     );
//   }
// }