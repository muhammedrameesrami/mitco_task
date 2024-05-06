import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/variables/mediaQuery.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
 TextEditingController pasword=TextEditingController();
 TextEditingController confirmPasword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding:
            EdgeInsets.only(left: w * 0.05, right: w * 0.05, top: h * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * 0.04,
            ),
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                    size: w * 0.045,
                  ),
                )),
            SizedBox(height: h*0.05,),
            Text(
              'Change Password',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: w * 0.06),
            ),
            Container(
              height: h * 0.01,
              width: w * 0.13,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              height: h * 0.03,
            ),
            SizedBox(
              width: w * 0.9,
              child: Text(
                'Free tools to sky-rocket your creative freedom image generater',
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w400,
                  fontSize: w * 0.04,
                ),
              ),
            ),
            SizedBox(height: h*0.05,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: pasword,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.blueAccent,
                    ),
                    suffixIcon: Icon(CupertinoIcons.eye),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),

            ),
            SizedBox(height: h*0.04,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: pasword,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.blueAccent,
                    ),
                    suffixIcon: Icon(CupertinoIcons.eye),
                    hintText: 'Confirm New Password',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),

            ),
            SizedBox(height: h*0.3,),
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
                  'Reset Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
