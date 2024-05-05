import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mitco_task/features/home/controller/home_controller.dart';
import 'package:mitco_task/features/home/repository/home_repository.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

import '../../../core/variables/mediaQuery.dart';
import 'data_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  final OrderModel orderModel;
  const HomeScreen({Key? key, required this.orderModel});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count=0;
  // @override
  // Future<void> initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   await HomeController(repository: HomeRepository(firestore: FirebaseFirestore.instance)).getCount(orderId: widget.orderModel.orderId);
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          height: h,
          width: w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blueAccent,
                height: h * 0.34,
                width: w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: w * 0.05),
                          child: SizedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hey, ${widget.orderModel.accountHolderName}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: w * 0.06),
                                ),
                                Text(
                                  'Welcome to Our App',
                                  style: TextStyle(
                                      color: Colors.white30,
                                      fontSize: w * 0.045),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: w * 0.05),
                          child: Container(
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Positioned(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: w * 0.15,
                                      ),
                                    ),
                                    Positioned(
                                      left: w * 0.006,
                                      top: h * 0.004,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        radius: w * 0.145,
                                      ),
                                    ),
                                    Positioned(
                                      top: h * 0.012,
                                      left: w * 0.02,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white38,
                                        radius: w * 0.13,
                                      ),
                                    ),
                                    Positioned(
                                      top: h * 0.016,
                                      left: w * 0.03,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.blueAccent,
                                        radius: w * 0.12,
                                        child: Icon(CupertinoIcons.person),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.17,
                      width: w * 0.31,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Pending',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Text(
                              '05',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: h * 0.01,
                              width: w * 0.07,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.17,
                      width: w * 0.31,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Complete',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Text(
                              '12',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: h * 0.01,
                              width: w * 0.07,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Container(
                      height: h * 0.17,
                      width: w * 0.31,
                      decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Center(
                            child: Text(
                              'Canceled',
                              style: TextStyle(
                                  color: Colors.white38,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Text(
                              '110',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: w * 0.045),
                            ),
                          ),
                          Center(
                            child: Container(
                              height: h * 0.01,
                              width: w * 0.07,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Transaction',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: w * 0.05),
                        ),
                        Container(
                          height: h * 0.01,
                          width: w * 0.13,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ],
                    ),
                    Container(
                      height: h * 0.05,
                      width: w * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12),
                      child: Center(
                          child: Text(
                        'More',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    )
                  ],
                ),
              ),
              Container(
                height: h * 0.4,
                width: w,
                child: StreamBuilder<List<OrderModel>>(
                    stream: HomeController(
                            repository: HomeRepository(
                                firestore: FirebaseFirestore.instance))
                        .getOrder(orderId: widget.orderModel.orderId),
                    builder: (context, snapshot) {
                      if(snapshot.connectionState==ConnectionState.waiting){
                        return Center(child: CircularProgressIndicator(),);
                      }else if(!snapshot.hasData||snapshot.data==null){
                        return Center(child: Text('No User!.....'),);
                      }else {
                        var data=snapshot.data!;
                        return ListView.builder(itemCount: data.length,
                          itemBuilder: (context, index) {
                         final order=data[index];
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: w * 0.05,
                                  right: w * 0.05,
                                  bottom: w * 0.03),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DataDetailScreen(orderModel:order)));
                                },
                                child: Container(
                                  width: w,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: h * 0.02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '  Refer No : ${order.orderId}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: w * 0.04),
                                          ),
                                          Container(
                                            height: h * 0.05,
                                            width: w * 0.15,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                color: order.status=='pending'?Colors.yellow:order.status=='succes'?Colors.green:Colors.red),
                                            child: Center(
                                                child: Text(
                                                  order.status,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '  Trade :',
                                            style: TextStyle(
                                                color: Colors.white38,
                                                fontWeight: FontWeight.w700,
                                                fontSize: w * 0.04),
                                          ),
                                          Text(
                                            '${order.trade} INR  ',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.w700,
                                                fontSize: w * 0.04),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: h * 0.01,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '  Date :',
                                            style: TextStyle(
                                                color: Colors.white38,
                                                fontWeight: FontWeight.w700,
                                                fontSize: w * 0.04),
                                          ),
                                          Text(
                                           DateFormat.yMMMMd().format(order.date),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700,
                                                fontSize: w * 0.04),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: h * 0.02,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      } }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
