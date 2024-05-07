import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import '../../../core/variables/mediaQuery.dart';
import '../../../features/model_class/order_model_class.dart';

class ChangePasswordScreen extends StatefulWidget {
  final OrderModel orderModel;
  const ChangePasswordScreen({super.key, required this.orderModel});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  FirebaseAuth _auth = FirebaseAuth.instance;

  void _resetPassword() async {
    String newPassword = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (newPassword != confirmPassword) {
      // Passwords don't match, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Passwords do not match'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      // Update password
      await _auth.currentUser?.updatePassword(newPassword);

      // Password reset successful
      // You can navigate to a success screen or do any other action here
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Password reset successful'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (error) {
      // Password reset failed, show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to reset password. ${error.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(
            left: w * 0.05, right: w * 0.05, top: h * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: h * 0.05),
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
            SizedBox(height: h * 0.05),
            Container(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: passwordController,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
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
            SizedBox(height: h * 0.04),
            Container(
              padding: EdgeInsets.symmetric(horizontal: w * 0.05),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                controller: confirmPasswordController,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
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
            SizedBox(height: h * 0.3),
            GestureDetector(
              onTap: _resetPassword,
              child: Container(
                height: h * 0.07,
                width: w,
                padding: EdgeInsets.symmetric(horizontal: w * 0.05),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Reset Password',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
