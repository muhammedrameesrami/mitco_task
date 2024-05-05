import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mitco_task/features/model_class/order_model_class.dart';

import '../../../core/variables/mediaQuery.dart';

class DataDetailScreen extends StatefulWidget {
  final OrderModel orderModel;
  const DataDetailScreen({super.key, required this.orderModel});

  @override
  State<DataDetailScreen> createState() => _DataDetailScreenState();
}

class _DataDetailScreenState extends State<DataDetailScreen> {
  TextEditingController comment = TextEditingController();
  final a = [
    {
      "color": const Color(0xffFF0303),
      "text": "cancel",
    },
    {
      "color": const Color(0xffF4B536),
      "text": "pending",
    },
    {
      "color": const Color(0xff6AC366),
      "text": "success",
    }
  ];
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
          'History',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: w * 0.06),
        ),
        actions: [
          Icon(
            Icons.share,
            color: Colors.blueAccent,
          ),
          SizedBox(
            width: w * 0.05,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: w * 0.04, right: w * 0.04),
        child: Container(
          height: h,
          width: w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.02,
                ),
                Container(
                  height: h * 0.61,
                  width: w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white12),
                  child: Column(
                    children: [
                      Container(
                        height: h * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10)),
                          color: Colors.blueAccent,
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                widget.orderModel.accountHolderName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.06,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: h * 0.01,
                              ),
                              Text(
                                'Referral No .',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: w * 0.04,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Date : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text(
                              DateFormat.yMMMMd()
                                  .format(widget.orderModel.date),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  A/c Number : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text('89698687598gb  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  A/c Holder Name  : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text(widget.orderModel.accountHolderName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  IFSC Code : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text(widget.orderModel.ifscCode,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Bank : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text('Kerala Gramin Bank  ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  USTD : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text('91 USTD  ',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Transfer Rate : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text(widget.orderModel.transferRate,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('  Total : ',
                              style: TextStyle(
                                color: Colors.white30,
                                fontSize: w * 0.04,
                              )),
                          Text(widget.orderModel.total,
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: w * 0.04,
                              )),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: w * 0.02, right: w * 0.02),
                        child: Divider(
                          height: h * 0.02,
                          color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'select Status',
                    style: TextStyle(
                        color: Colors.white30,
                        fontWeight: FontWeight.w500,
                        fontSize: w * 0.035),
                  ),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: h * 0.06,
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton(dropdownColor: Colors.grey,
                    isExpanded: true,
                    value: widget.orderModel.status,
                    underline: SizedBox(),icon: Icon(Icons.arrow_drop_down,color: Colors.white,),
                   items: a.map((Map items) {
                     return DropdownMenuItem<String>(value: items['text'],
                         child:Row(children: [
                           SizedBox(width: w*0.03,),
                           CircleAvatar(radius: w*0.02,backgroundColor: items['color'],),
                           SizedBox(width: w*0.03,),
                           Text(items['text'],style: TextStyle(color: Colors.white),)
                         ],),
                     );
                   }).toList(),
                    onChanged: (value) {

                    },
                  ),
                ),
                SizedBox(height: h * 0.02),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Comments',
                      style: TextStyle(
                          color: Colors.white30,
                          fontWeight: FontWeight.w500,
                          fontSize: w * 0.035),
                    )),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: h * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white12),
                  // color: Colors.red,
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                    ],
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'please enter your leave ';
                      }
                      return null;
                    },
                    cursorColor: Colors.white12,
                    minLines: 30,
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: null,
                    controller: comment,
                    style: TextStyle(color: const Color(0xffAFAFAF)),
                    maxLength: null,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: "ENTER ",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white30,
                          fontSize: h * 0.02),
                      // labelText: "ENTER YOUR TEXT.............",
                      // labelStyle: GoogleFonts.nunitoSans(fontWeight: FontWeight.w400,color: greyColor,fontSize: h*0.015),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                              color: Colors.transparent,
                              style: BorderStyle.solid)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: const BorderSide(
                              color: Colors.transparent,
                              style: BorderStyle.solid)),
                      // floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.05,
                ),
                InkWell(
                  onTap: () {},
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
                        'Save',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
