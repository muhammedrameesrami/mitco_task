import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mitco_task/features/home/repository/home_repository.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

class HomeController {
  final HomeRepository _repository;
  HomeController({required HomeRepository repository})
      : _repository = repository;

  Stream<List<OrderModel>> getOrder({required String orderId}) {
    return _repository.getOrder(orderId: orderId);
  }
  Future<AggregateQuerySnapshot> getCount({required String orderId,required String status}) async {
    return _repository.getCount(orderId: orderId,status: status);
  }
}
