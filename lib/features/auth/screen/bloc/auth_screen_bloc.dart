import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mitco_task/core/common_bloc/order_model_bloc.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../controller/Auth_controller.dart';

part 'auth_screen_event.dart';
part 'auth_screen_state.dart';

class AuthScreenBloc extends Bloc<AuthScreenEvent, AuthScreenState> {
  final AuthController _controller;
  AuthScreenBloc({required AuthController controller}) : _controller=controller,super(AuthScreenInitial()) {
    on<AuthSignIn>((event, emit) async {
     emit(AuthLoading());
      try{
        final res=await _controller.signIn(email: event.email, password: event.password);

        res.fold((l) => emit(AuthFailure(message: l.message)), (r) async {
          if(r==null){
            return emit(AuthFailure(message: 'user is null'));
          }else {
            SharedPreferences preferences = await SharedPreferences.getInstance();
            preferences.setString('orderId', r.orderId);
            // event.context.read<OrderModelBloc>().add(OrderEvent(orderModel: r));
            print(r.toMap());
            print('kkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
            return emit(AuthSuccess(orderModel: r));
          }});
      }catch (e){
        return emit(AuthFailure(message: e.toString()));
      }
    });
  }
}
