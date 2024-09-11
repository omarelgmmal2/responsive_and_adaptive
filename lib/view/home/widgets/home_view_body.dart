import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/view/home/widgets/adaptive_layout.dart';
import 'package:responsive_and_adaptive/view/home/widgets/mobile_layout.dart';
import 'tablet_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
          mobileLayout: (context) => const MobileLayout(),
          tabletLayout: (context) => const TabletLayout(),
      ),
    );
  }
}
