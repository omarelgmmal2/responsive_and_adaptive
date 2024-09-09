import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/view/home/widgets/custom_tablet_list_view.dart';

import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        SliverToBoxAdapter(
          child: CustomTabletListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        CustomSliverList(),
      ],
    );
  }
}
