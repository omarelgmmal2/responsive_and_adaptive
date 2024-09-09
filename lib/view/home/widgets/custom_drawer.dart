import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List<DrawerItem> list = [
    const DrawerItem(
      text: "D A S H B O R D",
      icon: CupertinoIcons.home,
    ),
    const DrawerItem(
      text: "S E T T I N G S",
      icon: CupertinoIcons.settings,
    ),
    const DrawerItem(
      text: "A B O U T",
      icon: CupertinoIcons.info,
    ),
    const DrawerItem(
      text: "L O G O U T",
      icon: Icons.logout_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.black,
              size: 50,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => DrawerItem(
              text: list[index].text,
              icon: list[index].icon,
            ),
            itemCount: list.length,
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData? icon;

  const DrawerItem({
    super.key,
    required this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          text,
        ),
      ),
    );
  }
}
