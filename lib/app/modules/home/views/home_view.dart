import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/assets_image_path.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HomeView',
          style: TextStyle(fontFamily: 'Barlow', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
            Image.asset(AssetsImagePath.napaimage)
          ],
        ),

      ),
    );
  }
}
