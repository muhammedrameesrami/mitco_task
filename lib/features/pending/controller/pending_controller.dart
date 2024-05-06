import 'package:mitco_task/features/model_class/order_model_class.dart';
import 'package:mitco_task/features/pending/repository/pernding_repository.dart';

class PendingController{
  final PendingRepository _repository;
  PendingController({required PendingRepository repository}):
      _repository=repository;

  Stream<List<OrderModel>>pendingOrder(){
    return _repository.PendingOrder();
  }
}