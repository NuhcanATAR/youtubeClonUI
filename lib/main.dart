import 'package:flutter/material.dart';
import 'package:youtube_clon_app/home/home_page.dart';

void main() {
  runApp(AppRouters());
}

class AppRouters extends StatelessWidget {
  const AppRouters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RootersPg(),
      initialRoute: "/rootersPg",
      routes: {
        "/rootersPg": (context) => RootersPg(),
        "/homePg": (context) => homePg(),
      },
    );
  }
}

class RootersPg extends StatefulWidget {
  const RootersPg({Key? key}) : super(key: key);

  @override
  State<RootersPg> createState() => _RootersPgState();
}

class _RootersPgState extends State<RootersPg> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => homePg()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 115,
          height: 115,
          child: Image.asset(
              "assets/images/app_logo/YouTube_full-color_icon_(2017).svg.png"),
        ),
      ),
    );
  }
}
