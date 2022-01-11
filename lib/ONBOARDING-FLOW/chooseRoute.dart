import 'package:citylegends_onboarding/ONBOARDING-FLOW/explore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class chooseRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset("images/logo-gra.png"),

                Text.rich(
                  TextSpan(
                    text: 'What do you want to learn more about? ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 80),
                Text(
                  'You can do them all, just choose one for now',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Colors.white),
                ),
                // SizedBox(height: 10),
                SizedBox(
                  height: 00,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => exploreExplained()));
                  },
                  child: Text('Explore'),
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
                    ],
                  ),
                )
              ])),
    );
  }
}
