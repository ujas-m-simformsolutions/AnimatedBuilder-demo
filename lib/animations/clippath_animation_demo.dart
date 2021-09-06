import 'package:flutter/material.dart';

class FadeAnimationDemo extends StatefulWidget {
  @override
  _FadeAnimationDemoState createState() => _FadeAnimationDemoState();
}

class _FadeAnimationDemoState extends State<FadeAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation with ClipPath'),
      ),
      body: Center(
        child: Row(
          children: [
            SizedBox(
              width: 75,
            ),
            AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return ClipPath(
                  child: Container(
                    height: 600,
                    width: 300,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        radius: 1.5,
                        colors: [
                          Colors.yellow,
                          Colors.transparent,
                        ],
                        stops: [0, controller.value],
                      ),
                    ),
                  ),
                  clipper: LightningClipper(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class LightningClipper extends CustomClipper<Path> {
  const LightningClipper();

  @override
  getClip(Size size) {
    return Path()
      ..moveTo(size.width * 0.3721600, size.height * 0.1261400)
      ..lineTo(size.width * 0.2492200, size.height * 0.4004800)
      ..lineTo(size.width * 0.3290000, size.height * 0.3980000)
      ..lineTo(size.width * 0.2770000, size.height * 0.6560000)
      ..lineTo(size.width * 0.4109000, size.height * 0.3420400)
      ..lineTo(size.width * 0.3232100, size.height * 0.3423400)
      ..lineTo(size.width * 0.3721600, size.height * 0.1261400)
      ..close();
  }

  /// Return false always because we always clip the same area.
  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}

class ClipPathDemo extends CustomClipper<Path> {
  const ClipPathDemo();

  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;
    return Path()
      ..moveTo(width / 3, height * 0.5)
      ..lineTo(width / 5, 0)
      ..lineTo(-width / 2, height * 0.5)
      ..close();
  }

  /// Return false always because we always clip the same area.
  @override
  bool shouldReclip(CustomClipper oldClipper) => false;
}
