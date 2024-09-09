import 'package:flutter/material.dart';

class CustomTabletListView extends StatelessWidget {
  const CustomTabletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 16),
          child: AspectRatio(
            aspectRatio: 1,
              child: _Item(),
          ),
        ),
        itemCount: 10,
      ),
    );
  }
}


class _Item extends StatelessWidget {
  const _Item();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: const Color(0xffB4B4B4),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
