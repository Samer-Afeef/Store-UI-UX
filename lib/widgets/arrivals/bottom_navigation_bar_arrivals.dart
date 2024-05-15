import 'package:flutter/material.dart';
import 'custom_button_arrivals.dart';

class BottomNavigationBarArrivals extends StatelessWidget {
  const BottomNavigationBarArrivals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: CustomButtonArrivals(
              title: "Sort",
              onPressed: () {},
              icon: Icons.sort,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: CustomButtonArrivals(
              title: "Filter",
              onPressed: () {},
              icon: Icons.filter_list_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
