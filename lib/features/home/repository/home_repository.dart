import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model_class/order_model_class.dart';

class HomeRepository {
  final FirebaseFirestore _firestore;
  HomeRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;

  Stream<List<OrderModel>> getOrder({required String orderId}) {
    return FirebaseFirestore.instance
        .collection('order')
        .snapshots()
        .map((event) {
     return event.docs.map((e) =>
         OrderModel.fromMap(e.data())
      ).toList();
    });
  }

 Future<AggregateQuerySnapshot> getCount({required String orderId,required String status}) async {
   final count=await FirebaseFirestore.instance
        .collection('order').where('status',isEqualTo: status).count()
        .get();

   return count;
  }

}
