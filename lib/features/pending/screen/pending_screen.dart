import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mitco_task/features/pending/controller/pending_controller.dart';
import 'package:mitco_task/features/pending/repository/pernding_repository.dart';

import '../../../core/variables/mediaQuery.dart';
import '../../model_class/order_model_class.dart';

class PendingScreen extends StatefulWidget {
  const PendingScreen({super.key});

  @override
  State<PendingScreen> createState() => _PendingScreenState();
}

class _PendingScreenState extends State<PendingScreen> {
TextEditingController search=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.blueAccent,title:    SizedBox(
        height: h * .09,
        width: w * .93,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: w * .004, vertical: h * .012),
          child: TextFormField(
            style: TextStyle(fontWeight: FontWeight.w600),
            onChanged: (value) {
            },
            controller: search,
            decoration: InputDecoration(
              suffixIcon: Icon(CupertinoIcons.search,color: Colors.blueAccent,),
                fillColor: Colors.grey.shade100,
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                    const BorderSide(color: Colors.transparent)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                    )),
                hintText: "search Referral No",
                hintStyle: TextStyle(
                    color: Colors.grey, fontWeight: FontWeight.w500),
               ),
          ),
        ),
      ),),
      body: Column(children: [
        Expanded(
          child: StreamBuilder<List<OrderModel>>(
            stream: PendingController(repository: PendingRepository(firestore: FirebaseFirestore.instance)).pendingOrder(),
            builder: (context,snapshot) {
              var data=snapshot.data!;
              if(snapshot.connectionState==ConnectionState.waiting){
                return Center(
                  child: CircularProgressIndicator(),
                );
              }else if (!snapshot.hasData || snapshot.data == null) {
                return Center(
                  child: Text('No User!.....'),
                );
              }else{
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
final pending=data[index];
                    return Padding(
                      padding: EdgeInsets.only(
                          left: w * 0.05,
                          right: w * 0.05,
                          bottom: w * 0.03),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             DataDetailScreen(
                          //                 orderModel: order)));
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
                                    '  Refer No : ${pending.orderId}',
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
                                        color:Colors.blueAccent),
                                    child: Center(
                                        child: Text(
                                          pending.status,
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
                                    '${pending.trade} INR  ',
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
                                  DateFormat.yMMMMd().format(pending.date),
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
              }

            }
          ),
        )
      ],),
    );
  }
}
