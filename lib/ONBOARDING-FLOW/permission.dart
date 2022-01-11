import 'package:citylegends_onboarding/ONBOARDING-FLOW/end.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class permissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/map-bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Image.asset("images/logo-gra.png"),
              Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Image.asset("images/fade-02.png"),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(120.0),
                        child: SvgPicture.asset("images/loca.svg"),
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(height: 40),
              Text.rich(
                TextSpan(
                  text: 'GIVE PERMISSION FOR LOCATION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100),
            ]),
      ),
      bottomSheet: Container(
          color: Colors.black,
          height: 75.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: [
                      IconButton(
                          icon: SvgPicture.asset("images/btn-back.svg"),
                          iconSize: 85,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      IconButton(
                          icon: SvgPicture.asset("images/btn-next.svg"),
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (_, __, ___) => endScreen(),
                                  transitionDuration: Duration(seconds: 0),
                                ));
                          }),
                    ],
                  ),
                )
              ])),
    );
  }
}
