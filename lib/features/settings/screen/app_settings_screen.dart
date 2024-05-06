import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/variables/mediaQuery.dart';

class AppSettingScreen extends StatefulWidget {
  const AppSettingScreen({super.key});

  @override
  State<AppSettingScreen> createState() => _AppSettingScreenState();
}

class _AppSettingScreenState extends State<AppSettingScreen> {
  TextEditingController waletAddress = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        title: Text(
          'App Settings',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: w * 0.06),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: h * 0.08,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Transfer Rate',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.05),
                    ),
                    SizedBox(
                      width: w * 0.03,
                    ),
                    Container(
                      width: w * 0.4,
                      height: h * 0.07,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '92.00 ',
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontWeight: FontWeight.w500,
                                fontSize: w * 0.05),
                          ),
                          Text(
                            'INR',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: w * 0.05),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: w * .24),
                        child: Text(
                          'Min USTDT',
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: w * 0.03),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                          height: h * 0.08,
                          width: w * 0.43,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '25',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500,
                                  fontSize: w * 0.04),
                            ),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: w * 0.04,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: w * 0.25),
                        child: Text(
                          'Min USTDT',
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w400,
                              fontSize: w * 0.03),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Container(
                          height: h * 0.08,
                          width: w * 0.43,
                          decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '25',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w500,
                                  fontSize: w * 0.04),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                'info Message',
                style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                    fontSize: w * 0.03),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                  height: h * 0.12,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'We accept everyone because we provide 100% clean money',
                      style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.04),
                    ),
                  )),
              SizedBox(
                height: h * 0.01,
              ),
              Text(
                'Wallet Address',
                style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.w400,
                    fontSize: w * 0.03),
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Container(
                height: h * 0.12,
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  maxLines: 10,
                  controller: waletAddress,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Maintanace Mode',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: w * 0.05),
                  ),
                  Container(
                    height: h * 0.04,
                    width: w * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    child: Center(
                        child: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.white,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Wallet Under',
                    style: TextStyle(
                        color: Colors.white60,
                        fontWeight: FontWeight.w400,
                        fontSize: w * 0.05),
                  ),
                  Container(
                    height: h * 0.04,
                    width: w * 0.12,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent),
                    child: Center(
                        child: Icon(
                      CupertinoIcons.check_mark,
                      color: Colors.white,
                    )),
                  )
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Divider(
                height: h * 0.02,
                color: Colors.white60,
              ),
              SizedBox(
                height: h * 0.01,
              ),
              SizedBox(
                  height: h * 0.22,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(top: h * 0.01),
                        child: Container(
                          height: h * 0.09,
                          width: w,
                          child: Row(
                            children: [
                              Icon(
                                Icons.image,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('IMG304',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: w * 0.04)),
                                  Text('Home Banner 1/21 kb',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w400,
                                          fontSize: w * 0.04)),
                                ],
                              ),
                              SizedBox(
                                width: w * 0.3,
                              ),
                              Align(
                                  alignment: Alignment.topRight,
                                  child: Icon(
                                    CupertinoIcons.clear,
                                    color: Colors.white,
                                    size: w * 0.05,
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  )),
              SizedBox(height: h*0.01,),
              Row(
                children: [
                  Icon(
                    Icons.cloud_done_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('image upload',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: w * 0.04)),
                      Text('Home Banner 2',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.w400,
                              fontSize: w * 0.04)),
                    ],
                  ),

                ],
              ),
              SizedBox(height: h*0.01,),
              Container(
                height: h * 0.07,
                width: w,
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Save',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: h*0.02,),
            ],
          ),
        ),
      ),
    );
  }
}
