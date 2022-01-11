import 'package:flutter/material.dart';
import 'package:citylegends_onboarding/ONBOARDING-FLOW/permission.dart';
import 'package:flutter_svg/flutter_svg.dart';

class exploreSpots extends StatelessWidget {
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
              Text.rich(
                TextSpan(
                  text: 'EXLORE YOUR CITY ON THE MAP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                child: Align(
                  child: Column(children: <Widget>[
                    Container(
                      child: MyStatefulWidget(),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 125.0, top: 570),
                      padding: EdgeInsets.all(10),
                      child: MyStatefulWidgetSpot(),
                    )
                  ]),
                ),
                height: 700,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/map-screen-empty-02.png'),
                      fit: BoxFit.cover),
                ),
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
                                MaterialPageRoute(
                                  builder: (context) => permissionPage(),
                                ));
                          }),
                    ],
                  ),
                )
              ])),
    );
  }
}

// animated map icon

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  );
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, 12.5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await _controller.forward();
    // await _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SvgPicture.asset("images/spot-icon.svg"),
      ),
    );
  }
}

// animated spot-icons
class MyStatefulWidgetSpot extends StatefulWidget {
  const MyStatefulWidgetSpot({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidgetSpot> createState() => _MyStatefulWidgetStateSpot();
}

class _MyStatefulWidgetStateSpot extends State<MyStatefulWidgetSpot>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -1.5),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void initStateSpot() {
    super.initState();
    repeatOnceSpot();
  }

  void repeatOnceSpot() async {
    await _controller.forward();
    await _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: SvgPicture.asset("images/map-icon.svg"),
      ),
    );
  }
}
