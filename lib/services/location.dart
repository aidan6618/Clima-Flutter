import 'package:geolocator/geolocator.dart';

class Location {
  Location();

  double latitude;
  double longitude;
  Position position;

  Future<void> getCurrentPosition() async {
    try {
      position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.lowest);
      latitude = position.latitude;
      longitude = position.longitude;
      print('The latitude is: $latitude and the longitude is: $longitude');
    } catch (e) {
      print(e);
    }
  }
}
