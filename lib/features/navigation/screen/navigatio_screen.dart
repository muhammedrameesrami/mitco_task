import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/variables/mediaQuery.dart';
import '../../home/screen/home_screen.dart';
import '../../model_class/order_model_class.dart';


class BottomNavigationMobile extends StatefulWidget {
final OrderModel orderModel;
  const BottomNavigationMobile({super.key,required this.orderModel});

  @override
  _BottomNavigationMobileState createState() => _BottomNavigationMobileState();
}

class _BottomNavigationMobileState extends State<BottomNavigationMobile>
    with TickerProviderStateMixin {

  int _selectedIndex = 0;

  bNavItems(int index) {
    final List<Widget> widgetOptions = <Widget>[
     HomeScreen(orderModel:widget.orderModel!),
     HomeScreen(orderModel:widget.orderModel!),
     HomeScreen(orderModel:widget.orderModel!),
     HomeScreen(orderModel:widget.orderModel!),

    ];
    return widgetOptions[index];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context1) {

    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Alert'),
                content: Text('do yo want to exit '),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text('cancel')),
                  ElevatedButton(
                      onPressed: () {

                        Navigator.of(context).pop(true);
                      },
                      child: Text('ok'))
                ],
              );
            });
        return value ?? false;
      },
      child: Scaffold(
        extendBody: true,
        body:bNavItems(_selectedIndex, ),
        bottomNavigationBar: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: BottomBarInspiredFancy(
                titleStyle: const TextStyle(color: Colors.white),
                items: const [
          TabItem(
            icon: Icons.home, // Using IconData directly
            title: "Home",
          ),
          TabItem(
            icon: CupertinoIcons.arrow_2_circlepath, // Using IconData directly
            title: "Pending",
          ),
          TabItem(
            icon: CupertinoIcons.chart_bar, // Using IconData directly
            title: "Report",
          ),
          TabItem(
            icon: Icons.settings, // Using IconData directly
            title: "Settings",
          ),
                ], backgroundColor: Colors.black, color: Colors.white, colorSelected: Colors.blueAccent,
                // Other properties...
              ),
        ),

    ));
  }
}
