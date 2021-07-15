import 'package:carwash_app/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ticket_widget/flutter_ticket_widget.dart';

class TicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color.fromRGBO(220, 220, 220, 1),
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      title: Text('Tickets',style: TextStyle(fontFamily: 'Montserrat',)),
      centerTitle: true,
      backgroundColor: Color.fromRGBO(30, 215, 96, 1),
    ),
    body: Center(
      child: FlutterTicketWidget(
        width: 350,
        height: 500,
        isCornerRounded: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  <Widget>[
                  Container(
                    width: 120,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(width: 1, color: Colors.green)
                    ),
                    child: Center(
                      child: Text(
                        'Car Wash',
                        style: TextStyle(
                            color: Colors.green
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        'MRL',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Icon(
                          Icons.airport_shuttle,
                          color: Colors.pink,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        // child: Text(
                        //   'BTL',
                        //   style: TextStyle(
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.bold
                        //   ),
                        // ),
                      )
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Ticket',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Column(
                  children: <Widget>[
                    ticketDetailsWidget('Name', 'Licio', 'Date', '24-12-2021'),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, right: 10),
                      child: ticketDetailsWidget('Type', 'Car Wash', 'Reg', 'KAH 699C'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 30, right: 30),
                child: Container(
                  width: 250,
                  height: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/barcode.png'
                          ),
                          fit: BoxFit.cover
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 75, right: 75),
                child: Text(
                  '9824 0972 1742 1298',
                  style: TextStyle(
                      color: Colors.black
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget ticketDetailsWidget(String firstTitle, String firstDesc, String secondTitle, String secondDesc) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              firstTitle,
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                firstDesc,
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              secondTitle,
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                secondDesc,
                style: TextStyle(
                    color: Colors.black
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}