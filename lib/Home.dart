import 'package:flutter/material.dart';
import 'package:tripapp/Service/Service.dart';

import 'model/trip.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Services ser = Services();
    Trip trip = ser.getdata();
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "تفاصيل الرحلة",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 20,
                ),
                onPressed: () {})
          ],
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                //  SidebarPage(),
                Container(
                  height: size.height * 0.1,
                  width: size.width,
                  color: Colors.black,
                ),
                Container(
                  height: size.height * 0.35,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('${trip.image}'),
                          fit: BoxFit.cover)),
                ),
                InkWell(
                  child: ListTile(
                    trailing: Icon(
                      Icons.arrow_forward,
                    ),
                    title: Text(
                      "معرض الرحلة",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(),
                details("اسم الدولة", "موقع الرحلة ", Colors.amber,
                    FontWeight.bold),
                details("${trip.contry}", "${trip.location}", Colors.black,
                    FontWeight.normal),
                Divider(),
                details("بداية الرحلة", "عدد الايام", Colors.amber,
                    FontWeight.bold),
                details("${trip.date}", "${trip.period}", Colors.black,
                    FontWeight.normal),
                Divider(),
                Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        details("معلومات الرحلة", "", Colors.amber,
                            FontWeight.bold),
                        ListTile(
                          leading: Icon(
                            Icons.food_bank,
                          ),
                       
                          title: Text(
                            "عدد الوجبات يوميا",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          trailing: Text(
                            "وجبتان   ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.hotel),
                          title: Text(
                            "فندق الاستقبال",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          trailing: Text(
                            "شيراتون",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.sports_soccer_rounded),
                          title: Text(
                            "النشاطات الرياضية",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          trailing: Text(
                            "   تزلج     ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.monetization_on),
                          title: Text(
                            "السعر للشخص الواحد",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          trailing: Text(
                            "1000   ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    )),
                Divider(),
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    width: size.width,
                    height: 50,
                    color: Colors.amber,
                    child: Text(
                      "حجز في هذه الرحلة",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('teket');
                  },
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 20, right: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/index1.jpg'),
                      radius: 40,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Text(
                        'ahmad alhamad ',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

Widget details(String txt1, String txt2, Color color, FontWeight weight) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "$txt1",
            style: TextStyle(color: color, fontSize: 18, fontWeight: weight),
          ),
        ),
        Expanded(
            child: Center(
          child: Text(
            "$txt2",
            style: TextStyle(color: color, fontSize: 18, fontWeight: weight),
          ),
        ))
      ],
    ),
  );
}
/*Column(
                    children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.food_bank),
                          Icon(Icons.hotel),
                          Icon(Icons.sports_hockey_sharp),
                          Icon(Icons.payment),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("data"),
                          Text("data"),
                          Text("data"),
                          Text("data")
                        ],
                      )                      
                    ],
                  ),*/