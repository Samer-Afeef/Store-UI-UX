import 'package:flutter/material.dart';
import 'package:store_ui/controller/arrivals_controller.dart';
import '../widgets/arrivals/bottom_navigation_bar_arrivals.dart';
import '../widgets/product_card.dart';

class ArrivalsView extends StatefulWidget {
  const ArrivalsView({super.key});

  @override
  State<ArrivalsView> createState() => _ArrivalsViewState();
}

class _ArrivalsViewState extends State<ArrivalsView> {
final ArrivalsController _controller = ArrivalsController();

@override
  void initState() {
    _controller.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Arrivals"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          crossAxisCount: MediaQuery.of(context).size.width > 700 ? 4 : 2,
          childAspectRatio: 3/5,
          children: List.generate(_controller.arrivalModel.length,
              (index) => ProductCard(arrivalsModel:_controller.arrivalModel[index])),
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarArrivals(),
    );
  }
}


