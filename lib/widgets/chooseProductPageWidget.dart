import 'package:flutter/material.dart';

choosePageCustomWidget(
  String text,
) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => ChooseProductCategoryPage()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.black,
            )
          ],
        )),
  );
}
