import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newprojects/controllers/recomendedPageController.dart';

import '../../widgets/recommendedPageWidget.dart';

class RecommendedServicePage extends GetView<RecommendedPageController> {
  const RecommendedServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Recommended \nServices",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ...Iterable.generate(controller.list.length)
                .map((e) => containerWidget(controller.list[e], context))
          ],
        ),
      ),
    );
  }
}
