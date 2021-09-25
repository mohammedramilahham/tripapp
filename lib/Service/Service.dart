import 'package:tripapp/model/booking_teckit.dart';
import 'package:tripapp/model/trip.dart';

class Services {
  Trip getdata() {
    return Trip(
      location: 'النمسا-جبال الالب-الحدود السويسرية',
      price: 1000,
      contry: 'النمسا',
      date: '12/3/2021',
      period: 10,
      description:
          'تضمن هذه الرحلة فطور في مطعم ؟؟ كما تتضمن ممارسة رياضة التزلج بالاضافة الى حفلات',
      image: 'assets/images/index.jpg',
    );
  }

  SendDataForTickit(Booking_teckit bo) {
    //default :data must be sent in order to reserve teckit for the trip this function work (api post)
  }
}
