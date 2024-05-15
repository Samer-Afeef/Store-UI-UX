import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'custom_drawer_item.dart';

class CustomDrawerItemsListView extends StatelessWidget {
  final List<DrawerItemModel> items;

  const CustomDrawerItemsListView({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomDrawerItem(drawerItemModel: items[index]);
        });
  }
}
