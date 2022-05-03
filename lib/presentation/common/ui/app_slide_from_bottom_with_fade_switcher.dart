import 'package:flutter/material.dart';

class AppSlideFromBottomWithFadeSwitcher extends StatelessWidget {
  static const _switchInCurve = Curves.easeOutCubic;
  static const _switchOutCurve = Curves.easeOutCubic;

  final bool showFirst;
  final Widget? firstChild;
  final Widget? secondChild;
  final Duration duration;

  const AppSlideFromBottomWithFadeSwitcher({
    required this.showFirst,
    this.firstChild,
    this.secondChild,
    this.duration = const Duration(milliseconds: 300),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: duration,
      curve: showFirst ? _switchInCurve : _switchOutCurve,
      clipBehavior: Clip.none,
      child: AnimatedSwitcher(
        duration: duration,
        transitionBuilder: (child, animation) {
          return FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: const Offset(0, 0),
              ).animate(animation),
              child: child,
            ),
          );
        },
        switchInCurve: _switchInCurve,
        switchOutCurve: _switchOutCurve,
        child: showFirst ? firstChild ?? const SizedBox() : secondChild ?? const SizedBox(),
      ),
    );
  }
}
