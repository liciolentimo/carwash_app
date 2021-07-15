import 'package:carwash_app/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Profile',style: TextStyle(fontFamily: 'Montserrat',)),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(30, 215, 96, 1),
    ),
  );
}