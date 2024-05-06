import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

class PendingRepository {
  final FirebaseFirestore _firestore;
  PendingRepository({required FirebaseFirestore firestore})
      : _firestore = firestore;

  Stream<List<OrderModel>> PendingOrder() {
    return FirebaseFirestore.instance
        .collection('order')
        .where('status', isEqualTo: 'pending')
        .snapshots()
        .map((event) {
      return event.docs.map((e) => OrderModel.fromMap(e.data())).toList();
    });
  }
}
