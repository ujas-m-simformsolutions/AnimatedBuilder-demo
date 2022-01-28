import 'package:animated_builder_demo/animations/clippath_animation_demo.dart';
import 'package:animated_builder_demo/animations/rotate_animation_demo.dart';
import 'package:animated_builder_demo/animations/size_animation_demo.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Builder Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SizeAnimationDemo(),
                ),
              ),
              child: Text('Size  animation'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => RotateAnimationDemo(),
                ),
              ),
              child: Text('Rotate animation'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => FadeAnimationDemo(),
                ),
              ),
              child: Text('clipPath animation'),
            ),
            // Transform.,
          ],
        ),
      ),
    );
  }
}
