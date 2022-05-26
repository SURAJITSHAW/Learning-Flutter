import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // Location name for the UI
  late String time; // the Time in that location
  String flag; // URl to an asset flag icon
  String url; // location url for api endpoints
  late bool isDayTime;

  WorldTime({ required this.location, required this.flag, required this.url });


  Future<void> getTime() async {

    try {
      // Make the Request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));

    // Conver that response(JSON String) to Map data type
    Map data = jsonDecode(response.body);
    print(data);
    
    String dataAsString = data['datetime'];
    // Assign the datetime prop value to DateTime class's object instance
    // DateTime now = DateTime.parse(dataAsString);
    // print(now);

      String datetime = data['datetime'];
      String offsetHours = data['utc_offset'].substring(1,3);
      String offsetMins = data['utc_offset'].substring(4);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offsetHours), minutes: int.parse(offsetMins)));
      print(now);

    isDayTime = now.hour > 5 && now.hour < 18 ? true : false;
    time = DateFormat.jm().format(now);
    }
    catch (e) {
      print('Error: $e');
      time = 'Server Problem :(';
    }

  }

}