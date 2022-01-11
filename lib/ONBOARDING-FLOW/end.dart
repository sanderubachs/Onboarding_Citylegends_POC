import 'package:citylegends_onboarding/ONBOARDING-FLOW/chooseRoute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class endScreen extends StatelessWidget {
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

              // SizedBox(height: 40),
              Text.rich(
                TextSpan(
                  text: 'THAT’S IT!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'WASN’T THAT HARD AFTER ALL, HUH?',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),

              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(254, 123, 32, 1.0)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 30,
                        fontFamily: 'Bebas Neue',
                        color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chooseRoute()));
                },
                child: Text('Battle'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(254, 123, 32, 1.0)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 30,
                        fontFamily: 'Bebas Neue',
                        color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chooseRoute()));
                },
                child: Text.rich(
                  TextSpan(text: '            Explore', children: [
                    TextSpan(
                      text: ' done',
                      style:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 0.4)),
                    )
                  ]),
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(254, 123, 32, 1.0)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(
                        fontSize: 30,
                        fontFamily: 'Bebas Neue',
                        color: Colors.black),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chooseRoute()));
                },
                child: Text('Build legacy'),
              ),
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
