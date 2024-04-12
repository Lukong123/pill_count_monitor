import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  // get pillNum => null;
  final CollectionReference pillsCollection =
      FirebaseFirestore.instance.collection('pills');

  Future<void> createPill(
    String pillName,
    int numOfPills,
    String startDate,
    String endDate,
    String time1,
    String time2,
    String schedule,
  ) async {
    // Create the pill document
    final pillDocument = pillsCollection.doc();

    // Set the data for the pill document
    await pillDocument.set({
      'pillName': pillName,
      'numOfPills': numOfPills,
      'startDate': startDate,
      'endDate': endDate,
      'time1': time1,
      'time2': time2,
    //   'time1': {
    //   'hour': time1.hour,
    //   'minute': time1.minute,
    // },
    // 'time2': time2 != null
    //     ? {
    //         'hour': time2.hour,
    //         'minute': time2.minute,
    //       }
    //     : null,
      
      'schedule': schedule,
    });
  }



  // Create
  // Future<void> addPill(String pill) {
  //   return pills.add({
  //     'pillName': pillName,
  //     'pillNum': pillNum,
  //     'startDate': startDate,
  //     'endDate': endDate,
  //     'time1': time1,
  //     'time2': time2, 
  //     'schedule': schedule,

  //   });
  // }

  
  // Read
  // final CollectionReference pills = 
  //     FirebaseFirestore.instance.collection('pills');
  Stream<List<DocumentSnapshot>> getPills() {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    return pillsCollection.snapshots().map((snapshot) => snapshot.docs);
  } else {
    return Stream<List<DocumentSnapshot>>.empty();
  }
}

  // Update
  Future<void> updatePill(String pillId, Map<String, dynamic> updatedData) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    await pillsCollection.doc(pillId).update(updatedData);
  }
}

  // Delete
  Future<void> deletePill(String pillId) async {
  final currentUser = FirebaseAuth.instance.currentUser;
  if (currentUser != null) {
    await pillsCollection.doc(pillId).delete();
  }
}
}