import 'package:flutter/material.dart';
import 'package:flutter_dictionary/util/app_constant.dart';
import 'package:flutter_dictionary/util/screen_uti.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TdkCover extends StatelessWidget {
  final bool _isKeyboardVisible;
  final BuildContext context;
  final double scale;

  const TdkCover(
      {Key key,
      @required bool isKeyboardVisible,
      @required this.context,
      this.scale})
      : _isKeyboardVisible = isKeyboardVisible,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isKeyboardVisible ? 0.0 : 1.0,
      duration: Duration(seconds: 10),
      child: Container(
        height: !_isKeyboardVisible ? ScreenUtil.getHeight(context) * scale : 0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage("assets/bg.jpg"),
              fit: BoxFit.cover,
            )),
        child: Center(
          child: SvgPicture.asset(
            AppConstant.svgLogo,
            height: 40,
          ),
        ),
      ),
    );
  }
}
