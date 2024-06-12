import 'package:business_explorer/app/model/restaurant_model.dart';
import 'package:business_explorer/app/widget/business_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 6),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return const BusinessCardWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
