import 'package:flutter/material.dart';
import 'package:flutter_dictionary/util/app_constant.dart';
import 'package:flutter_svg/svg.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTimeout() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, AppConstant.pageHome);
    });
  }

  @override
  void initState() {
    startTimeout();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        position: DecorationPosition.background,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
              image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 300,
              left: 50,
              right: 50,
              child: SvgPicture.asset(
                AppConstant.svgLogo,
                height: 100,
              ),
            ),
            Positioned(
                top: 650,
                left: 150,
                right: 150,
                child: Text(
                  AppConstant.appName,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
