
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreData {
  static getPills() async{
    final FirebaseFirestore db = FirebaseFirestore.instance;
    final CollectionReference pills = db.collection('pills');
    final DocumentSnapshot snapshot = await pills.doc('7vMBEvHcZauzvwQMW7fG').get();
    final myPills = snapshot.data() as Map<String, dynamic>;
    print(myPills['pillName']);
  }
}