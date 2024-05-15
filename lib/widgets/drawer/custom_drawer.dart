import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
 static const List<DrawerItemModel> items =  [
  DrawerItemModel(title: "D A S H B O A R D", icon: Icons.home),
  DrawerItemModel(title: "S E T T I N G", icon: Icons.settings),
  DrawerItemModel(title: "A B O U T", icon: Icons.info),
  DrawerItemModel(title: "L O G O U T", icon: Icons.logout),
];
  @override
  Widget build(BuildContext context) {
    return  const Drawer(
      backgroundColor:  Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(
              child: Icon(
            Icons.heart_broken_rounded,
            size: 55,
          )),
          CustomDrawerItemsListView(items: items)
        ],
      ),
    );
  }
}
