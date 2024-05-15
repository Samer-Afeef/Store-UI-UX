import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;

  const CustomDrawerItem({super.key, required this.drawerItemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(drawerItemModel.title),
      leading: Icon(drawerItemModel.icon),
    );
  }
}
