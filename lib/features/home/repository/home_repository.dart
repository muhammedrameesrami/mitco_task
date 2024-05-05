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

 Future<AggregateQuery> getCount({required String orderId}) async {
   final count=await FirebaseFirestore.instance
        .collection('order').count()
        .get();
   final c=count.query.count();
   return c;
  }

}
