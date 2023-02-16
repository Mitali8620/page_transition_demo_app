import 'package:flutter/material.dart';

import '../common/appbar.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 1))
        ..repeat(reverse: true);
  late Animation<double> animation =
      CurvedAnimation(parent: animationController, curve: Curves.easeIn);

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
          appBar(appBarText: "Fade Transitions "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeTransition(
                  opacity: animation,
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
