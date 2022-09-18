import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_test_app/controllers/couterController.dart';

class OtherScreen extends StatelessWidget {
  final CounterController counterController = Get.find();
  // const OtherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Clicks: ${counterController.count}"),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Go Back"))
        ],
      ),
    );
  } 
}
