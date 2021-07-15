import 'package:carwash_app/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  String email,name;
  DateTime date;



  //To Validate email
      String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Bookings',style: TextStyle(fontFamily: 'Montserrat',)),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(30, 215, 96, 1),
    ),
    body: Stack(
      alignment: Alignment.center,
      children: [
      Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'NAME',
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12.0,
                  color: Colors.grey.withOpacity(0.5)),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: Colors.grey.withOpacity(0.5)),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      )),
                  onChanged: (value) {
                    this.email = value;
                  },
                  validator: (value) =>
                  value.isEmpty ? 'Email is required' : validateEmail(value)),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'VEHICLE REG NO',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 12.0,
                      color: Colors.grey.withOpacity(0.5)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                ),
              ),
              // textfield(
              //   hintText: 'Confirm password',
              // ),
              Container(
                height: 55,
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.black54,
                  child: Center(
                    child: Text(
                      "Make Booking",
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),

  ],
    ),
  );
}




