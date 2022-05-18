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
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigate(context, SizeAnimationDemo()),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('Size  animation'),
            ),
            ElevatedButton(
              onPressed: () => _navigate(context, RotateAnimationDemo()),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('Rotate animation'),
            ),
            ElevatedButton(
              onPressed: () => _navigate(context, FadeAnimationDemo()),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
              child: Text('clipPath animation'),
            ),
            // Transform.,
          ],
        ),
      ),
    );
  }

  void _navigate(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}
