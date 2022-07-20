import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:g_shopick_admin/constants/colors/colors.dart';
import 'package:g_shopick_admin/screens/getusername.dart';

class CategoryManagement extends StatelessWidget {
  // User user;
  CategoryManagement({
    Key? key,
  }) : super(key: key);

  TextEditingController categoryController = TextEditingController();

  List<String> docId = [];
  Stream getDocid() async* {
    await FirebaseFirestore.instance
        .collection("categoryname")
        .get()
        .then((snapshot) => snapshot.docs.forEach((element) {
              print(element.reference);

              docId.add(element.reference.id);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: themeColor,
        title: Text("Category Management"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              backgroundColor: themeColor,
              radius: 50,
              child: Icon(
                Icons.upload,
                size: 50,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter A new category",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value){
                
              },
              controller: categoryController,
              decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
                primary: themeColor,
                elevation: 4,
                fixedSize: const Size(350, 45),
              ),
              onPressed: () {
                addCategory();
              },
              child: Text("ADD CATEGORY"),
            ),
            SizedBox(
              height: 20,
            ),
            StreamBuilder(
              stream: getDocid(),
              builder: (context,snapshot) {
                return Expanded(
                  child: ListView.separated(
                      separatorBuilder: ((context, index) => SizedBox(
                            height: 18,
                          )),
                      shrinkWrap: true,
                      itemCount: docId.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: GetUserName(documentID: docId[index]),
                          leading: CircleAvatar(
                              backgroundColor: themeColor,
                              radius: 35,
                              child: Icon(Icons.mobile_friendly)),
                        );
                      }),
                );
              }
            )
          ],
        ),
      ),
    );
  }

  void addCategory() {
    FirebaseFirestore.instance
        .collection("categoryname")
        .add({"category": categoryController.text});
  }
}
