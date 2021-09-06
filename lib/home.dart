import 'package:animated_builder_demo/animations/clippath_animation_demo.dart';
import 'package:animated_builder_demo/animations/rotate_animation_demo.dart';
import 'package:animated_builder_demo/animations/size_animation_demo.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late AnimationController animation;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
  }

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
