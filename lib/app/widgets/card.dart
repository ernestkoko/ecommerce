import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key, this.id, this.child}) : super(key: key);
  final String? id;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: ShapeDecoration(
                  shape: CircleBorder(
                      side:
                          BorderSide(color: Get.theme.primaryColor, width: 2))),
              child: Text(id ?? ""),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: child ?? const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
