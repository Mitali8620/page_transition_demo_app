import 'package:flutter/material.dart';

import '../common/appbar.dart';

class SizeTransitionPage extends StatefulWidget {
  const SizeTransitionPage({Key? key}) : super(key: key);

  @override
  State<SizeTransitionPage> createState() => _SizeTransitionPageState();
}

class _SizeTransitionPageState extends State<SizeTransitionPage>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: const Duration(seconds: 5))
        ..repeat(reverse: true);
  late Animation<double> animation = CurvedAnimation(
      parent: animationController, curve: Curves.easeInOutCubic);

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
          appBar(appBarText: "Size Transitions "),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizeTransition(
                  sizeFactor: animation,
                  axis: Axis.horizontal,
                  axisAlignment: 0.0,
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
