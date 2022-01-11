import 'package:flutter/material.dart';
import 'package:citylegends_onboarding/ONBOARDING-FLOW/chooseRoute.dart';
import 'package:flutter_svg/flutter_svg.dart';

class welcomeHome extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                Image.asset("images/logo-gra.png"),

                Text.rich(
                  TextSpan(
                      text: 'Welcome ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: 'to the online urban community',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 80),
                Text(
                  'Sick you’ve made your way to the online urban community. The online place where your clips are worth money, you find unique spots and awesome community members!',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white),
                ),
                // SizedBox(height: 10),
                SizedBox(
                  height: 00,
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
                      IconButton(
                          icon: SvgPicture.asset("images/btn-next.svg"),
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) => chooseRoute(),
                                transitionDuration: Duration(seconds: 0),
                              ),
                            );
                          }),
                    ],
                  ),
                )
              ])),
    );
  }
}
