import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

import '../../../core/variables/mediaQuery.dart';

class ReportScreen extends StatefulWidget {

  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final l=[{'text':'Pending','color':Colors.yellow},{'text':'succes','color':Colors.green},{'text':'cancel','color':Colors.red}];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          Container(
            height: h * 0.06,
            width: w * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('12-aug-23'),
                Icon(
                  CupertinoIcons.calendar,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ),
          SizedBox(width: w*0.05,),Container(
            height: h * 0.06,
            width: w * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('12-aug-23'),
                Icon(
                  CupertinoIcons.calendar,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ),
          SizedBox(width: w*0.05,)
        ],
      ),
      body: Column(children: [
        Row(children: [
          Container(
            height: h * 0.08,
            width: w * 0.53,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10)), color: Colors.blueAccent),
            child: Center(child: Text('128 Report',style: TextStyle(color: Colors.white),)),
          ),
          SizedBox(width: w*0.03,),
          Padding(
            padding:  EdgeInsets.only(top: h*0.01),
            child: Container(
              height: h * 0.065,
              width: w * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blueAccent),
              child: Center(child: Text('Search',style: TextStyle(color: Colors.white),)),
            ),
          ),
        ],),
        SizedBox(height: h*0.02,),
        SizedBox(height: h*0.74,width: w,
          child: ListView.builder(
            itemCount: l.length,
            itemBuilder: (context, index) {

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
                              '  Refer No : 8362983392',
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
                                  color:l[index]['color']as Color),
                              child: Center(
                                  child: Text(
                                    l[index]['text'].toString(),
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
                              '3028-02-20 INR  ',
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
                              '32/23/23 am',
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
          ),
        )
      ],),
    );
  }
}
