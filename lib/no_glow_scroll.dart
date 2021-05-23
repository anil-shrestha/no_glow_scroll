library no_glow_scroll;

import 'package:flutter/material.dart';

class NoGlowScroll extends StatelessWidget {
  final Widget child;

  const NoGlowScroll({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return true;
        },
        child: child);
  }
}
