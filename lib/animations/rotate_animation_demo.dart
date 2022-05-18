import 'dart:math' as math;

import 'package:flutter/material.dart';

class RotateAnimationDemo extends StatefulWidget {
  @override
  _RotateAnimationDemoState createState() => _RotateAnimationDemoState();
}

class _RotateAnimationDemoState extends State<RotateAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotate Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: animation,
              child: Image.asset(
                'assets/logo.png',
                width: 100,
                height: 100,
                scale: 0.6,
              ),
              builder: (context, child) {
                return Transform.rotate(
                  angle: animation.value * math.pi,
                  child: child!,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
