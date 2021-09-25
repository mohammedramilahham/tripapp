import 'package:flutter/material.dart';
import 'package:tripapp/Service/Service.dart';
import 'package:tripapp/model/booking_teckit.dart';

class Ticket extends StatefulWidget {
  Ticket({Key key}) : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  Services ser = Services();

  Booking_teckit s = Booking_teckit();

  TextEditingController paymentController = TextEditingController();

  TextEditingController personnumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: ListView(
          children: [
            Stack(children: [
              Container(height: 300, color: Colors.amber),
              Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(70)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/index2.jpg'),
                        fit: BoxFit.cover),
                  )),
            ]),
            Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(25))),
                child: ListTile(
                  trailing: Text(
                    "احجز الان",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  title: Text("20%",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  subtitle: Text("حسومات",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )),
            Container(
              margin: EdgeInsets.all(15),
              child: Column(children: [
                TextField(
                    maxLength: 20,
                    decoration: InputDecoration(
                      icon: Icon(Icons.format_list_numbered),
                      labelText: 'ادخل عدد الافراد',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                    ),
                    controller: personnumberController),
                TextField(
                    maxLength: 20,
                    decoration: InputDecoration(
                      icon: Icon(Icons.attach_money_rounded),
                      labelText: 'طريقة الدفع',
                      suffixIcon: Icon(
                        Icons.check_circle,
                      ),
                    ),
                    controller: paymentController),
              ]),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber.withOpacity(0.7),
            child: Column(
              children: [Icon(Icons.airplanemode_active), Text("حجز ")],
            ),
            onPressed: () {
              s.name = "ahmad";
              s.payment = paymentController.text;
              s.personnumber = personnumberController.text;
              ser.SendDataForTickit(s);

              print("succsess");
            }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
