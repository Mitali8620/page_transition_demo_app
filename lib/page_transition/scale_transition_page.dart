import 'package:flutter/material.dart';
import '../common/appbar.dart';

class ScaleTransitionPage extends StatefulWidget {
  const ScaleTransitionPage({Key? key}) : super(key: key);

  @override
  State<ScaleTransitionPage> createState() => _ScaleTransitionPageState();
}

class _ScaleTransitionPageState extends State<ScaleTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat(reverse: true);
  late Animation<double> animation =
      CurvedAnimation(parent: animationController, curve: Curves.fastOutSlowIn);

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
          appBar(appBarText: "Scale Transitions "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ScaleTransition(
                  alignment: Alignment.bottomCenter,
                  scale: animation,
                  child: const Icon(
                    Icons.flutter_dash,
                    size: 200,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
