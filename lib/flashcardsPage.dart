import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashcardsPageController extends GetxController {}
class FlashcardsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FlashcardsPageController());
  }
}
class FlashcardsPage extends StatelessWidget {
  const FlashcardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.defaultDialog(
              title: "Warning",
              middleText: "Are you sure you want to go back?",
              actions: [
                TextButton(
                  onPressed: () => Get.back(),
                  child: Text("Yes"),
                ),
                TextButton(
                  onPressed: () => Get.back(result: false), // Close the dialog without going back
                  child: Text("No"),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
