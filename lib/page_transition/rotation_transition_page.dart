import 'package:flutter/material.dart';
import '../common/appbar.dart';

class RotationTransitionPage extends StatefulWidget {
  const RotationTransitionPage({Key? key}) : super(key: key);

  @override
  State<RotationTransitionPage> createState() => _RotationTransitionPageState();
}

class _RotationTransitionPageState extends State<RotationTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 0));
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
          appBar(appBarText: "Rotation Transitions "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotationTransition(
                turns: animation,
                child: const Icon(
                  Icons.flutter_dash,
                  size: 200,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
