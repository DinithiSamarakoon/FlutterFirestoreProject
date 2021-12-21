// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dia_app/screens/home/sector.dart';
// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:dia_app/models/antenna.dart';
// import 'package:dia_app/screens/home/allRouters.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';
// import 'antenna_details.dart';
//
//
// class AddSectorPage extends StatefulWidget {
//   final SectorModel sector;
//   final String doc;
//   AddSectorPage(this.doc, {Key key, @required this.sector}) : super(key: key);
//
//   @override
//   _AddSectorPageState createState() => _AddSectorPageState();
// }
//
// class _AddSectorPageState extends State<AddSectorPage> {
//   var selectedSiteId;
//
//   final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
//
//   final List<String> options = [];
//
//   final db = Firestore.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.pink,
//           title: Text(widget.doc),
//         ),
//
//     body: new Container(
//     decoration: new BoxDecoration(color: Colors.pink[50]),
//     child: new Center(
//     child: MergeSemantics(
//     child: Padding(
//     padding: const EdgeInsets.all(16.0),
//     child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: <Widget>[
//       Card(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Material(
//               elevation: 24.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Text("Select a technology here"),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     SizedBox(height: 20.0,),
//                     StreamBuilder<QuerySnapshot>(
//                       stream: db.collection('antenna').snapshots(),
//                       //stream: db.collection('antenna').where("siteid", isEqualTo:'AM0003').snapshots(),
//                       builder: (BuildContext context,
//                           AsyncSnapshot<QuerySnapshot> snapshot) {
//                         if(snapshot.hasData)
//                           // (!snapshot.hasData){
//                           //   Text("Loading");
//                           // }else
//                             {
//                           List<DropdownMenuItem> siteItems=[];
//                           // ignore: missing_return
//                           for(int i = 0;
//                           i < snapshot.data.documents.length;
//                           i++) {
//                             //print(snapshot.data.documents.length);
//                             DocumentSnapshot snap = snapshot.data.documents[i];
//                             //print(snapshot.data.documents[i].data["siteid"]);
//                             siteItems.add(
//                                 DropdownMenuItem(
//                                   child: Text(
//                                     snap.data["siteid"].toString(),
//                                     style: TextStyle(color: Color(0xff11b719)),
//                                   ),
//                                   value: "${snap.documentID}",
//                                 ));
// // print(value)
//                           }
//                           return Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: <Widget>[
//                               Icon(CupertinoIcons.person, size: 25.0, color: Color(0xff11b719)),
//                               SizedBox(width: 50.0),
//                               DropdownButton(
//                                 items: siteItems,
//                                 onChanged: (sitevalue){
//                                   print(sitevalue);
//                                   final snackBar=SnackBar(
//                                     content:
//                                     Text('Selected Technology is $sitevalue', style: TextStyle(color: Color(0xff11b719)),),
//                                   );
//                                   Scaffold.of(context).showSnackBar(snackBar);
//                                   setState((){
//                                     selectedSiteId= sitevalue;
//                                   });
//                                 },
//                                 value: selectedSiteId,
//                                 isExpanded: false,
//                                 hint: new Text(
//                                     "Choose a Technology "
//                                 ),
//                               ),
//
//                             ],
//                           );
//                         }
//                         else{
//                           Text("Loading");
//                         }
// //                         RaisedButton(
// //                         );
//                       },
//
//                     ),
//                     SizedBox(height: 20.0,),
//                     SizedBox(
//                       width: double.infinity,
//                       // height: double.infinity,
//                       child: new RaisedButton(
//                         color: Colors.black54,
//                         child: Text(
//                           "Submit",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'Raleway',
//                             fontSize: 22.0,
//                           ),
//                         ),
//                         onPressed: () => print('Submit'),
//                       ),
//                     ),
//                     SizedBox(height: 20.0,),
//                   ],
//                 )),
//           ],
//         ),
//       ),
//       Card(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Material(
//               elevation: 24.0,
//               child: Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Text("Select a sector here"),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.fromLTRB(20, 10.0, 20.0, 20.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     SizedBox(height: 20.0,),
//                     StreamBuilder<QuerySnapshot>(
//                       stream: db.collection('antenna').snapshots(),
//                       //stream: db.collection('antenna').where("siteid", isEqualTo:'AM0003').snapshots(),
//                       builder: (BuildContext context,
//                           AsyncSnapshot<QuerySnapshot> snapshot) {
//                         if(snapshot.hasData)
//                           // (!snapshot.hasData){
//                           //   Text("Loading");
//                           // }else
//                             {
//                           List<DropdownMenuItem> siteItems=[];
//                           // ignore: missing_return
//                           for(int i = 0;
//                           i < snapshot.data.documents.length;
//                           i++) {
//                             //print(snapshot.data.documents.length);
//                             DocumentSnapshot snap = snapshot.data.documents[i];
//                             //print(snapshot.data.documents[i].data["siteid"]);
//                             siteItems.add(
//                                 DropdownMenuItem(
//                                   child: Text(
//                                     snap.data["siteid"].toString(),
//                                     style: TextStyle(color: Color(0xff11b719)),
//                                   ),
//                                   value: "${snap.documentID}",
//                                 ));
// // print(value)
//                           }
//                           return Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: <Widget>[
//                               Icon(CupertinoIcons.person, size: 25.0, color: Color(0xff11b719)),
//                               SizedBox(width: 50.0),
//                               DropdownButton(
//                                 items: siteItems,
//                                 onChanged: (sitevalue){
//                                   print(sitevalue);
//                                   final snackBar=SnackBar(
//                                     content:
//                                     Text('Selected Sector is $sitevalue', style: TextStyle(color: Color(0xff11b719)),),
//                                   );
//                                   Scaffold.of(context).showSnackBar(snackBar);
//                                   setState((){
//                                     selectedSiteId= sitevalue;
//                                   });
//                                 },
//                                 value: selectedSiteId,
//                                 isExpanded: false,
//                                 hint: new Text(
//                                     "Choose a Sector "
//                                 ),
//                               ),
//
//                             ],
//                           );
//                         }
//                         else{
//                           Text("Loading");
//                         }
//                         // RaisedButton(
//
//                         // );
//                       },
//                     ),
//                     SizedBox(height: 20.0,),
//                     SizedBox(
//                       width: double.infinity,
//                       // height: double.infinity,
//                       child: new RaisedButton(
//                         color: Colors.black54,
//                         child: Text(
//                           "Submit",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontFamily: 'Raleway',
//                             fontSize: 22.0,
//                           ),
//                         ),
//                         onPressed: () => print('Submit'),
//                       ),
//                     ),
//                     SizedBox(height: 20.0,),
//                   ],
//                 )),
//           ],
//         ),
//       ),
//     ],
//     ),
//     ),
//     )),
//     )
//     );
//
//   }
// }
// final sectorsSelected = TextEditingController();
// //
// //
// //       body: Container(
// //           padding: new EdgeInsets.all(10.0),
// // width: 300,
// //           height: 200,
// //           child: GridView(
// //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// //             children: <Widget>[
// //
// //             Card(
// //               shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),
// //
// //             elevation: 5,
// //      child: Center(
// //       child: Form(
// //         key: _fbKey,
// //         autovalidate:true,
// //         child: ListView(
// //
// //           padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
// //           children: <Widget>[
// //             Text(
// //               "Select Site ID",
// //               style: TextStyle(fontSize: 17.0),
// //               textAlign: TextAlign.center,
// //
// //             ),
// //
// //             SizedBox(height: 20.0,),
// //             DropDownField(
// //               controller: sectorsSelected,
// //               hintText: "Select any sectorID",
// //               enabled: true,
// // // items: ,
// //             ),
// //
// //             TextFormField(
// //               decoration: InputDecoration(
// //                 icon: Icon(
// //                   CupertinoIcons.person,
// //                   //FontAwesomeIcons.phone,
// //                   color: Color(0xff11b719),
// //                 ),
// //                 hintText: 'Enter Site ID',
// //                 labelText:'SiteID'
// //               ),
// //             ),
// //             SizedBox(height: 40.0,),
// //             StreamBuilder<QuerySnapshot>(
// //               stream: db.collection('antenna').snapshots(),
// //               //stream: db.collection('antenna').where("siteid", isEqualTo:'AM0003').snapshots(),
// //               builder: (BuildContext context,
// //                   AsyncSnapshot<QuerySnapshot> snapshot) {
// //                 if(snapshot.hasData)
// //                 // (!snapshot.hasData){
// //                 //   Text("Loading");
// //                 // }else
// //                   {
// //                   List<DropdownMenuItem> siteItems=[];
// //                   // ignore: missing_return
// //                   for(int i = 0;
// //                   i < snapshot.data.documents.length;
// //                   i++) {
// //                     //print(snapshot.data.documents.length);
// //                     DocumentSnapshot snap = snapshot.data.documents[i];
// //                     //print(snapshot.data.documents[i].data["siteid"]);
// //                     siteItems.add(
// //                         DropdownMenuItem(
// //                           child: Text(
// //                             snap.data["siteid"].toString(),
// //                             style: TextStyle(color: Color(0xff11b719)),
// //                           ),
// //                           value: "${snap.documentID}",
// //
// //                         ));
// // // print(value);
// //                   }
// //
// //                     return Row(
// //                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //                       children: <Widget>[
// //                         Icon(CupertinoIcons.person, size: 25.0, color: Color(0xff11b719)),
// //                         SizedBox(width: 50.0),
// //                         DropdownButton(
// //                             items: siteItems,
// //                             onChanged: (sitevalue){
// //                               print(sitevalue);
// //                               final snackBar=SnackBar(
// //                                   content:
// //                               Text('Selected Sie ID is $sitevalue', style: TextStyle(color: Color(0xff11b719)),),
// //                               );
// //                               Scaffold.of(context).showSnackBar(snackBar);
// //                               setState((){
// //                                 selectedSiteId= sitevalue;
// //                               });
// //                             },
// //                             value: selectedSiteId,
// //                           isExpanded: false,
// //                           hint: new Text(
// //                               "Choose a SiteID "
// //                           ),
// //                         ),
// //                         // DropdownButton(
// //                         //   items: siteItems,
// //                         //   onChanged: (sitevalue){
// //                         //     print(sitevalue);
// //                         //     final snackBar=SnackBar(
// //                         //
// //                         //       content:
// //                         //       Text('Selected Sie ID is $sitevalue', style: TextStyle(color: Color(0xff11b719)),),
// //                         //     );
// //                         //     Scaffold.of(context).showSnackBar(snackBar);
// //                         //     setState((){
// //                         //       selectedSiteId= sitevalue;
// //                         //     });
// //                         //   },
// //                         //   value: selectedSiteId,
// //                         //   isExpanded: false,
// //                         //   hint: new Text(
// //                         //     "Choose a SiteID"
// //                         //   ),
// //                         //
// //                         // )
// //                       ],
// //                     );
// //
// //                 }
// //                 else{
// //                   Text("Loading");
// //                 }
// //                 RaisedButton(
// //                   child: Text("Finish"),
// //                   onPressed: () async{
// //
// //                     await
// //                     Firestore.instance.collection('antenna').document(widget.doc)
// //                         .updateData({"sector": FieldValue.arrayUnion(options)});
// //
// //                     MaterialPageRoute(
// //                                     builder: (context) => AllRoutes(widget.doc)
// //                     );
// //
// //                   },
// //                 );
// //                 // return GestureDetector(
// //                 //     onTap: () {
// //                 //       Navigator.push(
// //                 //         context,
// //                 //         MaterialPageRoute(
// //                 //             builder: (context) => AllRoutes(widget.doc)),
// //                 //       );
// //                 //     }
// //                 // );
// //               },
// //
// //             ),
// //           ],
// //
// //         ),
// //       ),
// //     ),
// //       )
// //         ]
// //       )
// //     )
// //     );
// //
// //   }
// // }
// // final sectorsSelected = TextEditingController();
//
// //
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:dia_app/screens/home/sector.dart';
// // import 'package:dropdownfield/dropdownfield.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:dia_app/models/antenna.dart';
// // import 'package:dia_app/screens/home/allRouters.dart';
// // import 'package:flutter_form_builder/flutter_form_builder.dart';
// // import 'antenna_details.dart';
// //
// //
// // class AddSectorPage extends StatelessWidget {
// //   final SectorModel sector;
// //   final String doc;
// //   AddSectorPage(this.doc, {Key key, @required this.sector}) : super(key: key);
// //
// //   final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
// //   final List<String> options = [];
// //   final db = Firestore.instance;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.pink,
// //         title: Text(doc),
// //       ),
// //       body: Container(
// //         padding: EdgeInsets.all(10),
// //         child: GridView(
// //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
// //           children: <Widget>[
// //             Card(
// //               elevation: 10,
// //               child: Center(
// //                 child: GestureDetector(
// //                     onTap: (){
// //                       showDialog(
// //                           context: context,
// //                           builder: (BuildContext context) {
// //                             return AlertDialog(
// //                                 content: Stack(
// //                                     overflow: Overflow.visible,
// //                                     children: <Widget>[
// //                                       Positioned(
// //                                           right: -40.0,
// //                                           top: -40.0,
// //                                           child: InkResponse(
// //                                             onTap: () {
// //                                               Navigator.of(context).pop();
// //                                             },
// //                                             child: CircleAvatar(
// //                                               child: Icon(Icons.close),
// //                                               backgroundColor: Colors.red,
// //                                             ),
// //                                           )
// //                                       ),
// //                                       FormBuilder(
// //                                         autovalidateMode: AutovalidateMode.always,
// //                                         key: _fbKey,
// //                                         child: Column(
// //                                             children: [
// //
// //                                               new StreamBuilder<QuerySnapshot>(
// //                                                   stream: db.collection('Sectors')
// //                                                       .where("siteid", isEqualTo:"AM0001")
// //                                                   // .orderBy("sectorid", descending: false)
// //                                                       .snapshots(),
// //                                                   builder: (BuildContext context,
// //                                                       AsyncSnapshot<QuerySnapshot> snapshot) {
// //                                                     if (snapshot.hasError) {
// //                                                       return Center(
// //                                                         child: Text("Something went wrong!"),
// //                                                       );
// //                                                     } else if (snapshot.hasData &&
// //                                                         snapshot.data.documents.length != 0) {
// //                                                       print(snapshot.data.documents[1].data["sectorid"]);
// //                                                       return ExpansionTile(
// //                                                         title: Text('Select Sectors'),
// //                                                         children: [
// //                                                           Padding(
// //                                                               padding: EdgeInsets.all(8.0),
// //                                                               child: FormBuilderCheckboxGroup(
// //                                                                   orientation: OptionsOrientation.vertical,
// //                                                                   activeColor: Colors.pink,
// //                                                                   checkColor: Colors.yellow,
// //                                                                   decoration: InputDecoration(
// //                                                                     border: OutlineInputBorder(
// //                                                                         borderRadius:
// //                                                                         BorderRadius.circular(10)),
// //                                                                   ),
// //                                                                   onChanged: (values) {
// //                                                                     options.clear();
// //                                                                     print(values);
// //                                                                     values.forEach((e) => options.add(e as String));
// //                                                                     //setState(() {});
// //                                                                   },
// //                                                                   //name: "Sectors",
// //                                                                   options: snapshot.data.documents
// //                                                                       .map((element) =>
// //                                                                   new FormBuilderFieldOption(
// //                                                                       value: element["sectorid"]))
// //                                                                       .toList()))
// //                                                         ],
// //                                                       );
// //                                                     } else if (snapshot.hasData &&
// //                                                         snapshot.data.documents.length == 0) {
// //                                                       return Card(
// //                                                         child: Text("There are no sectors!"),
// //                                                       );
// //                                                     }
// //                                                     return Center(
// //                                                       child: CircularProgressIndicator(
// //                                                         strokeWidth: 2,
// //                                                         valueColor: AlwaysStoppedAnimation<Color>(
// //                                                             Colors.red
// //                                                           //CustomColors.firebaseOrange,
// //                                                         ),
// //                                                       ),
// //                                                     );
// //                                                   }),
// //
// //                                               RaisedButton(
// //                                                 child: Text("Finish"),
// //                                                 onPressed: () async{
// //                                                   // await
// //                                                   // Firestore.instance.collection('antenna').document(widget.doc)
// //                                                   //     .updateData({"sector": FieldValue.arrayUnion(options)});
// //                                                   //
// //                                                   // Navigator.of(context).popUntil((route) => route.isFirst);
// //                                                 },
// //                                               ),
// //                                             ]
// //                                         ),
// //                                       ),
// //                                     ]
// //                                 )
// //                             );
// //                           }
// //                       );
// //                       // Navigator.of(context).push( MaterialPageRoute(builder: (context) => Location(doc),
// //                       //   //pass the parameters to SubCategoery class
// //                       // ),
// //                       // );
// //                     },
// //                     child: Text('Select Technology', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
// //               ),
// //             ),
// //             Card(
// //               elevation: 10,
// //               child: Center(
// //                 child: GestureDetector(
// //                     onTap: (){
// //                       // Navigator.of(context).push(MaterialPageRoute(builder: (context) => SiteDetails(doc),
// //                       //
// //                       // ),
// //                       // );
// //                     },
// //                     child: Text('Select Sectors: ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
// //               ),
// //             ),
// //             Card(
// //               child:Container(
// //                 height: MediaQuery.of(context).size.height,
// //                 width: MediaQuery.of(context).size.width,
// //                 padding: EdgeInsets.all(20.0),
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   crossAxisAlignment: CrossAxisAlignment.stretch,
// //                   children: <Widget>[
// //                     Text(
// //                       "Select a sector",
// //                       style: TextStyle(fontSize: 20.0),
// //                       textAlign: TextAlign.center,
// //                     ),
// //                     SizedBox(height: 20.0,),
// //                     DropDownField(
// //                       controller: sectorsSelected,
// //                       hintText: "Select a sector",
// //                       enabled: true,
// //                       //items: ,
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //
// //       ),
// //     );
// //   }
// // }
// // final sectorsSelected = TextEditingController();
// //
// //
