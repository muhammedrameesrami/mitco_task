import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home/screen/home_screen.dart';
import '../../model_class/order_model_class.dart';
import '../../pending/screen/pending_screen.dart';
import '../../report/screen/report_screeen.dart';
import '../../settings/screen/Settings_screen.dart';
import 'bloc/bottom_navigation_bloc.dart';

class BottomNavigationMobile extends StatefulWidget {
  final OrderModel orderModel;
  const BottomNavigationMobile({super.key, required this.orderModel});

  @override
  _BottomNavigationMobileState createState() => _BottomNavigationMobileState();
}

class _BottomNavigationMobileState extends State<BottomNavigationMobile>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context1) {
    return WillPopScope(onWillPop: () async {
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
    }, child: BlocBuilder<BottomNavigationBloc, int>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          body: state == 0
              ? HomeScreen(orderModel: widget.orderModel)
              : state == 1
                  ? PendingScreen()
                  : state == 2
                      ? ReportScreen()
                      : SetttingScreen(orderModel: widget.orderModel,),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: BottomBarInspiredFancy(
              onTap: (index) {
                context
                    .read<BottomNavigationBloc>()
                    .add(BotomNavigationIndexUpdate(index: index));
              },
              titleStyle: const TextStyle(color: Colors.white),
              items: const [
                TabItem(
                  icon: Icons.home, // Using IconData directly
                  title: "Home",
                ),
                TabItem(
                  icon: CupertinoIcons
                      .arrow_2_circlepath, // Using IconData directly
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
              ],
              indexSelected: state,
              backgroundColor: Colors.black,
              color: Colors.white,
              colorSelected: Colors.blueAccent,
              // Other properties...
            ),
          ),
        );
      },
    ));
  }
}
