import 'package:flutter/material.dart';
import 'package:portfolio/globals/app_assests.dart';

class profile_animation extends StatefulWidget {
  const profile_animation({Key? key}) : super(key: key);

  @override
  State<profile_animation> createState() => _profile_animationState();
}

class _profile_animationState extends State<profile_animation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat(reverse: true);
    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.9))
        .animate(_controller);
  }

  Widget build(BuildContext context) {
    return SlideTransition(
        position: _animation,
        child: Image.asset(
          Appassests.profile1,
          width: 360,
          height: 390,
        ));
  }
}
