import 'package:barberapp/app/modules/initial/initial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitialView extends GetView<InitialController> {
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Homerr'),
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Obx(
              () => Text(controller.btText.value),
            ),
          ),
        ),
      ),
    );
  }
}
