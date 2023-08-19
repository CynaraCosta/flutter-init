import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {

  String location;
  late String time;
  String flag;
  String url;

  WorldTime({ required this.location, required this.flag, required this.url });

  Future<void> getTime() async {

    try {
        // make the request
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);
      
      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      
      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      time = now.toString();
    } catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }

}