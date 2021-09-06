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
                return Container(
                  color: Colors.red,
                  height: 100 * controller.value,
                  width: 100 * controller.value,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
