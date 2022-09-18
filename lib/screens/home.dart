import 'package:flutter/material.dart';
import 'package:flutter_test_app/controllers/couterController.dart';
import 'package:flutter_test_app/screens/other.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>       Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("Clicks: ${counterController.count}")),
          SizedBox(height: 20),
          Center(child: ElevatedButton(onPressed: (){
              Get.to(OtherScreen());
          }, child: Text("Open Other Screen")),)
        ],
      )),   

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.increment();
        },
        child: const Icon(Icons.add),
      )
    );
  }
}