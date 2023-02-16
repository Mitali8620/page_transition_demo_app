import 'package:flutter/material.dart';

import '../common/appbar.dart';

class SlideTransitionPage extends StatefulWidget {
  const SlideTransitionPage({Key? key}) : super(key: key);

  @override
  State<SlideTransitionPage> createState() => _SlideTransitionPageState();
}

class _SlideTransitionPageState extends State<SlideTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat(reverse: true);
  late Animation<Offset> animation =
      Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, 2.0))
          .animate(animationController);

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        children: [
          appBar(appBarText: "Slide Transitions "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SlideTransition(
                  position: animation,
                  child: const Icon(
                    Icons.flutter_dash,
                    size: 200,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
