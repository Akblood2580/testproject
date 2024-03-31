import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newprojects/controllers/chooseProductPageController.dart';
import 'package:newprojects/widgets/chooseProductPageWidget.dart';

import '../widgets/recommendedPageWidget.dart';

class ChooseProductCategoryPage extends GetView<ChooseProductPageController> {
  const ChooseProductCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Choose Product \nCategory",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // number of items in each row
              mainAxisSpacing: 8.0, // spacing between rows
              crossAxisSpacing: 8.0,
              mainAxisExtent: 60 // spacing between columns
              ),
          padding: const EdgeInsets.all(8.0), // padding around the grid
          itemCount: controller.list.length, // total number of items
          itemBuilder: (context, index) {
            return choosePageCustomWidget(controller.list[index]);
          },
        ));
  }
}
