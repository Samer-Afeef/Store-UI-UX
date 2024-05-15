import 'package:flutter/material.dart';
import 'package:store_ui/controller/home_dashboard_controller.dart';

import '../core/constant/app_color.dart';
import '../widgets/custom_button_app_bar.dart';
import '../widgets/drawer/custom_drawer.dart';

class HomeDashBoard extends StatefulWidget{
  const HomeDashBoard({super.key});

  @override
  State<HomeDashBoard> createState() => _HomeDashBoardState();
}

class _HomeDashBoardState extends State<HomeDashBoard> {
 final HomeDashBoardController _boardController = HomeDashBoardController();

 @override
 void initState() {
   _boardController.addListener(() {
     setState(() {
     });
   });
   super.initState();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _boardController.scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              _boardController.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: AppColors.grey,
            )),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(color: AppColors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              size: 28,
              color: AppColors.grey,
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 28,
              color: AppColors.grey,
            ),
          )
        ],
      ),
      body: IndexedStack(index: _boardController.currentTap, children:_boardController.listPages),
      bottomNavigationBar: BottomAppBar(
        elevation: 0.0,
        child: Row(
          children: [
            ...List.generate(4, (index) {
              return Expanded(
                child: CustomButtonAppBar(
                    iconData: _boardController.bottomAppbar[index]["icon"],
                    onPressed: () {
                      _boardController.changeTap(index);
                    },
                    active: _boardController.currentTap == index ? true : false),
              );
            })
          ],
        ),
      ),
    );
  }
}
