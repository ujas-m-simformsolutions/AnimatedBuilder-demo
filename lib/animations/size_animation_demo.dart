import 'package:flutter/material.dart';

class SizeAnimationDemo extends StatefulWidget {
  @override
  _SizeAnimationDemoState createState() => _SizeAnimationDemoState();
}

class _SizeAnimationDemoState extends State<SizeAnimationDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
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
        title: Text('Size Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                if (controller.value == 0) {
                  controller.forward();
                } else if (controller.value == 1) {
                  controller.reverse();
                }
                return Image.asset(
                  'assets/logo.png',
                  width: 100 * controller.value,
                  height: 100 * controller.value,
                  scale: 0.6,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
