import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future inserCategory(String categoryName,String userId) async {
    try {
      await fireStore.collection("categories").add({
        "category":categoryName,
        "UserId":userId,
        
      });
    } catch (e) {}
  }
}
