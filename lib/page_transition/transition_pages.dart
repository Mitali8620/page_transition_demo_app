import 'package:flutter/material.dart';
import '../common/appbar.dart';
import '../common/button.dart';
import 'fade_transition_page.dart';
import 'rotation_transition_page.dart';
import 'scale_transition_page.dart';
import 'size_transition_page.dart';
import 'slide_transition_page.dart';

class TransitionPages extends StatefulWidget {
  const TransitionPages({Key? key}) : super(key: key);

  @override
  State<TransitionPages> createState() => _TransitionPagesState();
}

class _TransitionPagesState extends State<TransitionPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(appBarText: "Transitions listed"),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///FadeTransitionPage
                CommonButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FadeTransitionPage()),
                    );
                  },
                  color: Colors.blue.shade900,
                  text: "Fade Transition",
                ),

                /// RotationTransitionPage
                CommonButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RotationTransitionPage()),
                    );
                  },
                  color: Colors.blue.shade900,
                  text: "Rotation Transition",
                ),

                ///ScaleTransitionPage
                CommonButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ScaleTransitionPage()),
                    );
                  },
                  color: Colors.blue.shade900,
                  text: "Scale Transition",
                ),

                ///SizeTransitionPage
                CommonButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SizeTransitionPage()),
                    );
                  },
                  color: Colors.blue.shade900,
                  text: "Size Transition",
                ),

                ///SlideTransitionPage
                CommonButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SlideTransitionPage()),
                    );
                  },
                  color: Colors.blue.shade900,
                  text: "Slide Transition",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
