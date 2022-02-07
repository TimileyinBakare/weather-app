import 'package:flutter/material.dart';
import 'package:learningprocess/screens/location_screen.dart';
import 'package:learningprocess/services/location.dart';
import 'package:learningprocess/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

String fromOpenWeatherMap =
    'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=6b405eb73fb7a12fb5a868aac591c4bf';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({key}) : super(key: key);

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location objlocationClass = new Location();
    await objlocationClass.getCurrentLocation();
    NetworkHelper objnetworkHelper = NetworkHelper(url: fromOpenWeatherMap);
    var weatherData = await objnetworkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitFadingCircle(
        color: Colors.white,
        size: 100.0,
      ),
    );
  }
}
