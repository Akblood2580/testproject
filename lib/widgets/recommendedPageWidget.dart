import 'package:flutter/material.dart';
import 'package:newprojects/view/choseProductCategory.dart';

containerWidget(String text, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.all(7),
    height: 70,
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 20.0,
              spreadRadius: 1),
        ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ChooseProductCategoryPage()));
            },
            child: const Row(
              children: [
                Text(
                  "Create",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ))
      ],
    ),
  );
}
