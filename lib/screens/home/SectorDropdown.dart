//
//
// Widget _buildFormBuilderForm() {
//   return Column(
//     children: <Widget>[
//       FormBuilder(
//           key: _fbKey,
//           child: Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Expanded(
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: new StreamBuilder<QuerySnapshot>(
//                                   stream:
//                                   Firestore.instance.collection("collection")
//                                       .snapshots(),
//                                   builder: (context, snapshot) {
//                                     if (!snapshot.hasData)
//                                       return new Text("Please wait");
//                                     return new FormBuilderDropdown(
//                                         initialValue: dropdownvalue,
//                                         hint: new Text("Select
//                                         dropdownvalue"),
//                                         attribute: 'dropdownvalue',
//                                         decoration:
//                                         InputDecoration(labelText:"dropdown"),
//                                     items:
//                                     snapshot.data.documents.map((DocumentSnapshot
//                                     document) {
//                                     for(int i = 0; i <document.data.length; i++){
//                                     print(document.data['Name']);
//                                     return new DropdownMenuItem(
//                                     value: document.data['Name'],
//                                     child: new
//                                     Text(document.data['Name'].toString()),
//                                     );
//                                     }
//                                     }).toList(),
//
//                                     onChanged: (value) {
//                                     print(value);
//                                     setState(() {
//                                     dropdownvalue = value;
//                                     });
//                                     },
//                                     );
//                                   }),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ]
//                 ),
//               )))
//     ],
//   );
// }