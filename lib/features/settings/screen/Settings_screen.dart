import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

import '../../../core/variables/mediaQuery.dart';
import 'app_settings_screen.dart';
import 'change_password_screen.dart';

class SetttingScreen extends StatefulWidget {
  final OrderModel orderModel;
  const SetttingScreen({super.key, required this.orderModel});

  @override
  State<SetttingScreen> createState() => _SetttingScreenState();
}

class _SetttingScreenState extends State<SetttingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: h * 0.35,
            width: w,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(10)),
                color: Colors.blueAccent),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * 0.8, top: h * 0.02),
                  child: Container(
                    height: h * 0.04,
                    width: w * 0.08,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Icon(Icons.pending_outlined),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(CupertinoIcons.person),
                  radius: w * 0.13,
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Text(
                  widget.orderModel.accountHolderName,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: w * 0.06),
                ),
                SizedBox(height: h * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.mail,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      widget.orderModel.email,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.035),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen(
                              orderModel: widget.orderModel,
                            )));
              },
              child: Container(
                height: h * 0.09,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white12),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.lock,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'Change Password',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: w * 0.04),
                    ),
                    SizedBox(
                      width: w * 0.4,
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.white60,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: w * 0.03, right: w * 0.03),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AppSettingScreen()));
              },
              child: Container(
                height: h * 0.09,
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white12),
                child: Row(
                  children: [
                    Icon(
                      Icons.home_outlined,
                      color: Colors.blueAccent,
                    ),
                    SizedBox(
                      width: w * 0.02,
                    ),
                    Text(
                      'App Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: w * 0.04),
                    ),
                    SizedBox(
                      width: w * 0.5,
                    ),
                    Icon(
                      CupertinoIcons.forward,
                      color: Colors.white60,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
