import 'dart:js_util';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  double heightDevice = Get.height;
  double widthDevice = Get.width;

  @override
  Widget build(BuildContext context) {
    //GETX Fitur
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: Text("HOME"),
      );
    }

    double heightBody =
        context.height - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.amber,
        child: LayoutBuilder(builder: (context, constraints) {
          double lebarKuning = constraints.maxWidth;
          double tinggiKuning = constraints.maxHeight;
          return Center(
            child: Stack(
              children: [
                Container(
                  width: lebarKuning * 0.8,
                  height: tinggiKuning,
                  color: Colors.red,
                )
              ],
            ),
          );
        }),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

//Fika Nur Hasari