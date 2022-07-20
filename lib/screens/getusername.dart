import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class GetUserName extends StatelessWidget {

  final String documentID;
   GetUserName({Key? key,required this.documentID}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users=FirebaseFirestore.instance.collection("categoryname");
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentID).get(),
      builder: (context,snapshot){
     if(snapshot.connectionState==ConnectionState.done){
      Map<String,dynamic> data=snapshot.data!.data() as Map<String,dynamic>;
      return Text(data["category"]);
     }return CircularProgressIndicator();
      });
  }
}