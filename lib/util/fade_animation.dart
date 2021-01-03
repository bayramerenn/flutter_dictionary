import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final _tween = MultiTween<AniProps>()
      ..add(AniProps.width, Tween(begin: 0.0, end: 1.0),
          Duration(milliseconds: 280))
      ..add(AniProps.height, Tween(begin: -30.0, end: 0.0),
          Duration(milliseconds: 500), Curves.easeOut);

    return PlayAnimation<MultiTweenValues<AniProps>>(
      tween: _tween,
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: _tween.duration,
      child: child,
      builder: (context, child, value) {
        return Opacity(
          opacity: value.get(AniProps.width),
          child: Transform.translate(
            offset: Offset(0, value.get(AniProps.height)),
            child: child,
          ),
        );
      },
    );
  }
}

enum AniProps { width, height }
