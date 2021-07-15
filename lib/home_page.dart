import 'package:carwash_app/services/authservice.dart';
import 'package:carwash_app/widget/button_widget.dart';
import 'package:carwash_app/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    // endDrawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor:Color.fromRGBO(30, 215, 96, 1),
      title: Text("Car Wash"),
    ),
    body: Builder(
      builder: (context) => Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 32),
        // child: ButtonWidget(
        //   icon: Icons.open_in_new,
        //   text: 'Open Drawer',
        //   onClicked: () {
        //     Scaffold.of(context).openDrawer();
        //     // Scaffold.of(context).openEndDrawer();
        //   },
        // ),
      ),
    ),
  );
    // return Scaffold(
    //     body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
    //       Text('You are logged in'),
    //       ElevatedButton(
    //           onPressed: () {
    //             AuthService().signOut();
    //           },
    //           child: Center(child: Text('LOG OUT')))
    //     ]));
  }
