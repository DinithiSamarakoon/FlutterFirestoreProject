// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// final CollectionReference siteRef= Firestore.instance.collection("Site");
//
// class Search extends StatefulWidget {
//   @override
//   _SearchState createState() => _SearchState();
// }
//
// class _SearchState extends State<Search> {
//
//   Future<QuerySnapshot> searchResultsFuture;
//
//   handleSearch(String query) {
//     Future<QuerySnapshot> sites = Firestore.instance.collection("Site")
//       .where("siteID", isGreaterThanOrEqualTo: query)
//         .getDocuments();
//     //here putting sites into state, can  used in body section
//     setState(() {
//       searchResultsFuture= sites;
//     });
//   }
//
//   // async{
//   //   return Firestore.instance.collection('Site').where(
//   //     'siteID', isGreaterThanOrEqualTo: query)
//   //       .getDocuments();
//   //
//   // }
//
//
//
//
//   AppBar buildSearchField() {
//     return AppBar(
//       backgroundColor: Colors.white,
//       title: TextFormField(
//         decoration: InputDecoration(
//           hintText: "Search for a site...",
//           filled: true,
//           prefixIcon: Icon(
//             Icons.account_box,
//             size: 28.0,
//           ),
//           suffixIcon: IconButton(
//             icon:  Icon(Icons.clear),
//             onPressed: () => print('cleared'),
//           ),
//         ),
//         onFieldSubmitted: handleSearch,
//       ),
//     );
//
//   }
//   buildNoContent() {
//     return Container(
//       child: Center(
//         child: ListView(
//           shrinkWrap: true,
//           children: <Widget>[
//             Text("Find Sites", textAlign: TextAlign.center, style:
//             TextStyle(
//               color: Colors.white,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.w600,
//               fontSize: 60.0,
//             ),
//             )
//           ],
//         ),
//       ),
//     );
//
//   }
//
//   buildSearchResults(){
//     return FutureBuilder(
//       future: searchResultsFuture,
//       // ignore: missing_return
//       builder: (context, snapshot) {
//          if (snapshot.hasData) {
//            return new Text("Loading");
//          }
//          //otherwise to get data as a list
//          List<SiteResult> searchResults= [];
//           snapshot.data.documents.forEach((doc){
//             Site site = site.fromDocument(doc);
//             SiteResult searchResult = SiteResult(site);
//            searchResults.add(searchResult);
//          });
//         return ListView(
//           children: searchResults,
//         );
//       });
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).primaryColor.withOpacity(0.8),
//       appBar: buildSearchField(),
//       body: searchResultsFuture == null ? buildNoContent():
//       buildSearchResults(),
//     );
//   }
// }
//
//
// class SiteResult extends StatelessWidget {
//   final Site site;
//
//   SiteResult(this.site);
//   @override
//   Widget build(BuildContext context) {
//     return Text("User Result");
//   }
// }
//
